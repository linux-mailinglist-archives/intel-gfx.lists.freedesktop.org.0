Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A55F8280EAF
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 10:21:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D74A6E0EF;
	Fri,  2 Oct 2020 08:21:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C11666E0EF
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 08:21:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22599222-1500050 for multiple; Fri, 02 Oct 2020 09:21:45 +0100
MIME-Version: 1.0
In-Reply-To: <20201002045215.32266-1-steven.t.hampson@intel.com>
References: <20201002045215.32266-1-steven.t.hampson@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Steve Hampson <steven.t.hampson@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 02 Oct 2020 09:21:43 +0100
Message-ID: <160162690377.32321.1221847871344308347@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] Memory leak fix
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

Quoting Steve Hampson (2020-10-02 05:52:15)
> Static analysis detected a memory leak if the second kmalloc fails
> and the first allocation is not freed.
> 
> Signed-off-by: Steve Hampson <steven.t.hampson@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> index 12b30075134a..c8be7534a2fb 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> @@ -234,8 +234,10 @@ i915_gem_userptr_init__mmu_notifier(struct drm_i915_gem_object *obj,
>                 return PTR_ERR(mn);
>  
>         mo = kzalloc(sizeof(*mo), GFP_KERNEL);
> -       if (!mo)
> +       if (!mo) {
> +               kfree(mn);

mn is still being referenced by mm->mn and mmu_notifiers here.
It will be released along with the mm when all objects drop their ref to
obj->userptr.mm, which includes after this error.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
