Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D02269FEB6D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2024 23:33:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2CBD10E4D5;
	Mon, 30 Dec 2024 22:33:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kaw8a694";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC7F710E4D5
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2024 22:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735598021; x=1767134021;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=YA4pkGYsusUn9E1qcQM1Jij6PHXkrRSJ7zKkzqr9DQA=;
 b=Kaw8a694/WJV70uNlESbyfDNi8kJpcdpDaCzlyxE5k2oXv+Q56zFXJs1
 35Ay+FVEjZDUEgbJ1L19/wtXrPKPxfHzE6rXLV31arPn0vuSQYEqZxFcI
 T8le/THw3FjOlluIxWzhPpZguELl5s3OcaLKnuM1ZQEY8P1kImhi0fpjX
 aYk3FLQIjP9ol6vGjcuKoD/0CtRBKElkfIUpecO9bp8arXegDCtTJwtzf
 pYscD8XyALV61SALWGAdqyD3KOla/dXA02HGkULi8TXGjQ9nJOhGX2epc
 wo2drbGt7kpt67G6ngP/99R1Yy5IFrxOStjOyyrnEzyOw8vQI+1TDplQu Q==;
X-CSE-ConnectionGUID: h39F/8IuS3WB/NzlN9+abQ==
X-CSE-MsgGUID: lpBbcyJQQkOcyl2uuPYshQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="35597868"
X-IronPort-AV: E=Sophos;i="6.12,277,1728975600"; d="scan'208";a="35597868"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 14:33:25 -0800
X-CSE-ConnectionGUID: g+Ylh2RrTxW2P100U67g9Q==
X-CSE-MsgGUID: aDIfymD1SNuLPq4ZCMd3iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="101747783"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 14:33:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [CI v3 2/6] drm/i915/hdmi: propagate errors from
 intel_hdmi_init_connector()
In-Reply-To: <dff52871-dcf9-4725-b95b-ae44badd4faa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1735568047.git.jani.nikula@intel.com>
 <cdaf9e32cc4880c46e120933438c37b4d87be12e.1735568047.git.jani.nikula@intel.com>
 <dff52871-dcf9-4725-b95b-ae44badd4faa@intel.com>
Date: Tue, 31 Dec 2024 00:33:13 +0200
Message-ID: <87v7v0ol7a.fsf@intel.com>
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

On Tue, 31 Dec 2024, "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com> wrote:
> On 12/30/2024 7:44 PM, Jani Nikula wrote:
>> Propagate errors from intel_hdmi_init_connector() to be able to handle
>> them at callers. This is similar to intel_dp_init_connector().
>>
>> Cc: Sergey Senozhatsky <senozhatsky@chromium.org>
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Reported-and-tested-by: Sergey Senozhatsky <senozhatsky@chromium.org>
>> Closes: https://lore.kernel.org/r/20241031105145.2140590-1-senozhatsky@chromium.org
>> Reviewed-by: Sergey Senozhatsky <senozhatsky@chromium.org>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_hdmi.c | 10 ++++++----
>>   drivers/gpu/drm/i915/display/intel_hdmi.h |  2 +-
>>   2 files changed, 7 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index f7b1768b279c..ed29dd0ccef0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -3039,7 +3039,7 @@ void intel_infoframe_init(struct intel_digital_port *dig_port)
>>   	}
>>   }
>>   
>> -void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
>> +bool intel_hdmi_init_connector(struct intel_digital_port *dig_port,
>>   			       struct intel_connector *intel_connector)
>>   {
>>   	struct intel_display *display = to_intel_display(dig_port);
>> @@ -3056,17 +3056,17 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
>>   		    intel_encoder->base.base.id, intel_encoder->base.name);
>>   
>>   	if (DISPLAY_VER(display) < 12 && drm_WARN_ON(dev, port == PORT_A))
>> -		return;
>> +		return false;
>>   
>>   	if (drm_WARN(dev, dig_port->max_lanes < 4,
>>   		     "Not enough lanes (%d) for HDMI on [ENCODER:%d:%s]\n",
>>   		     dig_port->max_lanes, intel_encoder->base.base.id,
>>   		     intel_encoder->base.name))
>> -		return;
>> +		return false;
>>   
>>   	ddc_pin = intel_hdmi_ddc_pin(intel_encoder);
>>   	if (!ddc_pin)
>> -		return;
>> +		return false;
>>   
>>   	drm_connector_init_with_ddc(dev, connector,
>>   				    &intel_hdmi_connector_funcs,
>
> drm_connector_init_with_ddc() function has return values, these should 
> also be handled here.

It's going to need to be a separate patch.

BR,
Jani.

>
>> @@ -3111,6 +3111,8 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
>>   					   &conn_info);
>>   	if (!intel_hdmi->cec_notifier)
>>   		drm_dbg_kms(display->drm, "CEC notifier get failed\n");
>> +
>> +	return true;
>>   }
>>   
>>   /*
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
>> index 466f48df8a74..38deaeb302a2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
>> @@ -22,7 +22,7 @@ struct intel_encoder;
>>   struct intel_hdmi;
>>   union hdmi_infoframe;
>>   
>> -void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
>> +bool intel_hdmi_init_connector(struct intel_digital_port *dig_port,
>>   			       struct intel_connector *intel_connector);
>>   bool intel_hdmi_compute_has_hdmi_sink(struct intel_encoder *encoder,
>>   				      const struct intel_crtc_state *crtc_state,
>

-- 
Jani Nikula, Intel
