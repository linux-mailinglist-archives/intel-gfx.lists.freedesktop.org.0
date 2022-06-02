Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F325453BDAA
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 19:57:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F39AE11343B;
	Thu,  2 Jun 2022 17:57:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 155C611343B
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 17:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654192643; x=1685728643;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NewCNzACa4tnL4zUtlzVZOCwYuGHuR3c1ttske52AIU=;
 b=YzR0gGKxfYO5oEtMsDJ07yPaXSMETZWkieDfINj43+fjH0n4CiicG7mY
 DtF5IRmbY55iD15DIocn3+m9cAfrtsNH1oOB41qq0E4tRnWZvPgPWtjCr
 6VxgF9sA12chOuCCECVEEQdxjYehBKA/l0aqKYaAbDubibnT6ln/HoHDv
 ac6eXrzn+RdLmbMuEJa95BsMSNjku90YlIUwOoB+8OMmXCjWgpBiCHOz2
 57laIEWCn5VkBm1t/RzH/uaax7es4HnBLS/I2ecutvmKTJ2yVoeBuEDGJ
 vOVBeW4IydcCoUzO3s1LJMkNxd5Jsa7jvRp2YjH4jQ/5VFz4YaSjYZVuy A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="362401311"
X-IronPort-AV: E=Sophos;i="5.91,272,1647327600"; d="scan'208";a="362401311"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 10:57:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,272,1647327600"; d="scan'208";a="563420902"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga002.jf.intel.com with SMTP; 02 Jun 2022 10:57:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Jun 2022 20:57:19 +0300
Date: Thu, 2 Jun 2022 20:57:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Ypj5/5Yxc4iaahEK@intel.com>
References: <20220601151907.18725-1-ville.syrjala@linux.intel.com>
 <20220601151907.18725-3-ville.syrjala@linux.intel.com>
 <87pmjrpfpz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87pmjrpfpz.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Update eDP fast link training
 link rate parsing
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 02, 2022 at 12:38:48PM +0300, Jani Nikula wrote:
> On Wed, 01 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > We're not parsing the 5.4 Gbps value for the old eDP fast link
> > training link rate, nor are we parsing the new fast link training
> > link rate field. Remedy both.
> >
> > Note that we're not even using this information for anything
> > currently, so should perhaps just nuke it all unless someone
> > is planning on implementing fast link training finally...
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c     | 32 ++++++++++++-------
> >  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  1 +
> >  2 files changed, 21 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index c42b9e7d0dce..d701854dc429 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -1367,18 +1367,26 @@ parse_edp(struct drm_i915_private *i915,
> >  
> >  	panel->vbt.edp.pps = *edp_pps;
> >  
> > -	switch (edp_link_params->rate) {
> > -	case EDP_RATE_1_62:
> > -		panel->vbt.edp.rate = DP_LINK_BW_1_62;
> > -		break;
> > -	case EDP_RATE_2_7:
> > -		panel->vbt.edp.rate = DP_LINK_BW_2_7;
> > -		break;
> > -	default:
> > -		drm_dbg_kms(&i915->drm,
> > -			    "VBT has unknown eDP link rate value %u\n",
> > -			     edp_link_params->rate);
> > -		break;
> > +	if (i915->vbt.version >= 224) {
> > +		panel->vbt.edp.rate =
> > +			edp->edp_fast_link_training_rate[panel_type] * 2;
> 
> So this is in units of 200 kHz.

Right. Or even more specifically it's 200 kbps units (based on the example
values in the spec). So we'll want *20 here to get the 10 kbps units we
use.

> 
> > +	} else {
> > +		switch (edp_link_params->rate) {
> > +		case EDP_RATE_1_62:
> > +			panel->vbt.edp.rate = DP_LINK_BW_1_62;
> 
> However the DP_LINK_BW_* stuff are the values to be written to DPCD. So
> different things end up in panel->vbt.edp.rate depending on VBT
> version. It's a mess. Should probably have the rate there and throw out
> the DP_LINK_BW_* macros.

Oh right, I forgot those are the DPCD values. I'll switch to real
numbers here.

> 
> Otherwise, the logic seems fine.
> 
> BR,
> Jani.
> 
> > +			break;
> > +		case EDP_RATE_2_7:
> > +			panel->vbt.edp.rate = DP_LINK_BW_2_7;
> > +			break;
> > +		case EDP_RATE_5_4:
> > +			panel->vbt.edp.rate = DP_LINK_BW_5_4;
> > +			break;
> > +		default:
> > +			drm_dbg_kms(&i915->drm,
> > +				    "VBT has unknown eDP link rate value %u\n",
> > +				    edp_link_params->rate);
> > +			break;
> > +		}
> >  	}
> >  
> >  	switch (edp_link_params->lanes) {
> > diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > index 14f1e1cc92c5..58aee0a040cf 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > @@ -638,6 +638,7 @@ struct bdb_sdvo_panel_dtds {
> >  #define EDP_30BPP	2
> >  #define EDP_RATE_1_62	0
> >  #define EDP_RATE_2_7	1
> > +#define EDP_RATE_5_4	2
> >  #define EDP_LANE_1	0
> >  #define EDP_LANE_2	1
> >  #define EDP_LANE_4	3
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
