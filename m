Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E42CF1C8515
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 10:49:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DC9A6E0AB;
	Thu,  7 May 2020 08:49:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DDD56E0AB
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 08:49:20 +0000 (UTC)
IronPort-SDR: 015LLadp1g+EMtrp5Q3ah4chTVf3kSclBZCjwNAtPOebwOEkVjog06JI+rbcVvPfxRQZe6iNgV
 zTf5lCTCTSQQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 01:49:19 -0700
IronPort-SDR: xOsIpK+OGAHeJWg55v14MEHenNvhlt76J/FuHnb1MD3+1FZpFMWW1p3IAuW08WgSQaoyCmcoiL
 81774fhbtcrw==
X-IronPort-AV: E=Sophos;i="5.73,363,1583222400"; d="scan'208";a="435206477"
Received: from naloni1-mobl.ger.corp.intel.com (HELO localhost) ([10.249.34.5])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 01:49:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200503180034.20010-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200503180034.20010-1-chris@chris-wilson.co.uk>
Date: Thu, 07 May 2020 11:49:15 +0300
Message-ID: <87zhak5dv8.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Warn if the FBC is still
 writing to stolen on removal
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, 03 May 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> If the FBC is still writing into stolen, it will overwrite any future
> users of that stolen region. Check before release.
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/1635
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index c6afa10e814c..37244ed92ae4 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -540,6 +540,9 @@ static void __intel_fbc_cleanup_cfb(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_fbc *fbc = &dev_priv->fbc;
>  
> +	if (WARN_ON(intel_fbc_hw_is_active(dev_priv)))

drm_WARN_ON() ;)

> +		return;
> +
>  	if (!drm_mm_node_allocated(&fbc->compressed_fb))
>  		return;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
