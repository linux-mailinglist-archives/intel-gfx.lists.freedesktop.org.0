Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7085FA2EC5B
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 13:12:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE90E10E1AD;
	Mon, 10 Feb 2025 12:12:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j7ooAePP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 747FB10E1AD;
 Mon, 10 Feb 2025 12:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739189552; x=1770725552;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=IjaQ6xrLuFqlepKz570UlTVOqy6BMIrMD6HnHCrNDfs=;
 b=j7ooAePPAKf/3CvYdS7M30cRf9k4XzyBmUQI6+S2BNYwV+iuzg+oEs9K
 S++Aeh5Wwz1ih9ZnXOTqQMkiyaYa+RhI5mMOruJaAt4zgYytCcvszk8hG
 1vfIgbAUlN7Azm5fLVe0hQSEsvGLDecCqKs/gA92A4aJm0mgJdiKomI6v
 U13JxntfaWuPAPKQnG/aVYP132EwWZheqywvWrlylFCf3C9nSIg7w+32A
 BhsN78pLzZs0KiVXHYFQqVR1nYbQZet8hq74tEVaAUvCIvPIlqP1v5ua2
 gur7MGwH+dWOXDxcDeGuE4wklg51pxO3azrX4k3Ohdi/gbzrYY7qK/sKO w==;
X-CSE-ConnectionGUID: P41MxVw+Q7atSSrLhiXVow==
X-CSE-MsgGUID: gDH8P9rAReawZwyqgiFpgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39454769"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="39454769"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 04:12:32 -0800
X-CSE-ConnectionGUID: 0LQuP4b7Tr+CLNwZ1I4ShQ==
X-CSE-MsgGUID: Slf7Ny4IQgCb9h8BNiWmow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="149365615"
Received: from iklimasz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.244])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 04:12:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 4/3] drm/i915/hdcp: Make some functions static
In-Reply-To: <SN7PR11MB6750584D241F8AF605F4927EE3F12@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1738924826.git.jani.nikula@intel.com>
 <20250207105838.179805-1-jani.nikula@intel.com>
 <SN7PR11MB6750584D241F8AF605F4927EE3F12@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Mon, 10 Feb 2025 14:12:27 +0200
Message-ID: <87frkm3sno.fsf@intel.com>
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

On Fri, 07 Feb 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Friday, February 7, 2025 4:29 PM
>> To: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.org;
>> intel-xe@lists.freedesktop.org
>> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>
>> Subject: [PATCH 4/3] drm/i915/hdcp: Make some functions static
>
> What happened here wrong serial number the patch itself looks okay maybe a refloat is required otherwise ci may not test it

I first sent 3 patches, and then sent the extra fourth one afterwards as
4/3. ;)

CI coped with it just fine [1].

[1] https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144491v1/git-log-oneline.txt

> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks for the review, series pushed to drm-intel-next.

BR,
Jani.

>
>>
>> With the debugfs implementation moved next to the implementation, we no
>> longer need to expose some of the functions. Make them static.
>>
>> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_hdcp.c | 10 +++++-----
>> drivers/gpu/drm/i915/display/intel_hdcp.h |  6 ------
>>  2 files changed, 5 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> index 3d83db793baf..1aa4c0fd216f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> @@ -209,7 +209,7 @@ int intel_hdcp_read_valid_bksv(struct
>> intel_digital_port *dig_port,  }
>>
>>  /* Is HDCP1.4 capable on Platform and Sink */ -bool
>> intel_hdcp_get_capability(struct intel_connector *connector)
>> +static bool intel_hdcp_get_capability(struct intel_connector
>> +*connector)
>>  {
>>       struct intel_digital_port *dig_port;
>>       const struct intel_hdcp_shim *shim = connector->hdcp.shim; @@ -
>> 265,7 +265,7 @@ static bool intel_hdcp2_prerequisite(struct
>> intel_connector *connector)  }
>>
>>  /* Is HDCP2.2 capable on Platform and Sink */ -bool
>> intel_hdcp2_get_capability(struct intel_connector *connector)
>> +static bool intel_hdcp2_get_capability(struct intel_connector
>> +*connector)
>>  {
>>       struct intel_hdcp *hdcp = &connector->hdcp;
>>       bool capable = false;
>> @@ -279,9 +279,9 @@ bool intel_hdcp2_get_capability(struct
>> intel_connector *connector)
>>       return capable;
>>  }
>>
>> -void intel_hdcp_get_remote_capability(struct intel_connector *connector,
>> -                                   bool *hdcp_capable,
>> -                                   bool *hdcp2_capable)
>> +static void intel_hdcp_get_remote_capability(struct intel_connector
>> *connector,
>> +                                          bool *hdcp_capable,
>> +                                          bool *hdcp2_capable)
>>  {
>>       struct intel_hdcp *hdcp = &connector->hdcp;
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h
>> b/drivers/gpu/drm/i915/display/intel_hdcp.h
>> index 76bd3996f636..3a7905551051 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
>> @@ -21,7 +21,6 @@ struct intel_encoder;
>>  struct intel_hdcp_shim;
>>  struct seq_file;
>>  enum port;
>> -enum transcoder;
>>
>>  void intel_hdcp_atomic_check(struct drm_connector *connector,
>>                            struct drm_connector_state *old_state, @@ -
>> 39,11 +38,6 @@ void intel_hdcp_update_pipe(struct intel_atomic_state
>> *state,
>>                           const struct intel_crtc_state *crtc_state,
>>                           const struct drm_connector_state *conn_state);
>> bool is_hdcp_supported(struct intel_display *display, enum port port); -
>> bool intel_hdcp_get_capability(struct intel_connector *connector); -bool
>> intel_hdcp2_get_capability(struct intel_connector *connector); -void
>> intel_hdcp_get_remote_capability(struct intel_connector *connector,
>> -                                   bool *hdcp_capable,
>> -                                   bool *hdcp2_capable);
>>  void intel_hdcp_component_init(struct intel_display *display);  void
>> intel_hdcp_component_fini(struct intel_display *display);  void
>> intel_hdcp_cleanup(struct intel_connector *connector);
>> --
>> 2.39.5
>

-- 
Jani Nikula, Intel
