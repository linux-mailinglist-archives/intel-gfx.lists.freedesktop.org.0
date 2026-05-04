Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id pvVPGNwd+Wlw5wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 00:29:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 675AA4C462D
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 00:29:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 751E310E119;
	Mon,  4 May 2026 22:29:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TcAjCBx3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F6D289125;
 Mon,  4 May 2026 22:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777933784; x=1809469784;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=KPfCK4xseKTSnOogKHs7C90EYnq0ABq2pKV5SgoCiKc=;
 b=TcAjCBx36OAz4FKO+ydTCuvGSTLwY424ro20JZ2BOQ/3aR+mfJb/PTJq
 rqcEHoHJG6q3iJbZCezSNXRboVpBF6EzCfAKjyj7MSNCxZsEq+g6CjI6t
 StqXsYhCK2f45rUK6GGjuAn60F/bS30CfRmhDU6GeyXDYz0OqhwX4Aihu
 ePavh1hLIKfe0lNVIddeB3N5fbNgwobYPE8VFoRsHohhtPqayefL7WWvM
 AEmYmvnO4waa1oMDKFdRel9JbcazNZUX0M2aCycKGP7yFpg7KN3kLJ4Bz
 u1UbBtY0jgKnjhO1HV2myjErFvUVJSXSB4uSawiWYhxdLihny7bqHwhQr Q==;
X-CSE-ConnectionGUID: ZK980FutSn2ZIr/WAVbxEQ==
X-CSE-MsgGUID: 8wHJmbl8RhakbQRLCMRe4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="82409624"
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="82409624"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 15:29:44 -0700
X-CSE-ConnectionGUID: eYXXB3g+T4SyTsba5HiITA==
X-CSE-MsgGUID: +3N7MoyzR4uOnNPnl7wHSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="240618888"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 15:29:41 -0700
Date: Tue, 5 May 2026 00:29:39 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH 1/4] drm/i915/display: add typedef for intel_reg_t and
 use it
In-Reply-To: <7f662cd4cc7dc8c40410fb67ea7ecaff406bb036.1775653994.git.jani.nikula@intel.com>
Message-ID: <8d34455b-8156-76c3-97a3-29f943650230@intel.com>
References: <cover.1775653994.git.jani.nikula@intel.com>
 <7f662cd4cc7dc8c40410fb67ea7ecaff406bb036.1775653994.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-373203919-1777932508=:12090"
Content-ID: <9151dde1-7940-77f8-854e-78be04d4c4f5@intel.com>
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
X-Rspamd-Queue-Id: 675AA4C462D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+,1:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-373203919-1777932508=:12090
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <73706a8f-0883-f170-3698-7802807eb111@intel.com>

