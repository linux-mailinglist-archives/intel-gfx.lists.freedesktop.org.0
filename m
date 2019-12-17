Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C950712325D
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 17:25:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64CD16E11B;
	Tue, 17 Dec 2019 16:25:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0C756E0AB
 for <Intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 16:25:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19611588-1500050 for multiple; Tue, 17 Dec 2019 16:25:11 +0000
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191217161814.8358-1-tvrtko.ursulin@linux.intel.com>
References: <20191217161814.8358-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <157659990891.8790.5670976085212493182@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 17 Dec 2019 16:25:08 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix pid leak with banned clients
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
Cc: Mika Kuoppala <mika.kuoppala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2019-12-17 16:18:14)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Get_pid_task() needs to be paired with a put_pid or we leak a pid
> reference every time a banned client tries to create a context.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Fixes: b083a0870c79 ("drm/i915: Add per client max context ban limit")
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 46b4d1d643f8..eace1607ceb2 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -2193,9 +2193,11 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
>  
>         ext_data.fpriv = file->driver_priv;
>         if (client_is_banned(ext_data.fpriv)) {
> +               struct pid *pid = get_task_pid(current, PIDTYPE_PID);
> +
>                 DRM_DEBUG("client %s[%d] banned from creating ctx\n",
> -                         current->comm,
> -                         pid_nr(get_task_pid(current, PIDTYPE_PID)));
> +                         current->comm, pid_nr(pid));

Or, going out on a limb here, task_pid_nr(current)).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
