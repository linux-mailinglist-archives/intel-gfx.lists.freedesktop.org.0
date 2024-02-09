Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C494684F1EC
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 10:06:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0522E10F27D;
	Fri,  9 Feb 2024 09:06:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ntQu8K6S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2707910F27D
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 09:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707469592; x=1739005592;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=J8RNCZy7ZzzH+oJh1M0Dn1jLt9i4KcpS6N0IoPqLhw8=;
 b=ntQu8K6SrRS/yw07k+tlQNVTEGV5r83TYcracc3FUlE8WsUFcPrTfln1
 tkMB3NA7YwaiMtfFsRgtKTTPmmpaVd/oZDfilUzDbXf6yMYmW2nzpWc+J
 8GnO0E3Vu9rEc9iilIIegvah+GYatcicvCYKD5o+Q4igp5xRD4gaesOS3
 gzmVkmGvqP6E11JAw62Z9DsCJvoGq722LL6B8B+V0MfKsn8MHppp4lgfp
 tAUIUjd6e/Qe4Mz1Sy0PQYLu1j31Tyl1s4kYO7OmWyP7N+z2zMrmSE4dl
 NsY0joTJfcTzceC22TWlFQBjxr6fHJYnjMly6BQezrseXpExTJt++aZXd A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="436531016"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; d="scan'208";a="436531016"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 01:06:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="6544843"
Received: from dfischbe-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.64])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 01:06:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/display: Force full modeset for eDP
In-Reply-To: <20240206070937.197986-3-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240206070937.197986-1-mika.kahola@intel.com>
 <20240206070937.197986-3-mika.kahola@intel.com>
Date: Fri, 09 Feb 2024 11:06:27 +0200
Message-ID: <87a5oaatws.fsf@intel.com>
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

On Tue, 06 Feb 2024, Mika Kahola <mika.kahola@intel.com> wrote:
> Force full modeset for eDP when booting up. GOP programs
> PLL parameters and hence, we would be able to use fastset
> for eDP. However, with fastset we are not setting PLL values
> from the driver and rely that GOP and driver PLL values match.
> We have discovered that with some of the panels this is not
> true and hence we would need to program PLL values by the
> driver. The patch suggests a workaround as enabling full
> modeset when booting up. This way we force the driver to
> write the PLL values to the hw.

No. We want to avoid full modesets if possible, both in general and at
probe.

And when we do end up with modesets, the decision needs to be based on
changes in the state that we can't write to the hardware without a
modeset.

We can't unconditionally force a modeset on eDP panels at probe.


BR,
Jani.

>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index ab415f41924d..9699ded1eb5f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3319,6 +3319,7 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
>  	 * of crtc_state->dsc, we have no way to ensure reliable fastset.
>  	 * Remove once we have readout for DSC.
>  	 */
> +
>  	if (crtc_state->dsc.compression_enable) {
>  		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset due to DSC being enabled\n",
>  			    encoder->base.base.id, encoder->base.name);
> @@ -3326,6 +3327,18 @@ bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
>  		fastset = false;
>  	}
>  
> +	/*
> +	 * FIXME hack to force full modeset for eDP as not always BIOS written PLL
> +	 * values does not match with the ones defined in the driver code
> +	 */
> +	if (!crtc_state->uapi.mode_changed &&
> +	    intel_dp_is_edp(intel_dp)) {
> +		drm_dbg_kms(&i915->drm, "Forcing full modeset for eDP\n");
> +		crtc_state->uapi.mode_changed = true;
> +		fastset = false;
> +	}
> +
> +
>  	return fastset;
>  }

-- 
Jani Nikula, Intel
