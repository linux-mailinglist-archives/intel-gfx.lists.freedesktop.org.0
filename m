Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E940A9F2FA0
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 12:38:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B55A10E5CE;
	Mon, 16 Dec 2024 11:38:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KDzZ1T/f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B4C010E5C7;
 Mon, 16 Dec 2024 11:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734349122; x=1765885122;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=sHyuZOv1oWfGup+bQH8GfQT4GOTfG34XvXmPZTdg+oI=;
 b=KDzZ1T/f7glLXjd4n1smocFiBQ53KSV+WolAZ6168KnDNwkCPfbem79U
 Zbex8nbR4shIVHGMbL/TnZVWuPy2u63xtJ4I+iQUtqITw70uAjzjIy8QV
 9kO8IVPBG/+qF80RiZy5qnlDFvmn2mab6AguTFaKbqT1jKw+aAuzaXtc5
 gujdioa1eWIeRYVki+FTyQwkqq6MwfA0EJK5HKtkWudwL5AnC0W3DduLk
 ZeczWPaXjJstQY45vHgjsoKKlTvqr5uodZ3336TA+LEPQmiWD3TxxtRyq
 88tSx5V8Q0LIRKNs3pHc4V5/4ziEkjAYRFHQZoOLCgysIwxX7MQGrQd4U A==;
X-CSE-ConnectionGUID: nXsyO5v/TK2sMegwm010Bg==
X-CSE-MsgGUID: 9l9aIA1sREWIpk46RSv66g==
X-IronPort-AV: E=McAfee;i="6700,10204,11287"; a="34025495"
X-IronPort-AV: E=Sophos;i="6.12,238,1728975600"; d="scan'208";a="34025495"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 03:38:41 -0800
X-CSE-ConnectionGUID: 1iv1UnjkT8GoOZaP95t2dg==
X-CSE-MsgGUID: 8xr4cfBbSbGIUW9E75P3rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="101326521"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.245])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 03:38:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Cc: Sergey Senozhatsky <senozhatsky@chromium.org>, Ville Syrjala
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v3 1/6] drm/i915/ddi: change
 intel_ddi_init_{dp,hdmi}_connector() return type
In-Reply-To: <SN7PR11MB6750DC00BB9AF4CD5A66EA6BE3382@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1734099220.git.jani.nikula@intel.com>
 <ddd89d5e49a0cd40c18f12567da7fb9605999fcd.1734099220.git.jani.nikula@intel.com>
 <SN7PR11MB6750DC00BB9AF4CD5A66EA6BE3382@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Mon, 16 Dec 2024 13:38:36 +0200
Message-ID: <87ttb3svr7.fsf@intel.com>
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

On Fri, 13 Dec 2024, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Friday, December 13, 2024 7:46 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; Sergey Senozhatsky
>> <senozhatsky@chromium.org>; Ville Syrjala <ville.syrjala@linux.intel.com>;
>> Kandpal, Suraj <suraj.kandpal@intel.com>
>> Subject: [PATCH v3 1/6] drm/i915/ddi: change
>> intel_ddi_init_{dp,hdmi}_connector() return type
>>
>> The caller doesn't actually need the returned struct intel_connector; it's
>> stored in the ->attached_connector of intel_dp ad intel_hdmi. Switch to
>
> Typo : *and
> Otherwise LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks, care to look at patch 4 as well, it's changed slightly?

BR,
Jani.

>
>> returning an int with 0 for success and negative errors codes to be able to
>> indicate success even when we don't have a connector.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_ddi.c | 20 +++++++++-----------
>>  1 file changed, 9 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
>> b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index 4f9c50996446..21277cf8afef 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -4542,8 +4542,7 @@ static const struct drm_encoder_funcs
>> intel_ddi_funcs = {
>>       .late_register = intel_ddi_encoder_late_register,  };
>>
>> -static struct intel_connector *
>> -intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
>> +static int intel_ddi_init_dp_connector(struct intel_digital_port
>> +*dig_port)
>>  {
>>       struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>>       struct intel_connector *connector;
>> @@ -4551,7 +4550,7 @@ intel_ddi_init_dp_connector(struct
>> intel_digital_port *dig_port)
>>
>>       connector = intel_connector_alloc();
>>       if (!connector)
>> -             return NULL;
>> +             return -ENOMEM;
>>
>>       dig_port->dp.output_reg = DDI_BUF_CTL(port);
>>       if (DISPLAY_VER(i915) >= 14)
>> @@ -4566,7 +4565,7 @@ intel_ddi_init_dp_connector(struct
>> intel_digital_port *dig_port)
>>
>>       if (!intel_dp_init_connector(dig_port, connector)) {
>>               kfree(connector);
>> -             return NULL;
>> +             return -EINVAL;
>>       }
>>
>>       if (dig_port->base.type == INTEL_OUTPUT_EDP) { @@ -4582,7
>> +4581,7 @@ intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
>>               }
>>       }
>>
>> -     return connector;
>> +     return 0;
>>  }
>>
>>  static int intel_hdmi_reset_link(struct intel_encoder *encoder, @@ -4748,20
>> +4747,19 @@ static bool bdw_digital_port_connected(struct intel_encoder
>> *encoder)
>>       return intel_de_read(dev_priv, GEN8_DE_PORT_ISR) & bit;  }
>>
>> -static struct intel_connector *
>> -intel_ddi_init_hdmi_connector(struct intel_digital_port *dig_port)
>> +static int intel_ddi_init_hdmi_connector(struct intel_digital_port
>> +*dig_port)
>>  {
>>       struct intel_connector *connector;
>>       enum port port = dig_port->base.port;
>>
>>       connector = intel_connector_alloc();
>>       if (!connector)
>> -             return NULL;
>> +             return -ENOMEM;
>>
>>       dig_port->hdmi.hdmi_reg = DDI_BUF_CTL(port);
>>       intel_hdmi_init_connector(dig_port, connector);
>>
>> -     return connector;
>> +     return 0;
>>  }
>>
>>  static bool intel_ddi_a_force_4_lanes(struct intel_digital_port *dig_port) @@
>> -5306,7 +5304,7 @@ void intel_ddi_init(struct intel_display *display,
>>       intel_infoframe_init(dig_port);
>>
>>       if (init_dp) {
>> -             if (!intel_ddi_init_dp_connector(dig_port))
>> +             if (intel_ddi_init_dp_connector(dig_port))
>>                       goto err;
>>
>>               dig_port->hpd_pulse = intel_dp_hpd_pulse; @@ -5320,7
>> +5318,7 @@ void intel_ddi_init(struct intel_display *display,
>>        * but leave it just in case we have some really bad VBTs...
>>        */
>>       if (encoder->type != INTEL_OUTPUT_EDP && init_hdmi) {
>> -             if (!intel_ddi_init_hdmi_connector(dig_port))
>> +             if (intel_ddi_init_hdmi_connector(dig_port))
>>                       goto err;
>>       }
>>
>> --
>> 2.39.5
>

-- 
Jani Nikula, Intel
