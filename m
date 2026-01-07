Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9836CFE8A8
	for <lists+intel-gfx@lfdr.de>; Wed, 07 Jan 2026 16:22:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B82810E621;
	Wed,  7 Jan 2026 15:22:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LetT+aiB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AFA510E61D;
 Wed,  7 Jan 2026 15:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767799335; x=1799335335;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=r4HMcMTX1zd+7WjDOHrmRXLQ0lRJMYrYNa3nsCZw8ag=;
 b=LetT+aiBOW+SMGB6brh6QJD9DTt4Y6CG+EJiQkU+WmPwyUw7Skpn1GN0
 p97xAr76zZj8Zr39K+v+97IfVAtZIkzVJQhmFYM/o6p0K7ms3BPzKLsg7
 VKsBe3yOh7W+OP2wfrVzOY2ppb9nXAUhAmZc2BntgygV6Mfs+vx/1MGUg
 G3Ufrh9Kafmbxuom/2QI+nsFnL5RbswS3motRAYi1rl98zv1SxPwmwE9C
 Enp3yI4bGBQIQOoh1Ii55owzdOkM/Fnubqt7AtFfzyC+kvD3mnDiVL9YE
 VMw1gO9Q5bb16uXlX2/1AX99TU7i7Xp0hQ+XrUNrufIyPLpz0amxR0aZm A==;
X-CSE-ConnectionGUID: IqIEUuuxT06ZRfq2seX+1g==
X-CSE-MsgGUID: geFQqNEiRPiJpZj8yxEFpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11664"; a="79891155"
X-IronPort-AV: E=Sophos;i="6.21,208,1763452800"; d="scan'208";a="79891155"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 07:22:15 -0800
X-CSE-ConnectionGUID: 5r/MNvHlSzKoNXD5ciNjsg==
X-CSE-MsgGUID: 4BdS7K46Rw239eE/zxmd+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,208,1763452800"; d="scan'208";a="202077022"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 07:22:13 -0800
Date: Wed, 7 Jan 2026 16:22:11 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 ankit.k.nautiyal@intel.com, mika.kahola@intel.com
Subject: Re: [PATCH 1/3] drm/i915/cx0: Split PLL enabling/disabling in two
 parts
In-Reply-To: <20251230083142.70064-2-suraj.kandpal@intel.com>
Message-ID: <0205146a-4832-f242-ea67-e9b5fc31d940@intel.com>
References: <20251230083142.70064-1-suraj.kandpal@intel.com>
 <20251230083142.70064-2-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-534682163-1767799334=:1288690"
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-534682163-1767799334=:1288690
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

Hi Suraj,

