Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21029184564
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 12:01:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EC706EBBE;
	Fri, 13 Mar 2020 11:01:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8A556EBBE
 for <Intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 11:01:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20547292-1500050 for multiple; Fri, 13 Mar 2020 11:00:50 +0000
MIME-Version: 1.0
In-Reply-To: <20200311182618.21513-4-tvrtko.ursulin@linux.intel.com>
References: <20200311182618.21513-1-tvrtko.ursulin@linux.intel.com>
 <20200311182618.21513-4-tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158409725013.10732.7544147489314823427@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 13 Mar 2020 11:00:50 +0000
Subject: Re: [Intel-gfx] [RFC 03/10] drm/i915: Make GEM contexts track DRM
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

Quoting Tvrtko Ursulin (2020-03-11 18:26:11)
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 6ca797128aa1..ae236058c87e 100644
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
> +                                rcu_dereference(ctx->client->name));
> +
>                         rcu_read_unlock();
>  
>                         print_file_stats(m, name, stats);
> @@ -1059,19 +1059,16 @@ static int i915_context_status(struct seq_file *m, void *unused)
>                 spin_unlock(&i915->gem.contexts.lock);
>  
>                 seq_puts(m, "HW context ");
> -               if (ctx->pid) {
> -                       struct task_struct *task;
> -
> -                       task = get_pid_task(ctx->pid, PIDTYPE_PID);
> -                       if (task) {
> -                               seq_printf(m, "(%s [%d]) ",
> -                                          task->comm, task->pid);
> -                               put_task_struct(task);
> -                       }
> -               } else if (IS_ERR(ctx->file_priv)) {
> -                       seq_puts(m, "(deleted) ");
> +
> +               if (I915_SELFTEST_ONLY(!ctx->client)) {
> +                       seq_puts(m, "([kernel]) ");
>                 } else {
> -                       seq_puts(m, "(kernel) ");
> +                       rcu_read_lock();
> +                       seq_printf(m, "(%s [%d]) %s",
> +                                  rcu_dereference(ctx->client->name),
> +                                  pid_nr(rcu_dereference(ctx->client->pid)),
> +                                  ctx->client->closed ? "(closed) " : "");
> +                       rcu_read_unlock();
>                 }

debugfs is not available during selftests, so we don't need to worry.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
