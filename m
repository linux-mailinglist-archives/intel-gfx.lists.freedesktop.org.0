Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F8B86DE05
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 10:19:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B452110E0C7;
	Fri,  1 Mar 2024 09:19:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IdUzp94O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A931210E0C7
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 09:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709284741; x=1740820741;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=v1mTWDTINID164Avhq8/QXuVTu+Oa7zgpu1mD6wNMwk=;
 b=IdUzp94O6Oc7pe+kJ+x/YIOidhyZRxAFbroY+xwqyvuCXe+xSLGVAMrQ
 omeRDjT5W4kr+gxVt2i9sdjdPJ2OD1CxkOG9WfmVElerPhKLPVS5+6nFc
 frWE6T1zH6nYp2oiwIG1Kltjw6ChMd8AQdllvc52cv2GvLFZFtqXvWX+V
 wgQnyoaKzRMMU/GwCx+KmdOtRz6vqBOuek5T7KXNWENxg5IW9RZ/Zw8HI
 rC7ktE+bnrXG33GRf3hU+IGgfEa3oh47aPAnrzmuNuJsEDlF4yiS9hTul
 14zJD72B4O/NF3IwtcFk+e34rou3ptGBAVg+Xp91vDckDyoe377ltiLgx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="14382546"
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; d="scan'208";a="14382546"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 01:19:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="827771885"
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; d="scan'208";a="827771885"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 01 Mar 2024 01:18:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Mar 2024 11:18:56 +0200
Date: Fri, 1 Mar 2024 11:18:56 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Charlton Lin <charlton.lin@intel.com>, intel-gfx@lists.freedesktop.org,
 Khaled Almahallawy <khaled.almahallawy@intel.com>,
 Sean Paul <seanpaul@chromium.org>
Subject: Re: [RFC] drm/i915/dp: Log message when limiting SST link rate
Message-ID: <ZeGdgIBjkTcyKtoz@intel.com>
References: <20240301074923.485807-1-charlton.lin@intel.com>
 <87v8665nhc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87v8665nhc.fsf@intel.com>
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

On Fri, Mar 01, 2024 at 11:07:43AM +0200, Jani Nikula wrote:
> On Thu, 29 Feb 2024, Charlton Lin <charlton.lin@intel.com> wrote:
> > Driver currently limits link rate up to HBR3 in SST mode. Log a
> > message with monitor vendor, product id, and MSTM_CAP to
> > help understand what monitors are being downgraded by this limit.
> 
> Any logging of the sink details should be done exactly once at detect
> time. No matter what happens after that, there's no need to spam the
> dmesg with duplicate information. If the information currently logged is
> insufficient, please add it at detect, where it helps *all* debugging,
> not just a single restricted case.
> 
> More details inline.
> 
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
> > Cc: Sean Paul <seanpaul@chromium.org>
> > Signed-off-by: Charlton Lin <charlton.lin@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 6ece2c563c7a..0b2d6d88fd37 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2437,6 +2437,25 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
> >  						     false,
> >  						     &limits);
> >  
> > +	if (intel_dp_max_common_rate(intel_dp) > limits.max_rate) {
> 
> If link training has failed and the max rate is limited due to that,
> you'll hit this on all retraining attempts.
> 
> And, of course, this is hit at every single modeset for 128b/132b
> capable displays that don't support MST. That's just excessive.
> 
> > +		u8 mstm_cap;
> > +		u32 panel_id = drm_edid_get_panel_id(&intel_dp->aux.ddc);
> 
> That reads the entire EDID base block again in the middle of compute
> config. A big no. We've also taken care to cache the EDID to avoid
> duplicate reads otherwise.
> 
> Moreover, it ignores any EDID overrides etc.
> 
> > +		char vend[4];
> > +		u16 product_id;
> > +
> > +		drm_dbg_kms(&i915->drm,
> > +			    "Limiting LR from max common rate %d to %d\n",
> > +			    intel_dp_max_common_rate(intel_dp), limits.max_rate);
> > +
> > +		drm_edid_decode_panel_id(panel_id, vend, &product_id);
> > +
> > +		if (intel_dp->dpcd[DP_DPCD_REV] >= DP_DPCD_REV_12 &&
> > +		    drm_dp_dpcd_readb(&intel_dp->aux, DP_MSTM_CAP, &mstm_cap) == 1)
> 
> We shouldn't add extra DPCD reads nilly willy either. This should be
> debug logged once at detect. I've got a WIP series that should address
> this [1], once I fix it.

Also the stone tablets say "thou shalt not touch the hardware
in atomic_check()/.compute_config()".

This stuff gets executed for every TEST_ONLY commit, which means it:
- potentially runs while the hardware is asleep
- should be relatively fast

> 
> > +			drm_dbg_kms(&i915->drm,
> > +				    "Manufacturer=%s Model=%x Sink MSTM_CAP=%x\n",
> > +				    vend, product_id, mstm_cap);
> 
> Ville and I have discussed adding entire EDID debug logging at
> drm_edid.c level, which would address a lot more things than this.
> 
> BR,
> Jani.
> 
> 
> [1] https://patchwork.freedesktop.org/series/129468/
> 
> 
> 
> > +	}
> > +
> >  	if (!dsc_needed) {
> >  		/*
> >  		 * Optimize for slow and wide for everything, because there are some
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
