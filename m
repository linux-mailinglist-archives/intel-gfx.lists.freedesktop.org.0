Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9ACA18008
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 15:38:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F05910E5D7;
	Tue, 21 Jan 2025 14:38:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OaAwLm39";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6EE010E5D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2025 14:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737470308; x=1769006308;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HzVo9yPpsqhp1crzChWM0Pprz+MbUDRA16WBkOYQ1q4=;
 b=OaAwLm397+JMzZ9zwtCWNVKJNX8iaZQ9PtqXoMLkts/jtX4lCBTZvihg
 C1hGsvK2dqV/2P+zJqu1Jds1+/rrae1CRK64WIQLaHUEu0/dIedFlwA1Z
 cZ361+du0nSJ3ubrOXjkgjEodKMbo+bU1+zO0jpIcxkfNSQ2oOojYClxj
 25ts4jOGmUK+BTVEHKv5EWXdWPaUs649LHu/2VM3ndVWueJnQBL+3YT2U
 vYPGDcXrGXSwV4CKrT7fURmcITQZQCuPTxa1SxdAb18f/FYwOkVURTcdz
 Ls8auQfh7a1wwi6OoneE0zfqDrAjRL4QhcjL16le25HUmXH+w0iEMc+yN Q==;
X-CSE-ConnectionGUID: 7v26Vj1pQu2dD/0y+0kdyA==
X-CSE-MsgGUID: JAnpL+ntT824UQEsKv2DUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="38037122"
X-IronPort-AV: E=Sophos;i="6.13,222,1732608000"; d="scan'208";a="38037122"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 06:38:27 -0800
X-CSE-ConnectionGUID: TNeEfjboRt6R6jQQJanMLg==
X-CSE-MsgGUID: MddVg7TOTiuVZkY111AqFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,222,1732608000"; d="scan'208";a="106939151"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 21 Jan 2025 06:38:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Jan 2025 16:38:23 +0200
Date: Tue, 21 Jan 2025 16:38:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Paz Zcharya <pazz@chromium.org>
Subject: Re: [PATCH 1/8] drm/i915: Keep TRANS_VBLANK.vblank_start==0 on ADL+
 even when doing LRR updates
Message-ID: <Z4-xX7BBIBNHbBLI@intel.com>
References: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
 <20250116201637.22486-2-ville.syrjala@linux.intel.com>
 <875xm9qvmo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <875xm9qvmo.fsf@intel.com>
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

On Mon, Jan 20, 2025 at 06:48:31PM +0200, Jani Nikula wrote:
> On Thu, 16 Jan 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > intel_set_transcoder_timings() will set TRANS_VBLANK.vblank_start to 0
> > for clarity on ADL+ (non-DSI) because the hardware no longer uses that
> > value. So the same in intel_set_transcoder_timings_lrr() to make sure
> > the registers stay constitent even when doing LRR timing updates.
> >
> > Cc: Paz Zcharya <pazz@chromium.org>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Hmm, so how come this doesn't warrant a change in readout?
> 
> Apparently because intel_get_transcoder_timings() overwrites the read
> value for display 13+ and non-dsi. Hrmh.

Yeah, it's a bit dodgy. I did originally ponder about adding some
kind of sanity check to readout too, but the GOP might still put
something into TRANS_VBLANK.vblank_start which would cause a false
positive.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index f5d2eacce119..5ba3b2d658e5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -2923,6 +2923,14 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
> >  	crtc_vblank_start = adjusted_mode->crtc_vblank_start;
> >  	crtc_vblank_end = adjusted_mode->crtc_vblank_end;
> >  
> > +	if (DISPLAY_VER(dev_priv) >= 13) {
> > +		/*
> > +		 * VBLANK_START not used by hw, just clear it
> > +		 * to make it stand out in register dumps.
> > +		 */
> > +		crtc_vblank_start = 1;
> > +	}
> > +
> >  	drm_WARN_ON(&dev_priv->drm, adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE);
> >  
> >  	/*
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
