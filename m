Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B3BA1429D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 20:50:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4993E10E2CC;
	Thu, 16 Jan 2025 19:50:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E0FiusZM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB6BB10E2CC
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 19:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737057023; x=1768593023;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=T7uUmGN4IuZMFwlighTDlsIcGS7ZqsRF0dKB704ks+I=;
 b=E0FiusZMVuV+bYoY0w5q6J/VAKJAck9tqwwTZjLP6qn0bw6+rpJUutha
 CHFemQZqGKaRxFnU5/9HAYOCIDgO3r702uLgy/P/UvvgE0yaLbnl1BWWU
 pjpMxhnT3if0n7a9nShs3T8sEKINit/WgwljOO+ZXPTMIT4GcN1qLx5F/
 1u4gIaMxlP09nJwgHHHCgeuzndLO0zodq0NvmKzecXXqyBIZW53RtGYvF
 QIGXjaNpoKDvWQrs89ww4o7aPt+OtcoAyk5QQoyZ5RjrmB/7xsWgDh8mk
 zioauFCEH7IBxFttwrU/0tr3Sto7+jCu/JYXYJxN8CI6MlrT9TYUUq61U w==;
X-CSE-ConnectionGUID: cR18LcPkQeW4wT5bAcfPWA==
X-CSE-MsgGUID: gS8Ie/NmQ0aH6cTAbDyIww==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="37582558"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="37582558"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 11:50:23 -0800
X-CSE-ConnectionGUID: NRrKn/D4SyWT8wZ5y1b/gA==
X-CSE-MsgGUID: dZapEKapRjGDLdUBvsaYfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="105740532"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Jan 2025 11:50:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2025 21:50:19 +0200
Date: Thu, 16 Jan 2025 21:50:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/4] drm/i915: Drop 64bpp YUV formats from ICL+ SDR planes
Message-ID: <Z4li-1CL5NGJ0b8E@intel.com>
References: <20241218173650.19782-1-ville.syrjala@linux.intel.com>
 <20241218173650.19782-2-ville.syrjala@linux.intel.com>
 <be79d5ff-a398-4907-94dc-309b45dd2a5b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <be79d5ff-a398-4907-94dc-309b45dd2a5b@intel.com>
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

On Tue, Dec 31, 2024 at 08:01:21PM +0530, Vodapalli, Ravi Kumar wrote:
> 
> 
> 
> On 12/18/2024 11:06 PM, Ville Syrjala wrote:
> > From: Ville Syrjälä<ville.syrjala@linux.intel.com>
> >
> > I'm seeing underruns with these 64bpp YUV formats on TGL.
> >
> > The weird details:
> > - only happens on pipe B/C/D SDR planes, pipe A SDR planes
> >    seem fine, as do all HDR planes
> > - somehow CDCLK related, higher CDCLK allows for bigger plane
> >    with these formats without underruns. With 300MHz CDCLK I
> >    can only go up to 1200 pixels wide or so, with 650MHz even
> >    a 3840 pixel wide plane was OK
> > - ICL and ADL so far appear unaffected
> >
> > So not really sure what's the deal with this, but bspec does
> > state "64-bit formats supported only on the HDR planes" so
> > let's just drop these formats from the SDR planes. We already
> > disallow 64bpp RGB formats.
> >
> > Cc:stable@vger.kernel.org
> > Signed-off-by: Ville Syrjälä<ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 ----
> >   1 file changed, 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index ff9764cac1e7..80e558042d97 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -106,8 +106,6 @@ static const u32 icl_sdr_y_plane_formats[] = {
> >   	DRM_FORMAT_Y216,
> >   	DRM_FORMAT_XYUV8888,
> >   	DRM_FORMAT_XVYU2101010,
> > -	DRM_FORMAT_XVYU12_16161616,
> > -	DRM_FORMAT_XVYU16161616,
> >   };
> 
> If we are seeing underrun on TGL platform only then better would be if 
> we define separate variable similar to
> icl_sdr_y_plane_formats since this variable is used for other platforms 
>  >= 11

Meh. Docs say this shouldn't really be supported in the first place
so I'm inclined to just nuke it across the board. I suspect no one
will actually notice.

> 
> >   
> >   static const u32 icl_sdr_uv_plane_formats[] = {
> > @@ -134,8 +132,6 @@ static const u32 icl_sdr_uv_plane_formats[] = {
> >   	DRM_FORMAT_Y216,
> >   	DRM_FORMAT_XYUV8888,
> >   	DRM_FORMAT_XVYU2101010,
> > -	DRM_FORMAT_XVYU12_16161616,
> > -	DRM_FORMAT_XVYU16161616,
> >   };
> 
> same as above define separate variable
> 
> Regards
> Ravi Kumar V
> 
> >   
> >   static const u32 icl_hdr_plane_formats[] = {

-- 
Ville Syrjälä
Intel
