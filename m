Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 320404EBDEC
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 11:44:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61B5A10F247;
	Wed, 30 Mar 2022 09:44:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E94BF10F247
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 09:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648633477; x=1680169477;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EL4u0s4U359QqJCQqVZWYw413ITjieKCcu6NeO7mAPU=;
 b=hW717Yw5XaDhpt0sEENieBFwyPFjVbD8BLVKseGYw6IMfYqKMovOxy9j
 4dvZO29jXUz6KjgxmF1S2yxEn+r1lAptgTYV+srDRhkImZVRKO6wEitsC
 Mzxy0TzhRxOBv3Jkb++CAwc+I6o+cJkCLDp8sI1hsiyA8WvwmrRdwhNM2
 7Hk8SXnKj4Mjixjd+INX/bRuEGVzGLkU5P3OTbWe468HpK4WgE+pv8TH+
 jiaosPncRsrqJUdby7pCK4NgXIWi9YjrMyZFM5KCTPEw3LlaGPTjyWV1H
 pEpNUGjLBecRpwO+m/h0xwZD/PSe5ebQiaqiCOkNx2vlqQf9A4Wursktp w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="259474353"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="259474353"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 02:44:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="695049395"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga001.fm.intel.com with SMTP; 30 Mar 2022 02:44:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Mar 2022 12:44:32 +0300
Date: Wed, 30 Mar 2022 12:44:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Casey Bowman <casey.g.bowman@intel.com>
Message-ID: <YkQmgGaJmWqaUnvq@intel.com>
References: <20220329233518.1008877-1-casey.g.bowman@intel.com>
 <20220329233518.1008877-2-casey.g.bowman@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220329233518.1008877-2-casey.g.bowman@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/gt: Split intel-gtt
 functions by arch
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
Cc: thomas.hellstrom@linux.intel.com, intel-gfx@lists.freedesktop.org,
 lucas.demarchi@intel.com, chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 29, 2022 at 04:35:17PM -0700, Casey Bowman wrote:
> @@ -1208,11 +576,11 @@ static int ggtt_probe_hw(struct i915_ggtt *ggtt, struct intel_gt *gt)
>  	dma_resv_init(&ggtt->vm._resv);
>  
>  	if (GRAPHICS_VER(i915) <= 5)
> -		ret = i915_gmch_probe(ggtt);
> +		ret = intel_gt_gmch_gen5_probe(ggtt);

s/gen5/gen2/ to conform to the standard "name things based
on the oldest thing" doctrine.

Also s/intel_gt_gmch/intel_ggtt/ for all of these might be
a good idea to actually convey what they do.

>  	else if (GRAPHICS_VER(i915) < 8)
> -		ret = gen6_gmch_probe(ggtt);
> +		ret = intel_gt_gmch_gen6_probe(ggtt);
>  	else
> -		ret = gen8_gmch_probe(ggtt);
> +		ret = intel_gt_gmch_gen8_probe(ggtt);
>  	if (ret) {
>  		dma_resv_fini(&ggtt->vm._resv);
>  		return ret;
<snip>
> +/*
> + * Certain Gen5 chipsets require idling the GPU before
> + * unmapping anything from the GTT when VT-d is enabled.
> + */
> +static bool needs_idle_maps(struct drm_i915_private *i915)
> +{
> +	/*
> +	 * Query intel_iommu to see if we need the workaround. Presumably that
> +	 * was loaded first.
> +	 */
> +	if (!intel_vtd_active(i915))
> +		return false;
> +
> +	if (GRAPHICS_VER(i915) == 5 && IS_MOBILE(i915))
> +		return true;
> +
> +	if (GRAPHICS_VER(i915) == 12)
> +		return true; /* XXX DMAR fault reason 7 */

This gen12 part is still dead code. Should just nuke it most likely,
but someone should actually figure out where it came from, what it
was supposed to fix, and did it ever actually work.

-- 
Ville Syrjälä
Intel
