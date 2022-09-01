Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 140475A9310
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 11:26:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA4FD10E673;
	Thu,  1 Sep 2022 09:26:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6CED10E676
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 09:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662024360; x=1693560360;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5tmOnpx3UPUQsmHSbS8m4tYezMOuYGPTflleWkY/iqg=;
 b=mKGEVKG24G3YLB7tVDlvxQxRNmfHnbt3YscL55dFyqT5H1xpN43SXxcj
 3sCqqZverhIHJGeetwlyJKSWuYiKrcaNuTPocb0UhoalhOtPRY8+p82s7
 pq2k0Z8sFJdH372ZpEgomqgfcozshaKmzHSqOW7mh43yYFz/HNKS8KxTN
 NTRcAeYerPj6BYxDSlYKQSA+BNz7Kdii0IfPxlxWNT28P3/QRZQdjdgCA
 sQKqdERHeuKzf1+kdzVpcaMzwvKc6JzOzY7tJh93gwdLE7t6rkeMUYyHp
 IZf6YSyHJA1cWlxSGlApPScma08byKoEVQviQLERq1IBWCAEe25szymMu w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="278684445"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="278684445"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 02:25:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="589417200"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 01 Sep 2022 02:25:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 01 Sep 2022 12:25:36 +0300
Date: Thu, 1 Sep 2022 12:25:36 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <YxB6kH7Tlq2nrpL0@intel.com>
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
 <20220715202044.11153-13-ville.syrjala@linux.intel.com>
 <YtaJ4ThPAKPzBc1a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YtaJ4ThPAKPzBc1a@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 12/12] drm/i915: Parse DP/eDP max lane count
 from VBT
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

On Tue, Jul 19, 2022 at 06:39:29AM -0400, Rodrigo Vivi wrote:
> On Fri, Jul 15, 2022 at 11:20:44PM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Limit the DP lane count based on the new VBT DP/eDP max
> > lane count field.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c | 16 ++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_bios.h |  1 +
> >  drivers/gpu/drm/i915/display/intel_dp.c   | 13 ++++++++++++-
> >  3 files changed, 29 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index cd86b65055ef..d8063c329b3a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -2489,6 +2489,14 @@ static int _intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *de
> >  		return parse_bdb_216_dp_max_link_rate(devdata->child.dp_max_link_rate);
> >  }
> >  
> > +static int _intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
> > +{
> > +	if (!devdata || devdata->i915->vbt.version < 244)
> > +		return 0;
> > +
> > +	return devdata->child.dp_max_lane_count + 1;
> > +}
> > +
> >  static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
> >  				 enum port port)
> >  {
> > @@ -3674,6 +3682,14 @@ int intel_bios_dp_max_link_rate(struct intel_encoder *encoder)
> >  	return _intel_bios_dp_max_link_rate(devdata);
> >  }
> >  
> > +int intel_bios_dp_max_lane_count(struct intel_encoder *encoder)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > +	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[encoder->port];
> > +
> > +	return _intel_bios_dp_max_lane_count(devdata);
> > +}
> 
> do we really need 2 functions here since this one is small and we don't have any
> bit switches and all?!
> or do you plan to reuse this anywhere else later?

This is modelled after the other similar functions. I think Jani had
some plans for cleaning up a lot of this stuff, but dunno how far we
are on that path.

> 
> > +
> >  int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> > index e47582b0de0a..e375405a7828 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> > @@ -258,6 +258,7 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
> >  int intel_bios_max_tmds_clock(struct intel_encoder *encoder);
> >  int intel_bios_hdmi_level_shift(struct intel_encoder *encoder);
> >  int intel_bios_dp_max_link_rate(struct intel_encoder *encoder);
> > +int intel_bios_dp_max_lane_count(struct intel_encoder *encoder);
> >  int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder);
> >  bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915, enum port port);
> >  bool intel_bios_port_supports_tbt(struct drm_i915_private *i915, enum port port);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 32292c0be2bd..0370c4c105dc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -286,11 +286,22 @@ static int intel_dp_max_common_rate(struct intel_dp *intel_dp)
> >  	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
> >  }
> >  
> > +static int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port)
> > +{
> > +	int vbt_max_lanes = intel_bios_dp_max_lane_count(&dig_port->base);
> > +	int max_lanes = dig_port->max_lanes;
> > +
> > +	if (vbt_max_lanes)
> > +		max_lanes = min(max_lanes, vbt_max_lanes);
> > +
> > +	return max_lanes;
> > +}
> > +
> >  /* Theoretical max between source and sink */
> >  static int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
> >  {
> >  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> > -	int source_max = dig_port->max_lanes;
> > +	int source_max = intel_dp_max_source_lane_count(dig_port);
> >  	int sink_max = intel_dp->max_sink_lane_count;
> >  	int fia_max = intel_tc_port_fia_max_lane_count(dig_port);
> >  	int lttpr_max = drm_dp_lttpr_max_lane_count(intel_dp->lttpr_common_caps);
> > -- 
> > 2.35.1
> > 

-- 
Ville Syrjälä
Intel
