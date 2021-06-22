Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 161C63B00C1
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 11:50:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BDC76E462;
	Tue, 22 Jun 2021 09:50:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from srv6.fidu.org (srv6.fidu.org [IPv6:2a01:4f8:231:de0::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2BE76E462;
 Tue, 22 Jun 2021 09:50:25 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by srv6.fidu.org (Postfix) with ESMTP id 4FA3CC8009E;
 Tue, 22 Jun 2021 11:50:24 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at srv6.fidu.org
Received: from srv6.fidu.org ([127.0.0.1])
 by localhost (srv6.fidu.org [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id 4jXpwzV4Ylre; Tue, 22 Jun 2021 11:50:23 +0200 (CEST)
Received: from [IPv6:2003:e3:7f39:4900:2847:eb91:7f60:5216]
 (p200300E37F3949002847Eb917F605216.dip0.t-ipconnect.de
 [IPv6:2003:e3:7f39:4900:2847:eb91:7f60:5216])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: wse@tuxedocomputers.com)
 by srv6.fidu.org (Postfix) with ESMTPSA id A53E7C8009B;
 Tue, 22 Jun 2021 11:50:23 +0200 (CEST)
To: Pekka Paalanen <ppaalanen@gmail.com>
References: <20210618091116.14428-1-wse@tuxedocomputers.com>
 <20210618091116.14428-10-wse@tuxedocomputers.com>
 <20210622100042.4041624a@eldfell>
From: Werner Sembach <wse@tuxedocomputers.com>
Message-ID: <56d079d4-841a-0ca5-b8a6-d2c10f91d211@tuxedocomputers.com>
Date: Tue, 22 Jun 2021 11:50:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210622100042.4041624a@eldfell>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 09/17] drm/uAPI: Add "active color range"
 drm property as feedback for userspace
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
Cc: mripard@kernel.org, sunpeng.li@amd.com, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 airlied@linux.ie, amd-gfx@lists.freedesktop.org, tzimmermann@suse.de,
 alexander.deucher@amd.com, harry.wentland@amd.com, christian.koenig@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Am 22.06.21 um 09:00 schrieb Pekka Paalanen:
> On Fri, 18 Jun 2021 11:11:08 +0200
> Werner Sembach <wse@tuxedocomputers.com> wrote:
>
>> Add a new general drm property "active color range" which can be used by
>> graphic drivers to report the used color range back to userspace.
>>
>> There was no way to check which color range got actually used on a given
>> monitor. To surely predict this, one must know the exact capabilities of
>> the monitor and what the default behaviour of the used driver is. This
>> property helps eliminating the guessing at this point.
>>
>> In the future, automatic color calibration for screens might also depend on
>> this information being available.
>>
>> Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
>> ---
>>  drivers/gpu/drm/drm_connector.c | 59 +++++++++++++++++++++++++++++++++
>>  include/drm/drm_connector.h     | 27 +++++++++++++++
>>  2 files changed, 86 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
>> index 684d7abdf0eb..818de58d972f 100644
>> --- a/drivers/gpu/drm/drm_connector.c
>> +++ b/drivers/gpu/drm/drm_connector.c
>> @@ -897,6 +897,12 @@ static const struct drm_prop_enum_list drm_active_color_format_enum_list[] = {
>>  	{ DRM_COLOR_FORMAT_YCRCB420, "ycbcr420" },
>>  };
>>  
>> +static const struct drm_prop_enum_list drm_active_color_range_enum_list[] = {
>> +	{ DRM_MODE_COLOR_RANGE_UNSET, "Unknown" },
>> +	{ DRM_MODE_COLOR_RANGE_FULL, "Full" },
>> +	{ DRM_MODE_COLOR_RANGE_LIMITED_16_235, "Limited 16:235" },
> Doesn't "limited" mean different numbers on RGB vs. Y vs. CbCr? I have
> a vague recollection that at least one of them was different from the
> others.

Yes, seems like it does:
https://www.kernel.org/doc/html/v5.12/userspace-api/media/v4l/colorspaces-defs.html#c.V4L.v4l2_quantization

I carried the option names over from "Broadcast RGB", see my other e-mail for more details.

>
> Documenting DRM_MODE_COLOR_RANGE_UNSET as "unspecified/default" while
> the string for it is "Unknown" seems inconsistent to me. I would
> recommend to avoid the word "default" because "reset to defaults" might
> become a thing one day, and that probably is not the same default as
> here.
>
> Is there actually a case for "unknown"? How can it be not known? Or
> does it mean "not applicable"?

Unknown is when no monitor is connected or is when the connector/monitor is disabled.

It also is the initial value when the driver fails to correctly set the property. This shouldn't happen, but I'm
wondering if I should still introduce an _ERROR state instead for this case?

I will rename it, maybe "unset" to match the enum? "not applicable" also fits if either the error state is defined or
not necessary.

>
> Otherwise looks good to me.
>
>
> Thanks,
> pq
>
>
>> +};
>> +
>>  DRM_ENUM_NAME_FN(drm_get_dp_subconnector_name,
>>  		 drm_dp_subconnector_enum_list)
>>  
>> @@ -1221,6 +1227,14 @@ static const struct drm_prop_enum_list dp_colorspaces[] = {
>>   *	drm_connector_attach_active_color_format_property() to install this
>>   *	property.
>>   *
>> + * active color range:
>> + *	This read-only property tells userspace the color range actually used by
>> + *	the hardware display engine on "the cable" on a connector. The chosen
>> + *	value depends on hardware capabilities of the monitor and the used color
>> + *	format. Drivers shall use
>> + *	drm_connector_attach_active_color_range_property() to install this
>> + *	property.
>> + *
>>   * Connectors also have one standardized atomic property:
>>   *
>>   * CRTC_ID:
>> @@ -2264,6 +2278,51 @@ void drm_connector_set_active_color_format_property(struct drm_connector *connec
>>  }
>>  EXPORT_SYMBOL(drm_connector_set_active_color_format_property);
>>  
>> +/**
>> + * drm_connector_attach_active_color_range_property - attach "active color range" property
>> + * @connector: connector to attach active color range property on.
>> + *
>> + * This is used to check the applied color range on a connector.
>> + *
>> + * Returns:
>> + * Zero on success, negative errno on failure.
>> + */
>> +int drm_connector_attach_active_color_range_property(struct drm_connector *connector)
>> +{
>> +	struct drm_device *dev = connector->dev;
>> +	struct drm_property *prop;
>> +
>> +	if (!connector->active_color_range_property) {
>> +		prop = drm_property_create_enum(dev, DRM_MODE_PROP_IMMUTABLE, "active color range",
>> +						drm_active_color_range_enum_list,
>> +						ARRAY_SIZE(drm_active_color_range_enum_list));
>> +		if (!prop)
>> +			return -ENOMEM;
>> +
>> +		connector->active_color_range_property = prop;
>> +		drm_object_attach_property(&connector->base, prop, DRM_MODE_COLOR_RANGE_UNSET);
>> +	}
>> +
>> +	return 0;
>> +}
>> +EXPORT_SYMBOL(drm_connector_attach_active_color_range_property);
>> +
>> +/**
>> + * drm_connector_set_active_color_range_property - sets the active color range property for a
>> + * connector
>> + * @connector: drm connector
>> + * @active_color_range: color range for the connector currently active on "the cable"
>> + *
>> + * Should be used by atomic drivers to update the active color range over a connector.
>> + */
>> +void drm_connector_set_active_color_range_property(struct drm_connector *connector,
>> +						   enum drm_mode_color_range active_color_range)
>> +{
>> +	drm_object_property_set_value(&connector->base, connector->active_color_range_property,
>> +				      active_color_range);
>> +}
>> +EXPORT_SYMBOL(drm_connector_set_active_color_range_property);
>> +
>>  /**
>>   * drm_connector_attach_hdr_output_metadata_property - attach "HDR_OUTPUT_METADA" property
>>   * @connector: connector to attach the property on.
>> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
>> index 8a5197f14e87..9fb7119b7a02 100644
>> --- a/include/drm/drm_connector.h
>> +++ b/include/drm/drm_connector.h
>> @@ -648,6 +648,24 @@ struct drm_tv_connector_state {
>>  	unsigned int hue;
>>  };
>>  
>> +/**
>> + * enum drm_mode_color_range - color_range info for &drm_connector
>> + *
>> + * This enum is used to represent full or limited color range on the display
>> + * connector signal.
>> + *
>> + * @DRM_MODE_COLOR_RANGE_UNSET:		Color range is unspecified/default.
>> + * @DRM_MODE_COLOR_RANGE_FULL:		Color range is full range, 0-255 for
>> + *					8-Bit color depth.
>> + * DRM_MODE_COLOR_RANGE_LIMITED_16_235:	Color range is limited range, 16-235 for
>> + *					8-Bit color depth.
>> + */
>> +enum drm_mode_color_range {
>> +	DRM_MODE_COLOR_RANGE_UNSET,
>> +	DRM_MODE_COLOR_RANGE_FULL,
>> +	DRM_MODE_COLOR_RANGE_LIMITED_16_235,
>> +};
>> +
>>  /**
>>   * struct drm_connector_state - mutable connector state
>>   */
>> @@ -1392,6 +1410,12 @@ struct drm_connector {
>>  	 */
>>  	struct drm_property *active_color_format_property;
>>  
>> +	/**
>> +	 * @active_color_range_property: Default connector property for the
>> +	 * active color range to be driven out of the connector.
>> +	 */
>> +	struct drm_property *active_color_range_property;
>> +
>>  #define DRM_CONNECTOR_POLL_HPD (1 << 0)
>>  #define DRM_CONNECTOR_POLL_CONNECT (1 << 1)
>>  #define DRM_CONNECTOR_POLL_DISCONNECT (1 << 2)
>> @@ -1719,6 +1743,9 @@ void drm_connector_set_active_bpc_property(struct drm_connector *connector, int
>>  int drm_connector_attach_active_color_format_property(struct drm_connector *connector);
>>  void drm_connector_set_active_color_format_property(struct drm_connector *connector,
>>  						    u32 active_color_format);
>> +int drm_connector_attach_active_color_range_property(struct drm_connector *connector);
>> +void drm_connector_set_active_color_range_property(struct drm_connector *connector,
>> +						   enum drm_mode_color_range active_color_range);
>>  
>>  /**
>>   * struct drm_tile_group - Tile group metadata
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
