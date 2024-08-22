Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D721995B280
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 12:00:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB47010E824;
	Thu, 22 Aug 2024 10:00:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CTt9CdrS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F89910E824
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2024 10:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724320809; x=1755856809;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=COQlSFex/mi9SGk5oVNMgR7QwC++mpd0S5OtaC4nIPM=;
 b=CTt9CdrSn5ixnEtjY20lCJ26ZsaY1fEeeN5DSqkXrat5HWzOCk6GBwvV
 ekrV5WV7nyNi124qaxpJO99n0TOPR2oMqSxkFmsgA4ATQK2KQk7leDDiI
 rpHClrGff71vNsGpkS0n0iy0wVORKkMNauHE1T0B00yYBs5hte9GCDxZB
 mHonpeCshy5U3QxSuhOI//os8u+GWvsIPfN+Twex6VfZJ/2AHrfispxjy
 8joNL9OCSuz8lAJZCXBvzq7vTyVlUUVdiN5AuhLwgfUTtbGUjuG1znA6Q
 R0NY8kykSP/kMAWDqrbG99BUBCAvW3oL3v33Tsgg7gKfT3wN2+1AYKV2z w==;
X-CSE-ConnectionGUID: 6+8en7TYS7a5A1fhw9NblQ==
X-CSE-MsgGUID: 44BzuL6FQKSuG0X4QY/EjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="22594183"
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="22594183"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 03:00:08 -0700
X-CSE-ConnectionGUID: h9XW54hXTmK3ZPnKTA0k4w==
X-CSE-MsgGUID: aqRUE4Z8SUiF7CpYAVdSxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="61386805"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 03:00:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dp_mst: Fix MST state after a sink reset
In-Reply-To: <ZsX44RvNJ96cAV0i@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240724161223.2291853-1-imre.deak@intel.com>
 <87ttfe3qn4.fsf@intel.com> <ZsX44RvNJ96cAV0i@ideak-desk.fi.intel.com>
Date: Thu, 22 Aug 2024 13:00:03 +0300
Message-ID: <87frqw513w.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 21 Aug 2024, Imre Deak <imre.deak@intel.com> wrote:
> On Wed, Aug 21, 2024 at 05:19:11PM +0300, Jani Nikula wrote:
>> On Wed, 24 Jul 2024, Imre Deak <imre.deak@intel.com> wrote:
>> > In some cases the sink can reset itself after it was configured into MST
>> > mode, without the driver noticing the disconnected state. For instance
>> > the reset may happen in the middle of a modeset, or the (long) HPD pulse
>> > generated may be not long enough for the encoder detect handler to
>> > observe the HPD's deasserted state. In this case the sink's DPCD
>> > register programmed to enable MST will be reset, while the driver still
>> > assumes MST is still enabled. Detect this condition, which will tear
>> > down and recreate/re-enable the MST topology.
>> >
>> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11195
>> > Signed-off-by: Imre Deak <imre.deak@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dp.c     |  3 +++
>> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 30 +++++++++++++++++++++
>> >  drivers/gpu/drm/i915/display/intel_dp_mst.h |  1 +
>> >  3 files changed, 34 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> > index 1e43e32e05199..c621f6daf8235 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > @@ -5878,6 +5878,9 @@ intel_dp_detect(struct drm_connector *connector,
>> >  	else
>> >  		status = connector_status_disconnected;
>> >  
>> > +	if (!intel_dp_mst_verify_dpcd_state(intel_dp))
>> > +		status = connector_status_disconnected;
>> > +
>> 
>> So I still don't understand. We've got a detect which we've determined
>> is connected. But then we disconnect because the sink state has changed.
>> 
>> How do we get another connect?
>
> The detect in this case will be retried with a 1 sec delay, since the
> mode changes back to SST and the connector state stays disconnected.

What exactly triggers the retry? I don't see this triggering the
INTEL_HOTPLUG_RETRY case.

I'm just trying to understand, please bear with me.

BR,
Jani.


>
>> BR,
>> Jani.
>> 
>> 
>> >  	if (status == connector_status_disconnected) {
>> >  		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
>> >  		memset(intel_connector->dp.dsc_dpcd, 0, sizeof(intel_connector->dp.dsc_dpcd));
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > index 27ce5c3f5951e..89b147e37b400 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > @@ -1998,3 +1998,33 @@ bool intel_dp_mst_crtc_needs_modeset(struct intel_atomic_state *state,
>> >  
>> >  	return false;
>> >  }
>> > +
>> > +/**
>> > + * intel_dp_mst_verify_dpcd_state - verify the MST SW enabled state wrt. the DPCD
>> > + * @intel_dp: DP port object
>> > + *
>> > + * Verify if @intel_dp's MST enabled SW state matches the corresponding DPCD
>> > + * state. A long HPD pulse -not long enough to be detected as a disconnected
>> > + * state - could've reset the DPCD state, which requires tearing
>> > + * down/recreating the MST topology.
>> > + *
>> > + * Returns %true if the SW MST enabled and DPCD states match, %false
>> > + * otherwise.
>> > + */
>> > +bool intel_dp_mst_verify_dpcd_state(struct intel_dp *intel_dp)
>> > +{
>> > +	int ret;
>> > +	u8 val;
>> > +
>> > +	if (!intel_dp->is_mst)
>> > +		return true;
>> > +
>> > +	ret = drm_dp_dpcd_readb(intel_dp->mst_mgr.aux, DP_MSTM_CTRL, &val);
>> > +	if (ret < 0)
>> > +		return false;
>> > +
>> > +	if (val != (DP_MST_EN | DP_UP_REQ_EN | DP_UPSTREAM_IS_SRC))
>> > +		return false;
>> > +
>> > +	return true;
>> > +}
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/drm/i915/display/intel_dp_mst.h
>> > index 8ca1d599091c6..9e4c7679f1c3a 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
>> > @@ -27,5 +27,6 @@ int intel_dp_mst_atomic_check_link(struct intel_atomic_state *state,
>> >  				   struct intel_link_bw_limits *limits);
>> >  bool intel_dp_mst_crtc_needs_modeset(struct intel_atomic_state *state,
>> >  				     struct intel_crtc *crtc);
>> > +bool intel_dp_mst_verify_dpcd_state(struct intel_dp *intel_dp);
>> >  
>> >  #endif /* __INTEL_DP_MST_H__ */
>> 
>> -- 
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
