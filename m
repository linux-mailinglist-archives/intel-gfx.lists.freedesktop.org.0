Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 223206C49DF
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 13:05:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F9D710E925;
	Wed, 22 Mar 2023 12:05:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61CE410E925
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 12:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679486703; x=1711022703;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=QvMZPaJwnK4kFCsy4YYVhyy5WtXeS95sOFdIdvxR8Yk=;
 b=XRJX57zy7Es5g4jEM6zAHvPhcN0T6kLw54XIIaBGJj0pvsbCuHlA00he
 g2iFdYgCvHI3uHypz8dklWCqkxmExIcrK/nWLRoOuhvKVzgtye9Cwv0pg
 zII1gJ+7fIdg5AHJQl+QrQZ1Zw19teffP1t9mHqNf9XEDAOLdLVLVoJtp
 r+/XMWX7i3IHP83ClWZmc4kFeOG0ibvvOKyWwCtwwzXNLkHDpS/ebJwuY
 iw5jiC3zcSUMAT3x1SvdG4XRJkUPIc22dG17Xgajg6woyA3zIc6Vf/b4U
 1FTFVKdCm/GxErqMXXceM68x0IVSjdHTP1lMJpm+tUgBREaBdKAbY9nLh w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="401764208"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="401764208"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 05:05:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="712180199"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="712180199"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 05:04:58 -0700
Date: Wed, 22 Mar 2023 14:04:55 +0200
From: Imre Deak <imre.deak@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZBru53JJO0jdpj/j@ideak-desk.fi.intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
 <20230316131724.359612-2-imre.deak@intel.com>
 <65970908-9396-dda8-e4b5-746ab24894f4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <65970908-9396-dda8-e4b5-746ab24894f4@intel.com>
Subject: Re: [Intel-gfx] [PATCH 01/14] drm/i915/tc: Abort DP AUX transfer on
 a disconnected TC port
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
Reply-To: imre.deak@intel.com
Cc: Chris Chiu <chris.chiu@canonical.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 22, 2023 at 12:19:26PM +0100, Andrzej Hajda wrote:
> On 16.03.2023 14:17, Imre Deak wrote:
> > On TC ports the 4ms AUX timeout combined with the 5 * 32 retry
> > attempts during DPCD accesses adds a 640ms delay to each access if the
> > sink is disconnected. This in turn slows down a modeset during which the
> > sink is disconnected (for instance a disabling modeset).
> > 
> > Prevent the above delay by aborting AUX transfers on a TC port with a
> > disconnected sink.
> > 
> > The DP 1.4a link CTS (4.2.1.5 Source Device Inactive HPD / Inactive AUX
> > Test") also requires not to initiate AUX transfers on disconnected DP
> > ports in general, however this patch doesn't change the behavior on
> > non-TC ports, leaving that for a follow-up.
> > 
> > Reported-and-tested-by: Chris Chiu <chris.chiu@canonical.com>
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8279
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_dp_aux.c | 15 +++++++++++++--
> >   drivers/gpu/drm/i915/display/intel_tc.c     | 15 +++++++++++----
> >   drivers/gpu/drm/i915/display/intel_tc.h     |  1 +
> >   3 files changed, 25 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > index 96967e21c94c2..eb07dc5d87099 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > @@ -205,8 +205,19 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >   	for (i = 0; i < ARRAY_SIZE(ch_data); i++)
> >   		ch_data[i] = intel_dp->aux_ch_data_reg(intel_dp, i);
> > -	if (is_tc_port)
> > +	if (is_tc_port) {
> >   		intel_tc_port_lock(dig_port);
> > +		/*
> > +		 * Abort transfers on a disconnected port as required by
> > +		 * DP 1.4a link CTS 4.2.1.5, also avoiding the long AUX
> > +		 * timeouts that would otherwise happen.
> > +		 * TODO: abort the transfer on non-TC ports as well.
> 
> Yes, for all ports this is definitely desirable, for example grep shows
> about 15000 timeouts per one CI dmesg[1].
> 
> At least I hope, this cures the plague.

Looks like a different scenario where HDMI and DP share the same HPD
pin.

> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Thanks.

> 
> [1]:
> http://gfx-ci.igk.intel.com/tree/drm-tip/CI_DRM_12884/fi-elk-e7500/dmesg0.txt
> 
> Regards
> Andrzej
> 
> 
> > +		 */
> > +		if (!intel_tc_port_connected_locked(&dig_port->base)) {
> > +			ret = -ENXIO;
> > +			goto out_unlock;
> > +		}
> > +	}
> >   	aux_domain = intel_aux_power_domain(dig_port);
> > @@ -367,7 +378,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >   	intel_pps_unlock(intel_dp, pps_wakeref);
> >   	intel_display_power_put_async(i915, aux_domain, aux_wakeref);
> > -
> > +out_unlock:
> >   	if (is_tc_port)
> >   		intel_tc_port_unlock(dig_port);
> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> > index f45328712bff1..050f998284592 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > @@ -768,16 +768,23 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port)
> >    * connected ports are usable, and avoids exposing to the users objects they
> >    * can't really use.
> >    */
> > +bool intel_tc_port_connected_locked(struct intel_encoder *encoder)
> > +{
> > +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> > +
> > +	drm_WARN_ON(&i915->drm, !intel_tc_port_ref_held(dig_port));
> > +
> > +	return tc_port_live_status_mask(dig_port) & BIT(dig_port->tc_mode);
> > +}
> > +
> >   bool intel_tc_port_connected(struct intel_encoder *encoder)
> >   {
> >   	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> >   	bool is_connected;
> >   	intel_tc_port_lock(dig_port);
> > -
> > -	is_connected = tc_port_live_status_mask(dig_port) &
> > -		       BIT(dig_port->tc_mode);
> > -
> > +	is_connected = intel_tc_port_connected_locked(encoder);
> >   	intel_tc_port_unlock(dig_port);
> >   	return is_connected;
> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
> > index d54082e2d5e8d..93813056043a5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tc.h
> > +++ b/drivers/gpu/drm/i915/display/intel_tc.h
> > @@ -17,6 +17,7 @@ bool intel_tc_port_in_dp_alt_mode(struct intel_digital_port *dig_port);
> >   bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port);
> >   bool intel_tc_port_connected(struct intel_encoder *encoder);
> > +bool intel_tc_port_connected_locked(struct intel_encoder *encoder);
> >   u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port);
> >   u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port);
> 
