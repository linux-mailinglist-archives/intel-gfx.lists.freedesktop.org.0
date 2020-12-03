Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4CE2CD318
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 11:05:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DFDA6E0AA;
	Thu,  3 Dec 2020 10:05:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7E846E0AA;
 Thu,  3 Dec 2020 10:05:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23199470-1500050 for multiple; Thu, 03 Dec 2020 10:04:13 +0000
MIME-Version: 1.0
In-Reply-To: <X8ilneOcJAjwqU4t@mwanda>
References: <X8ilneOcJAjwqU4t@mwanda>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Date: Thu, 03 Dec 2020 10:04:11 +0000
Message-ID: <160698985186.1736.12329246997505578645@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check the correct variable
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
Cc: kernel-janitors@vger.kernel.org, David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Thomas Hellström <thomas.hellstrom@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Dan Carpenter (2020-12-03 08:45:17)
> There is a copy and paste bug in this code.  It's supposed to check
> "obj2" instead of checking "obj" a second time.
> 
> Fixes: 80f0b679d6f0 ("drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/gpu/drm/i915/selftests/i915_gem.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
> index 23a6132c5f4e..412e21604a05 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
> @@ -211,8 +211,8 @@ static int igt_gem_ww_ctx(void *arg)
>                 return PTR_ERR(obj);
>  
>         obj2 = i915_gem_object_create_internal(i915, PAGE_SIZE);
> -       if (IS_ERR(obj)) {
> -               err = PTR_ERR(obj);
> +       if (IS_ERR(obj2)) {
> +               err = PTR_ERR(obj2);

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
