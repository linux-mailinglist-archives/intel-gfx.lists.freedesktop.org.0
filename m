Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C9612EB68
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 22:35:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2A4F89191;
	Thu,  2 Jan 2020 21:35:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7A3B6E0AD
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 21:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578000934;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=a5KUC2KPBU7PYVTSBx1ISXKF4RM3m5ZJrI3TcldzNwQ=;
 b=hEURY/qzQ0rnt0v9H6RE0yURx4lg3tbQmgPtviqXvqH7Sym31Bx5J0o/kPX6gkSUkH/nPe
 WKnEVAUGXL4WW4Mq03JnKxJ5oy9s7BxGnQGikIBVLJkqyq0YZhocOKZqVJtGQApE0HzxFC
 IJqLCky52B1IjKReslXAHbfGeh8l3Wc=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-159-rZpuxK_ePyyw_dEdzYvuEA-1; Thu, 02 Jan 2020 16:35:31 -0500
Received: by mail-wr1-f71.google.com with SMTP id c17so15985362wrp.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Jan 2020 13:35:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=a5KUC2KPBU7PYVTSBx1ISXKF4RM3m5ZJrI3TcldzNwQ=;
 b=h0FSzQhG6P4w0kzH4V3Gt4UKtppmXsT35lZKlZc1UVK8puQDew4/UpbhG6dY114aRb
 m4kCdVQM47uOvkvxcmkrqa02A3zCWydKXA7SDg033TpcLwqhRom8paQC26n8Bg4AntBe
 4HjCxY4P68KwrXmZfLlAgWcqbc5DMRCJRZmRVFoel+Cm9p+racG1Z2wZwETNuQw828LX
 NUTNdcdnbGupgYaQvBMGEt/knyNUcKBKO78R5Qugc90l/zkWuMdLvseGID+pXG7ncfIr
 6lJkCiUmfkkzX+fWawTmJLNsYFgjOmFeZ/bZVkzrI2iuVeTdM7EiAKU+zPUKqm5hjEhU
 R60A==
X-Gm-Message-State: APjAAAXJWog/PqDPa/fER7dGWP4Ggc1zCBaSt4athjchHWdBmQv4lsMd
 c+iJIV12IJLcUgGXtQHIT3NJUY9RCUPa5iQCJuLXzM97nOG3Gd10k1NZtu10KQwJdNaFCqYpWt8
 Sz+fIcakJ7RNgVLbC/nxp4SLkMuwK
X-Received: by 2002:a1c:80d4:: with SMTP id
 b203mr15601039wmd.102.1578000930620; 
 Thu, 02 Jan 2020 13:35:30 -0800 (PST)
X-Google-Smtp-Source: APXvYqy0X7lnwTmq1/F5y/z7I9mqflQ6+XoBvY90z7ugFLXzjOEuP2kAQ9wMCTvvJwqGc6RzlCFufA==
X-Received: by 2002:a1c:80d4:: with SMTP id
 b203mr15601020wmd.102.1578000930275; 
 Thu, 02 Jan 2020 13:35:30 -0800 (PST)
Received: from shalem.localdomain
 (2001-1c00-0c0c-fe00-7e79-4dac-39d0-9c14.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7e79:4dac:39d0:9c14])
 by smtp.gmail.com with ESMTPSA id x26sm9569298wmc.30.2020.01.02.13.35.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Jan 2020 13:35:29 -0800 (PST)
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20191216115158.862404-1-hdegoede@redhat.com>
 <20191216115158.862404-2-hdegoede@redhat.com>
 <20200102181721.GA11904@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <d2b0a4be-2128-7790-38b2-93a5d7ff238f@redhat.com>
Date: Thu, 2 Jan 2020 22:35:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200102181721.GA11904@intel.com>
Content-Language: en-US
X-MC-Unique: rZpuxK_ePyyw_dEdzYvuEA-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Intel-gfx] [PATCH resend 1/2] drm/connector: Split out
 orientation quirk detection (v2)
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Derek Basehore <dbasehore@chromium.org>, dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Rodrigo,

