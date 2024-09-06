Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 613E696F975
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 18:39:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 581DA10EA75;
	Fri,  6 Sep 2024 16:39:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BwcEgObV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CCBA10EAA6
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 16:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725640778; x=1757176778;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3wCHXg6mnfmXLhLjtDBOePkVOQOmcrl8yyqV9BRyfP4=;
 b=BwcEgObVg2zgtRRUYb3VjWAGMDhowMeF4zAGYOIpPuXxDQicvDCaKFPo
 yMKlc7aGgpuSSAzljncW5b5t/7pSDELdH+mK7foMNtdfJO7jmKoX15pbv
 MhX5SZzyW/mnYNBd23eDp5Wqx0sVrEqJb4quVjfnVPMpgRsIn5ZWcoKfd
 4kzoG+72yja9BDZ/Njr7aRDE+DskjQWVPm74Ap4kLtJOaXzHo/c9RWBmB
 DQIowY5BILuiHPwfmIw+TBUJBS+SwQtMPe+kCFar3HQE/HgxiaE4jso7V
 /5lt/PlGoILTGRXqo4xBomFLysLdZKxqctwJafh1B0SMCIPvWuGs9SjRL A==;
X-CSE-ConnectionGUID: yRGleCfmQCmTUQPHdrmpvQ==
X-CSE-MsgGUID: kvVy77fXTMmphJEwO3qLxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="28290001"
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="28290001"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 09:39:37 -0700
X-CSE-ConnectionGUID: uIplcdBeRg25xgFKvV25dw==
X-CSE-MsgGUID: h4X4bvP8QVeCGaKTDaAUMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="66042657"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Sep 2024 09:39:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Sep 2024 19:39:33 +0300
Date: Fri, 6 Sep 2024 19:39:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 10/14] drm/i915/display/vdsc: Add ultrajoiner support
 with DSC
Message-ID: <ZtswRWzoCkWptOTG@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
 <20240906125807.3960642-11-ankit.k.nautiyal@intel.com>
 <ZtsuGMVpU89ow48_@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZtsuGMVpU89ow48_@intel.com>
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

On Fri, Sep 06, 2024 at 07:30:16PM +0300, Ville Syrjälä wrote:
> On Fri, Sep 06, 2024 at 06:28:03PM +0530, Ankit Nautiyal wrote:
> > From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > 
> > Add changes to DSC which are required for Ultrajoiner.
> > 
> > v2:
> > -Use correct helper for setting bits for bigjoiner secondary. (Ankit)
> > -Use enum for joiner pipe count instead magic numbers. (Suraj)
> > -Use primary/secondary instead of master/slave. (Suraj)
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vdsc.c | 26 +++++++++++++++++++++--
> >  1 file changed, 24 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index 8158e3702ed5..66e810c8de68 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -379,9 +379,11 @@ static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state
> >  int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
> >  {
> >  	int num_vdsc_instances = intel_dsc_get_vdsc_per_pipe(crtc_state);
> > +	int joined_pipes = intel_joiner_num_pipes(crtc_state);
> >  
> > -	if (crtc_state->joiner_pipes)
> > -		num_vdsc_instances *= 2;
> > +	if (joined_pipes == INTEL_BIG_JOINER_PIPES ||
> > +	    joined_pipes == INTEL_ULTRA_JOINER_PIPES)
> > +		num_vdsc_instances *= joined_pipes;
> >  
> >  	return num_vdsc_instances;
> >  }
> > @@ -751,6 +753,14 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
> >  	}
> >  }
> >  
> > +static bool intel_crtc_ultrajoiner_enable_needed(const struct intel_crtc_state *crtc_state)
> > +{
> > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +
> > +	return intel_joiner_num_pipes(crtc_state) == INTEL_ULTRA_JOINER_PIPES &&
> > +	       crtc->pipe != PIPE_D;
> > +}
> > +
> >  void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > @@ -770,7 +780,19 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
> >  		dss_ctl1_val |= JOINER_ENABLE;
> >  	}
> >  	if (crtc_state->joiner_pipes) {
> > +		/*
> > +		 * This bit doesn't seem to follow primary/secondary logic or
> > +		 * any other logic, so lets just add helper function to
> > +		 * at least hide this hassle..
> > +		 */
> > +		if (intel_crtc_ultrajoiner_enable_needed(crtc_state))
> 
> What is this crazyness? This would throw a big wrench into
> the works, eg. the ultrajoiner readout would not work as intended.

Hmm. I do see a note to this effect in bspec. But that doesn't make
any real sense. I would expect that we either enable this for
everything, or only for pipes A+C (the bigjoiner primaries).
The latter would seem sensible, but it would also mean that
we need to rethink the readout as well.

> 
> > +			dss_ctl1_val |= ULTRA_JOINER_ENABLE;
> > +
> > +		if (intel_crtc_is_ultrajoiner_primary(crtc_state))
> > +			dss_ctl1_val |= PRIMARY_ULTRA_JOINER_ENABLE;
> > +
> >  		dss_ctl1_val |= BIG_JOINER_ENABLE;
> > +
> >  		if (intel_crtc_is_bigjoiner_primary(crtc_state))
> >  			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
> >  	}
> > -- 
> > 2.45.2
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
