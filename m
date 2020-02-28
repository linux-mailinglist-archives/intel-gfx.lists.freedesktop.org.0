Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4D51739A5
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 15:18:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 987886F460;
	Fri, 28 Feb 2020 14:18:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE286F460
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 14:18:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20386155-1500050 for multiple; Fri, 28 Feb 2020 14:18:36 +0000
MIME-Version: 1.0
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200228141413.qfjf4abr323drlo4@kili.mountain>
References: <20200228141413.qfjf4abr323drlo4@kili.mountain>
Message-ID: <158289951401.24106.17765805022733010158@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 28 Feb 2020 14:18:34 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Fix return in
 assert_mmap_offset()
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
Cc: David Airlie <airlied@linux.ie>, kernel-janitors@vger.kernel.org,
 Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Dan Carpenter (2020-02-28 14:14:13)
> The assert_mmap_offset() returns type bool so if we return an error
> pointer that is "return true;" or success.  If we have an error, then
> we should return false.
> 
> Fixes: 3d81d589d6e3 ("drm/i915: Test exhaustion of the mmap space")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> Not tested.  In theory it's correct, but when you're adding new error
> paths it's always good to test.
> 
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index ef7c74cff28a..43912e9b683d 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -570,7 +570,7 @@ static bool assert_mmap_offset(struct drm_i915_private *i915,
>  
>         obj = i915_gem_object_create_internal(i915, size);
>         if (IS_ERR(obj))
> -               return PTR_ERR(obj);
> +               return false;

"This is not the error you are looking for"

Fits the use,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
