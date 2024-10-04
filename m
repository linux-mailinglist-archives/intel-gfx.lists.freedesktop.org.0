Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E300990A8D
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 20:03:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30F5010EA58;
	Fri,  4 Oct 2024 18:03:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XOIfEITJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2963410EA58
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2024 18:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728065009; x=1759601009;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=x38eamgCD0DzMbmHBsAdNSxODcBsHnRn8+XaTOm7R+0=;
 b=XOIfEITJpGF7M7DGi/kp5kkCjVoyWUQoR9Y715591ohw4CN/Sd4fuKQA
 DsSYE/fsJ9m2rFnwzDoNynojJyeT1AFmZCe9PZVV9WLy+bBkp9GQ8Bam3
 gUiuI7MFCw9cdaZbupkqLaYZCPA6PMi9W/Sf6a/8oXzGM9Wo1QR8616wD
 XNQfJO61wL5B76ylRM5ZZPfaPgzP4WheE3aRTTs9imnBogiRxpj3mcZZq
 Uf0bpqjxkWQxSpPUJ44sx5NUMcRGeQjD9tUjy1EamRYzagEZ2cEk01Pgs
 ayZf0nAdM/idzHTQykUzJuIp4SOSVame2s2R1sv97FP3Mqe8rxIOAt0H2 Q==;
X-CSE-ConnectionGUID: x7mOOVUtTu6Km96oshlQkw==
X-CSE-MsgGUID: ibYezD1KQiuJVZlU24i39g==
X-IronPort-AV: E=McAfee;i="6700,10204,11215"; a="37901638"
X-IronPort-AV: E=Sophos;i="6.11,178,1725346800"; d="scan'208";a="37901638"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 11:03:23 -0700
X-CSE-ConnectionGUID: kgLuDKARR2mjaoilcZ4AXw==
X-CSE-MsgGUID: vKQKUWxpTUasKpbdze9EmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,178,1725346800"; d="scan'208";a="74897298"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 04 Oct 2024 11:03:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Oct 2024 21:03:17 +0300
Date: Fri, 4 Oct 2024 21:03:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/7] drm/i915: Enable 10bpc + CCS on TGL+
Message-ID: <ZwAt5SfK8wzYoQb1@intel.com>
References: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
 <20240918144445.5716-4-ville.syrjala@linux.intel.com>
 <e30b033c-c242-47ef-aa9e-ba2ee734ca09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e30b033c-c242-47ef-aa9e-ba2ee734ca09@gmail.com>
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

