Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03932A43908
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 10:15:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A66C810E5D9;
	Tue, 25 Feb 2025 09:15:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Telka2Jd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C057310E5D7;
 Tue, 25 Feb 2025 09:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740474940; x=1772010940;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6Ks6dJ/j9ZvGy2v26kpSzMeJzpdMNCijOD2bN8qVZdM=;
 b=Telka2JdKr0DxidGdyvRNDNYgZlWIHngUsSV0prUEI43q8ipukZ4/mUg
 gq7QTvDpm8X9Qh8IuIvAdosGGM/sj8rTcPsOMTril6epmy84Kjdc6ZkuE
 1oZmIHdrWWImnxkKcQi9ftu7/9b/JPuGBIBNebYuPyH3KnZrj8w0Uf7/1
 eySjstl46LNMoLSP5oxzL34WeXl8qtbqXqAI/wqF17/mUcxG2IyOXT0YC
 RP7ZslzPGj9ElRpHeueAQAclvaw1oG9lngujx1B6X6uQmA17h7I2wSalh
 VjNKoWU8z9xRarfIaqxr1JE/WqnbzFmhbkIKWgcLXkc3PE76Gf+CIg+9r g==;
X-CSE-ConnectionGUID: IOvebwAKTwmYv11utW/HsQ==
X-CSE-MsgGUID: xevWx2IPTe20Auv6jQVSdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="51906554"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="51906554"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 01:15:39 -0800
X-CSE-ConnectionGUID: dJHz3U94TKGkbRpQmqw0FQ==
X-CSE-MsgGUID: eYYG18FvQuOtX5per/U/bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="147219400"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 01:15:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Cc: "Hogander, Jouni" <jouni.hogander@intel.com>, "B, Jeevan"
 <jeevan.b@intel.com>
Subject: RE: [PATCH v4 5/8] drm/i915/lobf: Add debug interface for lobf
In-Reply-To: <PH7PR11MB5981C1F2229A4736E441FE11F9C32@PH7PR11MB5981.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250224080847.326350-1-animesh.manna@intel.com>
 <20250224080847.326350-6-animesh.manna@intel.com>
 <87jz9f7gsv.fsf@intel.com>
 <PH7PR11MB5981C1F2229A4736E441FE11F9C32@PH7PR11MB5981.namprd11.prod.outlook.com>
Date: Tue, 25 Feb 2025 11:15:35 +0200
Message-ID: <87wmde5qrs.fsf@intel.com>
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

