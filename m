Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 416ECB22235
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 11:00:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1AF410E101;
	Tue, 12 Aug 2025 09:00:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mMwRsfXW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2E2410E101;
 Tue, 12 Aug 2025 09:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754989201; x=1786525201;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=9aOPAs5puAtklPuYbcZrHhAbSyQJnoOPJjj0JEHpCCs=;
 b=mMwRsfXWYGj5q8uh3y97VTbate+3PcsAmahnWXPBcDRT/KZlxPIxplL4
 TRx56XygqACDSVmFcnLrwXaOY6yBzBj2bRpxqxx3Ozn3d4MS3aG6KCLu5
 KtExH8im+kT4HXJm4oQxuL6D3l9Lsg+uQykugpA6dLcur+JXoWLs0qjUj
 Y2zi8MrV1Rer3PZMAOvUd36YKJY7+YzpYzNy/Jf/LDSkpa23c0Cs2JzwN
 oD6bmAI6OBuLJzpUb+OR9AZdNOURv/vZnXk9vZMfwWz5N6jcs06sXnL48
 VW7lCsx6qAA94pkaj24yomUORu0Oikche3AkA6HjGxF3A3q1YWnR3LYBH A==;
X-CSE-ConnectionGUID: TnR7trx6TyqvUrH1MLsJFg==
X-CSE-MsgGUID: VTkzK/jDT5iQrcSDcJHnqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="56972161"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="56972161"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 02:00:01 -0700
X-CSE-ConnectionGUID: 6IFgI63JS9Ce9lIZiurSSQ==
X-CSE-MsgGUID: OvkcvalJTb+/A+Yi3OIMYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="166144887"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.12])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 02:00:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 1/4] drm/i915/vbt: split up DSI VBT defs to a separate file
In-Reply-To: <DM3PPF208195D8D656DAF14AD40FAB681E7E32BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1754925923.git.jani.nikula@intel.com>
 <84417e0141f98ae8f8c7a66e9002c3e99c9ed3db.1754925923.git.jani.nikula@intel.com>
 <DM3PPF208195D8D656DAF14AD40FAB681E7E32BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Date: Tue, 12 Aug 2025 11:59:56 +0300
