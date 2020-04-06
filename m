Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8112519F420
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 13:07:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2C006E326;
	Mon,  6 Apr 2020 11:07:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDAA46E326
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 11:07:51 +0000 (UTC)
IronPort-SDR: pkwMXrayc86zjhOaUQkM9wBfEuTqXc+c2MpKo93p8u0baCpUCXhcP8vkPXfana4yi48SQtVAVP
 UhUUMho+Rmdg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 04:07:51 -0700
IronPort-SDR: s9h2ozA2GngEtspPFU30YRubJuSxQptv97zdiNIWfOBE1DR2e3BSQFsXpzZDFgZ/a78whQ70pQ
 WSe6+S4yPRxQ==
X-IronPort-AV: E=Sophos;i="5.72,350,1580803200"; d="scan'208";a="424320879"
Received: from maytarsh-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.38.121])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 04:07:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Bharadiya\,Pankaj" <pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200406105401.GA16300@plaxmina-desktop.iind.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <20200402114819.17232-2-jani.nikula@intel.com>
 <20200406105401.GA16300@plaxmina-desktop.iind.intel.com>
Date: Mon, 06 Apr 2020 14:07:44 +0300
Message-ID: <87mu7olvnj.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/17] drm/i915/panel: use struct drm_device
 based logging
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
Cc: intel-gfx@lists.freedesktop.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 06 Apr 2020, "Bharadiya,Pankaj" <pankaj.laxminarayan.bharadiya@intel.com> wrote:
> On Thu, Apr 02, 2020 at 02:48:04PM +0300, Jani Nikula wrote:
>> Convert all the DRM_* logging macros to the struct drm_device based
>> macros to provide device specific logging.
>> 
>> No functional changes.
>> 
>> Generated using the following semantic patch, originally written by
>> Wambui Karuga <wambui.karugax@gmail.com>, with manual fixups on top:
>> 
>> @@
>> identifier fn, T;
>> @@
>> 
>> fn(...,struct drm_i915_private *T,...) {
>> <+...
>> (
>> -DRM_INFO(
>> +drm_info(&T->drm,
>> ...)
>> |
>> -DRM_NOTE(
>> +drm_notice(&T->drm,
>> ...)
>> |
>> -DRM_ERROR(
>> +drm_err(&T->drm,
>> ...)
>> |
>> -DRM_WARN(
>> +drm_warn(&T->drm,
>> ...)
>> |
>> -DRM_DEBUG_DRIVER(
>> +drm_dbg(&T->drm,
>> ...)
>> |
>> -DRM_DEBUG_KMS(
>> +drm_dbg_kms(&T->drm,
>> ...)
>> |
>> -DRM_DEBUG_ATOMIC(
>> +drm_dbg_atomic(&T->drm,
>> ...)
>> )
>> ...+>
>> }
>> 
>> @@
>> identifier fn, T;
>> @@
>> 
>> fn(...) {
>> ...
>> struct drm_i915_private *T = ...;
>> <+...
>> (
>> -DRM_INFO(
>> +drm_info(&T->drm,
>> ...)
>> |
>> -DRM_NOTE(
>> +drm_notice(&T->drm,
>> ...)
>> |
>> -DRM_ERROR(
>> +drm_err(&T->drm,
>> ...)
>> |
>> -DRM_WARN(
>> +drm_warn(&T->drm,
>> ...)
>> |
>> -DRM_DEBUG_DRIVER(
>> +drm_dbg(&T->drm,
>> ...)
>> |
>> -DRM_DEBUG_KMS(
>> +drm_dbg_kms(&T->drm,
>> ...)
>> |
>> -DRM_DEBUG_ATOMIC(
>> +drm_dbg_atomic(&T->drm,
>> ...)
>> )
>> ...+>
>> }
>> 
>> Cc: Wambui Karuga <wambui.karugax@gmail.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_panel.c | 19 +++++++++++--------
>>  1 file changed, 11 insertions(+), 8 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
>> index 276f43870802..a080a623bed6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
>> @@ -684,9 +684,10 @@ static void
>>  intel_panel_actually_set_backlight(const struct drm_connector_state *conn_state, u32 level)
>>  {
>>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>
> This addition does not match with the cocci script mentioned in the
> commit description.
> Are you sure same script is used to generate this patch?

I've made some manual changes, such as adding locals first and then
running the script.

BR,
Jani.

>
>>  	struct intel_panel *panel = &connector->panel;
>>  
>> -	DRM_DEBUG_DRIVER("set backlight PWM = %d\n", level);
>> +	drm_dbg_kms(&i915->drm, "set backlight PWM = %d\n", level);
>>  
>>  	level = intel_panel_compute_brightness(connector, level);
>>  	panel->backlight.set(conn_state, level);
>> @@ -867,8 +868,8 @@ void intel_panel_disable_backlight(const struct drm_connector_state *old_conn_st
>>  	 * another client is not activated.
>>  	 */
>>  	if (dev_priv->drm.switch_power_state == DRM_SWITCH_POWER_CHANGING) {
>> -		drm_dbg(&dev_priv->drm,
>> -			"Skipping backlight disable on vga switch\n");
>> +		drm_dbg_kms(&dev_priv->drm,
>> +			    "Skipping backlight disable on vga switch\n");
>>  		return;
>>  	}
>>  
>> @@ -1244,7 +1245,7 @@ static u32 intel_panel_get_backlight(struct intel_connector *connector)
>>  
>>  	mutex_unlock(&dev_priv->backlight_lock);
>>  
>> -	drm_dbg(&dev_priv->drm, "get backlight PWM = %d\n", val);
>> +	drm_dbg_kms(&dev_priv->drm, "get backlight PWM = %d\n", val);
>>  	return val;
>>  }
>>  
>> @@ -1335,6 +1336,7 @@ static const struct backlight_ops intel_backlight_device_ops = {
>>  
>>  int intel_backlight_device_register(struct intel_connector *connector)
>>  {
>> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>
> Same as above.
>
>>  	struct intel_panel *panel = &connector->panel;
>>  	struct backlight_properties props;
>>  
>> @@ -1374,14 +1376,15 @@ int intel_backlight_device_register(struct intel_connector *connector)
>>  					  &intel_backlight_device_ops, &props);
>>  
>>  	if (IS_ERR(panel->backlight.device)) {
>> -		DRM_ERROR("Failed to register backlight: %ld\n",
>> -			  PTR_ERR(panel->backlight.device));
>> +		drm_err(&i915->drm, "Failed to register backlight: %ld\n",
>> +			PTR_ERR(panel->backlight.device));
>>  		panel->backlight.device = NULL;
>>  		return -ENODEV;
>>  	}
>>  
>> -	DRM_DEBUG_KMS("Connector %s backlight sysfs interface registered\n",
>> -		      connector->base.name);
>> +	drm_dbg_kms(&i915->drm,
>> +		    "Connector %s backlight sysfs interface registered\n",
>> +		    connector->base.name);
>>  
>>  	return 0;
>>  }
>> -- 
>> 2.20.1
>> 
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
