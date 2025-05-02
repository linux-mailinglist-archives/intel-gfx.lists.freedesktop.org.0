Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F2BAA6DF8
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 11:22:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FA0010E8DF;
	Fri,  2 May 2025 09:22:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Owq4vjw9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B69E10E8DF;
 Fri,  2 May 2025 09:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746177768; x=1777713768;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=MTPyDlCxjK24Dxv93/ZdP/tDtHGgyBk4h0Tw3WJ8+Uk=;
 b=Owq4vjw9CywavjsfA9j4xNsfiJHfSe4CRRCNfaOG1h+Ftpq0TwCikVe/
 0wvwGKxgv08Cnc4fDXCTsmjmRCio4gZF0TrhIZ0t+daN3CGIHlFchTKDW
 Eq9ehgO9BXAxpAs0480jHnNK7YMropKYVaaSuJVeuCvr4rT1/z1RcPFD2
 v+gAtUMlD19dDcUze+2XAOPkpRhsqpTqHaJpFLp12JuqAgphV6+WF+mwc
 DzGnieIHRQM1/WW0kW4EDDsPvBSvotvJGcmN+PEu8QrmjC2UdiaBnny3m
 zS8ZWVLMWNeT+8xMQABgsSuNo0Ol5wHleJzFqG82M9aeZnR+mERoSnQFj A==;
X-CSE-ConnectionGUID: y19CvDQxQ9ymWiK3Dq1whQ==
X-CSE-MsgGUID: KOWch4UTTzK9MsJCv3rpiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="59244717"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="59244717"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 02:22:48 -0700
X-CSE-ConnectionGUID: j5lpR5AhSHq2gdYELMsdaw==
X-CSE-MsgGUID: Xbx5KN/pRJ+31Jsf5vD0Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="139775633"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.144])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 02:22:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 09/10] drm/i915/hdcp: pass struct drm_device to driver
 specific HDCP GSC code
In-Reply-To: <SN7PR11MB67506BAD789777010E86BFAFE38D2@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1745524803.git.jani.nikula@intel.com>
 <bf9aa8e44e18eef41e3077a2966935b4e2649b62.1745524803.git.jani.nikula@intel.com>
 <SN7PR11MB67506BAD789777010E86BFAFE38D2@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Fri, 02 May 2025 12:22:43 +0300
Message-ID: <87r017wen0.fsf@intel.com>
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

On Fri, 02 May 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Friday, April 25, 2025 1:32 AM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; Kandpal, Suraj
>> <suraj.kandpal@intel.com>
>> Subject: [PATCH 09/10] drm/i915/hdcp: pass struct drm_device to driver
>> specific HDCP GSC code
>> 
>> The driver specific HDCP GSC code will eventually be part of the driver cores
>> rather than display. Remove the struct intel_display references from them, and
>> pass struct drm_device instead.
>> 
>> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_hdcp.c        |  2 +-
>>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c    | 12 ++++++------
>>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.h    |  6 +++---
>>  .../drm/i915/display/intel_hdcp_gsc_message.c    |  2 +-
>>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c         | 16 ++++++++--------
>>  5 files changed, 19 insertions(+), 19 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> index 39bcf8f3d810..3e3038f4ee1f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> @@ -254,7 +254,7 @@ static bool intel_hdcp2_prerequisite(struct
>> intel_connector *connector)
>> 
>>  	/* If MTL+ make sure gsc is loaded and proxy is setup */
>>  	if (USE_HDCP_GSC(display)) {
>> -		if (!intel_hdcp_gsc_check_status(display))
>> +		if (!intel_hdcp_gsc_check_status(display->drm))
>>  			return false;
>>  	}
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>> index 4194ef77f7c3..6a22862d6be1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>> @@ -19,14 +19,14 @@ struct intel_hdcp_gsc_context {
>>  	void *hdcp_cmd_out;
>>  };
>> 
>> -bool intel_hdcp_gsc_check_status(struct intel_display *display)
>> +bool intel_hdcp_gsc_check_status(struct drm_device *drm)
>>  {
>
> So the thing is this particular function won't be a part of the drm core seeing this actually is a intel specific
> Check to see if gsc cs is present or not.

Not *drm* core, but i915 or xe "driver core", after display has been
split out.

With that clarification, does the patch make more sense? :)

BR,
Jani.