On Tue, 30 Dec 2025, Suraj Kandpal wrote:
> From: Mika Kahola <mika.kahola@intel.com>
>
> Split PLL enabling/disabling in two parts - one for pll setting
> pll dividers and second one to enable/disable pll clock. PLL
> clock enabling/disbling happens via encoder->enable_clock/disable_clock
> function hook. The reason for doing this is that we need to make sure
> the clock enablement happens after PPS ON step to be inline with the
> sequences which we end up violating otherwise. As a result of this
> violation we end up in a hanged state if machine stays idle for more
> that 15 mins.
>
> PLL state verification happens now earlier than the clock is enabled
> which causes a drm warn to be thrown. Silence this warning by
> allowing this check for only earlier platforms than MeteorLake.
>
> Bspec: 49190
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 87 ++++++++++++-------
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 12 +--
> 2 files changed, 64 insertions(+), 35 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 7288065d2461..f3baba264e88 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3225,11 +3225,8 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
> {
> 	int port_clock = pll_state->use_c10 ? pll_state->c10.clock : pll_state->c20.clock;
> 	struct intel_display *display = to_intel_display(encoder);
> -	enum phy phy = intel_encoder_to_phy(encoder);
> 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> 	bool lane_reversal = dig_port->lane_reversal;
> -	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
> -					  INTEL_CX0_LANE0;
> 	struct ref_tracker *wakeref = intel_cx0_phy_transaction_begin(encoder);
>
> 	/*
> @@ -3284,27 +3281,6 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
> 	 */
> 	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), port_clock);
>
> -	/*
> -	 * 9. Set PORT_CLOCK_CTL register PCLK PLL Request
> -	 * LN<Lane for maxPCLK> to "1" to enable PLL.
> -	 */
> -	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
> -		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES),
> -		     intel_cx0_get_pclk_pll_request(maxpclk_lane));
> -
> -	/* 10. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
> -	if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
> -			     intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
> -			     intel_cx0_get_pclk_pll_ack(maxpclk_lane),
> -			     XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, NULL))
> -		drm_warn(display->drm, "Port %c PLL not locked\n",
> -			 phy_name(phy));
> -
> -	/*
> -	 * 11. Follow the Display Voltage Frequency Switching Sequence After
> -	 * Frequency Change. We handle this step in bxt_set_cdclk().
> -	 */
> -
> 	/*
> 	 * 12. Toggle powerdown if HDMI is enabled on C10 PHY.
> 	 *
> @@ -3403,6 +3379,42 @@ static int intel_mtl_tbt_clock_select(struct intel_display *display,
> 	}
> }
>
> +static void intel_cx0pll_enable_clock(struct intel_encoder *encoder)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	enum phy phy = intel_encoder_to_phy(encoder);
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	bool lane_reversal = dig_port->lane_reversal;
> +					  INTEL_CX0_LANE0;

Line above breaks the build. My current understanding is that it causes
compiler to expand INTEL_CX0_LANE0 into BIT(0), which expands into 1UL
<< 0. Finally, compiler parses it more or less as:

1;

Since it is a valid statement but doesn't do anything, it triggers
unused value warning, which is turned into error.

IOW, with the line removed build works.

The explanation seems consistent with the output:

In file included from ./include/linux/bits.h:5,
                  from ./include/linux/bitops.h:6,
                  from ./include/linux/log2.h:12,
                  from drivers/gpu/drm/i915/display/intel_cx0_phy.c:6:
drivers/gpu/drm/i915/display/intel_cx0_phy.c: In function ‘intel_cx0pll_enable_clock’:
./include/vdso/bits.h:7:33: error: statement with no effect [-Werror=unused-value]
     7 | #define BIT(nr)                 (UL(1) << (nr))
       |                                 ^
drivers/gpu/drm/i915/display/intel_cx0_phy.c:32:33: note: in expansion of macro ‘BIT’
    32 | #define INTEL_CX0_LANE0         BIT(0)
       |                                 ^~~
drivers/gpu/drm/i915/display/intel_cx0_phy.c:3378:43: note: in expansion of macro ‘INTEL_CX0_LANE0’
  3378 |                                           INTEL_CX0_LANE0;
       |                                           ^~~~~~~~~~~~~~~
cc1: all warnings being treated as errors

Besides of this, for the whole series:
Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>

BR,
Michał

> +	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
> +					INTEL_CX0_LANE0;
> +
> +	struct ref_tracker *wakeref = intel_cx0_phy_transaction_begin(encoder);
> +
> +	/*
> +	 * 9. Set PORT_CLOCK_CTL register PCLK PLL Request
> +	 * LN<Lane for maxPCLK> to "1" to enable PLL.
> +	 */
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
> +		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES),
> +		     intel_cx0_get_pclk_pll_request(maxpclk_lane));
> +
> +	/* 10. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
> +	if (intel_de_wait_us(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
> +			     intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
> +			     intel_cx0_get_pclk_pll_ack(maxpclk_lane),
> +			     XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, NULL))
> +		drm_warn(display->drm, "Port %c PLL not locked\n",
> +			 phy_name(phy));
> +
> +	/*
> +	 * 11. Follow the Display Voltage Frequency Switching Sequence After
> +	 * Frequency Change. We handle this step in bxt_set_cdclk().
> +	 */
> +
> +	intel_cx0_phy_transaction_end(encoder, wakeref);
> +}
> +
> void intel_mtl_tbt_pll_enable_clock(struct intel_encoder *encoder, int port_clock)
> {
> 	struct intel_display *display = to_intel_display(encoder);
> @@ -3472,6 +3484,8 @@ void intel_mtl_pll_enable_clock(struct intel_encoder *encoder,
>
> 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> 		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
> +	else
> +		intel_cx0pll_enable_clock(encoder);
> }
>
> /*
> @@ -3567,12 +3581,6 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
> 	 * Frequency Change. We handle this step in bxt_set_cdclk().
> 	 */
>
> -	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
> -	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
> -		     XELPDP_DDI_CLOCK_SELECT_MASK(display), 0);
> -	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
> -		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
> -
> 	intel_cx0_phy_transaction_end(encoder, wakeref);
> }
>
> @@ -3586,6 +3594,20 @@ static bool intel_cx0_pll_is_enabled(struct intel_encoder *encoder)
> 			     intel_cx0_get_pclk_pll_request(lane);
> }
>
> +static void intel_cx0pll_disable_clock(struct intel_encoder *encoder)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	struct ref_tracker *wakeref = intel_cx0_phy_transaction_begin(encoder);
> +
> +	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
> +		     XELPDP_DDI_CLOCK_SELECT_MASK(display), 0);
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
> +		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
> +
> +	intel_cx0_phy_transaction_end(encoder, wakeref);
> +}
> +
> void intel_mtl_tbt_pll_disable_clock(struct intel_encoder *encoder)
> {
> 	struct intel_display *display = to_intel_display(encoder);
> @@ -3635,6 +3657,9 @@ void intel_mtl_pll_disable_clock(struct intel_encoder *encoder)
>
> 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> 		intel_mtl_tbt_pll_disable_clock(encoder);
> +	else
> +		intel_cx0pll_disable_clock(encoder);
> +
> }
>
> enum icl_port_dpll_id
> @@ -3783,6 +3808,8 @@ void intel_cx0_pll_power_save_wa(struct intel_display *display)
> 			    encoder->base.base.id, encoder->base.name);
>
> 		intel_cx0pll_enable(encoder, &pll_state);
> +		intel_cx0pll_enable_clock(encoder);
> 		intel_cx0pll_disable(encoder);
> +		intel_cx0pll_disable_clock(encoder);
> 	}
> }
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 9aa84a430f09..59395076103c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -186,11 +186,13 @@ void assert_dpll(struct intel_display *display,
> 		     "asserting DPLL %s with no DPLL\n", str_on_off(state)))
> 		return;
>
> -	cur_state = intel_dpll_get_hw_state(display, pll, &hw_state);
> -	INTEL_DISPLAY_STATE_WARN(display, cur_state != state,
> -				 "%s assertion failure (expected %s, current %s)\n",
> -				 pll->info->name, str_on_off(state),
> -				 str_on_off(cur_state));
> +	if (DISPLAY_VER(display) < 14) {
> +		cur_state = intel_dpll_get_hw_state(display, pll, &hw_state);
> +		INTEL_DISPLAY_STATE_WARN(display, cur_state != state,
> +					 "%s assertion failure (expected %s, current %s)\n",
> +					 pll->info->name, str_on_off(state),
> +					 str_on_off(cur_state));
> +	}
> }
>
> static enum tc_port icl_pll_id_to_tc_port(enum intel_dpll_id id)
> -- 
> 2.34.1
>
>
--8323329-534682163-1767799334=:1288690--
