Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0160A07C2D
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 16:43:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B6C510EEBF;
	Thu,  9 Jan 2025 15:43:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WTRJtyqC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7030610EEBE
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2025 15:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736437427; x=1767973427;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SXDUxkyaa2504xKVZEbHvNtL2OKkDXNQHhsXuDaP+DI=;
 b=WTRJtyqC8/KSNf7VGQCUNkmQvH/g3zUNyMDC9MHCS+9jdSAouHKwkSZi
 pNmY3fHAVOUnLFbqkap/kUpB3kS2e3EVXJphlgd0cQ6ZMYgdTip4ZYCgW
 pCJspqwpw+9KryIpQknp+JStObhZNUQ9V9ukSUjyyCC8ocNHAcu7cQHbm
 emEOHrBRTw3HWB+/cA89PLUogZmNR4BA1+WnST1WqIFmAUBkBHOhjdKon
 VNnQoGXBEtNi0vCaSgnD1wkZIkquwGCa6My6hA9NQx8A9rGMS6EYu68NG
 jGKhaXs13sR9voQQ4UQtv6Lomys/EfBrNcdJK0VE00Ul1RyfmB4Cqbf1r Q==;
X-CSE-ConnectionGUID: Mt5vCjDFSwKoPPWQJFTBKg==
X-CSE-MsgGUID: SzeePo7jRZyGQwGE0iYPlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="36602443"
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="36602443"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 07:43:47 -0800
X-CSE-ConnectionGUID: 3yrrew4KRea7PPtJGM6yDw==
X-CSE-MsgGUID: v/aRaiPDS2+b7tzkkOM6Sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="103638147"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Jan 2025 07:43:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Jan 2025 17:43:44 +0200
Date: Thu, 9 Jan 2025 17:43:44 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 01/18] drm/i915: Extract intel_crtc_vblank_delay()
Message-ID: <Z3_usEDf9GYMPgFo@intel.com>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
 <20241210211007.5976-2-ville.syrjala@linux.intel.com>
 <b09efa6e-3ff6-4ce5-9e34-c717dd749bce@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b09efa6e-3ff6-4ce5-9e34-c717dd749bce@intel.com>
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

On Fri, Jan 03, 2025 at 04:54:53PM +0530, Nautiyal, Ankit K wrote:
> 
> On 12/11/2024 2:39 AM, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Pull the vblank delay computation into a separate function.
> > We'll need more logic here soon and we don't want to pollute
> > intel_crtc_compute_config() with low level details.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_display.c | 24 +++++++++++++++-----
> >   1 file changed, 18 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 8e90e99a25d6..ff907afa6451 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -2610,16 +2610,29 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
> >   	return 0;
> >   }
> >   
> > -static bool intel_crtc_needs_wa_14015401596(struct intel_crtc_state *crtc_state)
> > +static bool intel_crtc_needs_wa_14015401596(const struct intel_crtc_state *crtc_state)
> >   {
> >   	struct intel_display *display = to_intel_display(crtc_state);
> > -	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> >   
> >   	return intel_vrr_possible(crtc_state) && crtc_state->has_psr &&
> > -		adjusted_mode->crtc_vblank_start == adjusted_mode->crtc_vdisplay &&
> >   		IS_DISPLAY_VER(display, 13, 14);
> >   }
> >   
> > +static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
> > +{
> > +	struct intel_display *display = to_intel_display(crtc_state);
> > +	int vblank_delay = 0;
> > +
> > +	if (!HAS_DSB(display))
> > +		return 0;
> 
> Is this because W2 window is configured to be non zero only when 
> platforms support DSB and DSB is in use?

It's only a thing for platforms with DSB, and there should be no
need for the extra delay when not using the DSB. I was mildly tempted
to even check i915_params.enable_dsb here, but that can changed
dynamically via debufs which would require us to reconfigure the
vblank delay on the fly (and that we can't currently do).

-- 
Ville Syrjälä
Intel