>
>> -	struct drm_i915_private *i915 = to_i915(display->drm);
>> +	struct drm_i915_private *i915 = to_i915(drm);
>>  	struct intel_gt *gt = i915->media_gt;
>>  	struct intel_gsc_uc *gsc = gt ? &gt->uc.gsc : NULL;
>> 
>>  	if (!gsc || !intel_uc_fw_is_running(&gsc->fw)) {
>> -		drm_dbg_kms(display->drm,
>> +		drm_dbg_kms(&i915->drm,
>>  			    "GSC components required for HDCP2.2 are not
>> ready\n");
>>  		return false;
>>  	}
>> @@ -87,9 +87,9 @@ static int intel_hdcp_gsc_initialize_message(struct
>> drm_i915_private *i915,
>>  	return err;
>>  }
>> 
>> -struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
>> intel_display *display)
>> +struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
>> +drm_device *drm)
>
> Same thing here this gsc context is the message we get to send to gsc cs
> Again intel specific this initialization will be specific to each driver based on
> Whom it wants to send this data(mei or some other fw component)
>  Too or do the calculations on driver level itself.
>
>>  {
>> -	struct drm_i915_private *i915 = to_i915(display->drm);
>> +	struct drm_i915_private *i915 = to_i915(drm);
>>  	struct intel_hdcp_gsc_context *gsc_context;
>>  	int ret;
>> 
>> @@ -103,7 +103,7 @@ struct intel_hdcp_gsc_context
>> *intel_hdcp_gsc_context_alloc(struct intel_display
>>  	 */
>>  	ret = intel_hdcp_gsc_initialize_message(i915, gsc_context);
>>  	if (ret) {
>> -		drm_err(display->drm, "Could not initialize gsc_context\n");
>> +		drm_err(&i915->drm, "Could not initialize gsc_context\n");
>>  		kfree(gsc_context);
>>  		gsc_context = ERR_PTR(ret);
>>  	}
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
>> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
>> index e963c1fcc39e..e014336aa2e4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
>> @@ -9,15 +9,15 @@
>>  #include <linux/err.h>
>>  #include <linux/types.h>
>> 
>> -struct intel_display;
>> +struct drm_device;
>>  struct intel_hdcp_gsc_context;
>> 
>>  ssize_t intel_hdcp_gsc_msg_send(struct intel_hdcp_gsc_context *gsc_context,
>>  				void *msg_in, size_t msg_in_len,
>>  				void *msg_out, size_t msg_out_len); -bool
>> intel_hdcp_gsc_check_status(struct intel_display *display);
>> +bool intel_hdcp_gsc_check_status(struct drm_device *drm);
>> 
>> -struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
>> intel_display *display);
>> +struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
>> +drm_device *drm);
>>  void intel_hdcp_gsc_context_free(struct intel_hdcp_gsc_context
>> *gsc_context);
>> 
>>  #endif /* __INTEL_HDCP_GCS_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
>> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
>> index 4226e8705d2b..98967bb148e3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
>> @@ -645,7 +645,7 @@ int intel_hdcp_gsc_init(struct intel_display *display)
>> 
>>  	mutex_lock(&display->hdcp.hdcp_mutex);
>> 
>> -	gsc_context = intel_hdcp_gsc_context_alloc(display);
>> +	gsc_context = intel_hdcp_gsc_context_alloc(display->drm);
>>  	if (IS_ERR(gsc_context)) {
>>  		ret = PTR_ERR(gsc_context);
>>  		kfree(arbiter);
>> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>> b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>> index 078916072c10..b35a6f201d4a 100644
>> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>> @@ -30,9 +30,9 @@ struct intel_hdcp_gsc_context {
>> 
>>  #define HDCP_GSC_HEADER_SIZE sizeof(struct intel_gsc_mtl_header)
>> 
>> -bool intel_hdcp_gsc_check_status(struct intel_display *display)
>> +bool intel_hdcp_gsc_check_status(struct drm_device *drm)
>>  {
>> -	struct xe_device *xe = to_xe_device(display->drm);
>> +	struct xe_device *xe = to_xe_device(drm);
>>  	struct xe_tile *tile = xe_device_get_root_tile(xe);
>>  	struct xe_gt *gt = tile->media_gt;
>>  	struct xe_gsc *gsc = &gt->uc.gsc;
>> @@ -64,10 +64,9 @@ bool intel_hdcp_gsc_check_status(struct intel_display
>> *display)  }
>> 
>>  /*This function helps allocate memory for the command that we will send to
>> gsc cs */ -static int intel_hdcp_gsc_initialize_message(struct intel_display
>> *display,
>> +static int intel_hdcp_gsc_initialize_message(struct xe_device *xe,
>>  					     struct intel_hdcp_gsc_context
>> *gsc_context)  {
>
> Ditto 
>
> Regards,
> Suraj Kandpal
>
>> -	struct xe_device *xe = to_xe_device(display->drm);
>>  	struct xe_bo *bo = NULL;
>>  	u64 cmd_in, cmd_out;
>>  	int ret = 0;
>> @@ -79,7 +78,7 @@ static int intel_hdcp_gsc_initialize_message(struct
>> intel_display *display,
>>  				  XE_BO_FLAG_GGTT);
>> 
>>  	if (IS_ERR(bo)) {
>> -		drm_err(display->drm, "Failed to allocate bo for HDCP
>> streaming command!\n");
>> +		drm_err(&xe->drm, "Failed to allocate bo for HDCP streaming
>> +command!\n");
>>  		ret = PTR_ERR(bo);
>>  		goto out;
>>  	}
>> @@ -97,8 +96,9 @@ static int intel_hdcp_gsc_initialize_message(struct
>> intel_display *display,
>>  	return ret;
>>  }
>> 
>> -struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
>> intel_display *display)
>> +struct intel_hdcp_gsc_context *intel_hdcp_gsc_context_alloc(struct
>> +drm_device *drm)
>>  {
>> +	struct xe_device *xe = to_xe_device(drm);
>>  	struct intel_hdcp_gsc_context *gsc_context;
>>  	int ret;
>> 
>> @@ -110,9 +110,9 @@ struct intel_hdcp_gsc_context
>> *intel_hdcp_gsc_context_alloc(struct intel_display
>>  	 * NOTE: No need to lock the comp mutex here as it is already
>>  	 * going to be taken before this function called
>>  	 */
>> -	ret = intel_hdcp_gsc_initialize_message(display, gsc_context);
>> +	ret = intel_hdcp_gsc_initialize_message(xe, gsc_context);
>>  	if (ret) {
>> -		drm_err(display->drm, "Could not initialize gsc_context\n");
>> +		drm_err(&xe->drm, "Could not initialize gsc_context\n");
>>  		kfree(gsc_context);
>>  		gsc_context = ERR_PTR(ret);
>>  	}
>> --
>> 2.39.5
>

-- 
Jani Nikula, Intel
