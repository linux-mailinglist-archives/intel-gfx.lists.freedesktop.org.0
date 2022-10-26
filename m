Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D148E60E348
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 16:26:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1C5E10E00C;
	Wed, 26 Oct 2022 14:26:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 213BE10E00C
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 14:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666794405; x=1698330405;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=scAjhkt3gheWvt4N0ikQa8dkudr6FWluybrWK/MwCdo=;
 b=BV9xKZbqlQEy+iiSgU1I93GEJsoR6nwoCKOtbWJtlMgpKvJLR9rW+62M
 k/N2o42TK2XhT4B9qBNGMtRBsecT5sXhztsi3my7+BhShkuKzWJwN5RwY
 WGR+DLIqSIEOXDfzIrp8x606yhGZIotQg8GwX+/UwacqGILJidD9ADsbC
 3LgKF4RoHxkKNw0nL3thu2vGqI4RfcF3o0aj8dVwTNzyn2rZT1PTkSw29
 7JlK0oXj76uPY7Ummkemr4t88F4G+EU2V6kn1TBbCR6JoZIrOPfDJtTh4
 xWXc5bn5jpu94p6VyoVe+ZxQpMfVFsVksRMDSRan7/r7z7ZeoKk43X2gf w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="372167358"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="372167358"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 07:26:44 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="961226056"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="961226056"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 07:26:42 -0700
Date: Wed, 26 Oct 2022 17:26:38 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <Y1lDnnKZ3zstL9c2@ideak-desk.fi.intel.com>
References: <20221014124740.774835-1-mika.kahola@intel.com>
 <20221014124740.774835-21-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221014124740.774835-21-mika.kahola@intel.com>
Subject: Re: [Intel-gfx] [PATCH 20/20] drm/i915/mtl: Pin assignment for TypeC
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 14, 2022 at 03:47:40PM +0300, Mika Kahola wrote:
> From: Anusha Srivatsa <anusha.srivatsa@intel.com>
> 
> Unlike previous platforms that used PORT_TX_DFLEXDPSP
> for max_lane calculation, MTL uses only PORT_TX_DFLEXPA1
> from which the max_lanes has to be calculated.
> 
> Bspec: 50235, 65380
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Jose Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 30 +++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index dba10bcc6b66..1bc81adf1ad7 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -13,6 +13,10 @@
>  #include "intel_tc.h"
>  #include "intel_tc_phy_regs.h"
>  
> +#define DP_PIN_ASSIGNMENT_C	0x3
> +#define DP_PIN_ASSIGNMENT_D	0x4
> +#define DP_PIN_ASSIGNMENT_E	0x5

The above are flags for the PORT_TX_DFLEXPA1 register, so should be
defined next to it.

TGL handles a few more encodings, not sure if that's correct or the
register description, opened a bspec ticket to clarify that.

> +
>  static const char *tc_port_mode_name(enum tc_port_mode mode)
>  {
>  	static const char * const names[] = {
> @@ -149,6 +153,29 @@ u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
>  	       DP_PIN_ASSIGNMENT_SHIFT(dig_port->tc_phy_fia_idx);
>  }
>  
> +static int mtl_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)

The function returns the maximum number of lanes, so should be named
accordingly.

> +{
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	intel_wakeref_t wakeref;
> +	u32 pin_mask;
> +
> +	assert_tc_cold_blocked(dig_port);
> +
> +	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)
> +		pin_mask = intel_tc_port_get_pin_assignment_mask(dig_port);

The called function handles all the above, so it can be just:

	switch (intel_tc_port_get_pin_assignment_mask()):

> +
> +	switch(pin_mask) {
> +	default:
> +		MISSING_CASE(pin_mask);
> +		fallthrough;
> +	case DP_PIN_ASSIGNMENT_D:
> +		return 2;
> +	case DP_PIN_ASSIGNMENT_C:
> +	case DP_PIN_ASSIGNMENT_E:
> +		return 4;
> +	}
> +}
> +
>  int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> @@ -158,6 +185,9 @@ int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
>  	if (dig_port->tc_mode != TC_PORT_DP_ALT)
>  		return 4;
>  
> +	if (DISPLAY_VER(i915) >= 14)
> +		return mtl_tc_port_get_pin_assignment_mask(dig_port);
> +
>  	assert_tc_cold_blocked(dig_port);
>  
>  	lane_mask = 0;
> -- 
> 2.34.1
> 
