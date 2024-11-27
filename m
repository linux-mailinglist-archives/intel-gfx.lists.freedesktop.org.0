Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C21B9DA1E0
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 06:57:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6CE310E20C;
	Wed, 27 Nov 2024 05:57:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aKTrMzgZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEE4910E20C
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2024 05:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732687033; x=1764223033;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/XdSlsi1i+92UWiC/R4B3epYTSsGQ8h5263Lmw9JuEs=;
 b=aKTrMzgZeeBX8Z2xKCZohJCa6h9/NJKy/P5IF6pN7G9jGDGuOmsxizIp
 k2poE/0u3bFmPf0ldEi25nbPplWZT907TVasP7cG+SxcGSxfO7EB/ChAf
 4oAHHRyG1RMRXDVyzoGmG/Xj0Wt+RZ0FoDKXVpmXa7v2bB9vU68P/u6/9
 suRwuYG5dVHZNxjb0lirY5M1Oh3uuSPYjK8wy0lqlyAeuyoaiogNuc5r7
 WGZGsuUvlBTlBNGf7/v0wHpqfPZb8Dk6T6P7245To7zqmZtkmK6HgZSbI
 VfvDrvTNEQwo1Bl9NiSX+fYJObnR3dmJkddQkEphCxWkzPXD0k1QbAF1Z w==;
X-CSE-ConnectionGUID: spa1TyylSRyig/vJlwajvw==
X-CSE-MsgGUID: SJOHSgcaRaWKzkV+p9tntA==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="33123881"
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="33123881"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 21:57:13 -0800
X-CSE-ConnectionGUID: 3T7L53mKQSKiMcf14l1MoQ==
X-CSE-MsgGUID: ZGG8MRkrR+iqopcPaPAOLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="91977757"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 26 Nov 2024 21:57:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Nov 2024 07:57:09 +0200
Date: Wed, 27 Nov 2024 07:57:09 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Xi Ruoyao <xry111@xry111.site>
Cc: juhapekka.heikkila@gmail.com, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/7] drm/i915: Enable 10bpc + CCS on TGL+
Message-ID: <Z0a0tRnfv8UKorJo@intel.com>
References: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
 <20240918144445.5716-4-ville.syrjala@linux.intel.com>
 <e30b033c-c242-47ef-aa9e-ba2ee734ca09@gmail.com>
 <ZwAt5SfK8wzYoQb1@intel.com>
 <60c4b7c8-6ae8-469f-937d-d1a877c9b16c@gmail.com>
 <45a5bba8de009347262d86a4acb27169d9ae0d9f.camel@xry111.site>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <45a5bba8de009347262d86a4acb27169d9ae0d9f.camel@xry111.site>
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

On Mon, Nov 25, 2024 at 02:55:34PM +0800, Xi Ruoyao wrote:
> On Tue, 2024-10-08 at 12:01 +0300, Juha-Pekka Heikkila wrote:
> > On 4.10.2024 21.03, Ville Syrjälä wrote:
> > > On Fri, Oct 04, 2024 at 04:35:17PM +0300, Juha-Pekka Heikkila wrote:
> > > > On 18.9.2024 17.44, Ville Syrjala wrote:
> > > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > 
> > > > > TGL+ support 10bpc compressed scanout. Enable it.
> > > > > 
> > > > > v2: Set .depth=30 for all variants to match drm_fourcc.c
> > > > >       Set clear color block size to 0x0
> > > > > 
> > > > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > ---
> > > > >    drivers/gpu/drm/i915/display/intel_fb.c       | 36 +++++++++++++++++++
> > > > >    .../drm/i915/display/skl_universal_plane.c    |  8 ++---
> > > > >    2 files changed, 40 insertions(+), 4 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> > > > > index bcf0d016f499..9b9da4f71f73 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > > > > @@ -67,6 +67,18 @@ static const struct drm_format_info gen12_ccs_formats[] = {
> > > > >    	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
> > > > >    	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> > > > >    	  .hsub = 1, .vsub = 1, .has_alpha = true },
> > > > > +	{ .format = DRM_FORMAT_XRGB2101010, .depth = 30, .num_planes = 2,
> > > > > +	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> > > > > +	  .hsub = 1, .vsub = 1, },
> > > > > +	{ .format = DRM_FORMAT_XBGR2101010, .depth = 30, .num_planes = 2,
> > > > > +	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> > > > > +	  .hsub = 1, .vsub = 1, },
> > > > > +	{ .format = DRM_FORMAT_ARGB2101010, .depth = 30, .num_planes = 2,
> > > > 
> > > > Is that comment about depth=30 for all variants because of these alpha
> > > > formats? Why is that? Here on other formats alpha is taken as part of
> > > > depth, like in above "DRM_FORMAT_ABGR8888, .depth = 32"
> > > 
> > > That stuff is just legacy compatibility stuff, and back in
> > > the day peope decided that depth==32 simply means ARGB8888.
> > > I'm not sure we should even state depth=30 on ARGB2101010
> > > at all, or would it be better to leave it at 0.
> > > 
> > > Another option might be to just set .depth=0 on absolutely
> > > all compressed formats. Using these with some legacy uapi
> > > which only talks in terms of bpp and depth doesn't seem
> > > feasible anyway.
> > > 
> > > But for now I think we just want to match drm_fourcc.c since
> > > that's what we did for the other compressed formats.
> > 
> > ack. patch set is
> > 
> > Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> 
> Hi Ville and Juha-Pekka,
> 
> Unfortunately this commit has caused gnome-shell to display nothing on
> my system.  Its log contains error messages:
> 
>     Failed to ensure KMS FB ID on /dev/dri/card1: drmModeAddFB2WithModifiers failed: Invalid argument
>     meta_frame_native_release: assertion '!frame_native->kms_update' failed
> 
> Reverting commits 7c35015fab5d ("drm/i915: Enable fp16 + CCS on TGL+")
> and c315fbfa44f4 (this one) "fixes" the issue for me.
> 
> The system does have a TGL (i5-11300H) but I don't think my monitor
> (it's just the display panel of a budget laptop) supports 10bpc.
> 
> Any pointer on debugging this further?

Please file a new bug at
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/new

Boot with 'drm.debug=0x1e log_buf_len=4M' added to the kernel cmdline
and attach the resulting dmesg to the bug.

-- 
Ville Syrjälä
Intel
