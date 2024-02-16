Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7621857E0F
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 14:52:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89D1110EB9B;
	Fri, 16 Feb 2024 13:52:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P5OnMAe/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F23510EB98;
 Fri, 16 Feb 2024 13:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708091536; x=1739627536;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Yu9ZhAKtKUc0wVVT1LvPsqSmdtRDWkSBwW3SeKwonJE=;
 b=P5OnMAe/KvgeyEH/pq0zyQkoTWY2rGSGgVKFH3SDt+8gad/sk5w6pJeH
 LzmlB7iD6PT+mzzjvCangEutlJmKMNerE9MxEB5DffPcdvjkGjzqVN1is
 87ZFgd2847fnRBGnjWehV3vx/IffVjCl3Mt+ONOUoczAYGd5K38ou/Y7d
 j8qcliN1YTjpfsZLvf5kpE99aNUdC8Ci/KRzjXPW9hcd3rGt5NJv0EZ9P
 a4iw3cJp4tULfvXzB0Z+uG7vVnQ7OjQqH+sjNQoAUmknr/DGkAPWRBQ3K
 /ULRsLR7VUVobGF+zUSvKbzbnDQ7wyw/VNh2Ng9aSLvM0RoffV8ktQjV1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="13619492"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; d="scan'208";a="13619492"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 05:52:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; d="scan'208";a="34881174"
Received: from bducamp-mobl.ger.corp.intel.com (HELO [10.249.43.162])
 ([10.249.43.162])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 05:52:14 -0800
Message-ID: <4c37e423-10a8-4fa6-8ea9-aaff24e66e04@linux.intel.com>
Date: Fri, 16 Feb 2024 14:52:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] drm/xe/hdcp: Add intel_hdcp_gsc_message to Makefile
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: daniele.ceraolospurio@intel.com
References: <20240209101412.1326176-1-suraj.kandpal@intel.com>
 <20240209101412.1326176-6-suraj.kandpal@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <20240209101412.1326176-6-suraj.kandpal@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

Hey,

Where is xe_hdcp_gsc_message.c defined in this series?

I would move this part there.

On 2024-02-09 11:14, Suraj Kandpal wrote:
> Add intel_hdcp_gsc_message to Makefile and add corresponding
> changes to xe_hdcp_gsc.c to make it build.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/xe/Makefile              |  1 +
>   drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 18 ++++++++++++++++++
>   2 files changed, 19 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index c531210695db..2b654c908ff3 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -254,6 +254,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>   	i915-display/intel_global_state.o \
>   	i915-display/intel_gmbus.o \
>   	i915-display/intel_hdcp.o \
> +	i915-display/intel_hdcp_gsc_message.o \
>   	i915-display/intel_hdmi.o \
>   	i915-display/intel_hotplug.o \
>   	i915-display/intel_hotplug_irq.o \
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index aa8c13916bb6..f185465d5682 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -5,9 +5,11 @@
>   
>   #include <drm/drm_print.h>
>   #include <linux/delay.h>
> +#include <drm/i915_hdcp_interface.h>
>   
>   #include "abi/gsc_command_header_abi.h"
>   #include "intel_hdcp_gsc.h"
> +#include "intel_hdcp_gsc_message.h"
>   #include "xe_device_types.h"
>   #include "xe_gt.h"
>   #include "xe_gsc_proxy.h"
> @@ -113,6 +115,22 @@ static int intel_hdcp_gsc_hdcp2_init(struct xe_device *xe)
>   	return ret;
>   }
>   
> +static const struct i915_hdcp_ops gsc_hdcp_ops = {
> +	.initiate_hdcp2_session = intel_hdcp_gsc_initiate_session,
> +	.verify_receiver_cert_prepare_km =
> +				intel_hdcp_gsc_verify_receiver_cert_prepare_km,
> +	.verify_hprime = intel_hdcp_gsc_verify_hprime,
> +	.store_pairing_info = intel_hdcp_gsc_store_pairing_info,
> +	.initiate_locality_check = intel_hdcp_gsc_initiate_locality_check,
> +	.verify_lprime = intel_hdcp_gsc_verify_lprime,
> +	.get_session_key = intel_hdcp_gsc_get_session_key,
> +	.repeater_check_flow_prepare_ack =
> +				intel_hdcp_gsc_repeater_check_flow_prepare_ack,
> +	.verify_mprime = intel_hdcp_gsc_verify_mprime,
> +	.enable_hdcp_authentication = intel_hdcp_gsc_enable_authentication,
> +	.close_hdcp_session = intel_hdcp_gsc_close_session,
> +};
The changes to xe_hdcp_gsc seems like it should be part of the previous 
commit?

Presumably also useful to reorder the Makefile change to before 4/5.

Cheers,
Maarten
