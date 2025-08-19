Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 104ABB2C321
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 14:20:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34BDA10E5D7;
	Tue, 19 Aug 2025 12:20:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XEXe5aqd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCBEB10E0EB;
 Tue, 19 Aug 2025 12:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755606007; x=1787142007;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=B/UB51dTDrZrANou5hJhycHSoMvA/Yc/MO5tounUvTM=;
 b=XEXe5aqddqSIG3tO3ZzAXsqIgyBcqS+URX8yfAdOj2r5s0CaYXTWl5cI
 M/dC5rnc+K8TJRGvEDn4ZOOCSO+tvpONB+KBCeMrZKLmIymjgUjxyAKiC
 o2+JufgsKoHgpp2FyPc/2/GuvLeh44eKK6834HjNtOze6g4jkWvoP+I57
 HinBynC1exEPc9NBV8HFNK7jbHS/rmJjxCJpuwuYU3Ufga88EugYyeIrH
 ntRetWk9St6gm2P854BnzM66WAAyiHCOXsdTH2Ot5EAEmU2DeJbNfbZIQ
 Moj7jbx96DZo7rg1XRA2wwUmQAWAA09cImL42/N3/2tR8mhPni3LXBgus w==;
X-CSE-ConnectionGUID: yMAoNlg/QYiJKJg0/eCv+A==
X-CSE-MsgGUID: yRaFTAe+R7WoDrhy1ayt3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="57915411"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="57915411"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:20:06 -0700
X-CSE-ConnectionGUID: 8o5KoSS5SP++yUX7YEZgKg==
X-CSE-MsgGUID: bhIsUXHFRl2SUOQ/Umhs5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="168080895"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:20:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v5 3/3] drm/i915/edp: eDP Data Overrride
In-Reply-To: <DM3PPF208195D8D72E6302229F3EA47BA27E330A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250819080602.84826-1-suraj.kandpal@intel.com>
 <20250819080602.84826-4-suraj.kandpal@intel.com>
 <d1124158037cf3cb0ee9f9912e9c067f707befaa@intel.com>
 <DM3PPF208195D8D72E6302229F3EA47BA27E330A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Date: Tue, 19 Aug 2025 15:20:01 +0300
Message-ID: <19f362457d6313dba0c9eb9fa9daaaceab5df9c6@intel.com>
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