On Fri, Oct 04, 2024 at 04:35:17PM +0300, Juha-Pekka Heikkila wrote:
> On 18.9.2024 17.44, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > TGL+ support 10bpc compressed scanout. Enable it.
> > 
> > v2: Set .depth=30 for all variants to match drm_fourcc.c
> >      Set clear color block size to 0x0
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_fb.c       | 36 +++++++++++++++++++
> >   .../drm/i915/display/skl_universal_plane.c    |  8 ++---
> >   2 files changed, 40 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> > index bcf0d016f499..9b9da4f71f73 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > @@ -67,6 +67,18 @@ static const struct drm_format_info gen12_ccs_formats[] = {
> >   	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
> >   	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> >   	  .hsub = 1, .vsub = 1, .has_alpha = true },
> > +	{ .format = DRM_FORMAT_XRGB2101010, .depth = 30, .num_planes = 2,
> > +	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> > +	  .hsub = 1, .vsub = 1, },
> > +	{ .format = DRM_FORMAT_XBGR2101010, .depth = 30, .num_planes = 2,
> > +	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> > +	  .hsub = 1, .vsub = 1, },
> > +	{ .format = DRM_FORMAT_ARGB2101010, .depth = 30, .num_planes = 2,
> 
> Is that comment about depth=30 for all variants because of these alpha 
> formats? Why is that? Here on other formats alpha is taken as part of 
> depth, like in above "DRM_FORMAT_ABGR8888, .depth = 32"

That stuff is just legacy compatibility stuff, and back in
the day peope decided that depth==32 simply means ARGB8888.
I'm not sure we should even state depth=30 on ARGB2101010
at all, or would it be better to leave it at 0.

Another option might be to just set .depth=0 on absolutely
all compressed formats. Using these with some legacy uapi
which only talks in terms of bpp and depth doesn't seem
feasible anyway.

But for now I think we just want to match drm_fourcc.c since
that's what we did for the other compressed formats.

> > +	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> > +	  .hsub = 1, .vsub = 1, .has_alpha = true },
> > +	{ .format = DRM_FORMAT_ABGR2101010, .depth = 30, .num_planes = 2,
> > +	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> > +	  .hsub = 1, .vsub = 1, .has_alpha = true },
> >   	{ .format = DRM_FORMAT_YUYV, .num_planes = 2,
> >   	  .char_per_block = { 2, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> >   	  .hsub = 2, .vsub = 1, .is_yuv = true },
> > @@ -113,6 +125,18 @@ static const struct drm_format_info gen12_ccs_cc_formats[] = {
> >   	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 3,
> >   	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
> >   	  .hsub = 1, .vsub = 1, .has_alpha = true },
> > +	{ .format = DRM_FORMAT_XRGB2101010, .depth = 30, .num_planes = 3,
> > +	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
> > +	  .hsub = 1, .vsub = 1, },
> > +	{ .format = DRM_FORMAT_XBGR2101010, .depth = 30, .num_planes = 3,
> > +	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
> > +	  .hsub = 1, .vsub = 1, },
> > +	{ .format = DRM_FORMAT_ARGB2101010, .depth = 30, .num_planes = 3,
> > +	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
> > +	  .hsub = 1, .vsub = 1, .has_alpha = true },
> > +	{ .format = DRM_FORMAT_ABGR2101010, .depth = 30, .num_planes = 3,
> > +	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
> > +	  .hsub = 1, .vsub = 1, .has_alpha = true },
> >   };
> >   
> >   static const struct drm_format_info gen12_flat_ccs_cc_formats[] = {
> > @@ -128,6 +152,18 @@ static const struct drm_format_info gen12_flat_ccs_cc_formats[] = {
> >   	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
> >   	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
> >   	  .hsub = 1, .vsub = 1, .has_alpha = true },
> > +	{ .format = DRM_FORMAT_XRGB2101010, .depth = 30, .num_planes = 2,
> > +	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
> > +	  .hsub = 1, .vsub = 1, },
> > +	{ .format = DRM_FORMAT_XBGR2101010, .depth = 30, .num_planes = 2,
> > +	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
> > +	  .hsub = 1, .vsub = 1, },
> > +	{ .format = DRM_FORMAT_ARGB2101010, .depth = 30, .num_planes = 2,
> > +	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
> > +	  .hsub = 1, .vsub = 1, .has_alpha = true },
> > +	{ .format = DRM_FORMAT_ABGR2101010, .depth = 30, .num_planes = 2,
> > +	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
> > +	  .hsub = 1, .vsub = 1, .has_alpha = true },
> >   };
> >   
> >   struct intel_modifier_desc {
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 17d4c880ecc4..9f34df60b112 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -2315,6 +2315,10 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
> >   	case DRM_FORMAT_XBGR8888:
> >   	case DRM_FORMAT_ARGB8888:
> >   	case DRM_FORMAT_ABGR8888:
> > +	case DRM_FORMAT_XRGB2101010:
> > +	case DRM_FORMAT_XBGR2101010:
> > +	case DRM_FORMAT_ARGB2101010:
> > +	case DRM_FORMAT_ABGR2101010:
> >   		if (intel_fb_is_ccs_modifier(modifier))
> >   			return true;
> >   		fallthrough;
> > @@ -2331,10 +2335,6 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
> >   			return true;
> >   		fallthrough;
> >   	case DRM_FORMAT_RGB565:
> > -	case DRM_FORMAT_XRGB2101010:
> > -	case DRM_FORMAT_XBGR2101010:
> > -	case DRM_FORMAT_ARGB2101010:
> > -	case DRM_FORMAT_ABGR2101010:
> >   	case DRM_FORMAT_XVYU2101010:
> >   	case DRM_FORMAT_C8:
> >   	case DRM_FORMAT_XBGR16161616F:

-- 
Ville Syrjälä
Intel
