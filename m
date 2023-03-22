Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E063B6C48EB
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 12:19:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D1D110E91D;
	Wed, 22 Mar 2023 11:19:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBB6310E91D
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 11:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679483969; x=1711019969;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=WNmo57sSnVSBlGinMVbYjG4rKLEc4/chNIdguMbANs8=;
 b=DJqIPKTaEUxzvyHIdxk0ZbnbYnL21gbaPEJ7bgkoWyqYDvO16w1kIlxV
 ZU1n4yqujq/XPnW+MgAwJ5b48asAs67AFj0d4pyqUb/JIwBLqwbn2YAQ4
 R5Uim5xs677NTUEL9LC27KxSXrENdwjJqBr+MlvIaxOVNAI50JElZndxF
 uTCo4b0jQa+F+wZG10Ax5JLhu+Im3mN/y21abJWKgkJm/FnlM25J1tvuf
 u6mTsUjCHUA3sADmWZE1E/SFnWuIppXhMxCPaKRBtIfzMmxiZwkrQGgY0
 Uz4cyR7PQPTOAreW8f9GcyqwK0BgS1L3Pp3a8lX2b1dUTKDHC2hApSvm4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="401756312"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="401756312"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 04:19:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="856072539"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="856072539"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.22.233])
 ([10.213.22.233])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 04:19:28 -0700
Message-ID: <65970908-9396-dda8-e4b5-746ab24894f4@intel.com>
Date: Wed, 22 Mar 2023 12:19:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.9.0
Content-Language: en-US
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230316131724.359612-1-imre.deak@intel.com>
 <20230316131724.359612-2-imre.deak@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230316131724.359612-2-imre.deak@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 01/14] drm/i915/tc: Abort DP AUX transfer on
 a disconnected TC port
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
Cc: Chris Chiu <chris.chiu@canonical.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 16.03.2023 14:17, Imre Deak wrote:
> On TC ports the 4ms AUX timeout combined with the 5 * 32 retry
> attempts during DPCD accesses adds a 640ms delay to each access if the
> sink is disconnected. This in turn slows down a modeset during which the
> sink is disconnected (for instance a disabling modeset).
> 
> Prevent the above delay by aborting AUX transfers on a TC port with a
> disconnected sink.
> 
> The DP 1.4a link CTS (4.2.1.5 Source Device Inactive HPD / Inactive AUX
> Test") also requires not to initiate AUX transfers on disconnected DP
> ports in general, however this patch doesn't change the behavior on
> non-TC ports, leaving that for a follow-up.
> 
> Reported-and-tested-by: Chris Chiu <chris.chiu@canonical.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8279
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_aux.c | 15 +++++++++++++--
>   drivers/gpu/drm/i915/display/intel_tc.c     | 15 +++++++++++----
>   drivers/gpu/drm/i915/display/intel_tc.h     |  1 +
>   3 files changed, 25 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 96967e21c94c2..eb07dc5d87099 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -205,8 +205,19 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>   	for (i = 0; i < ARRAY_SIZE(ch_data); i++)
>   		ch_data[i] = intel_dp->aux_ch_data_reg(intel_dp, i);
>   
> -	if (is_tc_port)
> +	if (is_tc_port) {
>   		intel_tc_port_lock(dig_port);
> +		/*
> +		 * Abort transfers on a disconnected port as required by
> +		 * DP 1.4a link CTS 4.2.1.5, also avoiding the long AUX
> +		 * timeouts that would otherwise happen.
> +		 * TODO: abort the transfer on non-TC ports as well.

Yes, for all ports this is definitely desirable, for example grep shows
about 15000 timeouts per one CI dmesg[1].

At least I hope, this cures the plague.

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

[1]: 
http://gfx-ci.igk.intel.com/tree/drm-tip/CI_DRM_12884/fi-elk-e7500/dmesg0.txt

Regards
Andrzej


> +		 */
> +		if (!intel_tc_port_connected_locked(&dig_port->base)) {
> +			ret = -ENXIO;
> +			goto out_unlock;
> +		}
> +	}
>   
>   	aux_domain = intel_aux_power_domain(dig_port);
>   
> @@ -367,7 +378,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>   
>   	intel_pps_unlock(intel_dp, pps_wakeref);
>   	intel_display_power_put_async(i915, aux_domain, aux_wakeref);
> -
> +out_unlock:
>   	if (is_tc_port)
>   		intel_tc_port_unlock(dig_port);
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index f45328712bff1..050f998284592 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -768,16 +768,23 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port)
>    * connected ports are usable, and avoids exposing to the users objects they
>    * can't really use.
>    */
> +bool intel_tc_port_connected_locked(struct intel_encoder *encoder)
> +{
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +
> +	drm_WARN_ON(&i915->drm, !intel_tc_port_ref_held(dig_port));
> +
> +	return tc_port_live_status_mask(dig_port) & BIT(dig_port->tc_mode);
> +}
> +
>   bool intel_tc_port_connected(struct intel_encoder *encoder)
>   {
>   	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>   	bool is_connected;
>   
>   	intel_tc_port_lock(dig_port);
> -
> -	is_connected = tc_port_live_status_mask(dig_port) &
> -		       BIT(dig_port->tc_mode);
> -
> +	is_connected = intel_tc_port_connected_locked(encoder);
>   	intel_tc_port_unlock(dig_port);
>   
>   	return is_connected;
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
> index d54082e2d5e8d..93813056043a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.h
> +++ b/drivers/gpu/drm/i915/display/intel_tc.h
> @@ -17,6 +17,7 @@ bool intel_tc_port_in_dp_alt_mode(struct intel_digital_port *dig_port);
>   bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port);
>   
>   bool intel_tc_port_connected(struct intel_encoder *encoder);
> +bool intel_tc_port_connected_locked(struct intel_encoder *encoder);
>   
>   u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port);
>   u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port);

