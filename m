Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8ED188CA3
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 18:54:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1362289DD2;
	Tue, 17 Mar 2020 17:54:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6277889DD2
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 17:54:47 +0000 (UTC)
IronPort-SDR: 93jBJZ3XREnaLp6C/nVV17ZDrnEsNm9kDOln8mF5iTIXGxW0O6oriHC5XFUI/lIbiaoRME42Lz
 31W7xRBUzstw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 10:54:46 -0700
IronPort-SDR: yKbv9mmSe6aE6q9E8xXlDCKeJRFFWpG73uTMmDGWGr8gGRdTIxB5x0v9V5daDlechGi98VdlKV
 PIBP8u93Yz0g==
X-IronPort-AV: E=Sophos;i="5.70,565,1574150400"; d="scan'208";a="417629996"
Received: from mpopilov-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.216])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 10:54:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200313185227.21900-1-anshuman.gupta@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200304125118.12335-1-anshuman.gupta@intel.com>
 <20200313185227.21900-1-anshuman.gupta@intel.com>
Date: Tue, 17 Mar 2020 19:54:42 +0200
Message-ID: <87zhceeujh.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/edp: Ignore short pulse when
 panel powered off
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, 14 Mar 2020, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> Few edp panels like Sharp is triggering short and long
> hpd pulse after panel is getting powered off.
> Currently driver is already ignoring long pulse for eDP
> panel but in order to process the short pulse, it turns on
> the VDD which requires panel power_cycle_delay + panel_power_on_delay
> these delay on Sharp panel introduced the responsiveness overhead
> of 800ms in the modeset sequence and as well is in suspend
> sequence.
> Ignoring any short pulse once panel is powered off.
>
> FIXME: It requires to wait for panel_power_off_delay in order
> to check the panel status, as panel triggers short pulse immediately
> after writing PP_OFF to PP_CTRL register.
>
> v2:
> - checking vdd along with panel power to ignore the hpd. [Jani,Ville]
>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 27 +++++++++++++++++++------
>  1 file changed, 21 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0a417cd2af2b..3475791d3bea 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6763,21 +6763,36 @@ static const struct drm_encoder_funcs intel_dp_enc_funcs = {
>  	.destroy = intel_dp_encoder_destroy,
>  };
>  
> +static bool intel_edp_have_power(struct intel_dp *intel_dp)
> +{
> +	intel_wakeref_t wakeref;
> +	bool powerd_on = false;

Nitpick, "powerd" seems like a typo. "have_power" to reflect the name of
the function?

> +
> +	with_pps_lock(intel_dp, wakeref) {
> +		powerd_on = edp_have_panel_power(intel_dp) &&
> +					edp_have_panel_vdd(intel_dp);
> +	}
> +
> +	return powerd_on;
> +}
> +
>  enum irqreturn
>  intel_dp_hpd_pulse(struct intel_digital_port *intel_dig_port, bool long_hpd)
>  {
>  	struct intel_dp *intel_dp = &intel_dig_port->dp;
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  
> -	if (long_hpd && intel_dig_port->base.type == INTEL_OUTPUT_EDP) {
> +	if (intel_dig_port->base.type == INTEL_OUTPUT_EDP &&
> +	    !intel_edp_have_power(intel_dp)) {

This *enables* long hpd handling when eDP *does* have power. Not sure if
we want that. Erring on the safe side, this might be a better option:

        if (intel_dig_port->base.type == INTEL_OUTPUT_EDP &&
            (long_hpd || !intel_edp_have_power(intel_dp)))

>  		/*
> -		 * vdd off can generate a long pulse on eDP which
> +		 * vdd off can generate a hpd pulse on eDP which
>  		 * would require vdd on to handle it, and thus we
>  		 * would end up in an endless cycle of
> -		 * "vdd off -> long hpd -> vdd on -> detect -> vdd off -> ..."
> +		 * "vdd off -> hpd -> vdd on -> detect -> vdd off -> ..."
>  		 */
> -		DRM_DEBUG_KMS("ignoring long hpd on eDP [ENCODER:%d:%s]\n",
> -			      intel_dig_port->base.base.base.id,
> -			      intel_dig_port->base.base.name);
> +		drm_dbg_kms(&i915->drm, "ignoring hpd on eDP [ENCODER:%d:%s]\n",
> +			    intel_dig_port->base.base.base.id,
> +			    intel_dig_port->base.base.name);

I think we may want to know whether it was a short or long hpd that was
ignored if we ever need to debug this again. (We will. ;)

Something along the lines of "ignoring %s hpd ...", long_hpd ? "long" :
"short".

Please keep the old logging macro here, in case this needs backporting
to older kernels. (In general not a huge fan of doing two independent
things at once.)

BR,
Jani.


>  		return IRQ_HANDLED;
>  	}

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