On Tue, 25 Feb 2025, "Manna, Animesh" <animesh.manna@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Monday, February 24, 2025 4:26 PM
>> To: Manna, Animesh <animesh.manna@intel.com>; intel-
>> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Hogander, Jouni <jouni.hogander@intel.com>; B, Jeevan
>> <jeevan.b@intel.com>; Manna, Animesh <animesh.manna@intel.com>
>> Subject: Re: [PATCH v4 5/8] drm/i915/lobf: Add debug interface for lobf
>>
>> On Mon, 24 Feb 2025, Animesh Manna <animesh.manna@intel.com> wrote:
>> > Add an interface in debugfs which will help in debugging LOBF feature.
>> >
>> > v1: Initial version.
>> > v2:
>> > - Remove FORCE_EN flag. [Jouni]
>> > - Change prefix from I915 to INTEL. [Jani]
>> > - Use u8 instead of bool for lobf-debug flag. [Jani]
>> >
>> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_alpm.c     | 51 +++++++++++++++++++
>> >  .../drm/i915/display/intel_display_types.h    |  5 ++
>> >  2 files changed, 56 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
>> > b/drivers/gpu/drm/i915/display/intel_alpm.c
>> > index 83719ee1721c..5c70677ac3c0 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_alpm.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
>> > @@ -276,6 +276,9 @@ void intel_alpm_lobf_compute_config(struct
>> intel_dp *intel_dp,
>> >     int waketime_in_lines, first_sdp_position;
>> >     int context_latency, guardband;
>> >
>> > +   if (intel_dp->alpm_parameters.lobf_debug &
>> INTEL_LOBF_DEBUG_DISABLE)
>> > +           return;
>> > +
>> >     if (!intel_dp_is_edp(intel_dp))
>> >             return;
>> >
>> > @@ -449,6 +452,51 @@ static int i915_edp_lobf_info_show(struct
>> > seq_file *m, void *data)
>> >
>> >  DEFINE_SHOW_ATTRIBUTE(i915_edp_lobf_info);
>> >
>> > +static int
>> > +i915_edp_lobf_debug_get(void *data, u64 *val) {
>> > +   struct intel_display *display = data;
>>
>> Where do you pass display as data? It's connector?
>
> I should pass display, thanks for catching.

It's a connector based debugfs file, so you should probably keep passing
the connector, and just assign to connector here.

>
>>
>> > +   struct intel_encoder *encoder;
>> > +   int ret = -ENODEV;
>> > +
>> > +   for_each_intel_dp(display->drm, encoder) {
>> > +           struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>> > +
>> > +           if (!intel_dp_is_edp(intel_dp))
>> > +                   return ret;
>>
>> What is this supposed to do?
>
> Other than EDP connector lobg_debug is not available, so will remove the above condition check.

This debugfs file is connector based. Why are we looping all dp anyway?
I don't understand.

>>
>> > +
>> > +           // TODO: split to each edp transcoder.
>>
>> What does this mean?
>
> Currently lobf debug option only supported with one EDP, TODO added to support second EDP.

Again, this debugfs file is connector based. I don't understand the TODO
at all.

>
>>
>> > +           *val = READ_ONCE(intel_dp->alpm_parameters.lobf_debug);
>>
>> You read this from all intel_dp and combine into one? What?
>
> Will return from here, will take care in next version.
>
>> > +           ret = 0;
>> > +   }
>> > +
>> > +   return ret;
>> > +}
>> > +
>> > +static int
>> > +i915_edp_lobf_debug_set(void *data, u64 val) {
>> > +   struct intel_display *display = data;
>> > +   struct intel_encoder *encoder;
>> > +   int ret = -ENODEV;
>> > +
>> > +   for_each_intel_dp(display->drm, encoder) {
>> > +           struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>> > +
>> > +           if (!intel_dp_is_edp(intel_dp))
>> > +                   return ret;
>> > +
>> > +           // TODO: split to each edp transcoder.
>> > +           intel_dp->alpm_parameters.lobf_debug = val;
>> > +   }
>> > +
>> > +   return ret;
>>
>> So this always returns failure?
>
> Missed to set the ret variable, will take care in next version.
> Thanks for review.
>
> Regards,
> Animesh
>>
>> > +}
>> > +
>> > +DEFINE_SIMPLE_ATTRIBUTE(i915_edp_lobf_debug_fops,
>> > +                   i915_edp_lobf_debug_get,
>> i915_edp_lobf_debug_set,
>> > +                   "%llu\n");
>> > +
>> >  void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
>> > {
>> >     struct intel_display *display = to_intel_display(connector); @@
>> > -458,6 +506,9 @@ void intel_alpm_lobf_debugfs_add(struct
>> intel_connector *connector)
>> >         connector->base.connector_type !=
>> DRM_MODE_CONNECTOR_eDP)
>> >             return;

You'll only have these debugfs files for eDP connectors anyway. There's
no need for eDP checks later.

BR,
Jani.


>> >
>> > +   debugfs_create_file("i915_edp_lobf_debug", 0644, root,
>> > +                       connector, &i915_edp_lobf_debug_fops);
>> > +
>> >     debugfs_create_file("i915_edp_lobf_info", 0444, root,
>> >                         connector, &i915_edp_lobf_info_fops);  } diff --git
>> > a/drivers/gpu/drm/i915/display/intel_display_types.h
>> > b/drivers/gpu/drm/i915/display/intel_display_types.h
>> > index b78721c451b8..b6ec9a8fadd9 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> > @@ -1808,6 +1808,11 @@ struct intel_dp {
>> >             u8 aux_less_wake_lines;
>> >             u8 silence_period_sym_clocks;
>> >             u8 lfps_half_cycle_num_of_syms;
>> > +
>> > +#define INTEL_LOBF_DEBUG_MODE_MASK         0x0f
>> > +#define INTEL_LOBF_DEBUG_DEFAULT           0x00
>> > +#define INTEL_LOBF_DEBUG_DISABLE           0x01
>> > +           u8 lobf_debug;
>>
>> Just overly complex still.
>>
>> >     } alpm_parameters;
>> >
>> >     u8 alpm_dpcd;
>>
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
