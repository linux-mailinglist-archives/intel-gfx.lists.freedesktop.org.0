Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F61A7E5BE5
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Nov 2023 18:02:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 737C410E7F4;
	Wed,  8 Nov 2023 17:02:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72F3F10E7F4
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Nov 2023 17:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699462939; x=1730998939;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GcuaiyyrJ6QUrTHmAjBWwac3ZJBHg36T4SJNMMRmSz0=;
 b=lxC8EEfa9dZ9DgNsIIS0XTxu6tMXTKSKEE0+V97tIF7flVRAON0wT3Mt
 iaUTX4XfoerbvHKGupuhuLVysDjGw6dkDiWqdBbRzC2XDyV0SCx3vKIku
 4/Xh49RgU/ZAFW/kqzllnpK5ExX+2d0iMki1qLNCHkDLk60Z4aQqmGz47
 XWkPmYKh8YPvmmreXi5qveYErAbATwrXH/Lw+5VNGVH9b5THIlmOCaQUc
 /Soucbg492waksiQV09fnoqbTuSU0MR5dI39eMdNVSJV+DzURDupMRSKc
 4QcxsS+4+MFk3GSeLDbMtpvFzjJtzKRXHWhP2v+3jMaIf3Aa8aMzMCRq1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="369147478"
X-IronPort-AV: E=Sophos;i="6.03,286,1694761200"; d="scan'208";a="369147478"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 09:02:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="756595278"
X-IronPort-AV: E=Sophos;i="6.03,286,1694761200"; d="scan'208";a="756595278"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 08 Nov 2023 09:02:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Nov 2023 19:02:15 +0200
Date: Wed, 8 Nov 2023 19:02:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZUu_FwaFCmS4_9nw@intel.com>
References: <20231106114228.146574-1-mika.kahola@intel.com>
 <ZUu-ZmzJ55_P6C2L@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZUu-ZmzJ55_P6C2L@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/display: Support PSR entry VSC
 packet to be transmitted one frame earlier
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

On Wed, Nov 08, 2023 at 06:59:18PM +0200, Ville Syrjälä wrote:
> On Mon, Nov 06, 2023 at 01:42:28PM +0200, Mika Kahola wrote:
> > Display driver shall read DPCD 00071h[3:1] during configuration
> > to get PSR setup time. This register provides the setup time
> > requirement on the VSC SDP entry packet. If setup time cannot be
> > met with the current timings
> > (e.g., PSR setup time + other blanking requirements > blanking time),
> > driver should enable sending VSC SDP one frame earlier before sending
> > the capture frame.
> > 
> > BSpec: 69895 (PSR Entry Setup Frames 17:16)
> > 
> > v2: Write frames before su entry to correct register (Ville, Jouni)
> >     Move frames before su entry calculation to it's
> >     own function (Ville, Jouni)
> >     Rename PSR Entry Setup Frames register to indicate
> >     Lunarlake specificity (Jouni)
> > v3: Modify setup entry frames calculation function to
> >     return the actual frames (Ville)
> >     Match comment with actual implementation (Jouni)
> > v4: Drop "set" from function naming (Jouni, Ville)
> >     Use i915 instead of dev_priv (Jouni)
> > 
> > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  1 +
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 82 +++++++++++++++----
> >  drivers/gpu/drm/i915/display/intel_psr_regs.h |  2 +
> >  3 files changed, 71 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 047fe3f8905a..92f06d67fd1e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1708,6 +1708,7 @@ struct intel_psr {
> >  	u32 dc3co_exitline;
> >  	u32 dc3co_exit_delay;
> >  	struct delayed_work dc3co_work;
> > +	u8 entry_setup_frames;
> >  };
> >  
> >  struct intel_dp {
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 920f77336163..fc242916349b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -593,6 +593,9 @@ static void intel_psr_enable_sink(struct intel_dp *intel_dp)
> >  	if (intel_dp->psr.req_psr2_sdp_prior_scanline)
> >  		dpcd_val |= DP_PSR_SU_REGION_SCANLINE_CAPTURE;
> >  
> > +	if (intel_dp->psr.entry_setup_frames > 0)
> > +		dpcd_val |= DP_PSR_FRAME_CAPTURE;
> > +
> >  	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, dpcd_val);
> >  
> >  	drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
> > @@ -691,6 +694,9 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
> >  	if (DISPLAY_VER(dev_priv) >= 8)
> >  		val |= EDP_PSR_CRC_ENABLE;
> >  
> > +	if (DISPLAY_VER(dev_priv) >= 20)
> > +		val |= LNL_EDP_PSR_ENTRY_SETUP_FRAMES(intel_dp->psr.entry_setup_frames);
> > +
> >  	intel_de_rmw(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder),
> >  		     ~EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK, val);
> >  }
> > @@ -728,11 +734,27 @@ static int psr2_block_count(struct intel_dp *intel_dp)
> >  	return psr2_block_count_lines(intel_dp) / 4;
> >  }
> >  
> > +static u8 frames_before_su_entry(struct intel_dp *intel_dp)
>           ^^
> 
> That vs -ETIME broke my tgl.
> 
> > +static u8 intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
            ^^
No, actually that ...

> > +					   const struct drm_display_mode *adjusted_mode)
> > +{
> > +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > +	int psr_setup_time = drm_dp_psr_setup_time(intel_dp->psr_dpcd);
> > +	u8 entry_setup_frames = 0;
        ^^
... and that.

-- 
Ville Syrjälä
Intel
