Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 540F44BB462
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 09:39:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B2D610EC4B;
	Fri, 18 Feb 2022 08:39:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B22C510EC4B
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 08:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645173579; x=1676709579;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=WjW6XOXBuTQhM0TqiZz9xzgHHfmkxmXQE+U1Njr0ynw=;
 b=cRdSnKtKxtcZxr3adzROMsknUFR72NXN/Ax8J6B8xjK4C1rmf4xgq9KG
 1mhD4rHtR2iAoFrzhAVH8hSQY6mPOPvxAGEAodA+GjslcNXhKpEJVzjiq
 VJZ1IUG4FMf4Pp+KQadXOAat0pwJqp5eH71WRPpeTWij3CUt98ysCkJVP
 veQcY5jeg2hrEmgHrgMZJTmPdPcZVgYUUO7VzlI3eEpj7+W7djWLzlxcP
 KZvlOm8BMQ6x6wU6GU0rnLMD82NrcdVGPak+xeeaYPAq5xa1hstcf1I6x
 y5HkFdsc4Qge7kfaWnQU+3jD+eb9X8Qd5Xlfp6x9QHqsDScUAU+tsDiO6 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="275680421"
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="275680421"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 00:36:07 -0800
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="546185968"
Received: from tmgallag-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.23.60])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 00:36:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220217220108.GA31689@labuser-Z97X-UD5H>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220215202601.22943-1-manasi.d.navare@intel.com>
 <20220217220108.GA31689@labuser-Z97X-UD5H>
Date: Fri, 18 Feb 2022 10:36:00 +0200
Message-ID: <87v8xc372n.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display/vrr: Reset VRR capable
 property on a long hpd
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

On Thu, 17 Feb 2022, "Navare, Manasi" <manasi.d.navare@intel.com> wrote:
> Hi Jani,
>
> This addresses the review comments, could you please take a look at thsi patch?

Sorry for the delay,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Manasi
>
> On Tue, Feb 15, 2022 at 12:26:01PM -0800, Manasi Navare wrote:
>> With some VRR panels, user can turn VRR ON/OFF on the fly from the panel settings.
>> When VRR is turned OFF ,sends a long HPD to the driver clearing the Ignore MSA bit
>> in the DPCD. Currently the driver parses that onevery HPD but fails to reset
>> the corresponding VRR Capable Connector property.
>> Hence the userspace still sees this as VRR Capable panel which is incorrect.
>> 
>> Fix this by explicitly resetting the connector property.
>> 
>> v2: Reset vrr capable if status == connector_disconnected
>> v3: Use i915 and use bool vrr_capable (Jani Nikula)
>> v4: Move vrr_capable to after update modes call (Jani N)
>> Remove the redundant comment (Jan N)
>> 
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++++----
>>  1 file changed, 13 insertions(+), 4 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 1046e7fe310a..929e9b6febf1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -4455,6 +4455,12 @@ intel_dp_detect(struct drm_connector *connector,
>>  		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
>>  		memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
>>  
>> +		/* Reset VRR Capable property */
>> +		drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s] VRR capable: FALSE\n",
>> +			    connector->base.id, connector->name);
>> +		drm_connector_set_vrr_capable_property(connector,
>> +						       false);
>> +
>>  		if (intel_dp->is_mst) {
>>  			drm_dbg_kms(&dev_priv->drm,
>>  				    "MST device may have disappeared %d vs %d\n",
>> @@ -4569,15 +4575,18 @@ static int intel_dp_get_modes(struct drm_connector *connector)
>>  {
>>  	struct intel_connector *intel_connector = to_intel_connector(connector);
>>  	struct edid *edid;
>> +	struct drm_i915_private *i915 = to_i915(connector->dev);
>>  	int num_modes = 0;
>>  
>>  	edid = intel_connector->detect_edid;
>>  	if (edid) {
>> -		num_modes = intel_connector_update_modes(connector, edid);
>> +		bool vrr_capable;
>>  
>> -		if (intel_vrr_is_capable(connector))
>> -			drm_connector_set_vrr_capable_property(connector,
>> -							       true);
>> +		num_modes = intel_connector_update_modes(connector, edid);
>> +		vrr_capable = intel_vrr_is_capable(connector);
>> +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] VRR capable: %s\n",
>> +			    connector->base.id, connector->name, yesno(vrr_capable));
>> +		drm_connector_set_vrr_capable_property(connector, vrr_capable);
>>  	}
>>  
>>  	/* Also add fixed mode, which may or may not be present in EDID */
>> -- 
>> 2.19.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
