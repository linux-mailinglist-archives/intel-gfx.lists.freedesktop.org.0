Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFE997AC7E
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 09:59:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 167AA10E166;
	Tue, 17 Sep 2024 07:59:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ILvyiLcg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EEF710E166;
 Tue, 17 Sep 2024 07:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726559969; x=1758095969;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=UG8LqdzeXSaEAAFcyA5nqjSctWoPpzwU0FOM7G9g5X4=;
 b=ILvyiLcgpkH0T7H1KJT6VjLZ/K8rXPXU3QxMOYb/X6zOZn7/BW81RkrX
 1E+iAesQEXMEKDq3+/CNcm8WlbI4b+DRtS811ZnaqjKVEhzqvQxkNivTi
 JDtsVDQwpU+VMvqqYO1AE9gEeSsAD7ZKf5eiphBmr+oZNwAR0rpFqoHtn
 +k7XC6DRyv4OhTEpvMxNtdm/9IhVWKiY/mcsFgYAcQARozlGKyw9vPMwA
 7B3mOgW6Sih4N+Hf2DLuzrTrVelwsqY4JztW9668/0cEzTRhr7taCNPaB
 xy/mGiXCdvjlzdbxb48OHc2GUV+WXyt4b4RKmJnmJuJZtBLbrMYg2cwvl w==;
X-CSE-ConnectionGUID: G2cSCZJCSOaioZLjDvMlZQ==
X-CSE-MsgGUID: frBFflYjSNWthBHVz5hzsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="25284035"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="25284035"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 00:59:29 -0700
X-CSE-ConnectionGUID: XzjX9IC0RTq85FgSLV0w9Q==
X-CSE-MsgGUID: R45W4e/RRbaeFeboDkwYMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69211784"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 00:59:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vamsi Krishna Brahmajosyula <vamsikrishna.brahmajosyula@gmail.com>,
 gustavo.sousa@intel.com, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net, airlied@gmail.com,
 daniel@ffwll.ch
Cc: skhan@linuxfoundation.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] drm/i915/cx0: Set power state to ready only on owned
 PHY lanes
In-Reply-To: <20240916180137.9203-1-vamsikrishna.brahmajosyula@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240916180137.9203-1-vamsikrishna.brahmajosyula@gmail.com>
Date: Tue, 17 Sep 2024 10:59:22 +0300
Message-ID: <87h6aed82t.fsf@intel.com>
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

On Mon, 16 Sep 2024, Vamsi Krishna Brahmajosyula <vamsikrishna.brahmajosyula@gmail.com> wrote:
> In DP alt mode, when pin assignment is D, only one PHY lane is owned
> by the display. intel_cx0pll_enable currently performs a power cycle
> ready on both the lanes in all cases.
>
> Address the todo to perfom power state ready on owned lanes.
>
> Tested on Meteor Lake-P [Intel Arc Graphics] with DP alt mode.
>
> v1 -> v2: Address comments from Gustavo Sousa

Please briefly describe the actual change. This does not help at all.

BR,
Jani.

>
> Signed-off-by: Vamsi Krishna Brahmajosyula <vamsikrishna.brahmajosyula@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 4a6c3040ca15..cbed53d3b250 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2934,6 +2934,7 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
>  	enum phy phy = intel_encoder_to_phy(encoder);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> +	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
>  	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
>  					  INTEL_CX0_LANE0;
>  	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
> @@ -2948,10 +2949,9 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
>  	intel_cx0_phy_lane_reset(encoder, lane_reversal);
>  
>  	/*
> -	 * 3. Change Phy power state to Ready.
> -	 * TODO: For DP alt mode use only one lane.
> +	 * 3. Change Phy power state to Ready on owned lanes.
>  	 */
> -	intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
> +	intel_cx0_powerdown_change_sequence(encoder, owned_lane_mask,
>  					    CX0_P2_STATE_READY);
>  
>  	/*
>
> base-commit: ad060dbbcfcfcba624ef1a75e1d71365a98b86d8

-- 
Jani Nikula, Intel
