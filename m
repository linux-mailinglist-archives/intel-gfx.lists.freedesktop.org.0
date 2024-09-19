Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5243797CB93
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 17:24:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAF0910E722;
	Thu, 19 Sep 2024 15:24:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bh0IGpJr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60C1410E726;
 Thu, 19 Sep 2024 15:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726759456; x=1758295456;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VgE+MEkfBYABmGhaGl+Z68Hrz23Xa621NP8tx8Yv6x8=;
 b=bh0IGpJrAfGZ80wtnsDF05iAFPq2Fm4pYlEAkHIY0x4RLw5mooj0OkTQ
 aZW81RvF7pkPY2IuZulCtZkDrQiKOJ2t+NY/wwRiXxEtjjxSJD8nft+bO
 t3G9oQAd+7cfgMX06CS9DJbh4+OOJxY/suKe+g/oa4RLoqex8SymPFdLe
 9H/XRhVLLo4GSmhgsbOWj6sgJvmASyAc+SL2rzlrRPU0G7CLthpm98egx
 to4VpTNULtLFfhAuFO6X2Uq2hCr7PJA+8S4EaR+aVl70rC6+J3+hSqAYX
 61IQBWz3PuG20uH8qRRLILoYoatOc2ivfkkqpM54fFoxZo37BhIJXRGG+ Q==;
X-CSE-ConnectionGUID: h8AcVPBGQxOMUGFLfs1uEw==
X-CSE-MsgGUID: d8grLOriRR+vD8xbiFWAcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25877035"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="25877035"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 08:24:07 -0700
X-CSE-ConnectionGUID: /vmrkBrQQNG9t6Y6nyhJMA==
X-CSE-MsgGUID: zpc4hJHzRzel9PJxoxipKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="70093744"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Sep 2024 08:24:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2024 18:24:03 +0300
Date: Thu, 19 Sep 2024 18:24:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 09/15] drm/i915/display: Add macro HAS_ULTRAJOINER()
Message-ID: <ZuxCE5sLDfp6T6d2@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
 <20240918144343.2876184-10-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240918144343.2876184-10-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 18, 2024 at 08:13:37PM +0530, Ankit Nautiyal wrote:
> Add macro to check if platform supports Ultrajoiner.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 5306bbd13e59..8dd7bef49133 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -154,6 +154,7 @@ enum intel_display_subplatform {
>  #define HAS_TRANSCODER(i915, trans)	((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & \
>  					  BIT(trans)) != 0)
>  #define HAS_UNCOMPRESSED_JOINER(i915)	(DISPLAY_VER(i915) >= 13)
> +#define HAS_ULTRAJOINER(i915)		((DISPLAY_VER(i915) == 14 && IS_DGFX(i915)) || DISPLAY_VER(i915) > 14)

s/> 14/>= 20/ please

Since we generally prefer the new->old order, should probably start with
the >=20 check, and follow with the bmg special case.

>  #define HAS_VRR(i915)			(DISPLAY_VER(i915) >= 11)
>  #define HAS_AS_SDP(i915)		(DISPLAY_VER(i915) >= 13)
>  #define HAS_CMRR(i915)			(DISPLAY_VER(i915) >= 20)
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