Message-ID: <9d0c69a001b45df21bc16e62fde57110364d81b7@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Tue, 12 Aug 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> Subject: [PATCH 1/4] drm/i915/vbt: split up DSI VBT defs to a separate f=
ile
>>=20
>> The DSI VBT definitions have ended up in intel_bios.h, because intel_vbt=
_defs.h
>> is supposed to be internal to intel_bios.c, but the DSI VBT definitions =
are
>> needed in more places.
>>=20
>> Split out the DSI VBT definitions to intel_dsi_vbt_defs.h. This will als=
o help keep
>> the definitions in sync with IGT.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks for the reviews, series pushed to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.h     | 174 -----------------
>>  .../drm/i915/display/intel_display_types.h    |   1 +
>>  .../gpu/drm/i915/display/intel_dsi_vbt_defs.h | 183 ++++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |   2 +-
>>  4 files changed, 185 insertions(+), 175 deletions(-)  create mode 100644
>> drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h
>> b/drivers/gpu/drm/i915/display/intel_bios.h
>> index 6cd7a011b8c4..8fdde85f7939 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.h
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
>> @@ -50,180 +50,6 @@ enum intel_backlight_type {
>>  	INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE,
>>  };
>>=20
>> -/*
>> - * MIPI Sequence Block definitions
>> - *
>> - * Note the VBT spec has AssertReset / DeassertReset swapped from their
>> - * usual naming, we use the proper names here to avoid confusion when
>> - * reading the code.
>> - */
>> -enum mipi_seq {
>> -	MIPI_SEQ_END =3D 0,
>> -	MIPI_SEQ_DEASSERT_RESET,	/* Spec says MipiAssertResetPin */
>> -	MIPI_SEQ_INIT_OTP,
>> -	MIPI_SEQ_DISPLAY_ON,
>> -	MIPI_SEQ_DISPLAY_OFF,
>> -	MIPI_SEQ_ASSERT_RESET,		/* Spec says
>> MipiDeassertResetPin */
>> -	MIPI_SEQ_BACKLIGHT_ON,		/* sequence block v2+ */
>> -	MIPI_SEQ_BACKLIGHT_OFF,		/* sequence block v2+ */
>> -	MIPI_SEQ_TEAR_ON,		/* sequence block v2+ */
>> -	MIPI_SEQ_TEAR_OFF,		/* sequence block v3+ */
>> -	MIPI_SEQ_POWER_ON,		/* sequence block v3+ */
>> -	MIPI_SEQ_POWER_OFF,		/* sequence block v3+ */
>> -	MIPI_SEQ_MAX
>> -};
>> -
>> -enum mipi_seq_element {
>> -	MIPI_SEQ_ELEM_END =3D 0,
>> -	MIPI_SEQ_ELEM_SEND_PKT,
>> -	MIPI_SEQ_ELEM_DELAY,
>> -	MIPI_SEQ_ELEM_GPIO,
>> -	MIPI_SEQ_ELEM_I2C,		/* sequence block v2+ */
>> -	MIPI_SEQ_ELEM_SPI,		/* sequence block v3+ */
>> -	MIPI_SEQ_ELEM_PMIC,		/* sequence block v3+ */
>> -	MIPI_SEQ_ELEM_MAX
>> -};
>> -
>> -#define MIPI_DSI_UNDEFINED_PANEL_ID	0
>> -#define MIPI_DSI_GENERIC_PANEL_ID	1
>> -
>> -struct mipi_config {
>> -	u16 panel_id;
>> -
>> -	/* General Params */
>> -	u32 enable_dithering:1;
>> -	u32 rsvd1:1;
>> -	u32 is_bridge:1;
>> -
>> -	u32 panel_arch_type:2;
>> -	u32 is_cmd_mode:1;
>> -
>> -#define NON_BURST_SYNC_PULSE	0x1
>> -#define NON_BURST_SYNC_EVENTS	0x2
>> -#define BURST_MODE		0x3
>> -	u32 video_transfer_mode:2;
>> -
>> -	u32 cabc_supported:1;
>> -#define PPS_BLC_PMIC   0
>> -#define PPS_BLC_SOC    1
>> -	u32 pwm_blc:1;
>> -
>> -	/* Bit 13:10 */
>> -#define PIXEL_FORMAT_RGB565			0x1
>> -#define PIXEL_FORMAT_RGB666			0x2
>> -#define PIXEL_FORMAT_RGB666_LOOSELY_PACKED	0x3
>> -#define PIXEL_FORMAT_RGB888			0x4
>> -	u32 videomode_color_format:4;
>> -
>> -	/* Bit 15:14 */
>> -#define ENABLE_ROTATION_0	0x0
>> -#define ENABLE_ROTATION_90	0x1
>> -#define ENABLE_ROTATION_180	0x2
>> -#define ENABLE_ROTATION_270	0x3
>> -	u32 rotation:2;
>> -	u32 bta_enabled:1;
>> -	u32 rsvd2:15;
>> -
>> -	/* 2 byte Port Description */
>> -#define DUAL_LINK_NOT_SUPPORTED	0
>> -#define DUAL_LINK_FRONT_BACK	1
>> -#define DUAL_LINK_PIXEL_ALT	2
>> -	u16 dual_link:2;
>> -	u16 lane_cnt:2;
>> -	u16 pixel_overlap:3;
>> -	u16 rgb_flip:1;
>> -#define DL_DCS_PORT_A			0x00
>> -#define DL_DCS_PORT_C			0x01
>> -#define DL_DCS_PORT_A_AND_C		0x02
>> -	u16 dl_dcs_cabc_ports:2;
>> -	u16 dl_dcs_backlight_ports:2;
>> -	u16 rsvd3:4;
>> -
>> -	u16 rsvd4;
>> -
>> -	u8 rsvd5;
>> -	u32 target_burst_mode_freq;
>> -	u32 dsi_ddr_clk;
>> -	u32 bridge_ref_clk;
>> -
>> -#define  BYTE_CLK_SEL_20MHZ		0
>> -#define  BYTE_CLK_SEL_10MHZ		1
>> -#define  BYTE_CLK_SEL_5MHZ		2
>> -	u8 byte_clk_sel:2;
>> -
>> -	u8 rsvd6:6;
>> -
>> -	/* DPHY Flags */
>> -	u16 dphy_param_valid:1;
>> -	u16 eot_pkt_disabled:1;
>> -	u16 enable_clk_stop:1;
>> -	u16 rsvd7:13;
>> -
>> -	u32 hs_tx_timeout;
>> -	u32 lp_rx_timeout;
>> -	u32 turn_around_timeout;
>> -	u32 device_reset_timer;
>> -	u32 master_init_timer;
>> -	u32 dbi_bw_timer;
>> -	u32 lp_byte_clk_val;
>> -
>> -	/*  4 byte Dphy Params */
>> -	u32 prepare_cnt:6;
>> -	u32 rsvd8:2;
>> -	u32 clk_zero_cnt:8;
>> -	u32 trail_cnt:5;
>> -	u32 rsvd9:3;
>> -	u32 exit_zero_cnt:6;
>> -	u32 rsvd10:2;
>> -
>> -	u32 clk_lane_switch_cnt;
>> -	u32 hl_switch_cnt;
>> -
>> -	u32 rsvd11[6];
>> -
>> -	/* timings based on dphy spec */
>> -	u8 tclk_miss;
>> -	u8 tclk_post;
>> -	u8 rsvd12;
>> -	u8 tclk_pre;
>> -	u8 tclk_prepare;
>> -	u8 tclk_settle;
>> -	u8 tclk_term_enable;
>> -	u8 tclk_trail;
>> -	u16 tclk_prepare_clkzero;
>> -	u8 rsvd13;
>> -	u8 td_term_enable;
>> -	u8 teot;
>> -	u8 ths_exit;
>> -	u8 ths_prepare;
>> -	u16 ths_prepare_hszero;
>> -	u8 rsvd14;
>> -	u8 ths_settle;
>> -	u8 ths_skip;
>> -	u8 ths_trail;
>> -	u8 tinit;
>> -	u8 tlpx;
>> -	u8 rsvd15[3];
>> -
>> -	/* GPIOs */
>> -	u8 panel_enable;
>> -	u8 bl_enable;
>> -	u8 pwm_enable;
>> -	u8 reset_r_n;
>> -	u8 pwr_down_r;
>> -	u8 stdby_r_n;
>> -
>> -} __packed;
>> -
>> -/* all delays have a unit of 100us */
>> -struct mipi_pps_data {
>> -	u16 panel_on_delay;
>> -	u16 bl_enable_delay;
>> -	u16 bl_disable_delay;
>> -	u16 panel_off_delay;
>> -	u16 panel_power_cycle_delay;
>> -} __packed;
>> -
>>  void intel_bios_init(struct intel_display *display);  void
>> intel_bios_init_panel_early(struct intel_display *display,
>>  				 struct intel_panel *panel,
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 35596f3921e8..0d945d1fedd6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -50,6 +50,7 @@
>>  #include "intel_display_limits.h"
>>  #include "intel_display_power.h"
>>  #include "intel_dpll_mgr.h"
>> +#include "intel_dsi_vbt_defs.h"
>>  #include "intel_wm_types.h"
>>=20
>>  struct cec_notifier;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
>> b/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
>> new file mode 100644
>> index 000000000000..f83d42ed0c5a
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
>> @@ -0,0 +1,183 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/* Copyright =C2=A9 2025 Intel Corporation */
>> +
>> +#ifndef __INTEL_DSI_VBT_DEFS_H__
>> +#define __INTEL_DSI_VBT_DEFS_H__
>> +
>> +#include <linux/types.h>
>> +
>> +/*
>> + * MIPI Sequence Block definitions
>> + *
>> + * Note the VBT spec has AssertReset / DeassertReset swapped from their
>> + * usual naming, we use the proper names here to avoid confusion when
>> + * reading the code.
>> + */
>> +enum mipi_seq {
>> +	MIPI_SEQ_END =3D 0,
>> +	MIPI_SEQ_DEASSERT_RESET,	/* Spec says MipiAssertResetPin */
>> +	MIPI_SEQ_INIT_OTP,
>> +	MIPI_SEQ_DISPLAY_ON,
>> +	MIPI_SEQ_DISPLAY_OFF,
>> +	MIPI_SEQ_ASSERT_RESET,		/* Spec says
>> MipiDeassertResetPin */
>> +	MIPI_SEQ_BACKLIGHT_ON,		/* sequence block v2+ */
>> +	MIPI_SEQ_BACKLIGHT_OFF,		/* sequence block v2+ */
>> +	MIPI_SEQ_TEAR_ON,		/* sequence block v2+ */
>> +	MIPI_SEQ_TEAR_OFF,		/* sequence block v3+ */
>> +	MIPI_SEQ_POWER_ON,		/* sequence block v3+ */
>> +	MIPI_SEQ_POWER_OFF,		/* sequence block v3+ */
>> +	MIPI_SEQ_MAX
>> +};
>> +
>> +enum mipi_seq_element {
>> +	MIPI_SEQ_ELEM_END =3D 0,
>> +	MIPI_SEQ_ELEM_SEND_PKT,
>> +	MIPI_SEQ_ELEM_DELAY,
>> +	MIPI_SEQ_ELEM_GPIO,
>> +	MIPI_SEQ_ELEM_I2C,		/* sequence block v2+ */
>> +	MIPI_SEQ_ELEM_SPI,		/* sequence block v3+ */
>> +	MIPI_SEQ_ELEM_PMIC,		/* sequence block v3+ */
>> +	MIPI_SEQ_ELEM_MAX
>> +};
>> +
>> +#define MIPI_DSI_UNDEFINED_PANEL_ID	0
>> +#define MIPI_DSI_GENERIC_PANEL_ID	1
>> +
>> +struct mipi_config {
>> +	u16 panel_id;
>> +
>> +	/* General Params */
>> +	u32 enable_dithering:1;
>> +	u32 rsvd1:1;
>> +	u32 is_bridge:1;
>> +
>> +	u32 panel_arch_type:2;
>> +	u32 is_cmd_mode:1;
>> +
>> +#define NON_BURST_SYNC_PULSE	0x1
>> +#define NON_BURST_SYNC_EVENTS	0x2
>> +#define BURST_MODE		0x3
>> +	u32 video_transfer_mode:2;
>> +
>> +	u32 cabc_supported:1;
>> +#define PPS_BLC_PMIC   0
>> +#define PPS_BLC_SOC    1
>> +	u32 pwm_blc:1;
>> +
>> +	/* Bit 13:10 */
>> +#define PIXEL_FORMAT_RGB565			0x1
>> +#define PIXEL_FORMAT_RGB666			0x2
>> +#define PIXEL_FORMAT_RGB666_LOOSELY_PACKED	0x3
>> +#define PIXEL_FORMAT_RGB888			0x4
>> +	u32 videomode_color_format:4;
>> +
>> +	/* Bit 15:14 */
>> +#define ENABLE_ROTATION_0	0x0
>> +#define ENABLE_ROTATION_90	0x1
>> +#define ENABLE_ROTATION_180	0x2
>> +#define ENABLE_ROTATION_270	0x3
>> +	u32 rotation:2;
>> +	u32 bta_enabled:1;
>> +	u32 rsvd2:15;
>> +
>> +	/* 2 byte Port Description */
>> +#define DUAL_LINK_NOT_SUPPORTED	0
>> +#define DUAL_LINK_FRONT_BACK	1
>> +#define DUAL_LINK_PIXEL_ALT	2
>> +	u16 dual_link:2;
>> +	u16 lane_cnt:2;
>> +	u16 pixel_overlap:3;
>> +	u16 rgb_flip:1;
>> +#define DL_DCS_PORT_A			0x00
>> +#define DL_DCS_PORT_C			0x01
>> +#define DL_DCS_PORT_A_AND_C		0x02
>> +	u16 dl_dcs_cabc_ports:2;
>> +	u16 dl_dcs_backlight_ports:2;
>> +	u16 rsvd3:4;
>> +
>> +	u16 rsvd4;
>> +
>> +	u8 rsvd5;
>> +	u32 target_burst_mode_freq;
>> +	u32 dsi_ddr_clk;
>> +	u32 bridge_ref_clk;
>> +
>> +#define  BYTE_CLK_SEL_20MHZ		0
>> +#define  BYTE_CLK_SEL_10MHZ		1
>> +#define  BYTE_CLK_SEL_5MHZ		2
>> +	u8 byte_clk_sel:2;
>> +
>> +	u8 rsvd6:6;
>> +
>> +	/* DPHY Flags */
>> +	u16 dphy_param_valid:1;
>> +	u16 eot_pkt_disabled:1;
>> +	u16 enable_clk_stop:1;
>> +	u16 rsvd7:13;
>> +
>> +	u32 hs_tx_timeout;
>> +	u32 lp_rx_timeout;
>> +	u32 turn_around_timeout;
>> +	u32 device_reset_timer;
>> +	u32 master_init_timer;
>> +	u32 dbi_bw_timer;
>> +	u32 lp_byte_clk_val;
>> +
>> +	/*  4 byte Dphy Params */
>> +	u32 prepare_cnt:6;
>> +	u32 rsvd8:2;
>> +	u32 clk_zero_cnt:8;
>> +	u32 trail_cnt:5;
>> +	u32 rsvd9:3;
>> +	u32 exit_zero_cnt:6;
>> +	u32 rsvd10:2;
>> +
>> +	u32 clk_lane_switch_cnt;
>> +	u32 hl_switch_cnt;
>> +
>> +	u32 rsvd11[6];
>> +
>> +	/* timings based on dphy spec */
>> +	u8 tclk_miss;
>> +	u8 tclk_post;
>> +	u8 rsvd12;
>> +	u8 tclk_pre;
>> +	u8 tclk_prepare;
>> +	u8 tclk_settle;
>> +	u8 tclk_term_enable;
>> +	u8 tclk_trail;
>> +	u16 tclk_prepare_clkzero;
>> +	u8 rsvd13;
>> +	u8 td_term_enable;
>> +	u8 teot;
>> +	u8 ths_exit;
>> +	u8 ths_prepare;
>> +	u16 ths_prepare_hszero;
>> +	u8 rsvd14;
>> +	u8 ths_settle;
>> +	u8 ths_skip;
>> +	u8 ths_trail;
>> +	u8 tinit;
>> +	u8 tlpx;
>> +	u8 rsvd15[3];
>> +
>> +	/* GPIOs */
>> +	u8 panel_enable;
>> +	u8 bl_enable;
>> +	u8 pwm_enable;
>> +	u8 reset_r_n;
>> +	u8 pwr_down_r;
>> +	u8 stdby_r_n;
>> +
>> +} __packed;
>> +
>> +/* all delays have a unit of 100us */
>> +struct mipi_pps_data {
>> +	u16 panel_on_delay;
>> +	u16 bl_enable_delay;
>> +	u16 bl_disable_delay;
>> +	u16 panel_off_delay;
>> +	u16 panel_power_cycle_delay;
>> +} __packed;
>> +
>> +#endif /* __INTEL_DSI_VBT_DEFS_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> index 92c04811aa28..6612d3a4ec49 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> @@ -37,7 +37,7 @@
>>  #ifndef _INTEL_VBT_DEFS_H_
>>  #define _INTEL_VBT_DEFS_H_
>>=20
>> -#include "intel_bios.h"
>> +#include "intel_dsi_vbt_defs.h"
>>=20
>>  /* EDID derived structures */
>>  struct bdb_edid_pnp_id {
>> --
>> 2.47.2
>

--=20
Jani Nikula, Intel
