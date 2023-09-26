Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D99557AE856
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 10:53:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BD4210E361;
	Tue, 26 Sep 2023 08:53:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F24310E361
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 08:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695718411; x=1727254411;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=vT+hLDeupapz5C2LjdDi5aUqNqE+VmQVxWnBJmfvMAk=;
 b=mDZMHGD5ufl9gYL6rH6RwlSWMab/InDoPMumqthkX45NZlmOwlo57/KK
 P5S5n1SPP6L3C8Yy8Ib+Yp9N0NM8pUdpDN99pj0bsAdhtijVJlbZrAavb
 tvm4ytNAKtYWQc/3TXdglKKf3FIcjHUu6ShHQhMIF4pyCfrFUDe1no1id
 biAzPU7NEZteMswzCUsaYnBrDjVDRmWLc0iaTCSE4tiXw/1O8S5e/6HtG
 5XJx7hmvwI6oPjwJNB4jCuiWHn9ZbI6b0+tY9BbH4+IpAxnOh1lgurujL
 65vM1Pznw8DVg3N/d/b1CuakUGXVVA+wD8HMIWS2R6bI2n2tOorN+DnuP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="371854710"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="371854710"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 01:53:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="725366683"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="725366683"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.8.182])
 ([10.213.8.182])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 01:53:29 -0700
Message-ID: <fe724b7c-3a1c-278c-f2b5-aceca701ba41@intel.com>
Date: Tue, 26 Sep 2023 10:53:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230922105645.3991066-1-jani.nikula@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230922105645.3991066-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: refactor aux_ch_name()
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

On 22.09.2023 12:56, Jani Nikula wrote:
> Convert aux_ch_name() to a helper that prints a string to a caller
> provided buffer, and use it to get more consistent aux channel
> debugs. Now that all users of aux_ch_name() are in intel_dp_aux.c, we
> can make it static too.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.h |  2 -
>   drivers/gpu/drm/i915/display/intel_dp_aux.c  | 41 ++++++++++++--------
>   2 files changed, 25 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 49ac8473b988..9f252d1f03a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -190,8 +190,6 @@ enum aux_ch {
>   	AUX_CH_E_XELPD,
>   };
>   
> -#define aux_ch_name(a) ((a) + 'A')
> -
>   enum phy {
>   	PHY_NONE = -1,
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index b90cad7f567b..4431b6290c4c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -14,6 +14,21 @@
>   #include "intel_pps.h"
>   #include "intel_tc.h"
>   
> +#define AUX_CH_NAME_BUFSIZE	6
> +
> +static const char *aux_ch_name(struct drm_i915_private *i915,
> +			       char *buf, int size, enum aux_ch aux_ch)
> +{
> +	if (DISPLAY_VER(i915) >= 13 && aux_ch >= AUX_CH_D_XELPD)
> +		snprintf(buf, size, "%c", 'A' + aux_ch - AUX_CH_D_XELPD + AUX_CH_D);
> +	else if (DISPLAY_VER(i915) >= 12 && aux_ch >= AUX_CH_USBC1)
> +		snprintf(buf, size, "USBC%c", '1' + aux_ch - AUX_CH_USBC1);
> +	else
> +		snprintf(buf, size, "%c", 'A' + aux_ch);
> +
> +	return buf;
> +}
> +
>   u32 intel_dp_aux_pack(const u8 *src, int src_bytes)
>   {
>   	int i;
> @@ -728,6 +743,7 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>   	struct intel_encoder *encoder = &dig_port->base;
>   	enum aux_ch aux_ch = dig_port->aux_ch;
> +	char buf[AUX_CH_NAME_BUFSIZE];
>   
>   	if (DISPLAY_VER(dev_priv) >= 14) {
>   		intel_dp->aux_ch_ctl_reg = xelpdp_aux_ctl_reg;
> @@ -764,18 +780,9 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>   	drm_dp_aux_init(&intel_dp->aux);
>   
>   	/* Failure to allocate our preferred name is not critical */
> -	if (DISPLAY_VER(dev_priv) >= 13 && aux_ch >= AUX_CH_D_XELPD)
> -		intel_dp->aux.name = kasprintf(GFP_KERNEL, "AUX %c/%s",
> -					       aux_ch_name(aux_ch - AUX_CH_D_XELPD + AUX_CH_D),
> -					       encoder->base.name);
> -	else if (DISPLAY_VER(dev_priv) >= 12 && aux_ch >= AUX_CH_USBC1)
> -		intel_dp->aux.name = kasprintf(GFP_KERNEL, "AUX USBC%c/%s",
> -					       aux_ch - AUX_CH_USBC1 + '1',
> -					       encoder->base.name);
> -	else
> -		intel_dp->aux.name = kasprintf(GFP_KERNEL, "AUX %c/%s",
> -					       aux_ch_name(aux_ch),
> -					       encoder->base.name);
> +	intel_dp->aux.name = kasprintf(GFP_KERNEL, "AUX %s/%s",
> +				       aux_ch_name(dev_priv, buf, sizeof(buf), aux_ch),
> +				       encoder->base.name);

With define like:

#define aux_ch_name_smart(dev_priv, aux_ch) aux_ch_name(dev_priv, 
(char[AUX_CH_NAME_BUFSIZE]){}, AUX_CH_NAME_BUFSIZE, aux_ch)

you could get rid of local variable buf, and two extra arguments in 
call. The price is gcc macro magic and maybe less visible life-time 
constraints, no strong suggestion :)

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej


>   
>   	intel_dp->aux.transfer = intel_dp_aux_transfer;
>   	cpu_latency_qos_add_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
> @@ -819,6 +826,7 @@ enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder)
>   	struct intel_encoder *other;
>   	const char *source;
>   	enum aux_ch aux_ch;
> +	char buf[AUX_CH_NAME_BUFSIZE];
>   
>   	aux_ch = intel_bios_dp_aux_ch(encoder->devdata);
>   	source = "VBT";
> @@ -836,16 +844,17 @@ enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder)
>   	other = get_encoder_by_aux_ch(encoder, aux_ch);
>   	if (other) {
>   		drm_dbg_kms(&i915->drm,
> -			    "[ENCODER:%d:%s] AUX CH %c already claimed by [ENCODER:%d:%s]\n",
> -			    encoder->base.base.id, encoder->base.name, aux_ch_name(aux_ch),
> +			    "[ENCODER:%d:%s] AUX CH %s already claimed by [ENCODER:%d:%s]\n",
> +			    encoder->base.base.id, encoder->base.name,
> +			    aux_ch_name(i915, buf, sizeof(buf), aux_ch),
>   			    other->base.base.id, other->base.name);
>   		return AUX_CH_NONE;
>   	}
>   
>   	drm_dbg_kms(&i915->drm,
> -		    "[ENCODER:%d:%s] Using AUX CH %c (%s)\n",
> +		    "[ENCODER:%d:%s] Using AUX CH %s (%s)\n",
>   		    encoder->base.base.id, encoder->base.name,
> -		    aux_ch_name(aux_ch), source);
> +		    aux_ch_name(i915, buf, sizeof(buf), aux_ch), source);
>   
>   	return aux_ch;
>   }

