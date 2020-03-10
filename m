Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11940180616
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 19:21:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4469E898F3;
	Tue, 10 Mar 2020 18:21:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E54F6E379
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 18:20:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20513332-1500050 for multiple; Tue, 10 Mar 2020 18:20:46 +0000
MIME-Version: 1.0
In-Reply-To: <20200309183129.2296-4-tvrtko.ursulin@linux.intel.com>
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
 <20200309183129.2296-4-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <158386444565.28297.3935899221787468940@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 10 Mar 2020 18:20:45 +0000
Subject: Re: [Intel-gfx] [RFC 03/12] drm/i915: Make GEM contexts track DRM
 clients
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-03-09 18:31:20)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> If we make GEM contexts keep a reference to i915_drm_client for the whole
> of their lifetime, we can consolidate the current task pid and name usage
> by getting it from the client.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c   | 23 +++++++++++---
>  .../gpu/drm/i915/gem/i915_gem_context_types.h | 13 ++------
>  drivers/gpu/drm/i915/i915_debugfs.c           | 31 +++++++++----------
>  drivers/gpu/drm/i915/i915_gpu_error.c         | 21 +++++++------
>  4 files changed, 48 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 2c3fd9748d39..0f4150c8d7fe 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -300,8 +300,13 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
>  
>  static void i915_gem_context_free(struct i915_gem_context *ctx)
>  {
> +       struct i915_drm_client *client = ctx->client;
> +
>         GEM_BUG_ON(!i915_gem_context_is_closed(ctx));
>  
> +       if (client)
> +               i915_drm_client_put(client);
> +
>         spin_lock(&ctx->i915->gem.contexts.lock);
>         list_del(&ctx->link);
>         spin_unlock(&ctx->i915->gem.contexts.lock);
> @@ -311,7 +316,6 @@ static void i915_gem_context_free(struct i915_gem_context *ctx)
>         if (ctx->timeline)
>                 intel_timeline_put(ctx->timeline);
>  
> -       put_pid(ctx->pid);
>         mutex_destroy(&ctx->mutex);
>  
>         kfree_rcu(ctx, rcu);
> @@ -899,6 +903,7 @@ static int gem_context_register(struct i915_gem_context *ctx,
>                                 struct drm_i915_file_private *fpriv,
>                                 u32 *id)
>  {
> +       struct i915_drm_client *client;
>         struct i915_address_space *vm;
>         int ret;
>  
> @@ -910,15 +915,25 @@ static int gem_context_register(struct i915_gem_context *ctx,
>                 WRITE_ONCE(vm->file, fpriv); /* XXX */
>         mutex_unlock(&ctx->mutex);
>  
> -       ctx->pid = get_task_pid(current, PIDTYPE_PID);
> +       client = i915_drm_client_get(fpriv->client);
> +
> +       rcu_read_lock();
>         snprintf(ctx->name, sizeof(ctx->name), "%s[%d]",
> -                current->comm, pid_nr(ctx->pid));
> +                rcu_dereference(client->name),
> +                pid_nr(rcu_dereference(client->pid)));
> +       rcu_read_unlock();
>  
>         /* And finally expose ourselves to userspace via the idr */
>         ret = xa_alloc(&fpriv->context_xa, id, ctx, xa_limit_32b, GFP_KERNEL);
>         if (ret)
> -               put_pid(fetch_and_zero(&ctx->pid));
> +               goto err;
> +
> +       ctx->client = client;
>  
> +       return 0;
> +
> +err:
> +       i915_drm_client_put(client);
>         return ret;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> index 28760bd03265..b0e03380c690 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> @@ -96,20 +96,13 @@ struct i915_gem_context {
>          */
>         struct i915_address_space __rcu *vm;
>  
> -       /**
> -        * @pid: process id of creator
> -        *
> -        * Note that who created the context may not be the principle user,
> -        * as the context may be shared across a local socket. However,
> -        * that should only affect the default context, all contexts created
> -        * explicitly by the client are expected to be isolated.
> -        */
> -       struct pid *pid;
> -
>         /** link: place with &drm_i915_private.context_list */
>         struct list_head link;
>         struct llist_node free_link;
>  
> +       /** client: struct i915_drm_client */
> +       struct i915_drm_client *client;
> +
>         /**
>          * @ref: reference count
>          *
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 8f2525e4ce0f..0655f1e7527d 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -330,17 +330,17 @@ static void print_context_stats(struct seq_file *m,
>                                 .vm = rcu_access_pointer(ctx->vm),
>                         };
>                         struct drm_file *file = ctx->file_priv->file;
> -                       struct task_struct *task;
>                         char name[80];
>  
>                         rcu_read_lock();
> +
>                         idr_for_each(&file->object_idr, per_file_stats, &stats);
> -                       rcu_read_unlock();
>  
> -                       rcu_read_lock();
> -                       task = pid_task(ctx->pid ?: file->pid, PIDTYPE_PID);
>                         snprintf(name, sizeof(name), "%s",
> -                                task ? task->comm : "<unknown>");
> +                                I915_SELFTEST_ONLY(!ctx->client) ?
> +                                "[kernel]" :


With selftests one can never see debugfs/, so this should be safe to
assume ctx->client is valid.

And the same for the next chunk,
> @@ -1273,19 +1273,16 @@ static int i915_context_status(struct seq_file *m, void *unused)

> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 2a4cd0ba5464..653e1bc5050e 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1221,7 +1221,8 @@ static void record_request(const struct i915_request *request,
>         rcu_read_lock();
>         ctx = rcu_dereference(request->context->gem_context);
>         if (ctx)
> -               erq->pid = pid_nr(ctx->pid);
> +               erq->pid = I915_SELFTEST_ONLY(!ctx->client) ?
> +                          0 : pid_nr(rcu_dereference(ctx->client->pid));

Hmm, I think we may want to capture the i915_drm_client, but we also
want to know the pid at the time of submission, so time of hang is a
good guess. Could we accept the risk here of just using the client
(accepting that a mischievous user could rename the client later)?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
