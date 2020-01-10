Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F1F136C18
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 12:40:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B738898FD;
	Fri, 10 Jan 2020 11:40:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61B3089935
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 11:40:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 03:40:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,416,1571727600"; d="scan'208";a="254963214"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jan 2020 03:40:21 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 83BBA5C1DDE; Fri, 10 Jan 2020 13:39:49 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200108153550.3803446-2-chris@chris-wilson.co.uk>
References: <20200108153550.3803446-1-chris@chris-wilson.co.uk>
 <20200108153550.3803446-2-chris@chris-wilson.co.uk>
Date: Fri, 10 Jan 2020 13:39:49 +0200
Message-ID: <87v9pjv8u2.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Reduce warning for
 i915_vma_pin_iomap() without runtime-pm
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

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Access through the GGTT (iomap) into the vma does require the device to
> be awake. However, we often take the i915_vma_pin_iomap() as an early
> preparatory step that is long before we use the iomap. Asserting that
> the device is awake at pin time does not protect us, and is merely a
> nuisance.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

I do remember stamping this. No matter, i have plenty of ink.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_vma.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index cbd783c31adb..43d5c270bdb0 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -423,8 +423,6 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
>  	void __iomem *ptr;
>  	int err;
>  
> -	/* Access through the GTT requires the device to be awake. */
> -	assert_rpm_wakelock_held(vma->vm->gt->uncore->rpm);
>  	if (GEM_WARN_ON(!i915_vma_is_map_and_fenceable(vma))) {
>  		err = -ENODEV;
>  		goto err;
> @@ -456,6 +454,8 @@ void __iomem *i915_vma_pin_iomap(struct i915_vma *vma)
>  		goto err_unpin;
>  
>  	i915_vma_set_ggtt_write(vma);
> +
> +	/* NB Access through the GTT requires the device to be awake. */
>  	return ptr;
>  
>  err_unpin:
> -- 
> 2.25.0.rc1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