Thank you for the review.

On 02-01-2020 19:17, Rodrigo Vivi wrote:
> On Mon, Dec 16, 2019 at 12:51:57PM +0100, Hans de Goede wrote:
>> From: Derek Basehore <dbasehore@chromium.org>
>>
>> Not every platform needs quirk detection for panel orientation, so
>> split the drm_connector_init_panel_orientation_property into two
>> functions. One for platforms without the need for quirks, and the
>> other for platforms that need quirks.
>>
>> Hans de Goede (changes in v2):
>>
>> Rename the function from drm_connector_init_panel_orientation_property
>> to drm_connector_set_panel_orientation[_with_quirk] and pass in the
>> panel-orientation to set.
>>
>> Beside the rename, also make the function set the passed in value
>> only once, if the value was set before (to a value other then
>> DRM_MODE_PANEL_ORIENTATION_UNKNOWN) make any further set calls a no-op.
>>
>> This change is preparation for allowing the user to override the
>> panel-orientation for any connector from the kernel commandline.
>> When the panel-orientation is overridden this way, then we must ignore
>> the panel-orientation detection done by the driver.
>>
>> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>   drivers/gpu/drm/drm_connector.c         | 74 ++++++++++++++++++-------
>>   drivers/gpu/drm/i915/display/icl_dsi.c  |  5 +-
>>   drivers/gpu/drm/i915/display/intel_dp.c |  9 ++-
>>   drivers/gpu/drm/i915/display/vlv_dsi.c  |  5 +-
>>   include/drm/drm_connector.h             |  9 ++-
>>   5 files changed, 71 insertions(+), 31 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
>> index 0965632008a9..f4fa5c59717d 100644
>> --- a/drivers/gpu/drm/drm_connector.c
>> +++ b/drivers/gpu/drm/drm_connector.c
>> @@ -1139,7 +1139,8 @@ static const struct drm_prop_enum_list dp_colorspaces[] = {
>>    *	coordinates, so if userspace rotates the picture to adjust for
>>    *	the orientation it must also apply the same transformation to the
>>    *	touchscreen input coordinates. This property is initialized by calling
>> - *	drm_connector_init_panel_orientation_property().
>> + *	drm_connector_set_panel_orientation() or
>> + *	drm_connector_set_panel_orientation_with_quirk()
> 
> do we have a better name than quirks for these dsi modes?

The difference between the 2 functions is that the second one calls
drm_get_panel_orientation_quirk() and that if that returns a valid
orientation it overwrites the passed orientation with the return value
from drm_get_panel_orientation_quirk(), so the name seems correct.

As for drm_get_panel_orientation_quirk() itself that currently is only
defined on x86 (it is a static inline no-op elsewhere) and it used
DMI string matching to check for a model specific quirk. So again the
name seems correct.

>>    *
>>    * scaling mode:
>>    *	This property defines how a non-native mode is upscaled to the native
>> @@ -2046,38 +2047,41 @@ void drm_connector_set_vrr_capable_property(
>>   EXPORT_SYMBOL(drm_connector_set_vrr_capable_property);
>>   
>>   /**
>> - * drm_connector_init_panel_orientation_property -
>> - *	initialize the connecters panel_orientation property
>> - * @connector: connector for which to init the panel-orientation property.
>> - * @width: width in pixels of the panel, used for panel quirk detection
>> - * @height: height in pixels of the panel, used for panel quirk detection
>> + * drm_connector_set_panel_orientation - sets the connecter's panel_orientation
>> + * @connector: connector for which to set the panel-orientation property.
>> + * @panel_orientation: drm_panel_orientation value to set
>> + *
>> + * This function sets the connector's panel_orientation and attaches
>> + * a "panel orientation" property to the connector.
>>    *
>> - * This function should only be called for built-in panels, after setting
>> - * connector->display_info.panel_orientation first (if known).
>> + * Calling this function on a connector where the panel_orientation has
>> + * already been set is a no-op (e.g. the orientation has been overridden with
>> + * a kernel commandline option).
>>    *
>> - * This function will check for platform specific (e.g. DMI based) quirks
>> - * overriding display_info.panel_orientation first, then if panel_orientation
>> - * is not DRM_MODE_PANEL_ORIENTATION_UNKNOWN it will attach the
>> - * "panel orientation" property to the connector.
>> + * It is allowed to call this function with a panel_orientation of
>> + * DRM_MODE_PANEL_ORIENTATION_UNKNOWN, in which case it is a no-op.
>>    *
>>    * Returns:
>>    * Zero on success, negative errno on failure.
>>    */
>> -int drm_connector_init_panel_orientation_property(
>> -	struct drm_connector *connector, int width, int height)
>> +int drm_connector_set_panel_orientation(
>> +	struct drm_connector *connector,
>> +	enum drm_panel_orientation panel_orientation)
>>   {
>>   	struct drm_device *dev = connector->dev;
>>   	struct drm_display_info *info = &connector->display_info;
>>   	struct drm_property *prop;
>> -	int orientation_quirk;
>>   
>> -	orientation_quirk = drm_get_panel_orientation_quirk(width, height);
>> -	if (orientation_quirk != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
>> -		info->panel_orientation = orientation_quirk;
>> +	/* Already set? */
>> +	if (info->panel_orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
>> +		return 0;
> 
> What happens on the scenario of ICL DSI here?
> In case we had something badly set we just respect the bad choices?

The only path where the value gets set twice is when it has been set
from the kernel commandline (which gets hooked up in the second patch),
and yes in that case we honor what the user passed in as value, honering
the user passed value (which gets processed first) is the whole reason
for the "Already set?" check.

> Any way to at least have some kind of warn when we tried the dsi mode but
> it had already been set?

The 2nd patch prints a message when a value is passed on the kernel commandline:

+	if (mode->panel_orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN) {
+		DRM_INFO("setting connector %s panel_orientation to %d\n",
+			 connector->name, mode->panel_orientation);


Regards,

Hans



>>   
>> -	if (info->panel_orientation == DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
>> +	/* Don't attach the property if the orientation is unknown */
>> +	if (panel_orientation == DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
>>   		return 0;
>>   
>> +	info->panel_orientation = panel_orientation;
>> +
>>   	prop = dev->mode_config.panel_orientation_property;
>>   	if (!prop) {
>>   		prop = drm_property_create_enum(dev, DRM_MODE_PROP_IMMUTABLE,
>> @@ -2094,7 +2098,37 @@ int drm_connector_init_panel_orientation_property(
>>   				   info->panel_orientation);
>>   	return 0;
>>   }
>> -EXPORT_SYMBOL(drm_connector_init_panel_orientation_property);
>> +EXPORT_SYMBOL(drm_connector_set_panel_orientation);
>> +
>> +/**
>> + * drm_connector_set_panel_orientation_with_quirk -
>> + *	set the connecter's panel_orientation after checking for quirks
>> + * @connector: connector for which to init the panel-orientation property.
>> + * @panel_orientation: drm_panel_orientation value to set
>> + * @width: width in pixels of the panel, used for panel quirk detection
>> + * @height: height in pixels of the panel, used for panel quirk detection
>> + *
>> + * Like drm_connector_set_panel_orientation(), but with a check for platform
>> + * specific (e.g. DMI based) quirks overriding the passed in panel_orientation.
>> + *
>> + * Returns:
>> + * Zero on success, negative errno on failure.
>> + */
>> +int drm_connector_set_panel_orientation_with_quirk(
>> +	struct drm_connector *connector,
>> +	enum drm_panel_orientation panel_orientation,
>> +	int width, int height)
>> +{
>> +	int orientation_quirk;
>> +
>> +	orientation_quirk = drm_get_panel_orientation_quirk(width, height);
>> +	if (orientation_quirk != DRM_MODE_PANEL_ORIENTATION_UNKNOWN)
>> +		panel_orientation = orientation_quirk;
>> +
>> +	return drm_connector_set_panel_orientation(connector,
>> +						   panel_orientation);
>> +}
>> +EXPORT_SYMBOL(drm_connector_set_panel_orientation_with_quirk);
>>   
>>   int drm_connector_set_obj_prop(struct drm_mode_object *obj,
>>   				    struct drm_property *property,
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
>> index 6e398c33a524..8cd51cf67d02 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -1536,9 +1536,8 @@ static void icl_dsi_add_properties(struct intel_connector *connector)
>>   
>>   	connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
>>   
>> -	connector->base.display_info.panel_orientation =
>> -			intel_dsi_get_panel_orientation(connector);
>> -	drm_connector_init_panel_orientation_property(&connector->base,
>> +	drm_connector_set_panel_orientation_with_quirk(&connector->base,
>> +				intel_dsi_get_panel_orientation(connector),
>>   				connector->panel.fixed_mode->hdisplay,
>>   				connector->panel.fixed_mode->vdisplay);
>>   }
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index aa515261cb9f..9f4425f8d0ac 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -7340,9 +7340,12 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>>   	intel_connector->panel.backlight.power = intel_edp_backlight_power;
>>   	intel_panel_setup_backlight(connector, pipe);
>>   
>> -	if (fixed_mode)
>> -		drm_connector_init_panel_orientation_property(
>> -			connector, fixed_mode->hdisplay, fixed_mode->vdisplay);
>> +	if (fixed_mode) {
>> +		/* We do not know the orientation, but their might be a quirk */
>> +		drm_connector_set_panel_orientation_with_quirk(connector,
>> +				DRM_MODE_PANEL_ORIENTATION_UNKNOWN,
>> +				fixed_mode->hdisplay, fixed_mode->vdisplay);
>> +	}
>>   
>>   	return true;
>>   
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> index 50064cde0724..a0de8e70e426 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> @@ -1632,10 +1632,9 @@ static void vlv_dsi_add_properties(struct intel_connector *connector)
>>   
>>   		connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
>>   
>> -		connector->base.display_info.panel_orientation =
>> -			vlv_dsi_get_panel_orientation(connector);
>> -		drm_connector_init_panel_orientation_property(
>> +		drm_connector_set_panel_orientation_with_quirk(
>>   				&connector->base,
>> +				vlv_dsi_get_panel_orientation(connector),
>>   				connector->panel.fixed_mode->hdisplay,
>>   				connector->panel.fixed_mode->vdisplay);
>>   	}
>> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
>> index 221910948b37..2113500b4075 100644
>> --- a/include/drm/drm_connector.h
>> +++ b/include/drm/drm_connector.h
>> @@ -1552,8 +1552,13 @@ void drm_connector_set_link_status_property(struct drm_connector *connector,
>>   					    uint64_t link_status);
>>   void drm_connector_set_vrr_capable_property(
>>   		struct drm_connector *connector, bool capable);
>> -int drm_connector_init_panel_orientation_property(
>> -	struct drm_connector *connector, int width, int height);
>> +int drm_connector_set_panel_orientation(
>> +	struct drm_connector *connector,
>> +	enum drm_panel_orientation panel_orientation);
>> +int drm_connector_set_panel_orientation_with_quirk(
>> +	struct drm_connector *connector,
>> +	enum drm_panel_orientation panel_orientation,
>> +	int width, int height);
>>   int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
>>   					  int min, int max);
>>   
>> -- 
>> 2.23.0
>>
>> _______________________________________________
>> dri-devel mailing list
>> dri-devel@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/dri-devel
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
