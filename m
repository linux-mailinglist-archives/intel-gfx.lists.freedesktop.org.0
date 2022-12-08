Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD33646D40
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 11:41:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5EDF10E1B8;
	Thu,  8 Dec 2022 10:41:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB9BA10E4A5
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 10:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670496081; x=1702032081;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=kPR1lAdRTzTLGovHH9DYGnGWQTnF3pUEQB3eNJdzsgc=;
 b=BhaUBDeqcNs8NoAro8rMMxBOpC3pZ/uPYbytn4y9lPPeX3PDto4K0ubj
 5OFSW7vgSFmLh/LW46NcUUTlHF1MY62zsCpNI4o20gFttr4OxuRpIAtMs
 mgLkZg8CHVzk4sMJ/aOpUhk/TYTXDucg9aP1B4HnByjdtfugtOTnS7pwW
 /aZ20xZFVVdJxIAK1r+sf30Jf0OdTktamw6dh2zLFy1G4SW4zoWGfSWGC
 7RZrGXTN2sBTPfUUU7WuGYFOWL2ducQPaqKsmvn/UJ4h9j0hhVxzPbcOh
 R2hZRIxi1ER9GVpasNjAGiSEjVpI7S3hhMzj02TpuJDcd1CFwNl7yvJ5J g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="403403559"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="403403559"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:41:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="771436319"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="771436319"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.6.160])
 ([10.213.6.160])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:41:19 -0800
Message-ID: <6b43b1cd-790a-1e02-a03c-70c70b4c6d30@intel.com>
Date: Thu, 8 Dec 2022 11:41:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1670433372.git.jani.nikula@intel.com>
 <262a0cf647b37e27a1c7776d3816e1b4ef959a91.1670433372.git.jani.nikula@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <262a0cf647b37e27a1c7776d3816e1b4ef959a91.1670433372.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 07/11] drm/i915/dp-aux: switch to
 intel_de_* register accessors in display code
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

On 07.12.2022 18:17, Jani Nikula wrote:
> Avoid direct uncore use in display code.
> 
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/display/intel_dp_aux.c | 29 +++++++++------------
>   1 file changed, 13 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 664bebdecea7..91c93c93e5fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -6,6 +6,7 @@
>   #include "i915_drv.h"
>   #include "i915_reg.h"
>   #include "i915_trace.h"
> +#include "intel_de.h"
>   #include "intel_display_types.h"
>   #include "intel_dp_aux.h"
>   #include "intel_pps.h"
> @@ -42,7 +43,7 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
>   	u32 status;
>   	bool done;
>   
> -#define C (((status = intel_uncore_read_notrace(&i915->uncore, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
> +#define C (((status = intel_de_read_notrace(i915, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
>   	done = wait_event_timeout(i915->display.gmbus.wait_queue, C,
>   				  msecs_to_jiffies_timeout(timeout_ms));
>   
> @@ -191,7 +192,6 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>   	struct drm_i915_private *i915 =
>   			to_i915(dig_port->base.base.dev);
> -	struct intel_uncore *uncore = &i915->uncore;
>   	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
>   	bool is_tc_port = intel_phy_is_tc(i915, phy);
>   	i915_reg_t ch_ctl, ch_data[5];
> @@ -235,7 +235,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>   
>   	/* Try to wait for any previous AUX channel activity */
>   	for (try = 0; try < 3; try++) {
> -		status = intel_uncore_read_notrace(uncore, ch_ctl);
> +		status = intel_de_read_notrace(i915, ch_ctl);
>   		if ((status & DP_AUX_CH_CTL_SEND_BUSY) == 0)
>   			break;
>   		msleep(1);
> @@ -244,7 +244,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>   	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
>   
>   	if (try == 3) {
> -		const u32 status = intel_uncore_read(uncore, ch_ctl);
> +		const u32 status = intel_de_read(i915, ch_ctl);
>   
>   		if (status != intel_dp->aux_busy_last_status) {
>   			drm_WARN(&i915->drm, 1,
> @@ -274,23 +274,20 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>   		for (try = 0; try < 5; try++) {
>   			/* Load the send data into the aux channel data registers */
>   			for (i = 0; i < send_bytes; i += 4)
> -				intel_uncore_write(uncore,
> -						   ch_data[i >> 2],
> -						   intel_dp_aux_pack(send + i,
> -								     send_bytes - i));
> +				intel_de_write(i915, ch_data[i >> 2],
> +					       intel_dp_aux_pack(send + i,
> +								 send_bytes - i));
>   
>   			/* Send the command and wait for it to complete */
> -			intel_uncore_write(uncore, ch_ctl, send_ctl);
> +			intel_de_write(i915, ch_ctl, send_ctl);
>   
>   			status = intel_dp_aux_wait_done(intel_dp);
>   
>   			/* Clear done status and any errors */
> -			intel_uncore_write(uncore,
> -					   ch_ctl,
> -					   status |
> -					   DP_AUX_CH_CTL_DONE |
> -					   DP_AUX_CH_CTL_TIME_OUT_ERROR |
> -					   DP_AUX_CH_CTL_RECEIVE_ERROR);
> +			intel_de_write(i915, ch_ctl,
> +				       status | DP_AUX_CH_CTL_DONE |
> +				       DP_AUX_CH_CTL_TIME_OUT_ERROR |
> +				       DP_AUX_CH_CTL_RECEIVE_ERROR);
>   
>   			/*
>   			 * DP CTS 1.2 Core Rev 1.1, 4.2.1.1 & 4.2.1.2
> @@ -361,7 +358,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>   		recv_bytes = recv_size;
>   
>   	for (i = 0; i < recv_bytes; i += 4)
> -		intel_dp_aux_unpack(intel_uncore_read(uncore, ch_data[i >> 2]),
> +		intel_dp_aux_unpack(intel_de_read(i915, ch_data[i >> 2]),
>   				    recv + i, recv_bytes - i);
>   
>   	ret = recv_bytes;