On Tue, 19 Aug 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> 
>> On Tue, 19 Aug 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> > We need override certain link rates in favour of the next available
>> > higher link rate. The Link rates that need to be overridden are
>> > indicated by a mask in VBT. To make sure these modes are skipped we
>> > don't add them in them in the sink rates array.
>> >
>> > --v2
>> > -Update the link rates after we have a final set of link rates [Ankit]
>> > -Break this patch up [Ankit] -Optimize the assingment during loop
>> > [Ankit]
>> >
>> > --v3
>> > -Add protection against broken VBTs [Jani]
>> >
>> > --v4
>> > -Fix build errors
>> > -Create a seprate function to check if edp data override is selected
>> > and using the correct vbt
>> >
>> > --v5
>> > -Use correct number to check the num of edp rates [Ankit]
>> >
>> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_bios.c | 15 ++++++++++++++-
>> > drivers/gpu/drm/i915/display/intel_bios.h |  2 ++
>> >  drivers/gpu/drm/i915/display/intel_dp.c   | 22 ++++++++++++++++++++++
>> >  3 files changed, 38 insertions(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
>> > b/drivers/gpu/drm/i915/display/intel_bios.c
>> > index 444ed54f7c35..05a74c3bc9af 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> > @@ -2521,11 +2521,24 @@ int intel_bios_dp_max_lane_count(const struct
>> > intel_bios_encoder_data *devdata)  bool
>> > intel_bios_encoder_reject_edp_rate(const struct intel_bios_encoder_data
>> *devdata,
>> >  				   int rate)
>> > +{
>> > +	return devdata->child.edp_data_rate_override &
>> > +edp_rate_override_mask(rate); }
>> > +
>> > +bool
>> > +intel_bios_vbt_supports_edp_data_override(const struct
>> > +intel_bios_encoder_data *devdata)
>> 
>> Why are you adding this function? Earlier versions didn't have it, and the reason
>> for its existence isn't explained or clear.
>> 
>
> This function was added in v3 (I did add a small mention in the commit message I can maybe elaborate more there)
>  in response to one of your comments in which you mentioned the
> Possibility of ending up with a broken vbt that masked all the link rates causing us to have no link rate
> To drive the edp with this function now checks if we have at least one edp link rate using which we can
> Drive edp if not we do not modify the list of sink rates at all.

You can check for that scenario in intel_bios_encoder_reject_edp_rate(),
and return false for all rates if all of the bits are set.

We don't have to leak these checks into callers.


BR,
Jani.


>
> Regards,
> Suraj Kandpal
>
>> BR,
>> Jani.
>> 
>> 
>> >  {
>> >  	if (!devdata || devdata->display->vbt.version < 263)
>> >  		return false;
>> >
>> > -	return devdata->child.edp_data_rate_override &
>> edp_rate_override_mask(rate);
>> > +	/*
>> > +	 * This means the VBT ends up asking us to override every possible rate
>> > +	 * indicating the VBT is broken so skip this
>> > +	 */
>> > +	if (hweight32(devdata->child.edp_data_rate_override) >=
>> BDB_263_VBT_EDP_NUM_RATES)
>> > +		return false;
>> > +
>> > +	return true;
>> >  }
>> >
>> >  static void sanitize_device_type(struct intel_bios_encoder_data
>> > *devdata, diff --git a/drivers/gpu/drm/i915/display/intel_bios.h
>> > b/drivers/gpu/drm/i915/display/intel_bios.h
>> > index 781e08f7eeb2..d24660bcc7f3 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
>> > @@ -276,5 +276,7 @@ void intel_bios_for_each_encoder(struct intel_display
>> *display,
>> >  					      const struct
>> intel_bios_encoder_data *devdata));
>> >
>> >  void intel_bios_debugfs_register(struct intel_display *display);
>> > +bool
>> > +intel_bios_vbt_supports_edp_data_override(const struct
>> > +intel_bios_encoder_data *devdata);
>> >
>> >  #endif /* _INTEL_BIOS_H_ */
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> > b/drivers/gpu/drm/i915/display/intel_dp.c
>> > index 54d88f24b689..f6fad42182ae 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > @@ -4277,6 +4277,26 @@ static void intel_edp_mso_init(struct intel_dp
>> *intel_dp)
>> >  	intel_dp->mso_pixel_overlap = mso ? info->mso_pixel_overlap : 0;  }
>> >
>> > +static void
>> > +intel_edp_set_data_override_rates(struct intel_dp *intel_dp) {
>> > +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>> > +	int *sink_rates = intel_dp->sink_rates;
>> > +	int i, j = 0;
>> > +
>> > +	if (!intel_bios_vbt_supports_edp_data_override(encoder->devdata))
>> > +		return;
>> > +
>> > +	for (i = 0; i < intel_dp->num_sink_rates; i++) {
>> > +		if (intel_bios_encoder_reject_edp_rate(encoder->devdata,
>> > +						       intel_dp->sink_rates[i]))
>> > +			continue;
>> > +
>> > +		sink_rates[j++] = intel_dp->sink_rates[i];
>> > +	}
>> > +	intel_dp->num_sink_rates = j;
>> > +}
>> > +
>> >  static void
>> >  intel_edp_set_sink_rates(struct intel_dp *intel_dp)  { @@ -4327,6
>> > +4347,8 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>> >  		intel_dp->use_rate_select = true;
>> >  	else
>> >  		intel_dp_set_sink_rates(intel_dp);
>> > +
>> > +	intel_edp_set_data_override_rates(intel_dp);
>> >  }
>> >
>> >  static bool
>> 
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
