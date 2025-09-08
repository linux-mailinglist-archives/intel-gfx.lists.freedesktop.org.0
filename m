Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C72B489E6
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 12:18:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19FD210E4BA;
	Mon,  8 Sep 2025 10:18:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LzT6/7yL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3082D10E4B8;
 Mon,  8 Sep 2025 10:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757326733; x=1788862733;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=5l0+g7DqWEN9Ys77QDzZqNYEoRZe0vGWjPe1pr+WWrM=;
 b=LzT6/7yLJ9aE6LIPRiKUYsbNGydR05M/WcV8HYg6U+jUYbkQwF1U0lIj
 HBuauVQ0OVz0QvG5MN+kB7OapFLhgAFFlMYPjh9dv4ayLLvlWdOGkJzhn
 nqxU13To0BjFn/pbJfDd8YHGc0T/QM18rn/JFqdxoF/mpTQ3v87aqy0Lf
 z6q4Q3HmlEiCbyH3zO8VpMrmlQmtVpVOktz1D1ZXft/GpY56fFW06Qj+T
 c1x4zauTXe/FOXaWXz4OnIpXGev6RpqmNs0cENDBnuywXVk4JEDXN/9Mo
 m1YrMtJkK6qMlx5sx36YEZ09ZgIdnbNyOUVWzDe3wjGxW3zTczbVDcEmJ Q==;
X-CSE-ConnectionGUID: V2SCHBzrReGA4DQrMSVXhA==
X-CSE-MsgGUID: GgXq8UHCR0CreB0+HzZFSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="82171717"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="82171717"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 03:18:52 -0700
X-CSE-ConnectionGUID: /C8B8EgSSDupEz0PUz9NmA==
X-CSE-MsgGUID: i1uTxAoDTCi2uNwe8FC1Tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="172340455"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 03:18:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/ddi: abstract figuring out encoder name
In-Reply-To: <25b36d6f-6e63-4804-8f1c-c5f857f9a8bd@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250903101050.3671305-1-jani.nikula@intel.com>
 <25b36d6f-6e63-4804-8f1c-c5f857f9a8bd@intel.com>
Date: Mon, 08 Sep 2025 13:18:48 +0300
Message-ID: <c5d1b333b80763c23510a4b19e1733f695f37240@intel.com>
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

On Wed, 03 Sep 2025, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 9/3/2025 3:40 PM, Jani Nikula wrote:
>> The encoder name deduction has become a bit cumbersome within
>> intel_ddi_init(). Split it out to a separate function to declutter
>> intel_ddi_init(), even if that means having to use a temp seq buffer for
>> the name.
>>
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> LGTM.
>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>> ---
>>   drivers/gpu/drm/i915/display/intel_ddi.c | 69 +++++++++++++-----------
>>   1 file changed, 38 insertions(+), 31 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index 4e4ea3a0ff83..68e049ad042b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -26,6 +26,7 @@
>>    */
>>   
>>   #include <linux/iopoll.h>
>> +#include <linux/seq_buf.h>
>>   #include <linux/string_helpers.h>
>>   
>>   #include <drm/display/drm_dp_helper.h>
>> @@ -5077,11 +5078,45 @@ static bool port_in_use(struct intel_display *display, enum port port)
>>   	return false;
>>   }
>>   
>> +static const char *intel_ddi_encoder_name(struct intel_display *display,
>> +					  enum port port, enum phy phy,
>> +					  struct seq_buf *s)
>> +{
>> +	if (DISPLAY_VER(display) >= 13 && port >= PORT_D_XELPD) {
>> +		seq_buf_printf(s, "DDI %c/PHY %c",
>> +			       port_name(port - PORT_D_XELPD + PORT_D),
>> +			       phy_name(phy));
>> +	} else if (DISPLAY_VER(display) >= 12) {
>> +		enum tc_port tc_port = intel_port_to_tc(display, port);
>> +
>> +		seq_buf_printf(s, "DDI %s%c/PHY %s%c",
>> +			       port >= PORT_TC1 ? "TC" : "",
>> +			       port >= PORT_TC1 ? port_tc_name(port) : port_name(port),
>> +			       tc_port != TC_PORT_NONE ? "TC" : "",
>> +			       tc_port != TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
>> +	} else if (DISPLAY_VER(display) >= 11) {
>> +		enum tc_port tc_port = intel_port_to_tc(display, port);
>> +
>> +		seq_buf_printf(s, "DDI %c%s/PHY %s%c",
>> +			       port_name(port),
>> +			       port >= PORT_C ? " (TC)" : "",
>> +			       tc_port != TC_PORT_NONE ? "TC" : "",
>> +			       tc_port != TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
>> +	} else {
>> +		seq_buf_printf(s, "DDI %c/PHY %c", port_name(port),  phy_name(phy));
>> +	}
>> +
>> +	drm_WARN_ON(display->drm, seq_buf_has_overflowed(s));
>> +
>> +	return seq_buf_str(s);
>> +}
>> +
>>   void intel_ddi_init(struct intel_display *display,
>>   		    const struct intel_bios_encoder_data *devdata)
>>   {
>>   	struct intel_digital_port *dig_port;
>>   	struct intel_encoder *encoder;
>> +	DECLARE_SEQ_BUF(encoder_name, 20);
>>   	bool init_hdmi, init_dp;
>>   	enum port port;
>>   	enum phy phy;
>> @@ -5166,37 +5201,9 @@ void intel_ddi_init(struct intel_display *display,
>>   	encoder = &dig_port->base;
>>   	encoder->devdata = devdata;
>>   
>> -	if (DISPLAY_VER(display) >= 13 && port >= PORT_D_XELPD) {
>> -		drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
>> -				 DRM_MODE_ENCODER_TMDS,
>> -				 "DDI %c/PHY %c",
>> -				 port_name(port - PORT_D_XELPD + PORT_D),
>> -				 phy_name(phy));
>> -	} else if (DISPLAY_VER(display) >= 12) {
>> -		enum tc_port tc_port = intel_port_to_tc(display, port);
>> -
>> -		drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
>> -				 DRM_MODE_ENCODER_TMDS,
>> -				 "DDI %s%c/PHY %s%c",
>> -				 port >= PORT_TC1 ? "TC" : "",
>> -				 port >= PORT_TC1 ? port_tc_name(port) : port_name(port),
>> -				 tc_port != TC_PORT_NONE ? "TC" : "",
>> -				 tc_port != TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
>> -	} else if (DISPLAY_VER(display) >= 11) {
>> -		enum tc_port tc_port = intel_port_to_tc(display, port);
>> -
>> -		drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
>> -				 DRM_MODE_ENCODER_TMDS,
>> -				 "DDI %c%s/PHY %s%c",
>> -				 port_name(port),
>> -				 port >= PORT_C ? " (TC)" : "",
>> -				 tc_port != TC_PORT_NONE ? "TC" : "",
>> -				 tc_port != TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
>> -	} else {
>> -		drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
>> -				 DRM_MODE_ENCODER_TMDS,
>> -				 "DDI %c/PHY %c", port_name(port), phy_name(phy));
>> -	}
>> +	drm_encoder_init(display->drm, &encoder->base, &intel_ddi_funcs,
>> +			 DRM_MODE_ENCODER_TMDS, "%s",
>> +			 intel_ddi_encoder_name(display, port, phy, &encoder_name));
>>   
>>   	intel_encoder_link_check_init(encoder, intel_ddi_link_check);
>>   

-- 
Jani Nikula, Intel
