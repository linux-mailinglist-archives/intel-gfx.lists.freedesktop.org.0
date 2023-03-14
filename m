Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A1C6B966B
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 14:38:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B58910E19A;
	Tue, 14 Mar 2023 13:38:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE80E10E19A
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 13:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678801126; x=1710337126;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=1v53NZ+Aepx10PPXQhZZdVIDTHp1YiTnJzq1B6JaNSM=;
 b=RVV3znOpmi/M4Ys9CxK0TBZXlXrgsosV3MkLMUzcQ4VSBI3xrp63LFqW
 oSX4TZcdhkFXQoFA8TKNV/miwUMhcYCgxMiAh4lfUVFncs/sFynVetwKz
 xCwfzQS7B4zwgt0IN7FBDqTrx+ukzCrwxflbooYU6PkPPN4zXBu2s7G54
 d4448Ou5162N4EwU8YYWpaCEArOLyFsePeV0aPDyBuCmj19HQeXsHiHn+
 ErKXlTlup64AZ14wTPBVCNcc4CodgMAbrR+ARR5OQgwWAV4mEzRD7xWKz
 pZLeXPP8kQH5+lLzs+IIbutr7wVrnK1JmWsrcIm78L1ilEVsgXWu0jwk6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="317814182"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="317814182"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 06:38:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="672340804"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="672340804"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 06:38:44 -0700
Date: Tue, 14 Mar 2023 15:38:41 +0200
From: Imre Deak <imre.deak@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <ZBB44cNsv/B32fQQ@ideak-desk.fi.intel.com>
References: <20230215083832.287519-1-vinod.govindapillai@intel.com>
 <20230215083832.287519-3-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230215083832.287519-3-vinod.govindapillai@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/display: ignore link
 training failures in CI
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
Reply-To: imre.deak@intel.com
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 15, 2023 at 10:38:32AM +0200, Vinod Govindapillai wrote:
> If the ignore long HPD flag is set, ignore the link training
> failures as well. Because of spurious HPDs, some unexpected link
> training failures are happening while executing IGT test cases.
> Ignore the link training failures for the time being if the long
> HPDs are also ignored in the environments like CI.
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

Looks ok to me, on the patchset:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  .../drm/i915/display/intel_dp_link_training.c | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 3d3efcf02011..f90c627ab553 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1433,7 +1433,11 @@ intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
>  void intel_dp_start_link_train(struct intel_dp *intel_dp,
>  			       const struct intel_crtc_state *crtc_state)
>  {
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct intel_connector *connector = intel_dp->attached_connector;
> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>  	bool passed;
> +
>  	/*
>  	 * TODO: Reiniting LTTPRs here won't be needed once proper connector
>  	 * HW state readout is added.
> @@ -1451,6 +1455,26 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
>  	else
>  		passed = intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count);
>  
> +	/*
> +	 * Ignore the link failure in CI
> +	 *
> +	 * In fixed enviroments like CI, sometimes unexpected long HPDs are
> +	 * generated by the displays. If ignore_long_hpd flag is set, such long
> +	 * HPDs are ignored. And probably as a consequence of these ignored
> +	 * long HPDs, subsequent link trainings are failed resulting into CI
> +	 * execution failures.
> +	 *
> +	 * For test cases which rely on the link training or processing of HPDs
> +	 * ignore_long_hpd flag can unset from the testcase.
> +	 */
> +	if (!passed && i915->display.hotplug.ignore_long_hpd) {
> +		drm_dbg_kms(&i915->drm,
> +			    "[CONNECTOR:%d:%s][ENCODER:%d:%s] Ignore the link failure\n",
> +			    connector->base.base.id, connector->base.name,
> +			    encoder->base.base.id, encoder->base.name);
> +		return;
> +	}
> +
>  	if (!passed)
>  		intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
>  }
> -- 
> 2.34.1
> 