On Wed, 8 Apr 2026, Jani Nikula wrote:
> Add a typedef alias intel_reg_t for i915_reg_t, and use it exclusively
> in display code. The goal is to eventually define a distinct type for
> display, but for now just use an alias.
>
> In a handful of places include intel_display_reg_defs.h instead of
> i915_reg_defs.h to get the definition, and isolate the i915_reg_defs.h
> include there.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
> drivers/gpu/drm/i915/display/g4x_dp.c         |  4 +-
> drivers/gpu/drm/i915/display/g4x_dp.h         | 10 ++--
> drivers/gpu/drm/i915/display/g4x_hdmi.c       |  2 +-
> drivers/gpu/drm/i915/display/g4x_hdmi.h       |  6 +--
> drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
> drivers/gpu/drm/i915/display/intel_audio.c    |  2 +-
> drivers/gpu/drm/i915/display/intel_color.c    |  4 +-
> .../gpu/drm/i915/display/intel_combo_phy.c    |  2 +-
> drivers/gpu/drm/i915/display/intel_crt.c      |  6 +--
> drivers/gpu/drm/i915/display/intel_crt.h      |  6 +--
> drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  2 +-
> drivers/gpu/drm/i915/display/intel_ddi.c      | 26 +++++-----
> drivers/gpu/drm/i915/display/intel_ddi.h      |  6 +--
> drivers/gpu/drm/i915/display/intel_de.c       | 30 ++++++------
> drivers/gpu/drm/i915/display/intel_de.h       | 48 +++++++++----------
> drivers/gpu/drm/i915/display/intel_display.c  |  8 ++--
> drivers/gpu/drm/i915/display/intel_display.h  | 10 ++--
> .../gpu/drm/i915/display/intel_display_irq.c  | 10 ++--
> .../drm/i915/display/intel_display_power.c    |  4 +-
> .../i915/display/intel_display_power_well.c   |  8 ++--
> .../drm/i915/display/intel_display_reg_defs.h |  2 +
> .../drm/i915/display/intel_display_types.h    |  8 ++--
> drivers/gpu/drm/i915/display/intel_dmc.c      | 24 +++++-----
> drivers/gpu/drm/i915/display/intel_dmc_wl.c   |  8 ++--
> drivers/gpu/drm/i915/display/intel_dmc_wl.h   |  6 +--
> drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
> drivers/gpu/drm/i915/display/intel_dp_aux.c   | 28 +++++------
> drivers/gpu/drm/i915/display/intel_dpio_phy.c |  8 ++--
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 28 +++++------
> drivers/gpu/drm/i915/display/intel_dsb.c      | 12 ++---
> drivers/gpu/drm/i915/display/intel_dsb.h      | 10 ++--
> drivers/gpu/drm/i915/display/intel_dvo_dev.h  |  2 +-
> drivers/gpu/drm/i915/display/intel_fdi.c      | 12 ++---
> .../drm/i915/display/intel_fifo_underrun.c    |  4 +-
> drivers/gpu/drm/i915/display/intel_gmbus.c    |  4 +-
> drivers/gpu/drm/i915/display/intel_hdcp.c     |  2 +-
> drivers/gpu/drm/i915/display/intel_hdmi.c     | 28 +++++------
> drivers/gpu/drm/i915/display/intel_lt_phy.c   |  6 +--
> drivers/gpu/drm/i915/display/intel_lvds.c     |  6 +--
> drivers/gpu/drm/i915/display/intel_lvds.h     |  6 +--
> drivers/gpu/drm/i915/display/intel_mchbar.c   | 10 ++--
> drivers/gpu/drm/i915/display/intel_mchbar.h   |  8 ++--
> .../gpu/drm/i915/display/intel_pch_display.c  | 14 +++---
> drivers/gpu/drm/i915/display/intel_pps.c      | 32 ++++++-------
> drivers/gpu/drm/i915/display/intel_psr.c      | 36 +++++++-------
> drivers/gpu/drm/i915/display/intel_sdvo.c     |  6 +--
> drivers/gpu/drm/i915/display/intel_sdvo.h     | 10 ++--
> drivers/gpu/drm/i915/display/intel_snps_phy.c |  4 +-
> drivers/gpu/drm/i915/display/intel_tc.c       | 10 ++--
> drivers/gpu/drm/i915/display/intel_vblank.c   |  2 +-
> drivers/gpu/drm/i915/display/intel_vdsc.c     | 10 ++--
> drivers/gpu/drm/i915/display/intel_vga.c      |  4 +-
> drivers/gpu/drm/i915/display/vlv_dsi.c        | 16 +++----
> 53 files changed, 283 insertions(+), 281 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 5e74d8a3ba5c..5ff1cdf4581a 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -273,7 +273,7 @@ static bool cpt_dp_port_selected(struct intel_display *display,
> }
>
> bool g4x_dp_port_enabled(struct intel_display *display,
> -			 i915_reg_t dp_reg, enum port port,
> +			 intel_reg_t dp_reg, enum port port,
> 			 enum pipe *pipe)
> {
> 	bool ret;
> @@ -1280,7 +1280,7 @@ static const struct drm_encoder_funcs intel_dp_enc_funcs = {
> };
>
> bool g4x_dp_init(struct intel_display *display,
> -		 i915_reg_t output_reg, enum port port)
> +		 intel_reg_t output_reg, enum port port)
> {
> 	const struct intel_bios_encoder_data *devdata;
> 	struct intel_digital_port *dig_port;
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.h b/drivers/gpu/drm/i915/display/g4x_dp.h
> index 0b28951b8365..99de690ebe7f 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.h
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.h
> @@ -8,7 +8,7 @@
>
> #include <linux/types.h>
>
> -#include "i915_reg_defs.h"
> +#include "intel_display_reg_defs.h"
>
> enum pipe;
> enum port;
> @@ -20,23 +20,23 @@ struct intel_encoder;
> #ifdef I915
> const struct dpll *vlv_get_dpll(struct intel_display *display);
> bool g4x_dp_port_enabled(struct intel_display *display,
> -			 i915_reg_t dp_reg, enum port port,
> +			 intel_reg_t dp_reg, enum port port,
> 			 enum pipe *pipe);
> bool g4x_dp_init(struct intel_display *display,
> -		 i915_reg_t output_reg, enum port port);
> +		 intel_reg_t output_reg, enum port port);
> #else
> static inline const struct dpll *vlv_get_dpll(struct intel_display *display)
> {
> 	return NULL;
> }
> static inline bool g4x_dp_port_enabled(struct intel_display *display,
> -				       i915_reg_t dp_reg, int port,
> +				       intel_reg_t dp_reg, int port,
> 				       enum pipe *pipe)
> {
> 	return false;
> }
> static inline bool g4x_dp_init(struct intel_display *display,
> -			       i915_reg_t output_reg, int port)
> +			       intel_reg_t output_reg, int port)
> {
> 	return false;
> }
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> index 5fe5067c4237..9ea90a6d906f 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -666,7 +666,7 @@ static bool assert_hdmi_port_valid(struct intel_display *display, enum port port
> }
>
> bool g4x_hdmi_init(struct intel_display *display,
> -		   i915_reg_t hdmi_reg, enum port port)
> +		   intel_reg_t hdmi_reg, enum port port)
> {
> 	const struct intel_bios_encoder_data *devdata;
> 	struct intel_digital_port *dig_port;
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.h b/drivers/gpu/drm/i915/display/g4x_hdmi.h
> index 039d2bdba06c..0557322efe5a 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.h
> @@ -8,7 +8,7 @@
>
> #include <linux/types.h>
>
> -#include "i915_reg_defs.h"
> +#include "intel_display_reg_defs.h"
>
> enum port;
> struct drm_atomic_state;
> @@ -17,12 +17,12 @@ struct intel_display;
>
> #ifdef I915
> bool g4x_hdmi_init(struct intel_display *display,
> -		   i915_reg_t hdmi_reg, enum port port);
> +		   intel_reg_t hdmi_reg, enum port port);
> int g4x_hdmi_connector_atomic_check(struct drm_connector *connector,
> 				    struct drm_atomic_state *state);
> #else
> static inline bool g4x_hdmi_init(struct intel_display *display,
> -				 i915_reg_t hdmi_reg, int port)
> +				 intel_reg_t hdmi_reg, int port)
> {
> 	return false;
> }
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index afbaa0465842..a549f1fac810 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -296,7 +296,7 @@ static void configure_dual_link_mode(struct intel_encoder *encoder,
> {
> 	struct intel_display *display = to_intel_display(encoder);
> 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> -	i915_reg_t dss_ctl1_reg, dss_ctl2_reg;
> +	intel_reg_t dss_ctl1_reg, dss_ctl2_reg;
> 	u32 dss_ctl1;
>
> 	/* FIXME: Move all DSS handling to intel_vdsc.c */
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 081627e0d917..31108694a06a 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -595,7 +595,7 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
> }
>
> struct ibx_audio_regs {
> -	i915_reg_t hdmiw_hdmiedid, aud_config, aud_cntl_st, aud_cntrl_st2;
> +	intel_reg_t hdmiw_hdmiedid, aud_config, aud_cntl_st, aud_cntrl_st2;
> };
>
> static void ibx_audio_regs_init(struct intel_display *display,
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index e7950655434b..2dfe30e6f2b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1348,7 +1348,7 @@ static void i965_load_luts(const struct intel_crtc_state *crtc_state)
> }
>
> static void ilk_lut_write(const struct intel_crtc_state *crtc_state,
> -			  i915_reg_t reg, u32 val)
> +			  intel_reg_t reg, u32 val)
> {
> 	struct intel_display *display = to_intel_display(crtc_state);
>
> @@ -1359,7 +1359,7 @@ static void ilk_lut_write(const struct intel_crtc_state *crtc_state,
> }
>
> static void ilk_lut_write_indexed(const struct intel_crtc_state *crtc_state,
> -				  i915_reg_t reg, u32 val)
> +				  intel_reg_t reg, u32 val)
> {
> 	struct intel_display *display = to_intel_display(crtc_state);
>
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> index f401558ac14e..9b4ecfbbed4f 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -92,7 +92,7 @@ static void icl_set_procmon_ref_values(struct intel_display *display,
> }
>
> static bool check_phy_reg(struct intel_display *display,
> -			  enum phy phy, i915_reg_t reg, u32 mask,
> +			  enum phy phy, intel_reg_t reg, u32 mask,
> 			  u32 expected_val)
> {
> 	u32 val = intel_de_read(display, reg);
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 6aa6a1dd6e1b..c19e0c591a3c 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -77,7 +77,7 @@
> struct intel_crt {
> 	struct intel_encoder base;
> 	bool force_hotplug_required;
> -	i915_reg_t adpa_reg;
> +	intel_reg_t adpa_reg;
> };
>
> static struct intel_crt *intel_encoder_to_crt(struct intel_encoder *encoder)
> @@ -91,7 +91,7 @@ static struct intel_crt *intel_attached_crt(struct intel_connector *connector)
> }
>
> bool intel_crt_port_enabled(struct intel_display *display,
> -			    i915_reg_t adpa_reg, enum pipe *pipe)
> +			    intel_reg_t adpa_reg, enum pipe *pipe)
> {
> 	u32 val;
>
> @@ -1011,7 +1011,7 @@ void intel_crt_init(struct intel_display *display)
> {
> 	struct intel_connector *connector;
> 	struct intel_crt *crt;
> -	i915_reg_t adpa_reg;
> +	intel_reg_t adpa_reg;
> 	u8 ddc_pin;
> 	u32 adpa;
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.h b/drivers/gpu/drm/i915/display/intel_crt.h
> index e0abfe96a3d2..7d0ae8d8c28d 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.h
> +++ b/drivers/gpu/drm/i915/display/intel_crt.h
> @@ -6,7 +6,7 @@
> #ifndef __INTEL_CRT_H__
> #define __INTEL_CRT_H__
>
> -#include "i915_reg_defs.h"
> +#include "intel_display_reg_defs.h"
>
> enum pipe;
> struct drm_encoder;
> @@ -14,12 +14,12 @@ struct intel_display;
>
> #ifdef I915
> bool intel_crt_port_enabled(struct intel_display *display,
> -			    i915_reg_t adpa_reg, enum pipe *pipe);
> +			    intel_reg_t adpa_reg, enum pipe *pipe);
> void intel_crt_init(struct intel_display *display);
> void intel_crt_reset(struct drm_encoder *encoder);
> #else
> static inline bool intel_crt_port_enabled(struct intel_display *display,
> -					  i915_reg_t adpa_reg, enum pipe *pipe)
> +					  intel_reg_t adpa_reg, enum pipe *pipe)
> {
> 	return false;
> }
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 7e59409bbf01..991b8683a269 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2980,7 +2980,7 @@ void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
> 	struct intel_display *display = to_intel_display(encoder);
> 	enum port port = encoder->port;
> 	enum phy phy = intel_encoder_to_phy(encoder);
> -	i915_reg_t buf_ctl2_reg = XELPDP_PORT_BUF_CTL2(display, port);
> +	intel_reg_t buf_ctl2_reg = XELPDP_PORT_BUF_CTL2(display, port);
> 	int lane;
>
> 	intel_de_rmw(display, buf_ctl2_reg,
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index ebefa889bc8c..a725e3fc2caa 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -188,7 +188,7 @@ static void hsw_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
> 		       trans->entries[level].hsw.trans2);
> }
>
> -static i915_reg_t intel_ddi_buf_status_reg(struct intel_display *display, enum port port)
> +static intel_reg_t intel_ddi_buf_status_reg(struct intel_display *display, enum port port)
> {
> 	if (DISPLAY_VER(display) >= 14)
> 		return XELPDP_PORT_BUF_CTL1(display, port);
> @@ -1556,7 +1556,7 @@ hsw_set_signal_levels(struct intel_encoder *encoder,
> 	intel_de_posting_read(display, DDI_BUF_CTL(port));
> }
>
> -static void _icl_ddi_enable_clock(struct intel_display *display, i915_reg_t reg,
> +static void _icl_ddi_enable_clock(struct intel_display *display, intel_reg_t reg,
> 				  u32 clk_sel_mask, u32 clk_sel, u32 clk_off)
> {
> 	mutex_lock(&display->dpll.lock);
> @@ -1572,7 +1572,7 @@ static void _icl_ddi_enable_clock(struct intel_display *display, i915_reg_t reg,
> 	mutex_unlock(&display->dpll.lock);
> }
>
> -static void _icl_ddi_disable_clock(struct intel_display *display, i915_reg_t reg,
> +static void _icl_ddi_disable_clock(struct intel_display *display, intel_reg_t reg,
> 				   u32 clk_off)
> {
> 	mutex_lock(&display->dpll.lock);
> @@ -1582,14 +1582,14 @@ static void _icl_ddi_disable_clock(struct intel_display *display, i915_reg_t reg
> 	mutex_unlock(&display->dpll.lock);
> }
>
> -static bool _icl_ddi_is_clock_enabled(struct intel_display *display, i915_reg_t reg,
> +static bool _icl_ddi_is_clock_enabled(struct intel_display *display, intel_reg_t reg,
> 				      u32 clk_off)
> {
> 	return !(intel_de_read(display, reg) & clk_off);
> }
>
> static struct intel_dpll *
> -_icl_ddi_get_pll(struct intel_display *display, i915_reg_t reg,
> +_icl_ddi_get_pll(struct intel_display *display, intel_reg_t reg,
> 		 u32 clk_sel_mask, u32 clk_sel_shift)
> {
> 	enum intel_dpll_id id;
> @@ -2270,8 +2270,8 @@ tgl_dp_tp_transcoder(const struct intel_crtc_state *crtc_state)
> 		return crtc_state->cpu_transcoder;
> }
>
> -i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
> -			 const struct intel_crtc_state *crtc_state)
> +intel_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
> +			  const struct intel_crtc_state *crtc_state)
> {
> 	struct intel_display *display = to_intel_display(encoder);
>
> @@ -2282,8 +2282,8 @@ i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
> 		return DP_TP_CTL(encoder->port);
> }
>
> -static i915_reg_t dp_tp_status_reg(struct intel_encoder *encoder,
> -				   const struct intel_crtc_state *crtc_state)
> +static intel_reg_t dp_tp_status_reg(struct intel_encoder *encoder,
> +				    const struct intel_crtc_state *crtc_state)
> {
> 	struct intel_display *display = to_intel_display(encoder);
>
> @@ -2559,7 +2559,7 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
> {
> 	struct intel_display *display = to_intel_display(encoder);
> 	enum port port = encoder->port;
> -	i915_reg_t reg;
> +	intel_reg_t reg;
> 	u32 set_bits, wait_bits;
> 	int ret;
>
> @@ -3059,7 +3059,7 @@ mtl_ddi_disable_d2d(struct intel_encoder *encoder)
> {
> 	struct intel_display *display = to_intel_display(encoder);
> 	enum port port = encoder->port;
> -	i915_reg_t reg;
> +	intel_reg_t reg;
> 	u32 clr_bits, wait_bits;
> 	int ret;
>
> @@ -3386,7 +3386,7 @@ static void intel_ddi_enable_dp(struct intel_atomic_state *state,
> 	trans_port_sync_stop_link_train(state, encoder, crtc_state);
> }
>
> -static i915_reg_t
> +static intel_reg_t
> gen9_chicken_trans_reg_by_port(struct intel_display *display, enum port port)
> {
> 	static const enum transcoder trans[] = {
> @@ -3439,7 +3439,7 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
> 		 * the bits affect a specific DDI port rather than
> 		 * a specific transcoder.
> 		 */
> -		i915_reg_t reg = gen9_chicken_trans_reg_by_port(display, port);
> +		intel_reg_t reg = gen9_chicken_trans_reg_by_port(display, port);
> 		u32 val;
>
> 		val = intel_de_read(display, reg);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
> index f6f511bb0431..580ecb09b8b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> @@ -6,7 +6,7 @@
> #ifndef __INTEL_DDI_H__
> #define __INTEL_DDI_H__
>
> -#include "i915_reg_defs.h"
> +#include "intel_display_reg_defs.h"
>
> struct drm_connector_state;
> struct intel_atomic_state;
> @@ -23,8 +23,8 @@ enum pipe;
> enum port;
> enum transcoder;
>
> -i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
> -			 const struct intel_crtc_state *crtc_state);
> +intel_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
> +			  const struct intel_crtc_state *crtc_state);
>
> void intel_ddi_clear_act_sent(struct intel_encoder *encoder,
> 			      const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_de.c b/drivers/gpu/drm/i915/display/intel_de.c
> index a96e83d76eaa..6daee9e82503 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.c
> +++ b/drivers/gpu/drm/i915/display/intel_de.c
> @@ -10,9 +10,9 @@
> #include "intel_de.h"
>
> static int __intel_de_wait_for_register(struct intel_display *display,
> -					i915_reg_t reg, u32 mask, u32 value,
> +					intel_reg_t reg, u32 mask, u32 value,
> 					unsigned int timeout_us,
> -					u32 (*read)(struct intel_display *display, i915_reg_t reg),
> +					u32 (*read)(struct intel_display *display, intel_reg_t reg),
> 					u32 *out_val, bool is_atomic)
> {
> 	const ktime_t end = ktime_add_us(ktime_get_raw(), timeout_us);
> @@ -61,10 +61,10 @@ static int __intel_de_wait_for_register(struct intel_display *display,
> }
>
> static int intel_de_wait_for_register(struct intel_display *display,
> -				      i915_reg_t reg, u32 mask, u32 value,
> +				      intel_reg_t reg, u32 mask, u32 value,
> 				      unsigned int fast_timeout_us,
> 				      unsigned int slow_timeout_us,
> -				      u32 (*read)(struct intel_display *display, i915_reg_t reg),
> +				      u32 (*read)(struct intel_display *display, intel_reg_t reg),
> 				      u32 *out_value, bool is_atomic)
> {
> 	int ret = -EINVAL;
> @@ -82,7 +82,7 @@ static int intel_de_wait_for_register(struct intel_display *display,
> 	return ret;
> }
>
> -int intel_de_wait_us(struct intel_display *display, i915_reg_t reg,
> +int intel_de_wait_us(struct intel_display *display, intel_reg_t reg,
> 		     u32 mask, u32 value, unsigned int timeout_us,
> 		     u32 *out_value)
> {
> @@ -100,7 +100,7 @@ int intel_de_wait_us(struct intel_display *display, i915_reg_t reg,
> 	return ret;
> }
>
> -int intel_de_wait_ms(struct intel_display *display, i915_reg_t reg,
> +int intel_de_wait_ms(struct intel_display *display, intel_reg_t reg,
> 		     u32 mask, u32 value, unsigned int timeout_ms,
> 		     u32 *out_value)
> {
> @@ -118,7 +118,7 @@ int intel_de_wait_ms(struct intel_display *display, i915_reg_t reg,
> 	return ret;
> }
>
> -int intel_de_wait_fw_ms(struct intel_display *display, i915_reg_t reg,
> +int intel_de_wait_fw_ms(struct intel_display *display, intel_reg_t reg,
> 			u32 mask, u32 value, unsigned int timeout_ms,
> 			u32 *out_value)
> {
> @@ -128,7 +128,7 @@ int intel_de_wait_fw_ms(struct intel_display *display, i915_reg_t reg,
> 					  out_value, false);
> }
>
> -int intel_de_wait_fw_us_atomic(struct intel_display *display, i915_reg_t reg,
> +int intel_de_wait_fw_us_atomic(struct intel_display *display, intel_reg_t reg,
> 			       u32 mask, u32 value, unsigned int timeout_us,
> 			       u32 *out_value)
> {
> @@ -138,31 +138,31 @@ int intel_de_wait_fw_us_atomic(struct intel_display *display, i915_reg_t reg,
> 					  out_value, true);
> }
>
> -int intel_de_wait_for_set_us(struct intel_display *display, i915_reg_t reg,
> +int intel_de_wait_for_set_us(struct intel_display *display, intel_reg_t reg,
> 			     u32 mask, unsigned int timeout_us)
> {
> 	return intel_de_wait_us(display, reg, mask, mask, timeout_us, NULL);
> }
>
> -int intel_de_wait_for_clear_us(struct intel_display *display, i915_reg_t reg,
> +int intel_de_wait_for_clear_us(struct intel_display *display, intel_reg_t reg,
> 			       u32 mask, unsigned int timeout_us)
> {
> 	return intel_de_wait_us(display, reg, mask, 0, timeout_us, NULL);
> }
>
> -int intel_de_wait_for_set_ms(struct intel_display *display, i915_reg_t reg,
> +int intel_de_wait_for_set_ms(struct intel_display *display, intel_reg_t reg,
> 			     u32 mask, unsigned int timeout_ms)
> {
> 	return intel_de_wait_ms(display, reg, mask, mask, timeout_ms, NULL);
> }
>
> -int intel_de_wait_for_clear_ms(struct intel_display *display, i915_reg_t reg,
> +int intel_de_wait_for_clear_ms(struct intel_display *display, intel_reg_t reg,
> 			       u32 mask, unsigned int timeout_ms)
> {
> 	return intel_de_wait_ms(display, reg, mask, 0, timeout_ms, NULL);
> }
>
> -u8 intel_de_read8(struct intel_display *display, i915_reg_t reg)
> +u8 intel_de_read8(struct intel_display *display, intel_reg_t reg)
> {
> 	/* this is only used on VGA registers (possible on pre-g4x) */
> 	drm_WARN_ON(display->drm, DISPLAY_VER(display) >= 5 || display->platform.g4x);
> @@ -170,14 +170,14 @@ u8 intel_de_read8(struct intel_display *display, i915_reg_t reg)
> 	return intel_uncore_read8(__to_uncore(display), reg);
> }
>
> -void intel_de_write8(struct intel_display *display, i915_reg_t reg, u8 val)
> +void intel_de_write8(struct intel_display *display, intel_reg_t reg, u8 val)
> {
> 	drm_WARN_ON(display->drm, DISPLAY_VER(display) >= 5 || display->platform.g4x);
>
> 	intel_uncore_write8(__to_uncore(display), reg, val);
> }
>
> -u16 intel_de_read16(struct intel_display *display, i915_reg_t reg)
> +u16 intel_de_read16(struct intel_display *display, intel_reg_t reg)
> {
> 	/* this is only used on MCHBAR registers on pre-SNB */
> 	drm_WARN_ON(display->drm, DISPLAY_VER(display) >= 6);
> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
> index 14f9dc7b6dfd..d17f14843f98 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.h
> +++ b/drivers/gpu/drm/i915/display/intel_de.h
> @@ -17,12 +17,12 @@ static inline struct intel_uncore *__to_uncore(struct intel_display *display)
> 	return to_intel_uncore(display->drm);
> }
>
> -u8 intel_de_read8(struct intel_display *display, i915_reg_t reg);
> -void intel_de_write8(struct intel_display *display, i915_reg_t reg, u8 val);
> -u16 intel_de_read16(struct intel_display *display, i915_reg_t reg);
> +u8 intel_de_read8(struct intel_display *display, intel_reg_t reg);
> +void intel_de_write8(struct intel_display *display, intel_reg_t reg, u8 val);
> +u16 intel_de_read16(struct intel_display *display, intel_reg_t reg);
>
> static inline u32
> -intel_de_read(struct intel_display *display, i915_reg_t reg)
> +intel_de_read(struct intel_display *display, intel_reg_t reg)
> {
> 	u32 val;
>
> @@ -37,7 +37,7 @@ intel_de_read(struct intel_display *display, i915_reg_t reg)
>
> static inline u64
> intel_de_read64_2x32_volatile(struct intel_display *display,
> -			      i915_reg_t lower_reg, i915_reg_t upper_reg)
> +			      intel_reg_t lower_reg, intel_reg_t upper_reg)
> {
> 	u64 val;
>
> @@ -54,9 +54,9 @@ intel_de_read64_2x32_volatile(struct intel_display *display,
> }
>
> static inline u64
> -intel_de_read64_2x32(struct intel_display *display, i915_reg_t reg)
> +intel_de_read64_2x32(struct intel_display *display, intel_reg_t reg)
> {
> -	i915_reg_t upper_reg = _MMIO(i915_mmio_reg_offset(reg) + 4);
> +	intel_reg_t upper_reg = _MMIO(i915_mmio_reg_offset(reg) + 4);
> 	u32 lower, upper;
>
> 	lower = intel_de_read(display, reg);
> @@ -66,7 +66,7 @@ intel_de_read64_2x32(struct intel_display *display, i915_reg_t reg)
> }
>
> static inline void
> -intel_de_posting_read(struct intel_display *display, i915_reg_t reg)
> +intel_de_posting_read(struct intel_display *display, intel_reg_t reg)
> {
> 	intel_dmc_wl_get(display, reg);
>
> @@ -76,7 +76,7 @@ intel_de_posting_read(struct intel_display *display, i915_reg_t reg)
> }
>
> static inline void
> -intel_de_write(struct intel_display *display, i915_reg_t reg, u32 val)
> +intel_de_write(struct intel_display *display, intel_reg_t reg, u32 val)
> {
> 	intel_dmc_wl_get(display, reg);
>
> @@ -86,7 +86,7 @@ intel_de_write(struct intel_display *display, i915_reg_t reg, u32 val)
> }
>
> static inline u32
> -intel_de_rmw(struct intel_display *display, i915_reg_t reg, u32 clear, u32 set)
> +intel_de_rmw(struct intel_display *display, intel_reg_t reg, u32 clear, u32 set)
> {
> 	u32 val;
>
> @@ -99,25 +99,25 @@ intel_de_rmw(struct intel_display *display, i915_reg_t reg, u32 clear, u32 set)
> 	return val;
> }
>
> -int intel_de_wait_us(struct intel_display *display, i915_reg_t reg,
> +int intel_de_wait_us(struct intel_display *display, intel_reg_t reg,
> 		     u32 mask, u32 value, unsigned int timeout_us,
> 		     u32 *out_value);
> -int intel_de_wait_ms(struct intel_display *display, i915_reg_t reg,
> +int intel_de_wait_ms(struct intel_display *display, intel_reg_t reg,
> 		     u32 mask, u32 value, unsigned int timeout_ms,
> 		     u32 *out_value);
> -int intel_de_wait_fw_ms(struct intel_display *display, i915_reg_t reg,
> +int intel_de_wait_fw_ms(struct intel_display *display, intel_reg_t reg,
> 			u32 mask, u32 value, unsigned int timeout_ms,
> 			u32 *out_value);
> -int intel_de_wait_fw_us_atomic(struct intel_display *display, i915_reg_t reg,
> +int intel_de_wait_fw_us_atomic(struct intel_display *display, intel_reg_t reg,
> 			       u32 mask, u32 value, unsigned int timeout_us,
> 			       u32 *out_value);
> -int intel_de_wait_for_set_us(struct intel_display *display, i915_reg_t reg,
> +int intel_de_wait_for_set_us(struct intel_display *display, intel_reg_t reg,
> 			     u32 mask, unsigned int timeout_us);
> -int intel_de_wait_for_clear_us(struct intel_display *display, i915_reg_t reg,
> +int intel_de_wait_for_clear_us(struct intel_display *display, intel_reg_t reg,
> 			       u32 mask, unsigned int timeout_us);
> -int intel_de_wait_for_set_ms(struct intel_display *display, i915_reg_t reg,
> +int intel_de_wait_for_set_ms(struct intel_display *display, intel_reg_t reg,
> 			     u32 mask, unsigned int timeout_ms);
> -int intel_de_wait_for_clear_ms(struct intel_display *display, i915_reg_t reg,
> +int intel_de_wait_for_clear_ms(struct intel_display *display, intel_reg_t reg,
> 			       u32 mask, unsigned int timeout_ms);
>
> /*
> @@ -129,7 +129,7 @@ int intel_de_wait_for_clear_ms(struct intel_display *display, i915_reg_t reg,
>  * a more localised lock guarding all access to that bank of registers.
>  */
> static inline u32
> -intel_de_read_fw(struct intel_display *display, i915_reg_t reg)
> +intel_de_read_fw(struct intel_display *display, intel_reg_t reg)
> {
> 	u32 val;
>
> @@ -140,14 +140,14 @@ intel_de_read_fw(struct intel_display *display, i915_reg_t reg)
> }
>
> static inline void
> -intel_de_write_fw(struct intel_display *display, i915_reg_t reg, u32 val)
> +intel_de_write_fw(struct intel_display *display, intel_reg_t reg, u32 val)
> {
> 	trace_i915_reg_rw(true, reg, val, sizeof(val), true);
> 	intel_uncore_write_fw(__to_uncore(display), reg, val);
> }
>
> static inline u32
> -intel_de_rmw_fw(struct intel_display *display, i915_reg_t reg, u32 clear, u32 set)
> +intel_de_rmw_fw(struct intel_display *display, intel_reg_t reg, u32 clear, u32 set)
> {
> 	u32 old, val;
>
> @@ -159,20 +159,20 @@ intel_de_rmw_fw(struct intel_display *display, i915_reg_t reg, u32 clear, u32 se
> }
>
> static inline u32
> -intel_de_read_notrace(struct intel_display *display, i915_reg_t reg)
> +intel_de_read_notrace(struct intel_display *display, intel_reg_t reg)
> {
> 	return intel_uncore_read_notrace(__to_uncore(display), reg);
> }
>
> static inline void
> -intel_de_write_notrace(struct intel_display *display, i915_reg_t reg, u32 val)
> +intel_de_write_notrace(struct intel_display *display, intel_reg_t reg, u32 val)
> {
> 	intel_uncore_write_notrace(__to_uncore(display), reg, val);
> }
>
> static __always_inline void
> intel_de_write_dsb(struct intel_display *display, struct intel_dsb *dsb,
> -		   i915_reg_t reg, u32 val)
> +		   intel_reg_t reg, u32 val)
> {
> 	if (dsb)
> 		intel_dsb_reg_write(dsb, reg, val);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 10b6c6fcb03f..c621ad79cd1f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2601,8 +2601,8 @@ void intel_zero_m_n(struct intel_link_m_n *m_n)
>
> void intel_set_m_n(struct intel_display *display,
> 		   const struct intel_link_m_n *m_n,
> -		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
> -		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
> +		   intel_reg_t data_m_reg, intel_reg_t data_n_reg,
> +		   intel_reg_t link_m_reg, intel_reg_t link_n_reg)
> {
> 	intel_de_write(display, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
> 	intel_de_write(display, data_n_reg, m_n->data_n);
> @@ -3364,8 +3364,8 @@ int ilk_get_lanes_required(int target_clock, int link_bw, int bpp)
>
> void intel_get_m_n(struct intel_display *display,
> 		   struct intel_link_m_n *m_n,
> -		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
> -		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
> +		   intel_reg_t data_m_reg, intel_reg_t data_n_reg,
> +		   intel_reg_t link_m_reg, intel_reg_t link_n_reg)
> {
> 	m_n->link_m = intel_de_read(display, link_m_reg) & DATA_LINK_M_N_MASK;
> 	m_n->link_n = intel_de_read(display, link_n_reg) & DATA_LINK_M_N_MASK;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 552a59d19e0f..fafd9044dfd6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -27,7 +27,7 @@
>
> #include <drm/drm_util.h>
>
> -#include "i915_reg_defs.h"
> +#include "intel_display_reg_defs.h"
> #include "intel_display_limits.h"
>
> struct drm_atomic_state;
> @@ -440,12 +440,12 @@ bool intel_fuzzy_clock_check(int clock1, int clock2);
> void intel_zero_m_n(struct intel_link_m_n *m_n);
> void intel_set_m_n(struct intel_display *display,
> 		   const struct intel_link_m_n *m_n,
> -		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
> -		   i915_reg_t link_m_reg, i915_reg_t link_n_reg);
> +		   intel_reg_t data_m_reg, intel_reg_t data_n_reg,
> +		   intel_reg_t link_m_reg, intel_reg_t link_n_reg);
> void intel_get_m_n(struct intel_display *display,
> 		   struct intel_link_m_n *m_n,
> -		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
> -		   i915_reg_t link_m_reg, i915_reg_t link_n_reg);
> +		   intel_reg_t data_m_reg, intel_reg_t data_n_reg,
> +		   intel_reg_t link_m_reg, intel_reg_t link_n_reg);
> bool intel_cpu_transcoder_has_m2_n2(struct intel_display *display,
> 				    enum transcoder transcoder);
> void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 70c1bba7c0a8..365e467dddaf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -47,7 +47,7 @@ static void irq_reset(struct intel_display *display, struct i915_irq_regs regs)
> /*
>  * We should clear IMR at preinstall/uninstall, and just check at postinstall.
>  */
> -static void assert_iir_is_zero(struct intel_display *display, i915_reg_t reg)
> +static void assert_iir_is_zero(struct intel_display *display, intel_reg_t reg)
> {
> 	u32 val = intel_de_read(display, reg);
>
> @@ -343,7 +343,7 @@ u32 i915_pipestat_enable_mask(struct intel_display *display,
> void i915_enable_pipestat(struct intel_display *display,
> 			  enum pipe pipe, u32 status_mask)
> {
> -	i915_reg_t reg = PIPESTAT(display, pipe);
> +	intel_reg_t reg = PIPESTAT(display, pipe);
> 	u32 enable_mask;
>
> 	drm_WARN_ONCE(display->drm, status_mask & ~PIPESTAT_INT_STATUS_MASK,
> @@ -366,7 +366,7 @@ void i915_enable_pipestat(struct intel_display *display,
> void i915_disable_pipestat(struct intel_display *display,
> 			   enum pipe pipe, u32 status_mask)
> {
> -	i915_reg_t reg = PIPESTAT(display, pipe);
> +	intel_reg_t reg = PIPESTAT(display, pipe);
> 	u32 enable_mask;
>
> 	drm_WARN_ONCE(display->drm, status_mask & ~PIPESTAT_INT_STATUS_MASK,
> @@ -543,7 +543,7 @@ void i9xx_pipestat_irq_ack(struct intel_display *display,
> 	}
>
> 	for_each_pipe(display, pipe) {
> -		i915_reg_t reg;
> +		intel_reg_t reg;
> 		u32 status_mask, enable_mask, iir_bit = 0;
>
> 		/*
> @@ -1284,7 +1284,7 @@ gen8_de_misc_irq_handler(struct intel_display *display, u32 iir)
> 	if (iir & GEN8_DE_EDP_PSR) {
> 		struct intel_encoder *encoder;
> 		u32 psr_iir;
> -		i915_reg_t iir_reg;
> +		intel_reg_t iir_reg;
>
> 		for_each_intel_encoder_with_psr(display->drm, encoder) {
> 			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 4091b7c4914f..81fe5a67b07d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1069,7 +1069,7 @@ static void intel_power_domains_sync_hw(struct intel_display *display)
> static void gen9_dbuf_slice_set(struct intel_display *display,
> 				enum dbuf_slice slice, bool enable)
> {
> -	i915_reg_t reg = DBUF_CTL_S(slice);
> +	intel_reg_t reg = DBUF_CTL_S(slice);
> 	bool state;
>
> 	intel_de_rmw(display, reg, DBUF_POWER_REQUEST,
> @@ -1428,7 +1428,7 @@ static void hsw_disable_pc8(struct intel_display *display)
> static void intel_pch_reset_handshake(struct intel_display *display,
> 				      bool enable)
> {
> -	i915_reg_t reg;
> +	intel_reg_t reg;
> 	u32 reset_bits;
>
> 	if (DISPLAY_VER(display) >= 35)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 6fbfd46461b0..04bd0dde5bed 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -49,10 +49,10 @@ static enum skl_power_gate pw_idx_to_pg(struct intel_display *display, int pw_id
> }
>
> struct i915_power_well_regs {
> -	i915_reg_t bios;
> -	i915_reg_t driver;
> -	i915_reg_t kvmr;
> -	i915_reg_t debug;
> +	intel_reg_t bios;
> +	intel_reg_t driver;
> +	intel_reg_t kvmr;
> +	intel_reg_t debug;
> };
>
> struct i915_power_well_ops {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> index 175334b41bba..cb46863693cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> @@ -8,6 +8,8 @@
>
> #include "i915_reg_defs.h"
>
> +typedef i915_reg_t intel_reg_t;
> +

Is there any reason why checkpatch encourages to refrain from adding new
typedefs? This seems like a well justified case.

Obviously,
Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> #define VLV_DISPLAY_BASE		0x180000
>
> /*
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index e2496db1642a..677824ac0ffe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1661,7 +1661,7 @@ struct intel_plane {
> 	container_of_const((fb), struct intel_framebuffer, base)
>
> struct intel_hdmi {
> -	i915_reg_t hdmi_reg;
> +	intel_reg_t hdmi_reg;
> 	struct {
> 		enum drm_dp_dual_mode_type type;
> 		int max_tmds_clock;
> @@ -1791,7 +1791,7 @@ struct intel_psr {
> };
>
> struct intel_dp {
> -	i915_reg_t output_reg;
> +	intel_reg_t output_reg;
> 	u32 DP;
> 	int link_rate;
> 	u8 lane_count;
> @@ -1888,8 +1888,8 @@ struct intel_dp {
> 	u32 (*get_aux_send_ctl)(struct intel_dp *dp, int send_bytes,
> 				u32 aux_clock_divider);
>
> -	i915_reg_t (*aux_ch_ctl_reg)(struct intel_dp *dp);
> -	i915_reg_t (*aux_ch_data_reg)(struct intel_dp *dp, int index);
> +	intel_reg_t (*aux_ch_ctl_reg)(struct intel_dp *dp);
> +	intel_reg_t (*aux_ch_data_reg)(struct intel_dp *dp, int index);
>
> 	/* This is called before a link training is starterd */
> 	void (*prepare_link_retrain)(struct intel_dp *intel_dp,
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 2104164e136e..665842fb9eae 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -71,7 +71,7 @@ struct intel_dmc {
> 	} dc6_allowed;
> 	struct dmc_fw_info {
> 		u32 mmio_count;
> -		i915_reg_t mmioaddr[20];
> +		intel_reg_t mmioaddr[20];
> 		u32 mmiodata[20];
> 		u32 dmc_offset;
> 		u32 start_mmioaddr;
> @@ -434,7 +434,7 @@ static void gen9_set_dc_state_debugmask(struct intel_display *display)
> }
>
> static void disable_event_handler(struct intel_display *display,
> -				  i915_reg_t ctl_reg, i915_reg_t htp_reg)
> +				  intel_reg_t ctl_reg, intel_reg_t htp_reg)
> {
> 	intel_de_write(display, ctl_reg,
> 		       REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
> @@ -538,7 +538,7 @@ static u32 dmc_evt_ctl_disable(u32 dmc_evt_ctl)
> }
>
> static bool is_dmc_evt_ctl_reg(struct intel_display *display,
> -			       enum intel_dmc_id dmc_id, i915_reg_t reg)
> +			       enum intel_dmc_id dmc_id, intel_reg_t reg)
> {
> 	u32 offset = i915_mmio_reg_offset(reg);
> 	u32 start = i915_mmio_reg_offset(DMC_EVT_CTL(display, dmc_id, 0));
> @@ -548,7 +548,7 @@ static bool is_dmc_evt_ctl_reg(struct intel_display *display,
> }
>
> static bool is_dmc_evt_htp_reg(struct intel_display *display,
> -			       enum intel_dmc_id dmc_id, i915_reg_t reg)
> +			       enum intel_dmc_id dmc_id, intel_reg_t reg)
> {
> 	u32 offset = i915_mmio_reg_offset(reg);
> 	u32 start = i915_mmio_reg_offset(DMC_EVT_HTP(display, dmc_id, 0));
> @@ -560,7 +560,7 @@ static bool is_dmc_evt_htp_reg(struct intel_display *display,
> static bool is_event_handler(struct intel_display *display,
> 			     enum intel_dmc_id dmc_id,
> 			     unsigned int event_id,
> -			     i915_reg_t reg, u32 data)
> +			     intel_reg_t reg, u32 data)
> {
> 	return is_dmc_evt_ctl_reg(display, dmc_id, reg) &&
> 		REG_FIELD_GET(DMC_EVT_CTL_EVENT_ID_MASK, data) == event_id;
> @@ -568,8 +568,8 @@ static bool is_event_handler(struct intel_display *display,
>
> static bool fixup_dmc_evt(struct intel_display *display,
> 			  enum intel_dmc_id dmc_id,
> -			  i915_reg_t reg_ctl, u32 *data_ctl,
> -			  i915_reg_t reg_htp, u32 *data_htp)
> +			  intel_reg_t reg_ctl, u32 *data_ctl,
> +			  intel_reg_t reg_htp, u32 *data_htp)
> {
> 	if (!is_dmc_evt_ctl_reg(display, dmc_id, reg_ctl))
> 		return false;
> @@ -613,7 +613,7 @@ static bool fixup_dmc_evt(struct intel_display *display,
>
> static bool disable_dmc_evt(struct intel_display *display,
> 			    enum intel_dmc_id dmc_id,
> -			    i915_reg_t reg, u32 data)
> +			    intel_reg_t reg, u32 data)
> {
> 	if (!is_dmc_evt_ctl_reg(display, dmc_id, reg))
> 		return false;
> @@ -696,7 +696,7 @@ static void assert_dmc_loaded(struct intel_display *display,
> 		 dmc_id, expected, found);
>
> 	for (i = 0; i < dmc->dmc_info[dmc_id].mmio_count; i++) {
> -		i915_reg_t reg = dmc->dmc_info[dmc_id].mmioaddr[i];
> +		intel_reg_t reg = dmc->dmc_info[dmc_id].mmioaddr[i];
>
> 		found = intel_de_read(display, reg);
> 		expected = dmc_mmiodata(display, dmc, dmc_id, i);
> @@ -847,7 +847,7 @@ static void dmc_configure_event(struct intel_display *display,
> 	int i;
>
> 	for (i = 0; i < dmc->dmc_info[dmc_id].mmio_count; i++) {
> -		i915_reg_t reg = dmc->dmc_info[dmc_id].mmioaddr[i];
> +		intel_reg_t reg = dmc->dmc_info[dmc_id].mmioaddr[i];
> 		u32 data = dmc->dmc_info[dmc_id].mmiodata[i];
>
> 		if (!is_event_handler(display, dmc_id, event_id, reg, data))
> @@ -1618,7 +1618,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
> 	struct intel_display *display = m->private;
> 	struct intel_dmc *dmc = display_to_dmc(display);
> 	struct ref_tracker *wakeref;
> -	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
> +	intel_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
> 	u32 dc6_allowed_count;
>
> 	if (!HAS_DMC(display))
> @@ -1647,7 +1647,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
> 		   DMC_VERSION_MINOR(dmc->version));
>
> 	if (DISPLAY_VER(display) >= 12) {
> -		i915_reg_t dc3co_reg;
> +		intel_reg_t dc3co_reg;
>
> 		if (display->platform.dgfx || DISPLAY_VER(display) >= 14) {
> 			dc3co_reg = DG1_DMC_DEBUG3;
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index 73a3101514f3..763f004700ba 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -224,7 +224,7 @@ static void __intel_dmc_wl_take(struct intel_display *display)
> 	wl->taken = true;
> }
>
> -static bool intel_dmc_wl_reg_in_range(i915_reg_t reg,
> +static bool intel_dmc_wl_reg_in_range(intel_reg_t reg,
> 				      const struct intel_dmc_wl_range ranges[])
> {
> 	u32 offset = i915_mmio_reg_offset(reg);
> @@ -240,7 +240,7 @@ static bool intel_dmc_wl_reg_in_range(i915_reg_t reg,
> }
>
> static bool intel_dmc_wl_check_range(struct intel_display *display,
> -				     i915_reg_t reg,
> +				     intel_reg_t reg,
> 				     u32 dc_state)
> {
> 	const struct intel_dmc_wl_range *ranges;
> @@ -431,7 +431,7 @@ void intel_dmc_wl_flush_release_work(struct intel_display *display)
> 	flush_delayed_work(&wl->work);
> }
>
> -void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
> +void intel_dmc_wl_get(struct intel_display *display, intel_reg_t reg)
> {
> 	struct intel_dmc_wl *wl = &display->wl;
> 	unsigned long flags;
> @@ -464,7 +464,7 @@ void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
> 	spin_unlock_irqrestore(&wl->lock, flags);
> }
>
> -void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg)
> +void intel_dmc_wl_put(struct intel_display *display, intel_reg_t reg)
> {
> 	struct intel_dmc_wl *wl = &display->wl;
> 	unsigned long flags;
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.h b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> index 5488fbdf29b8..215107f0a4f9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> @@ -10,7 +10,7 @@
> #include <linux/workqueue.h>
> #include <linux/refcount.h>
>
> -#include "i915_reg_defs.h"
> +#include "intel_display_reg_defs.h"
>
> struct intel_display;
>
> @@ -33,8 +33,8 @@ void intel_dmc_wl_init(struct intel_display *display);
> void intel_dmc_wl_enable(struct intel_display *display, u32 dc_state);
> void intel_dmc_wl_disable(struct intel_display *display);
> void intel_dmc_wl_flush_release_work(struct intel_display *display);
> -void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg);
> -void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg);
> +void intel_dmc_wl_get(struct intel_display *display, intel_reg_t reg);
> +void intel_dmc_wl_put(struct intel_display *display, intel_reg_t reg);
> void intel_dmc_wl_get_noreg(struct intel_display *display);
> void intel_dmc_wl_put_noreg(struct intel_display *display);
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4955bd8b11d7..c3e483293618 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5239,7 +5239,7 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
> 			     const struct drm_connector_state *conn_state)
> {
> 	struct intel_display *display = to_intel_display(encoder);
> -	i915_reg_t reg = HSW_TVIDEO_DIP_CTL(display, crtc_state->cpu_transcoder);
> +	intel_reg_t reg = HSW_TVIDEO_DIP_CTL(display, crtc_state->cpu_transcoder);
> 	u32 dip_enable = VIDEO_DIP_ENABLE_AVI_HSW | VIDEO_DIP_ENABLE_GCP_HSW |
> 			 VIDEO_DIP_ENABLE_VS_HSW | VIDEO_DIP_ENABLE_GMP_HSW |
> 			 VIDEO_DIP_ENABLE_SPD_HSW | VIDEO_DIP_ENABLE_DRM_GLK;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index b20ec3e589fa..ef33ecd81f28 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -58,7 +58,7 @@ static u32
> intel_dp_aux_wait_done(struct intel_dp *intel_dp)
> {
> 	struct intel_display *display = to_intel_display(intel_dp);
> -	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
> +	intel_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
> 	const unsigned int timeout_ms = 10;
> 	u32 status;
> 	bool done;
> @@ -244,7 +244,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> 	struct intel_display *display = to_intel_display(intel_dp);
> 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> 	struct intel_encoder *encoder = &dig_port->base;
> -	i915_reg_t ch_ctl, ch_data[5];
> +	intel_reg_t ch_ctl, ch_data[5];
> 	u32 aux_clock_divider;
> 	enum intel_display_power_domain aux_domain;
> 	struct ref_tracker *aux_wakeref;
> @@ -554,7 +554,7 @@ intel_dp_aux_transfer(struct drm_dp_aux *aux, struct drm_dp_aux_msg *msg)
> 	return ret;
> }
>
> -static i915_reg_t vlv_aux_ctl_reg(struct intel_dp *intel_dp)
> +static intel_reg_t vlv_aux_ctl_reg(struct intel_dp *intel_dp)
> {
> 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> 	enum aux_ch aux_ch = dig_port->aux_ch;
> @@ -570,7 +570,7 @@ static i915_reg_t vlv_aux_ctl_reg(struct intel_dp *intel_dp)
> 	}
> }
>
> -static i915_reg_t vlv_aux_data_reg(struct intel_dp *intel_dp, int index)
> +static intel_reg_t vlv_aux_data_reg(struct intel_dp *intel_dp, int index)
> {
> 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> 	enum aux_ch aux_ch = dig_port->aux_ch;
> @@ -586,7 +586,7 @@ static i915_reg_t vlv_aux_data_reg(struct intel_dp *intel_dp, int index)
> 	}
> }
>
> -static i915_reg_t g4x_aux_ctl_reg(struct intel_dp *intel_dp)
> +static intel_reg_t g4x_aux_ctl_reg(struct intel_dp *intel_dp)
> {
> 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> 	enum aux_ch aux_ch = dig_port->aux_ch;
> @@ -602,7 +602,7 @@ static i915_reg_t g4x_aux_ctl_reg(struct intel_dp *intel_dp)
> 	}
> }
>
> -static i915_reg_t g4x_aux_data_reg(struct intel_dp *intel_dp, int index)
> +static intel_reg_t g4x_aux_data_reg(struct intel_dp *intel_dp, int index)
> {
> 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> 	enum aux_ch aux_ch = dig_port->aux_ch;
> @@ -618,7 +618,7 @@ static i915_reg_t g4x_aux_data_reg(struct intel_dp *intel_dp, int index)
> 	}
> }
>
> -static i915_reg_t ilk_aux_ctl_reg(struct intel_dp *intel_dp)
> +static intel_reg_t ilk_aux_ctl_reg(struct intel_dp *intel_dp)
> {
> 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> 	enum aux_ch aux_ch = dig_port->aux_ch;
> @@ -636,7 +636,7 @@ static i915_reg_t ilk_aux_ctl_reg(struct intel_dp *intel_dp)
> 	}
> }
>
> -static i915_reg_t ilk_aux_data_reg(struct intel_dp *intel_dp, int index)
> +static intel_reg_t ilk_aux_data_reg(struct intel_dp *intel_dp, int index)
> {
> 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> 	enum aux_ch aux_ch = dig_port->aux_ch;
> @@ -654,7 +654,7 @@ static i915_reg_t ilk_aux_data_reg(struct intel_dp *intel_dp, int index)
> 	}
> }
>
> -static i915_reg_t skl_aux_ctl_reg(struct intel_dp *intel_dp)
> +static intel_reg_t skl_aux_ctl_reg(struct intel_dp *intel_dp)
> {
> 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> 	enum aux_ch aux_ch = dig_port->aux_ch;
> @@ -673,7 +673,7 @@ static i915_reg_t skl_aux_ctl_reg(struct intel_dp *intel_dp)
> 	}
> }
>
> -static i915_reg_t skl_aux_data_reg(struct intel_dp *intel_dp, int index)
> +static intel_reg_t skl_aux_data_reg(struct intel_dp *intel_dp, int index)
> {
> 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> 	enum aux_ch aux_ch = dig_port->aux_ch;
> @@ -692,7 +692,7 @@ static i915_reg_t skl_aux_data_reg(struct intel_dp *intel_dp, int index)
> 	}
> }
>
> -static i915_reg_t tgl_aux_ctl_reg(struct intel_dp *intel_dp)
> +static intel_reg_t tgl_aux_ctl_reg(struct intel_dp *intel_dp)
> {
> 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> 	enum aux_ch aux_ch = dig_port->aux_ch;
> @@ -714,7 +714,7 @@ static i915_reg_t tgl_aux_ctl_reg(struct intel_dp *intel_dp)
> 	}
> }
>
> -static i915_reg_t tgl_aux_data_reg(struct intel_dp *intel_dp, int index)
> +static intel_reg_t tgl_aux_data_reg(struct intel_dp *intel_dp, int index)
> {
> 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> 	enum aux_ch aux_ch = dig_port->aux_ch;
> @@ -736,7 +736,7 @@ static i915_reg_t tgl_aux_data_reg(struct intel_dp *intel_dp, int index)
> 	}
> }
>
> -static i915_reg_t xelpdp_aux_ctl_reg(struct intel_dp *intel_dp)
> +static intel_reg_t xelpdp_aux_ctl_reg(struct intel_dp *intel_dp)
> {
> 	struct intel_display *display = to_intel_display(intel_dp);
> 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> @@ -756,7 +756,7 @@ static i915_reg_t xelpdp_aux_ctl_reg(struct intel_dp *intel_dp)
> 	}
> }
>
> -static i915_reg_t xelpdp_aux_data_reg(struct intel_dp *intel_dp, int index)
> +static intel_reg_t xelpdp_aux_data_reg(struct intel_dp *intel_dp, int index)
> {
> 	struct intel_display *display = to_intel_display(intel_dp);
> 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> index 0e16132d0923..ae5a7ac3dbcd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> @@ -279,8 +279,8 @@ void bxt_port_to_phy_channel(struct intel_display *display, enum port port,
>  * writes to the group register to write the same value to all the lanes.
>  */
> static u32 bxt_dpio_phy_rmw_grp(struct intel_display *display,
> -				i915_reg_t reg_single,
> -				i915_reg_t reg_group,
> +				intel_reg_t reg_single,
> +				intel_reg_t reg_group,
> 				u32 clear, u32 set)
> {
> 	u32 old, val;
> @@ -512,7 +512,7 @@ void bxt_dpio_phy_init(struct intel_display *display, enum dpio_phy phy)
>
> static bool __printf(6, 7)
> __phy_reg_verify_state(struct intel_display *display, enum dpio_phy phy,
> -		       i915_reg_t reg, u32 mask, u32 expected,
> +		       intel_reg_t reg, u32 mask, u32 expected,
> 		       const char *reg_fmt, ...)
> {
> 	struct va_format vaf;
> @@ -1172,7 +1172,7 @@ void vlv_wait_port_ready(struct intel_encoder *encoder,
> {
> 	struct intel_display *display = to_intel_display(encoder);
> 	u32 port_mask;
> -	i915_reg_t dpll_reg;
> +	intel_reg_t dpll_reg;
> 	u32 val;
>
> 	switch (encoder->port) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index f5d4f7146fbc..dba8eeb4de4b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -220,7 +220,7 @@ enum intel_dpll_id mtl_port_to_pll_id(struct intel_display *display, enum port p
> 	}
> }
>
> -static i915_reg_t
> +static intel_reg_t
> intel_combo_pll_enable_reg(struct intel_display *display,
> 			   struct intel_dpll *pll)
> {
> @@ -233,7 +233,7 @@ intel_combo_pll_enable_reg(struct intel_display *display,
> 	return ICL_DPLL_ENABLE(pll->info->id);
> }
>
> -static i915_reg_t
> +static intel_reg_t
> intel_tc_pll_enable_reg(struct intel_display *display,
> 			struct intel_dpll *pll)
> {
> @@ -1350,7 +1350,7 @@ static const struct intel_dpll_mgr hsw_pll_mgr = {
> };
>
> struct skl_dpll_regs {
> -	i915_reg_t ctl, cfgcr1, cfgcr2;
> +	intel_reg_t ctl, cfgcr1, cfgcr2;
> };
>
> /* this array is indexed by the *shared* pll id */
> @@ -3603,7 +3603,7 @@ static bool mg_pll_get_hw_state(struct intel_display *display,
> 	bool ret = false;
> 	u32 val;
>
> -	i915_reg_t enable_reg = intel_tc_pll_enable_reg(display, pll);
> +	intel_reg_t enable_reg = intel_tc_pll_enable_reg(display, pll);
>
> 	wakeref = intel_display_power_get_if_enabled(display,
> 						     POWER_DOMAIN_DISPLAY_CORE);
> @@ -3734,7 +3734,7 @@ static bool dkl_pll_get_hw_state(struct intel_display *display,
> static bool icl_pll_get_hw_state(struct intel_display *display,
> 				 struct intel_dpll *pll,
> 				 struct intel_dpll_hw_state *dpll_hw_state,
> -				 i915_reg_t enable_reg)
> +				 intel_reg_t enable_reg)
> {
> 	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
> 	const enum intel_dpll_id id = pll->info->id;
> @@ -3796,7 +3796,7 @@ static bool combo_pll_get_hw_state(struct intel_display *display,
> 				   struct intel_dpll *pll,
> 				   struct intel_dpll_hw_state *dpll_hw_state)
> {
> -	i915_reg_t enable_reg = intel_combo_pll_enable_reg(display, pll);
> +	intel_reg_t enable_reg = intel_combo_pll_enable_reg(display, pll);
>
> 	return icl_pll_get_hw_state(display, pll, dpll_hw_state, enable_reg);
> }
> @@ -3813,7 +3813,7 @@ static void icl_dpll_write(struct intel_display *display,
> 			   const struct icl_dpll_hw_state *hw_state)
> {
> 	const enum intel_dpll_id id = pll->info->id;
> -	i915_reg_t cfgcr0_reg, cfgcr1_reg, div0_reg = INVALID_MMIO_REG;
> +	intel_reg_t cfgcr0_reg, cfgcr1_reg, div0_reg = INVALID_MMIO_REG;
>
> 	if (display->platform.alderlake_s) {
> 		cfgcr0_reg = ADLS_DPLL_CFGCR0(id);
> @@ -3960,7 +3960,7 @@ static void dkl_pll_write(struct intel_display *display,
>
> static void icl_pll_power_enable(struct intel_display *display,
> 				 struct intel_dpll *pll,
> -				 i915_reg_t enable_reg)
> +				 intel_reg_t enable_reg)
> {
> 	intel_de_rmw(display, enable_reg, 0, PLL_POWER_ENABLE);
>
> @@ -3975,7 +3975,7 @@ static void icl_pll_power_enable(struct intel_display *display,
>
> static void icl_pll_enable(struct intel_display *display,
> 			   struct intel_dpll *pll,
> -			   i915_reg_t enable_reg)
> +			   intel_reg_t enable_reg)
> {
> 	intel_de_rmw(display, enable_reg, 0, PLL_ENABLE);
>
> @@ -4013,7 +4013,7 @@ static void combo_pll_enable(struct intel_display *display,
> 			     const struct intel_dpll_hw_state *dpll_hw_state)
> {
> 	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
> -	i915_reg_t enable_reg = intel_combo_pll_enable_reg(display, pll);
> +	intel_reg_t enable_reg = intel_combo_pll_enable_reg(display, pll);
>
> 	icl_pll_power_enable(display, pll, enable_reg);
>
> @@ -4058,7 +4058,7 @@ static void mg_pll_enable(struct intel_display *display,
> 			  const struct intel_dpll_hw_state *dpll_hw_state)
> {
> 	const struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
> -	i915_reg_t enable_reg = intel_tc_pll_enable_reg(display, pll);
> +	intel_reg_t enable_reg = intel_tc_pll_enable_reg(display, pll);
>
> 	icl_pll_power_enable(display, pll, enable_reg);
>
> @@ -4080,7 +4080,7 @@ static void mg_pll_enable(struct intel_display *display,
>
> static void icl_pll_disable(struct intel_display *display,
> 			    struct intel_dpll *pll,
> -			    i915_reg_t enable_reg)
> +			    intel_reg_t enable_reg)
> {
> 	/* The first steps are done by intel_ddi_post_disable(). */
>
> @@ -4112,7 +4112,7 @@ static void icl_pll_disable(struct intel_display *display,
> static void combo_pll_disable(struct intel_display *display,
> 			      struct intel_dpll *pll)
> {
> -	i915_reg_t enable_reg = intel_combo_pll_enable_reg(display, pll);
> +	intel_reg_t enable_reg = intel_combo_pll_enable_reg(display, pll);
>
> 	icl_pll_disable(display, pll, enable_reg);
> }
> @@ -4126,7 +4126,7 @@ static void icl_tbt_pll_disable(struct intel_display *display,
> static void mg_pll_disable(struct intel_display *display,
> 			   struct intel_dpll *pll)
> {
> -	i915_reg_t enable_reg = intel_tc_pll_enable_reg(display, pll);
> +	intel_reg_t enable_reg = intel_tc_pll_enable_reg(display, pll);
>
> 	icl_pll_disable(display, pll, enable_reg);
> }
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index c8d3968f659f..ce4d452ae695 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -326,7 +326,7 @@ static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
> }
>
> static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
> -					u32 opcode, i915_reg_t reg)
> +					u32 opcode, intel_reg_t reg)
> {
> 	u32 prev_opcode, prev_reg;
>
> @@ -344,7 +344,7 @@ static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
> 	return prev_opcode == opcode && prev_reg == i915_mmio_reg_offset(reg);
> }
>
> -static bool intel_dsb_prev_ins_is_indexed_write(struct intel_dsb *dsb, i915_reg_t reg)
> +static bool intel_dsb_prev_ins_is_indexed_write(struct intel_dsb *dsb, intel_reg_t reg)
> {
> 	return intel_dsb_prev_ins_is_write(dsb,
> 					   DSB_OPCODE_INDEXED_WRITE << DSB_OPCODE_SHIFT,
> @@ -365,7 +365,7 @@ static bool intel_dsb_prev_ins_is_indexed_write(struct intel_dsb *dsb, i915_reg_
>  * register.
>  */
> void intel_dsb_reg_write_indexed(struct intel_dsb *dsb,
> -				 i915_reg_t reg, u32 val)
> +				 intel_reg_t reg, u32 val)
> {
> 	/*
> 	 * For example the buffer will look like below for 3 dwords for auto
> @@ -402,7 +402,7 @@ void intel_dsb_reg_write_indexed(struct intel_dsb *dsb,
> }
>
> void intel_dsb_reg_write(struct intel_dsb *dsb,
> -			 i915_reg_t reg, u32 val)
> +			 intel_reg_t reg, u32 val)
> {
> 	intel_dsb_emit(dsb, val,
> 		       (DSB_OPCODE_MMIO_WRITE << DSB_OPCODE_SHIFT) |
> @@ -420,7 +420,7 @@ static u32 intel_dsb_mask_to_byte_en(u32 mask)
>
> /* Note: mask implemented via byte enables! */
> void intel_dsb_reg_write_masked(struct intel_dsb *dsb,
> -				i915_reg_t reg, u32 mask, u32 val)
> +				intel_reg_t reg, u32 mask, u32 val)
> {
> 	intel_dsb_emit(dsb, val,
> 		       (DSB_OPCODE_MMIO_WRITE << DSB_OPCODE_SHIFT) |
> @@ -550,7 +550,7 @@ void intel_dsb_wait_scanline_out(struct intel_atomic_state *state,
> }
>
> void intel_dsb_poll(struct intel_dsb *dsb,
> -		    i915_reg_t reg, u32 mask, u32 val,
> +		    intel_reg_t reg, u32 mask, u32 val,
> 		    int wait_us, int count)
> {
> 	struct intel_crtc *crtc = dsb->crtc;
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
> index 386a5a942572..3dcca9ed5371 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
> @@ -8,7 +8,7 @@
>
> #include <linux/types.h>
>
> -#include "i915_reg_defs.h"
> +#include "intel_display_reg_defs.h"
>
> struct intel_atomic_state;
> struct intel_crtc;
> @@ -37,11 +37,11 @@ void intel_dsb_gosub_finish(struct intel_dsb *dsb);
> void intel_dsb_cleanup(struct intel_dsb *dsb);
> int intel_dsb_exec_time_us(void);
> void intel_dsb_reg_write(struct intel_dsb *dsb,
> -			 i915_reg_t reg, u32 val);
> +			 intel_reg_t reg, u32 val);
> void intel_dsb_reg_write_indexed(struct intel_dsb *dsb,
> -				 i915_reg_t reg, u32 val);
> +				 intel_reg_t reg, u32 val);
> void intel_dsb_reg_write_masked(struct intel_dsb *dsb,
> -				i915_reg_t reg, u32 mask, u32 val);
> +				intel_reg_t reg, u32 mask, u32 val);
> void intel_dsb_noop(struct intel_dsb *dsb, int count);
> void intel_dsb_nonpost_start(struct intel_dsb *dsb);
> void intel_dsb_nonpost_end(struct intel_dsb *dsb);
> @@ -59,7 +59,7 @@ void intel_dsb_wait_scanline_out(struct intel_atomic_state *state,
> void intel_dsb_vblank_evade(struct intel_atomic_state *state,
> 			    struct intel_dsb *dsb);
> void intel_dsb_poll(struct intel_dsb *dsb,
> -		    i915_reg_t reg, u32 mask, u32 val,
> +		    intel_reg_t reg, u32 mask, u32 val,
> 		    int wait_us, int count);
> void intel_dsb_gosub(struct intel_dsb *dsb,
> 		     struct intel_dsb *sub_dsb);
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo_dev.h b/drivers/gpu/drm/i915/display/intel_dvo_dev.h
> index f1e939aaf7fa..1f049f79a534 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo_dev.h
> +++ b/drivers/gpu/drm/i915/display/intel_dvo_dev.h
> @@ -23,7 +23,7 @@
> #ifndef __INTEL_DVO_DEV_H__
> #define __INTEL_DVO_DEV_H__
>
> -#include "i915_reg_defs.h"
> +#include "intel_display_reg_defs.h"
>
> #include "intel_display_limits.h"
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> index 24ce8a7842c7..86975ff0d2f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -438,7 +438,7 @@ void intel_fdi_normal_train(struct intel_crtc *crtc)
> {
> 	struct intel_display *display = to_intel_display(crtc);
> 	enum pipe pipe = crtc->pipe;
> -	i915_reg_t reg;
> +	intel_reg_t reg;
> 	u32 temp;
>
> 	/* enable normal train */
> @@ -479,7 +479,7 @@ static void ilk_fdi_link_train(struct intel_crtc *crtc,
> {
> 	struct intel_display *display = to_intel_display(crtc);
> 	enum pipe pipe = crtc->pipe;
> -	i915_reg_t reg;
> +	intel_reg_t reg;
> 	u32 temp, tries;
>
> 	/*
> @@ -580,7 +580,7 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
> {
> 	struct intel_display *display = to_intel_display(crtc);
> 	enum pipe pipe = crtc->pipe;
> -	i915_reg_t reg;
> +	intel_reg_t reg;
> 	u32 temp, i, retry;
>
> 	/*
> @@ -715,7 +715,7 @@ static void ivb_manual_fdi_link_train(struct intel_crtc *crtc,
> {
> 	struct intel_display *display = to_intel_display(crtc);
> 	enum pipe pipe = crtc->pipe;
> -	i915_reg_t reg;
> +	intel_reg_t reg;
> 	u32 temp, i, j;
>
> 	ivb_update_fdi_bc_bifurcation(crtc_state);
> @@ -996,7 +996,7 @@ void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state)
> 	struct intel_display *display = to_intel_display(crtc_state);
> 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> 	enum pipe pipe = crtc->pipe;
> -	i915_reg_t reg;
> +	intel_reg_t reg;
> 	u32 temp;
>
> 	/* enable PCH FDI RX PLL, wait warmup plus DMI latency */
> @@ -1049,7 +1049,7 @@ void ilk_fdi_disable(struct intel_crtc *crtc)
> {
> 	struct intel_display *display = to_intel_display(crtc);
> 	enum pipe pipe = crtc->pipe;
> -	i915_reg_t reg;
> +	intel_reg_t reg;
> 	u32 temp;
>
> 	/* disable CPU FDI tx and PCH FDI rx */
> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> index bf047180def9..02013e89d8f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -189,7 +189,7 @@ static bool cpt_can_enable_serr_int(struct intel_display *display)
> static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
> {
> 	struct intel_display *display = to_intel_display(crtc);
> -	i915_reg_t reg = PIPESTAT(display, crtc->pipe);
> +	intel_reg_t reg = PIPESTAT(display, crtc->pipe);
> 	u32 enable_mask;
>
> 	lockdep_assert_held(&display->irq.lock);
> @@ -209,7 +209,7 @@ static void i9xx_set_fifo_underrun_reporting(struct intel_display *display,
> 					     enum pipe pipe,
> 					     bool enable, bool old)
> {
> -	i915_reg_t reg = PIPESTAT(display, pipe);
> +	intel_reg_t reg = PIPESTAT(display, pipe);
>
> 	lockdep_assert_held(&display->irq.lock);
>
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index ea5cf8f51b31..049157c41fe2 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -48,7 +48,7 @@ struct intel_gmbus {
> #define GMBUS_FORCE_BIT_RETRY (1U << 31)
> 	u32 force_bit;
> 	u32 reg0;
> -	i915_reg_t gpio_reg;
> +	intel_reg_t gpio_reg;
> 	struct i2c_algo_bit_data bit_algo;
> 	struct intel_display *display;
> };
> @@ -368,7 +368,7 @@ intel_gpio_post_xfer(struct i2c_adapter *adapter)
> }
>
> static void
> -intel_gpio_setup(struct intel_gmbus *bus, i915_reg_t gpio_reg)
> +intel_gpio_setup(struct intel_gmbus *bus, intel_reg_t gpio_reg)
> {
> 	struct i2c_algo_bit_data *algo;
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 892eab4b6f92..8896faf4f96b 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -46,7 +46,7 @@ intel_hdcp_adjust_hdcp_line_rekeying(struct intel_encoder *encoder,
> 				     bool enable)
> {
> 	struct intel_display *display = to_intel_display(encoder);
> -	i915_reg_t rekey_reg;
> +	intel_reg_t rekey_reg;
> 	u32 rekey_bit = 0;
>
> 	/* Here we assume HDMI is in TMDS mode of operation */
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 05e898d10a2b..6fc022c76828 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -173,7 +173,7 @@ static u32 hsw_infoframe_enable(unsigned int type)
> 	}
> }
>
> -static i915_reg_t
> +static intel_reg_t
> hsw_dip_data_reg(struct intel_display *display,
> 		 enum transcoder cpu_transcoder,
> 		 unsigned int type,
> @@ -298,7 +298,7 @@ static void ibx_write_infoframe(struct intel_encoder *encoder,
> 	struct intel_display *display = to_intel_display(encoder);
> 	const u32 *data = frame;
> 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	i915_reg_t reg = TVIDEO_DIP_CTL(crtc->pipe);
> +	intel_reg_t reg = TVIDEO_DIP_CTL(crtc->pipe);
> 	u32 val = intel_de_read(display, reg);
> 	int i;
>
> @@ -351,7 +351,7 @@ static u32 ibx_infoframes_enabled(struct intel_encoder *encoder,
> {
> 	struct intel_display *display = to_intel_display(encoder);
> 	enum pipe pipe = to_intel_crtc(pipe_config->uapi.crtc)->pipe;
> -	i915_reg_t reg = TVIDEO_DIP_CTL(pipe);
> +	intel_reg_t reg = TVIDEO_DIP_CTL(pipe);
> 	u32 val = intel_de_read(display, reg);
>
> 	if ((val & VIDEO_DIP_ENABLE) == 0)
> @@ -373,7 +373,7 @@ static void cpt_write_infoframe(struct intel_encoder *encoder,
> 	struct intel_display *display = to_intel_display(encoder);
> 	const u32 *data = frame;
> 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	i915_reg_t reg = TVIDEO_DIP_CTL(crtc->pipe);
> +	intel_reg_t reg = TVIDEO_DIP_CTL(crtc->pipe);
> 	u32 val = intel_de_read(display, reg);
> 	int i;
>
> @@ -447,7 +447,7 @@ static void vlv_write_infoframe(struct intel_encoder *encoder,
> 	struct intel_display *display = to_intel_display(encoder);
> 	const u32 *data = frame;
> 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	i915_reg_t reg = VLV_TVIDEO_DIP_CTL(crtc->pipe);
> +	intel_reg_t reg = VLV_TVIDEO_DIP_CTL(crtc->pipe);
> 	u32 val = intel_de_read(display, reg);
> 	int i;
>
> @@ -523,7 +523,7 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
> 	struct intel_display *display = to_intel_display(encoder);
> 	const u32 *data = frame;
> 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> -	i915_reg_t ctl_reg = HSW_TVIDEO_DIP_CTL(display, cpu_transcoder);
> +	intel_reg_t ctl_reg = HSW_TVIDEO_DIP_CTL(display, cpu_transcoder);
> 	int data_size;
> 	int i;
> 	u32 val = intel_de_read(display, ctl_reg);
> @@ -884,7 +884,7 @@ static void g4x_set_infoframes(struct intel_encoder *encoder,
> 	struct intel_display *display = to_intel_display(encoder);
> 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> 	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
> -	i915_reg_t reg = VIDEO_DIP_CTL;
> +	intel_reg_t reg = VIDEO_DIP_CTL;
> 	u32 val = intel_de_read(display, reg);
> 	u32 port = VIDEO_DIP_PORT(encoder->port);
>
> @@ -995,7 +995,7 @@ static bool intel_hdmi_set_gcp_infoframe(struct intel_encoder *encoder,
> {
> 	struct intel_display *display = to_intel_display(encoder);
> 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	i915_reg_t reg;
> +	intel_reg_t reg;
>
> 	if ((crtc_state->infoframes.enable &
> 	     intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GENERAL_CONTROL)) == 0)
> @@ -1020,7 +1020,7 @@ void intel_hdmi_read_gcp_infoframe(struct intel_encoder *encoder,
> {
> 	struct intel_display *display = to_intel_display(encoder);
> 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	i915_reg_t reg;
> +	intel_reg_t reg;
>
> 	if ((crtc_state->infoframes.enable &
> 	     intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GENERAL_CONTROL)) == 0)
> @@ -1069,7 +1069,7 @@ static void ibx_set_infoframes(struct intel_encoder *encoder,
> 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> 	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
> -	i915_reg_t reg = TVIDEO_DIP_CTL(crtc->pipe);
> +	intel_reg_t reg = TVIDEO_DIP_CTL(crtc->pipe);
> 	u32 val = intel_de_read(display, reg);
> 	u32 port = VIDEO_DIP_PORT(encoder->port);
>
> @@ -1127,7 +1127,7 @@ static void cpt_set_infoframes(struct intel_encoder *encoder,
> 	struct intel_display *display = to_intel_display(encoder);
> 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
> -	i915_reg_t reg = TVIDEO_DIP_CTL(crtc->pipe);
> +	intel_reg_t reg = TVIDEO_DIP_CTL(crtc->pipe);
> 	u32 val = intel_de_read(display, reg);
>
> 	assert_hdmi_port_disabled(intel_hdmi);
> @@ -1176,7 +1176,7 @@ static void vlv_set_infoframes(struct intel_encoder *encoder,
> 	struct intel_display *display = to_intel_display(encoder);
> 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
> -	i915_reg_t reg = VLV_TVIDEO_DIP_CTL(crtc->pipe);
> +	intel_reg_t reg = VLV_TVIDEO_DIP_CTL(crtc->pipe);
> 	u32 val = intel_de_read(display, reg);
> 	u32 port = VIDEO_DIP_PORT(encoder->port);
>
> @@ -1231,7 +1231,7 @@ void intel_hdmi_fastset_infoframes(struct intel_encoder *encoder,
> 				   const struct drm_connector_state *conn_state)
> {
> 	struct intel_display *display = to_intel_display(encoder);
> -	i915_reg_t reg = HSW_TVIDEO_DIP_CTL(display,
> +	intel_reg_t reg = HSW_TVIDEO_DIP_CTL(display,
> 					    crtc_state->cpu_transcoder);
> 	u32 val = intel_de_read(display, reg);
>
> @@ -1256,7 +1256,7 @@ static void hsw_set_infoframes(struct intel_encoder *encoder,
> 			       const struct drm_connector_state *conn_state)
> {
> 	struct intel_display *display = to_intel_display(encoder);
> -	i915_reg_t reg = HSW_TVIDEO_DIP_CTL(display,
> +	intel_reg_t reg = HSW_TVIDEO_DIP_CTL(display,
> 					    crtc_state->cpu_transcoder);
> 	u32 val = intel_de_read(display, reg);
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 657ad5cb0eff..eee341d2b0a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1007,7 +1007,7 @@ assert_dc_off(struct intel_display *display)
>
> static int __intel_lt_phy_p2p_write_once(struct intel_encoder *encoder,
> 					 int lane, u16 addr, u8 data,
> -					 i915_reg_t mac_reg_addr,
> +					 intel_reg_t mac_reg_addr,
> 					 u8 expected_mac_val)
> {
> 	struct intel_display *display = to_intel_display(encoder);
> @@ -1062,7 +1062,7 @@ static int __intel_lt_phy_p2p_write_once(struct intel_encoder *encoder,
>
> static void __intel_lt_phy_p2p_write(struct intel_encoder *encoder,
> 				     int lane, u16 addr, u8 data,
> -				     i915_reg_t mac_reg_addr,
> +				     intel_reg_t mac_reg_addr,
> 				     u8 expected_mac_val)
> {
> 	struct intel_display *display = to_intel_display(encoder);
> @@ -1086,7 +1086,7 @@ static void __intel_lt_phy_p2p_write(struct intel_encoder *encoder,
>
> static void intel_lt_phy_p2p_write(struct intel_encoder *encoder,
> 				   u8 lane_mask, u16 addr, u8 data,
> -				   i915_reg_t mac_reg_addr,
> +				   intel_reg_t mac_reg_addr,
> 				   u8 expected_mac_val)
> {
> 	int lane;
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> index cc6d4bfcff10..a60661d5c7ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -70,7 +70,7 @@ struct intel_lvds_encoder {
> 	struct intel_encoder base;
>
> 	bool is_dual_link;
> -	i915_reg_t reg;
> +	intel_reg_t reg;
> 	u32 a3_power;
>
> 	struct intel_lvds_pps init_pps;
> @@ -85,7 +85,7 @@ static struct intel_lvds_encoder *to_lvds_encoder(struct intel_encoder *encoder)
> }
>
> bool intel_lvds_port_enabled(struct intel_display *display,
> -			     i915_reg_t lvds_reg, enum pipe *pipe)
> +			     intel_reg_t lvds_reg, enum pipe *pipe)
> {
> 	u32 val;
>
> @@ -846,7 +846,7 @@ void intel_lvds_init(struct intel_display *display)
> 	struct intel_connector *connector;
> 	const struct drm_edid *drm_edid;
> 	struct intel_encoder *encoder;
> -	i915_reg_t lvds_reg;
> +	intel_reg_t lvds_reg;
> 	u32 lvds;
> 	u8 ddc_pin;
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.h b/drivers/gpu/drm/i915/display/intel_lvds.h
> index a6db1706a97c..6ac70d5e8ce6 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.h
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.h
> @@ -8,20 +8,20 @@
>
> #include <linux/types.h>
>
> -#include "i915_reg_defs.h"
> +#include "intel_display_reg_defs.h"
>
> enum pipe;
> struct intel_display;
>
> #ifdef I915
> bool intel_lvds_port_enabled(struct intel_display *display,
> -			     i915_reg_t lvds_reg, enum pipe *pipe);
> +			     intel_reg_t lvds_reg, enum pipe *pipe);
> void intel_lvds_init(struct intel_display *display);
> struct intel_encoder *intel_get_lvds_encoder(struct intel_display *display);
> bool intel_is_dual_link_lvds(struct intel_display *display);
> #else
> static inline bool intel_lvds_port_enabled(struct intel_display *display,
> -					   i915_reg_t lvds_reg, enum pipe *pipe)
> +					   intel_reg_t lvds_reg, enum pipe *pipe)
> {
> 	return false;
> }
> diff --git a/drivers/gpu/drm/i915/display/intel_mchbar.c b/drivers/gpu/drm/i915/display/intel_mchbar.c
> index a0d0a796c6bb..8cfcee4a08a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_mchbar.c
> +++ b/drivers/gpu/drm/i915/display/intel_mchbar.c
> @@ -41,7 +41,7 @@ static u32 mchbar_mirror_len(struct intel_display *display)
> 	return mchbar_mirror_end(display) - mchbar_mirror_base(display) + 1;
> }
>
> -static bool is_mchbar_reg(struct intel_display *display, i915_reg_t reg)
> +static bool is_mchbar_reg(struct intel_display *display, intel_reg_t reg)
> {
> 	return has_mchbar_mirror(display) &&
> 		in_range32(i915_mmio_reg_offset(reg),
> @@ -49,28 +49,28 @@ static bool is_mchbar_reg(struct intel_display *display, i915_reg_t reg)
> 			   mchbar_mirror_len(display));
> }
>
> -static void assert_is_mchbar_reg(struct intel_display *display, i915_reg_t reg)
> +static void assert_is_mchbar_reg(struct intel_display *display, intel_reg_t reg)
> {
> 	drm_WARN(display->drm, !is_mchbar_reg(display, reg),
> 		 "Reading non-MCHBAR register 0x%x\n",
> 		 i915_mmio_reg_offset(reg));
> }
>
> -u16 intel_mchbar_read16(struct intel_display *display, i915_reg_t reg)
> +u16 intel_mchbar_read16(struct intel_display *display, intel_reg_t reg)
> {
> 	assert_is_mchbar_reg(display, reg);
>
> 	return intel_de_read16(display, reg);
> }
>
> -u32 intel_mchbar_read(struct intel_display *display, i915_reg_t reg)
> +u32 intel_mchbar_read(struct intel_display *display, intel_reg_t reg)
> {
> 	assert_is_mchbar_reg(display, reg);
>
> 	return intel_de_read(display, reg);
> }
>
> -u64 intel_mchbar_read64_2x32(struct intel_display *display, i915_reg_t reg)
> +u64 intel_mchbar_read64_2x32(struct intel_display *display, intel_reg_t reg)
> {
> 	assert_is_mchbar_reg(display, reg);
>
> diff --git a/drivers/gpu/drm/i915/display/intel_mchbar.h b/drivers/gpu/drm/i915/display/intel_mchbar.h
> index fb645c64796c..1ced5dc8a8fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_mchbar.h
> +++ b/drivers/gpu/drm/i915/display/intel_mchbar.h
> @@ -10,12 +10,12 @@
>
> #include <drm/intel/mchbar_regs.h>
>
> -#include "i915_reg_defs.h"
> +#include "intel_display_reg_defs.h"
>
> struct intel_display;
>
> -u16 intel_mchbar_read16(struct intel_display *display, i915_reg_t reg);
> -u32 intel_mchbar_read(struct intel_display *display, i915_reg_t reg);
> -u64 intel_mchbar_read64_2x32(struct intel_display *display, i915_reg_t reg);
> +u16 intel_mchbar_read16(struct intel_display *display, intel_reg_t reg);
> +u32 intel_mchbar_read(struct intel_display *display, intel_reg_t reg);
> +u64 intel_mchbar_read64_2x32(struct intel_display *display, intel_reg_t reg);
>
> #endif /* __INTEL_MCHBAR_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
> index 69c7952a1413..2fcf6c9c84cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -40,7 +40,7 @@ enum pipe intel_crtc_pch_transcoder(struct intel_crtc *crtc)
>
> static void assert_pch_dp_disabled(struct intel_display *display,
> 				   enum pipe pipe, enum port port,
> -				   i915_reg_t dp_reg)
> +				   intel_reg_t dp_reg)
> {
> 	enum pipe port_pipe;
> 	bool state;
> @@ -59,7 +59,7 @@ static void assert_pch_dp_disabled(struct intel_display *display,
>
> static void assert_pch_hdmi_disabled(struct intel_display *display,
> 				     enum pipe pipe, enum port port,
> -				     i915_reg_t hdmi_reg)
> +				     intel_reg_t hdmi_reg)
> {
> 	enum pipe port_pipe;
> 	bool state;
> @@ -115,7 +115,7 @@ static void assert_pch_transcoder_disabled(struct intel_display *display,
> }
>
> static void ibx_sanitize_pch_hdmi_port(struct intel_display *display,
> -				       enum port port, i915_reg_t hdmi_reg)
> +				       enum port port, intel_reg_t hdmi_reg)
> {
> 	u32 val = intel_de_read(display, hdmi_reg);
>
> @@ -134,7 +134,7 @@ static void ibx_sanitize_pch_hdmi_port(struct intel_display *display,
> }
>
> static void ibx_sanitize_pch_dp_port(struct intel_display *display,
> -				     enum port port, i915_reg_t dp_reg)
> +				     enum port port, intel_reg_t dp_reg)
> {
> 	u32 val = intel_de_read(display, dp_reg);
>
> @@ -247,7 +247,7 @@ static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
> 	struct intel_display *display = to_intel_display(crtc_state);
> 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> 	enum pipe pipe = crtc->pipe;
> -	i915_reg_t reg;
> +	intel_reg_t reg;
> 	u32 val, pipeconf_val;
>
> 	/* Make sure PCH DPLL is enabled */
> @@ -313,7 +313,7 @@ static void ilk_disable_pch_transcoder(struct intel_crtc *crtc)
> {
> 	struct intel_display *display = to_intel_display(crtc);
> 	enum pipe pipe = crtc->pipe;
> -	i915_reg_t reg;
> +	intel_reg_t reg;
>
> 	/* FDI relies on the transcoder */
> 	assert_fdi_tx_disabled(display, pipe);
> @@ -417,7 +417,7 @@ void ilk_pch_enable(struct intel_atomic_state *state,
> 			&crtc_state->hw.adjusted_mode;
> 		u32 bpc = (intel_de_read(display, TRANSCONF(display, pipe))
> 			   & TRANSCONF_BPC_MASK) >> 5;
> -		i915_reg_t reg = TRANS_DP_CTL(pipe);
> +		intel_reg_t reg = TRANS_DP_CTL(pipe);
> 		enum port port;
>
> 		temp = intel_de_read(display, reg);
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 2d799af73bb7..ea5e8f75acef 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -488,11 +488,11 @@ void bxt_pps_reset_all(struct intel_display *display)
> }
>
> struct pps_registers {
> -	i915_reg_t pp_ctrl;
> -	i915_reg_t pp_stat;
> -	i915_reg_t pp_on;
> -	i915_reg_t pp_off;
> -	i915_reg_t pp_div;
> +	intel_reg_t pp_ctrl;
> +	intel_reg_t pp_stat;
> +	intel_reg_t pp_on;
> +	intel_reg_t pp_off;
> +	intel_reg_t pp_div;
> };
>
> static void intel_pps_get_registers(struct intel_dp *intel_dp,
> @@ -523,7 +523,7 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
> 		regs->pp_div = PP_DIVISOR(display, pps_idx);
> }
>
> -static i915_reg_t
> +static intel_reg_t
> _pp_ctrl_reg(struct intel_dp *intel_dp)
> {
> 	struct pps_registers regs;
> @@ -533,7 +533,7 @@ _pp_ctrl_reg(struct intel_dp *intel_dp)
> 	return regs.pp_ctrl;
> }
>
> -static i915_reg_t
> +static intel_reg_t
> _pp_stat_reg(struct intel_dp *intel_dp)
> {
> 	struct pps_registers regs;
> @@ -607,7 +607,7 @@ static void wait_panel_status(struct intel_dp *intel_dp,
> {
> 	struct intel_display *display = to_intel_display(intel_dp);
> 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> -	i915_reg_t pp_stat_reg, pp_ctrl_reg;
> +	intel_reg_t pp_stat_reg, pp_ctrl_reg;
> 	int ret;
> 	u32 val;
>
> @@ -744,7 +744,7 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
> 	struct intel_display *display = to_intel_display(intel_dp);
> 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> 	u32 pp;
> -	i915_reg_t pp_stat_reg, pp_ctrl_reg;
> +	intel_reg_t pp_stat_reg, pp_ctrl_reg;
> 	bool need_to_disable = !intel_dp->pps.want_panel_vdd;
>
> 	if (!intel_dp_is_edp(intel_dp))
> @@ -826,7 +826,7 @@ static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
> 	struct intel_display *display = to_intel_display(intel_dp);
> 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> 	u32 pp;
> -	i915_reg_t pp_stat_reg, pp_ctrl_reg;
> +	intel_reg_t pp_stat_reg, pp_ctrl_reg;
>
> 	lockdep_assert_held(&display->pps.mutex);
>
> @@ -955,7 +955,7 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
> {
> 	struct intel_display *display = to_intel_display(intel_dp);
> 	u32 pp;
> -	i915_reg_t pp_ctrl_reg;
> +	intel_reg_t pp_ctrl_reg;
>
> 	lockdep_assert_held(&display->pps.mutex);
>
> @@ -1028,7 +1028,7 @@ void intel_pps_off_unlocked(struct intel_dp *intel_dp)
> 	struct intel_display *display = to_intel_display(intel_dp);
> 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> 	u32 pp;
> -	i915_reg_t pp_ctrl_reg;
> +	intel_reg_t pp_ctrl_reg;
>
> 	lockdep_assert_held(&display->pps.mutex);
>
> @@ -1091,7 +1091,7 @@ void intel_pps_backlight_on(struct intel_dp *intel_dp)
> 	wait_backlight_on(intel_dp);
>
> 	with_intel_pps_lock(intel_dp) {
> -		i915_reg_t pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
> +		intel_reg_t pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
> 		u32 pp;
>
> 		pp = ilk_get_pp_control(intel_dp);
> @@ -1111,7 +1111,7 @@ void intel_pps_backlight_off(struct intel_dp *intel_dp)
> 		return;
>
> 	with_intel_pps_lock(intel_dp) {
> -		i915_reg_t pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
> +		intel_reg_t pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
> 		u32 pp;
>
> 		pp = ilk_get_pp_control(intel_dp);
> @@ -1155,7 +1155,7 @@ static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
> 	struct intel_display *display = to_intel_display(intel_dp);
> 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> 	enum pipe pipe = intel_dp->pps.vlv_pps_pipe;
> -	i915_reg_t pp_on_reg = PP_ON_DELAYS(display, pipe);
> +	intel_reg_t pp_on_reg = PP_ON_DELAYS(display, pipe);
>
> 	drm_WARN_ON(display->drm, intel_dp->pps.vlv_active_pipe != INVALID_PIPE);
>
> @@ -1814,7 +1814,7 @@ void intel_pps_connector_debugfs_add(struct intel_connector *connector)
>
> void assert_pps_unlocked(struct intel_display *display, enum pipe pipe)
> {
> -	i915_reg_t pp_reg;
> +	intel_reg_t pp_reg;
> 	u32 val;
> 	enum pipe panel_pipe = INVALID_PIPE;
> 	bool locked = true;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index a927b73c3f6e..b05d7f01e8f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -303,8 +303,8 @@ static u32 psr_irq_mask_get(struct intel_dp *intel_dp)
> 		EDP_PSR_MASK(intel_dp->psr.transcoder);
> }
>
> -static i915_reg_t psr_ctl_reg(struct intel_display *display,
> -			      enum transcoder cpu_transcoder)
> +static intel_reg_t psr_ctl_reg(struct intel_display *display,
> +			       enum transcoder cpu_transcoder)
> {
> 	if (DISPLAY_VER(display) >= 8)
> 		return EDP_PSR_CTL(display, cpu_transcoder);
> @@ -312,8 +312,8 @@ static i915_reg_t psr_ctl_reg(struct intel_display *display,
> 		return HSW_SRD_CTL;
> }
>
> -static i915_reg_t psr_debug_reg(struct intel_display *display,
> -				enum transcoder cpu_transcoder)
> +static intel_reg_t psr_debug_reg(struct intel_display *display,
> +				 enum transcoder cpu_transcoder)
> {
> 	if (DISPLAY_VER(display) >= 8)
> 		return EDP_PSR_DEBUG(display, cpu_transcoder);
> @@ -321,8 +321,8 @@ static i915_reg_t psr_debug_reg(struct intel_display *display,
> 		return HSW_SRD_DEBUG;
> }
>
> -static i915_reg_t psr_perf_cnt_reg(struct intel_display *display,
> -				   enum transcoder cpu_transcoder)
> +static intel_reg_t psr_perf_cnt_reg(struct intel_display *display,
> +				    enum transcoder cpu_transcoder)
> {
> 	if (DISPLAY_VER(display) >= 8)
> 		return EDP_PSR_PERF_CNT(display, cpu_transcoder);
> @@ -330,8 +330,8 @@ static i915_reg_t psr_perf_cnt_reg(struct intel_display *display,
> 		return HSW_SRD_PERF_CNT;
> }
>
> -static i915_reg_t psr_status_reg(struct intel_display *display,
> -				 enum transcoder cpu_transcoder)
> +static intel_reg_t psr_status_reg(struct intel_display *display,
> +				  enum transcoder cpu_transcoder)
> {
> 	if (DISPLAY_VER(display) >= 8)
> 		return EDP_PSR_STATUS(display, cpu_transcoder);
> @@ -339,8 +339,8 @@ static i915_reg_t psr_status_reg(struct intel_display *display,
> 		return HSW_SRD_STATUS;
> }
>
> -static i915_reg_t psr_imr_reg(struct intel_display *display,
> -			      enum transcoder cpu_transcoder)
> +static intel_reg_t psr_imr_reg(struct intel_display *display,
> +			       enum transcoder cpu_transcoder)
> {
> 	if (DISPLAY_VER(display) >= 12)
> 		return TRANS_PSR_IMR(display, cpu_transcoder);
> @@ -348,8 +348,8 @@ static i915_reg_t psr_imr_reg(struct intel_display *display,
> 		return EDP_PSR_IMR;
> }
>
> -static i915_reg_t psr_iir_reg(struct intel_display *display,
> -			      enum transcoder cpu_transcoder)
> +static intel_reg_t psr_iir_reg(struct intel_display *display,
> +			       enum transcoder cpu_transcoder)
> {
> 	if (DISPLAY_VER(display) >= 12)
> 		return TRANS_PSR_IIR(display, cpu_transcoder);
> @@ -357,8 +357,8 @@ static i915_reg_t psr_iir_reg(struct intel_display *display,
> 		return EDP_PSR_IIR;
> }
>
> -static i915_reg_t psr_aux_ctl_reg(struct intel_display *display,
> -				  enum transcoder cpu_transcoder)
> +static intel_reg_t psr_aux_ctl_reg(struct intel_display *display,
> +				   enum transcoder cpu_transcoder)
> {
> 	if (DISPLAY_VER(display) >= 8)
> 		return EDP_PSR_AUX_CTL(display, cpu_transcoder);
> @@ -366,8 +366,8 @@ static i915_reg_t psr_aux_ctl_reg(struct intel_display *display,
> 		return HSW_SRD_AUX_CTL;
> }
>
> -static i915_reg_t psr_aux_data_reg(struct intel_display *display,
> -				   enum transcoder cpu_transcoder, int i)
> +static intel_reg_t psr_aux_data_reg(struct intel_display *display,
> +				    enum transcoder cpu_transcoder, int i)
> {
> 	if (DISPLAY_VER(display) >= 8)
> 		return EDP_PSR_AUX_DATA(display, cpu_transcoder, i);
> @@ -2316,7 +2316,7 @@ static void intel_psr_wait_exit_locked(struct intel_dp *intel_dp)
> {
> 	struct intel_display *display = to_intel_display(intel_dp);
> 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
> -	i915_reg_t psr_status;
> +	intel_reg_t psr_status;
> 	u32 psr_status_mask;
>
> 	if (intel_dp_is_edp(intel_dp) && (intel_dp->psr.sel_update_enabled ||
> @@ -3347,7 +3347,7 @@ static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
> {
> 	struct intel_display *display = to_intel_display(intel_dp);
> 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
> -	i915_reg_t reg;
> +	intel_reg_t reg;
> 	u32 mask;
> 	int err;
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index 2e1af9e869de..56005b046f00 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -101,7 +101,7 @@ struct intel_sdvo {
> 	struct intel_sdvo_ddc ddc[3];
>
> 	/* Register for the SDVO device: SDVOB or SDVOC */
> -	i915_reg_t sdvo_reg;
> +	intel_reg_t sdvo_reg;
>
> 	/*
> 	 * Capabilities of the SDVO device returned by
> @@ -1665,7 +1665,7 @@ static bool intel_sdvo_connector_get_hw_state(struct intel_connector *connector)
> }
>
> bool intel_sdvo_port_enabled(struct intel_display *display,
> -			     i915_reg_t sdvo_reg, enum pipe *pipe)
> +			     intel_reg_t sdvo_reg, enum pipe *pipe)
> {
> 	u32 val;
>
> @@ -3377,7 +3377,7 @@ static bool assert_sdvo_port_valid(struct intel_display *display, enum port port
> }
>
> bool intel_sdvo_init(struct intel_display *display,
> -		     i915_reg_t sdvo_reg, enum port port)
> +		     intel_reg_t sdvo_reg, enum port port)
> {
> 	struct intel_encoder *intel_encoder;
> 	struct intel_sdvo *intel_sdvo;
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.h b/drivers/gpu/drm/i915/display/intel_sdvo.h
> index 1a9e40fdd8a8..d1e1083de037 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.h
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.h
> @@ -8,7 +8,7 @@
>
> #include <linux/types.h>
>
> -#include "i915_reg_defs.h"
> +#include "intel_display_reg_defs.h"
>
> enum pipe;
> enum port;
> @@ -16,17 +16,17 @@ struct intel_display;
>
> #ifdef I915
> bool intel_sdvo_port_enabled(struct intel_display *display,
> -			     i915_reg_t sdvo_reg, enum pipe *pipe);
> +			     intel_reg_t sdvo_reg, enum pipe *pipe);
> bool intel_sdvo_init(struct intel_display *display,
> -		     i915_reg_t reg, enum port port);
> +		     intel_reg_t reg, enum port port);
> #else
> static inline bool intel_sdvo_port_enabled(struct intel_display *display,
> -					   i915_reg_t sdvo_reg, enum pipe *pipe)
> +					   intel_reg_t sdvo_reg, enum pipe *pipe)
> {
> 	return false;
> }
> static inline bool intel_sdvo_init(struct intel_display *display,
> -				   i915_reg_t reg, enum port port)
> +				   intel_reg_t reg, enum port port)
> {
> 	return false;
> }
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> index 295030742294..8e883f1a014c 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -1822,7 +1822,7 @@ void intel_mpllb_enable(struct intel_encoder *encoder,
> 	struct intel_display *display = to_intel_display(encoder);
> 	const struct intel_mpllb_state *pll_state = &crtc_state->dpll_hw_state.mpllb;
> 	enum phy phy = intel_encoder_to_phy(encoder);
> -	i915_reg_t enable_reg = (phy <= PHY_D ?
> +	intel_reg_t enable_reg = (phy <= PHY_D ?
> 				 DG2_PLL_ENABLE(phy) : MG_PLL_ENABLE(0));
>
> 	/*
> @@ -1879,7 +1879,7 @@ void intel_mpllb_disable(struct intel_encoder *encoder)
> {
> 	struct intel_display *display = to_intel_display(encoder);
> 	enum phy phy = intel_encoder_to_phy(encoder);
> -	i915_reg_t enable_reg = (phy <= PHY_D ?
> +	intel_reg_t enable_reg = (phy <= PHY_D ?
> 				 DG2_PLL_ENABLE(phy) : MG_PLL_ENABLE(0));
>
> 	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index a21dd4e3fe4c..ef1cf62749ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -294,7 +294,7 @@ get_pin_assignment(struct intel_tc_port *tc)
> 	struct intel_display *display = to_intel_display(tc->dig_port);
> 	enum tc_port tc_port = intel_encoder_to_tc(&tc->dig_port->base);
> 	enum intel_tc_pin_assignment pin_assignment;
> -	i915_reg_t reg;
> +	intel_reg_t reg;
> 	u32 mask;
> 	u32 val;
>
> @@ -1034,7 +1034,7 @@ xelpdp_tc_phy_tcss_power_is_enabled(struct intel_tc_port *tc)
> {
> 	struct intel_display *display = to_intel_display(tc->dig_port);
> 	enum port port = tc->dig_port->base.port;
> -	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(display, port);
> +	intel_reg_t reg = XELPDP_PORT_BUF_CTL1(display, port);
>
> 	assert_tc_cold_blocked(tc);
>
> @@ -1094,7 +1094,7 @@ static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool ena
> {
> 	struct intel_display *display = to_intel_display(tc->dig_port);
> 	enum port port = tc->dig_port->base.port;
> -	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(display, port);
> +	intel_reg_t reg = XELPDP_PORT_BUF_CTL1(display, port);
> 	u32 val;
>
> 	assert_tc_cold_blocked(tc);
> @@ -1141,7 +1141,7 @@ static void xelpdp_tc_phy_take_ownership(struct intel_tc_port *tc, bool take)
> {
> 	struct intel_display *display = to_intel_display(tc->dig_port);
> 	enum port port = tc->dig_port->base.port;
> -	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(display, port);
> +	intel_reg_t reg = XELPDP_PORT_BUF_CTL1(display, port);
> 	u32 val;
>
> 	assert_tc_cold_blocked(tc);
> @@ -1158,7 +1158,7 @@ static bool xelpdp_tc_phy_is_owned(struct intel_tc_port *tc)
> {
> 	struct intel_display *display = to_intel_display(tc->dig_port);
> 	enum port port = tc->dig_port->base.port;
> -	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(display, port);
> +	intel_reg_t reg = XELPDP_PORT_BUF_CTL1(display, port);
>
> 	assert_tc_cold_blocked(tc);
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 0726a2abed38..28d81199792e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -482,7 +482,7 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
> static bool pipe_scanline_is_moving(struct intel_display *display,
> 				    enum pipe pipe)
> {
> -	i915_reg_t reg = PIPEDSL(display, pipe);
> +	intel_reg_t reg = PIPEDSL(display, pipe);
> 	u32 line1, line2;
>
> 	line1 = intel_de_read(display, reg) & PIPEDSL_LINE_MASK;
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 6c09c6d99ffe..8f06c3a4d56d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -483,7 +483,7 @@ int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
> }
>
> static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_state, int pps,
> -				  i915_reg_t *dsc_reg, int dsc_reg_num)
> +				  intel_reg_t *dsc_reg, int dsc_reg_num)
> {
> 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> @@ -506,7 +506,7 @@ static void intel_dsc_pps_write(const struct intel_crtc_state *crtc_state,
> 				int pps, u32 pps_val)
> {
> 	struct intel_display *display = to_intel_display(crtc_state);
> -	i915_reg_t dsc_reg[3];
> +	intel_reg_t dsc_reg[3];
> 	int i, vdsc_per_pipe, dsc_reg_num;
>
> 	vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
> @@ -843,13 +843,13 @@ void intel_dsc_su_et_parameters_configure(struct intel_dsb *dsb, struct intel_en
> 		intel_de_write_dsb(display, dsb, LNL_DSC1_SU_PARAMETER_SET_0(pipe), val);
> }
>
> -static i915_reg_t dss_ctl1_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
> +static intel_reg_t dss_ctl1_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
> {
> 	return is_pipe_dsc(crtc, cpu_transcoder) ?
> 		ICL_PIPE_DSS_CTL1(crtc->pipe) : DSS_CTL1;
> }
>
> -static i915_reg_t dss_ctl2_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
> +static intel_reg_t dss_ctl2_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
> {
> 	return is_pipe_dsc(crtc, cpu_transcoder) ?
> 		ICL_PIPE_DSS_CTL2(crtc->pipe) : DSS_CTL2;
> @@ -929,7 +929,7 @@ static u32 intel_dsc_pps_read(struct intel_crtc_state *crtc_state, int pps,
> 			      bool *all_equal)
> {
> 	struct intel_display *display = to_intel_display(crtc_state);
> -	i915_reg_t dsc_reg[3];
> +	intel_reg_t dsc_reg[3];
> 	int i, vdsc_per_pipe, dsc_reg_num;
> 	u32 val;
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
> index 9832a4ade318..4966fd7eea92 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -35,7 +35,7 @@ static bool intel_vga_decode_is_enabled(struct intel_display *display)
> 	return !(gmch_ctrl & INTEL_GMCH_VGA_DISABLE);
> }
>
> -static i915_reg_t intel_vga_cntrl_reg(struct intel_display *display)
> +static intel_reg_t intel_vga_cntrl_reg(struct intel_display *display)
> {
> 	if (display->platform.valleyview || display->platform.cherryview)
> 		return VLV_VGACNTRL;
> @@ -179,7 +179,7 @@ static void intel_vga_write(struct intel_display *display, u16 reg, u8 val, bool
> void intel_vga_disable(struct intel_display *display)
> {
> 	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
> -	i915_reg_t vga_reg = intel_vga_cntrl_reg(display);
> +	intel_reg_t vga_reg = intel_vga_cntrl_reg(display);
> 	bool mmio = has_vga_mmio_access(display);
> 	bool io_decode;
> 	u8 msr, sr1;
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index 76e8cd0f65a4..877eab75f19a 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -99,7 +99,7 @@ void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port port)
> }
>
> static void write_data(struct intel_display *display,
> -		       i915_reg_t reg,
> +		       intel_reg_t reg,
> 		       const u8 *data, u32 len)
> {
> 	u32 i, j;
> @@ -115,7 +115,7 @@ static void write_data(struct intel_display *display,
> }
>
> static void read_data(struct intel_display *display,
> -		      i915_reg_t reg,
> +		      intel_reg_t reg,
> 		      u8 *data, u32 len)
> {
> 	u32 i, j;
> @@ -138,7 +138,7 @@ static ssize_t intel_dsi_host_transfer(struct mipi_dsi_host *host,
> 	struct mipi_dsi_packet packet;
> 	ssize_t ret;
> 	const u8 *header;
> -	i915_reg_t data_reg, ctrl_reg;
> +	intel_reg_t data_reg, ctrl_reg;
> 	u32 data_mask, ctrl_mask;
>
> 	ret = mipi_dsi_create_packet(&packet, msg);
> @@ -559,7 +559,7 @@ static void glk_dsi_clear_device_ready(struct intel_encoder *encoder)
> 	glk_dsi_disable_mipi_io(encoder);
> }
>
> -static i915_reg_t port_ctrl_reg(struct intel_display *display, enum port port)
> +static intel_reg_t port_ctrl_reg(struct intel_display *display, enum port port)
> {
> 	return display->platform.geminilake || display->platform.broxton ?
> 		BXT_MIPI_PORT_CTRL(port) : VLV_MIPI_PORT_CTRL(port);
> @@ -574,7 +574,7 @@ static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
> 	drm_dbg_kms(display->drm, "\n");
> 	for_each_dsi_port(port, intel_dsi->ports) {
> 		/* Common bit for both MIPI Port A & MIPI Port C on VLV/CHV */
> -		i915_reg_t port_ctrl = display->platform.broxton ?
> +		intel_reg_t port_ctrl = display->platform.broxton ?
> 			BXT_MIPI_PORT_CTRL(port) : VLV_MIPI_PORT_CTRL(PORT_A);
>
> 		intel_de_write(display, MIPI_DEVICE_READY(display, port),
> @@ -631,7 +631,7 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
> 	}
>
> 	for_each_dsi_port(port, intel_dsi->ports) {
> -		i915_reg_t port_ctrl = port_ctrl_reg(display, port);
> +		intel_reg_t port_ctrl = port_ctrl_reg(display, port);
> 		u32 temp;
>
> 		temp = intel_de_read(display, port_ctrl);
> @@ -666,7 +666,7 @@ static void intel_dsi_port_disable(struct intel_encoder *encoder)
> 	enum port port;
>
> 	for_each_dsi_port(port, intel_dsi->ports) {
> -		i915_reg_t port_ctrl = port_ctrl_reg(display, port);
> +		intel_reg_t port_ctrl = port_ctrl_reg(display, port);
>
> 		/* de-assert ip_tg_enable signal */
> 		intel_de_rmw(display, port_ctrl, DPI_ENABLE, 0);
> @@ -957,7 +957,7 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
>
> 	/* XXX: this only works for one DSI output */
> 	for_each_dsi_port(port, intel_dsi->ports) {
> -		i915_reg_t port_ctrl = port_ctrl_reg(display, port);
> +		intel_reg_t port_ctrl = port_ctrl_reg(display, port);
> 		bool enabled = intel_de_read(display, port_ctrl) & DPI_ENABLE;
>
> 		/*
> -- 
> 2.47.3
>
>
--8323329-373203919-1777932508=:12090--
