Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC6497F0C5
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:39:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E014410E467;
	Mon, 23 Sep 2024 18:39:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hMi84JLS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F10FA10E465;
 Mon, 23 Sep 2024 18:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727116769; x=1758652769;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hxmwE+yAOAxCAXGY6AAGXcRN26QAjvioD5OKq28MzSI=;
 b=hMi84JLSKwMDYB/LXu1yjGTABl332OKThXKSJv4m7ESwwFuIm6bP21KJ
 aJ7GMDEv+DaTW+eTrkyh8Tq8atbt9G7+IXOMk9MnjyVqgXaFW6bbRats9
 4OwV7KTpYLFCFjbfV61fZj4SR1Y1VfYtvLWQUaGHIiVlxbMZNzncGumvj
 mPGplviie+oc9N6odCWmG7cPhG6sxz38oitqqVBZx3jb352xBvWcQHfCv
 gyyDM81i7FWuFDdAkg+RmHCHz3JWTdeY3nV9kZcYTDlhVIcsCS5caPniY
 lfwASpSYiO9R0cDX59VcDjmdVc3L64ihAs3e5sV41yEkEe8IIsBLA5eQt Q==;
X-CSE-ConnectionGUID: r1+NsHCpQeeJdHBop4caBQ==
X-CSE-MsgGUID: juPqP7CLSJewehGmoc9X+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="13712950"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="13712950"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:39:28 -0700
X-CSE-ConnectionGUID: wF+6PfggTXiPKkOeUBUrRQ==
X-CSE-MsgGUID: WKwICXJoR5uKi6qembhaCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71299659"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 11:39:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 21:39:25 +0300
Date: Mon, 23 Sep 2024 21:39:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 08/16] drm/i915/display: Add macro HAS_ULTRAJOINER()
Message-ID: <ZvG13TaVRYbLzxW2@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
 <20240923181336.3303940-9-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240923181336.3303940-9-ankit.k.nautiyal@intel.com>
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

On Mon, Sep 23, 2024 at 11:43:28PM +0530, Ankit Nautiyal wrote:
> Add macro to check if platform supports Ultrajoiner.
> 
> v2:
> -Use check for DISPLAY_VER >= 20, and add bmg as a special case. (Ville)
> -Add check for HAS_DSC. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 6a5bee59e6aa..220cca6333ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -154,6 +154,9 @@ enum intel_display_subplatform {
>  #define HAS_TRANSCODER(i915, trans)	((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & \
>  					  BIT(trans)) != 0)
>  #define HAS_UNCOMPRESSED_JOINER(i915)	(DISPLAY_VER(i915) >= 13)
> +#define HAS_ULTRAJOINER(i915)		((DISPLAY_VER(i915) >= 20 || \
> +					  (IS_DGFX(i915) && DISPLAY_VER(i915) == 14)) && \
> +					 HAS_DSC(i915))
>  #define HAS_VRR(i915)			(DISPLAY_VER(i915) >= 11)
>  #define HAS_AS_SDP(i915)		(DISPLAY_VER(i915) >= 13)
>  #define HAS_CMRR(i915)			(DISPLAY_VER(i915) >= 20)
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
