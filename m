Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E6C7F67A7
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 20:39:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 349BD10E34B;
	Thu, 23 Nov 2023 19:39:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A42D310E342
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 19:39:30 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-40b2a628c25so906365e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 11:39:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1700768369; x=1701373169; darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=LfK45E04kqEXlexh+j/d5rS9gn3BdPuX5vvm2couBEw=;
 b=icVl++anuteHF9GMXwWS+DdjTYNsscVmPAzaKe04zY9dhRDsEbbdkUaeOxP9nQI0PA
 sGWteoN38PJLz4Jjo5JQYbT38SzgVI2aM0UsNcdGN/7PkjOjYIrBQYR5Xl2S9sUrlQjU
 RZonECtVvUSZpG2jhOWZl6NFppWXqm0IGoTJw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700768369; x=1701373169;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=LfK45E04kqEXlexh+j/d5rS9gn3BdPuX5vvm2couBEw=;
 b=gwzo7ykBg6idYC15DFcAEbEt2uSf+9oP6wWXuY2PbqWDPy3l91o6upkS+hhEV5k06J
 Q3qQAYu8pIQkprbWHAoZ9lw7Wj0s8e9m7z7E5tjxUM4StH6GR5PvFTlBxL3UTpWoGPjj
 Q7dIyWNhMrkerNZ0uv6gkFly9d3/+R3wx0B48xbOjPRbNTx4sKhnuDd6YBV/Qt8CYjb1
 ekEK9eW3z7WFHnlpIHwyyF5V5JRb+vDcib52y4ncZNJQp1Yd2kqf5TiPN1WiY1V3lYhn
 I6Pl+FvKeYZgGguqRuu+QsRVO8kV3U547yg2ctpB37rXScrUWBky2KfYSjpB9KxVUPHs
 xPFg==
X-Gm-Message-State: AOJu0Yxi9oOQkQ7nj84nVDX4hARkQpobeX1zI3XmDPlIgXxnmuJAhN5F
 M806aEtj8pv8dTxrtz9heJ/0ng==
X-Google-Smtp-Source: AGHT+IHmJCnJqak7CCloMUsycFxku6OhARWWO9BYvy0mEIyAmvYm8Zkv3vvTpVCBme+b0IdvItiPoA==
X-Received: by 2002:a1c:7709:0:b0:40b:2078:b8e4 with SMTP id
 t9-20020a1c7709000000b0040b2078b8e4mr436305wmi.1.1700768368667; 
 Thu, 23 Nov 2023 11:39:28 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 s9-20020a05600c45c900b0040b3829eb50sm1428476wmo.20.2023.11.23.11.39.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Nov 2023 11:39:27 -0800 (PST)
Date: Thu, 23 Nov 2023 20:39:25 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZV-qbRKsjRTgnZ8B@phenom.ffwll.local>
References: <87v89sl2ao.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87v89sl2ao.fsf@intel.com>
X-Operating-System: Linux phenom 6.5.0-4-amd64 
Subject: Re: [Intel-gfx] [PULL] drm-intel-next
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
Cc: dim-tools@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 23, 2023 at 09:03:59PM +0200, Jani Nikula wrote:
> 
> Hi Dave & Sima -
> 
> The first i915 feature pull towards v6.8.
> 
> The one thing to single out are the major DP MST, UHBR, and DSC
> bandwidth management improvements from Imre.
> 
> Alas, they also need to be singled out because there are a number of
> updates in drm core and other drivers merged via drm-intel-next that
> will conflict with drm-next. Nothing that wasn't acked or discussed
> before, but maybe this time we erred a bit on the side of too much.
> 
> BR,
> Jani.
> 
> 
> drm-intel-next-2023-11-23:
> drm/i915 feature pull for v6.8:
> 
> Features and functionality:
> - Major DP MST improvements on bandwidth management, DSC (Imre, Stan, Ville)
> - DP panel replay enabling (Animesh, Jouni)
> - MTL C20 phy state verification (Mika)
> - MTL DP DSC fractional bpp support (Ankit, Vandita, Swati, Imre)
> - Audio fastset support (Ville)
> 
> Refactoring and cleanups:
> - Use dma fence interfaces instead of i915_sw_fence (Jouni)
> - Separate gem and display code (Jouni, Juha-Pekka)
> - AUX register macro refactoring (Jani)
> - Separate display module/device parameters from the rest (Jouni)
> - Move display capabilities debugfs under display (Vinod)
> - Makefile cleanup (Jani)
> - Register cleanups (Ville)
> - Enginer iterator cleanups (Tvrtko)
> - Move display lock inits under display/ (Jani)
> - VLV/CHV DPIO PHY register and interface refactoring (Jani)
> - DSI VBT sequence refactoring (Jani, Andy Shevchenko)
> - C10/C20 PHY PLL hardware readout and calculation abstractions (Lucas)
> - DPLL code cleanups (Ville)
> - Cleanup PXP plane protection checks (Jani)
> 
> Fixes:
> - Replace VLV/CHV DSI GPIO direct access with proper GPIO API usage (Andy Shevchenko)
> - Fix VLV/CHV DSI GPIO wrong initial value (Hans de Goede)
> - Fix UHBR data, link M/N/TU and PBN values (Imre)
> - Fix HDCP state on an enable/disable cycle (Suraj)
> - Fix DP MST modeset sequence to be according to spec (Ville)
> - Improved atomicity for multi-pipe commits (Ville)
> - Update URLs in i915 MAINTAINERS entry and code (Jani)
> - Check for VGA converter presence in eDP probe (Ville)
> - Fix surface size checks (Ville)
> - Fix LNL port/phy assignment (Lucas)
> - Reset C10/C20 message bus harder to avoid sporadic failures (Mika)
> - Fix bogus VBT HDMI level shift on BDW (Ville)
> - Add workaround for LNL underruns when enabling FBC (Vinod)
> - DSB refactoring (Animesh)
> - DPT refactoring (Juha-Pekka)
> - Disable DSC on DP MST on ICL (Imre)
> - Fix PSR VSC packet setup timing (Mika)
> - Fix LUT rounding and conversions (Ville)
> 
> DRM core display changes:
> - DP MST fixes, helpers, refactoring to support bandwidth management (Imre)
> - DP MST PBN divider value refactoring and fixes (Imre)
> - DPCD register definitions (Ankit, Imre)
> - Add helper to get DSC bpp precision (Ankit)
> - Fix color LUT rounding (Ville)
> 
> BR,
> Jani.
> 
> The following changes since commit 213c43676beb5f5a63cb27a0c8e8e71035b08445:
> 
>   drm/i915/mtl: Remove the 'force_probe' requirement for Meteor Lake (2023-10-18 06:23:41 +0200)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-next-2023-11-23

Merged to drm-next, thanks.
-Sima

> 
> for you to fetch changes up to deac453244d309ad7a94d0501eb5e0f9d8d1f1df:
> 
>   drm/i915: Fix glk+ degamma LUT conversions (2023-11-23 15:11:47 +0200)
> 
> ----------------------------------------------------------------
> drm/i915 feature pull for v6.8:
> 
> Features and functionality:
> - Major DP MST improvements on bandwidth management, DSC (Imre, Stan, Ville)
> - DP panel replay enabling (Animesh, Jouni)
> - MTL C20 phy state verification (Mika)
> - MTL DP DSC fractional bpp support (Ankit, Vandita, Swati, Imre)
> - Audio fastset support (Ville)
> 
> Refactoring and cleanups:
> - Use dma fence interfaces instead of i915_sw_fence (Jouni)
> - Separate gem and display code (Jouni, Juha-Pekka)
> - AUX register macro refactoring (Jani)
> - Separate display module/device parameters from the rest (Jouni)
> - Move display capabilities debugfs under display (Vinod)
> - Makefile cleanup (Jani)
> - Register cleanups (Ville)
> - Enginer iterator cleanups (Tvrtko)
> - Move display lock inits under display/ (Jani)
> - VLV/CHV DPIO PHY register and interface refactoring (Jani)
> - DSI VBT sequence refactoring (Jani, Andy Shevchenko)
> - C10/C20 PHY PLL hardware readout and calculation abstractions (Lucas)
> - DPLL code cleanups (Ville)
> - Cleanup PXP plane protection checks (Jani)
> 
> Fixes:
> - Replace VLV/CHV DSI GPIO direct access with proper GPIO API usage (Andy Shevchenko)
> - Fix VLV/CHV DSI GPIO wrong initial value (Hans de Goede)
> - Fix UHBR data, link M/N/TU and PBN values (Imre)
> - Fix HDCP state on an enable/disable cycle (Suraj)
> - Fix DP MST modeset sequence to be according to spec (Ville)
> - Improved atomicity for multi-pipe commits (Ville)
> - Update URLs in i915 MAINTAINERS entry and code (Jani)
> - Check for VGA converter presence in eDP probe (Ville)
> - Fix surface size checks (Ville)
> - Fix LNL port/phy assignment (Lucas)
> - Reset C10/C20 message bus harder to avoid sporadic failures (Mika)
> - Fix bogus VBT HDMI level shift on BDW (Ville)
> - Add workaround for LNL underruns when enabling FBC (Vinod)
> - DSB refactoring (Animesh)
> - DPT refactoring (Juha-Pekka)
> - Disable DSC on DP MST on ICL (Imre)
> - Fix PSR VSC packet setup timing (Mika)
> - Fix LUT rounding and conversions (Ville)
> 
> DRM core display changes:
> - DP MST fixes, helpers, refactoring to support bandwidth management (Imre)
> - DP MST PBN divider value refactoring and fixes (Imre)
> - DPCD register definitions (Ankit, Imre)
> - Add helper to get DSC bpp precision (Ankit)
> - Fix color LUT rounding (Ville)
> 
> ----------------------------------------------------------------
> Andy Shevchenko (9):
>       drm/i915/dsi: Replace while(1) with one with clear exit condition
>       drm/i915/dsi: Get rid of redundant 'else'
>       drm/i915/dsi: Replace check with a (missing) MIPI sequence name
>       drm/i915/dsi: Extract common soc_gpio_set_value() helper
>       drm/i915/dsi: Replace poking of VLV GPIOs behind the driver's back
>       drm/i915/dsi: Prepare soc_gpio_set_value() to distinguish GPIO communities
>       drm/i915/dsi: Replace poking of CHV GPIOs behind the driver's back
>       drm/i915/dsi: Combine checks in mipi_exec_gpio()
>       drm/i915/iosf: Drop unused APIs
> 
> Animesh Manna (6):
>       drm/panelreplay: dpcd register definition for panelreplay
>       drm/i915/panelreplay: Initializaton and compute config for panel replay
>       drm/i915/panelreplay: Enable panel replay dpcd initialization for DP
>       drm/i915/panelreplay: enable/disable panel replay
>       drm/i915/panelreplay: Debugfs support for panel replay
>       drm/i915/dsb: DSB code refactoring
> 
> Ankit Nautiyal (5):
>       drm/display/dp: Add helper function to get DSC bpp precision
>       drm/i915/display: Store compressed bpp in U6.4 format
>       drm/i915/display: Consider fractional vdsc bpp while computing m_n values
>       drm/i915/audio: Consider fractional vdsc bpp while computing tu_data
>       drm/i915/dp: Iterate over output bpp with fractional step size
> 
> Chaitanya Kumar Borah (1):
>       drm/i915/mtl: Support HBR3 rate with C10 phy and eDP in MTL
> 
> Hans de Goede (2):
>       drm/i915/dsi: Remove GPIO lookup table at the end of intel_dsi_vbt_gpio_init()
>       drm/i915/dsi: Fix wrong initial value for GPIOs in bxt_gpio_set_value()
> 
> Imre Deak (42):
>       drm/i915/dp_mst: Disable DSC on ICL MST outputs
>       drm/i915/dp_mst: Fix race between connector registration and setup
>       drm/dp_mst: Add helper to determine if an MST port is downstream of another port
>       drm/dp_mst: Factor out a helper to check the atomic state of a topology manager
>       drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations
>       drm/dp_mst: Allow DSC in any Synaptics last branch device
>       drm/dp: Add DP_HBLANK_EXPANSION_CAPABLE and DSC_PASSTHROUGH_EN DPCD flags
>       drm/dp_mst: Add HBLANK expansion quirk for Synaptics MST hubs
>       drm/dp: Add helpers to calculate the link BW overhead
>       drm/i915/dp_mst: Enable FEC early once it's known DSC is needed
>       drm/i915/dp: Specify the FEC overhead as an increment vs. a remainder
>       drm/i915/dp: Pass actual BW overhead to m_n calculation
>       drm/i915/dp_mst: Account for FEC and DSC overhead during BW allocation
>       drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
>       drm/i915/dp_mst: Program the DSC PPS SDP for each stream
>       drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled
>       drm/i915/dp_mst: Add missing DSC compression disabling
>       drm/i915/dp: Rename intel_ddi_disable_fec_state() to intel_ddi_disable_fec()
>       drm/i915/dp: Wait for FEC detected status in the sink
>       drm/i915/dp: Disable FEC ready flag in the sink
>       drm/i915/dp_mst: Handle the Synaptics HBlank expansion quirk
>       drm/i915/dp_mst: Enable decompression in the sink from the MST encoder hooks
>       drm/i915/dp: Enable DSC via the connector decompression AUX
>       drm/i915/dp_mst: Enable DSC passthrough
>       drm/i915/dp_mst: Enable MST DSC decompression for all streams
>       drm/i915: Factor out function to clear pipe update flags
>       drm/i915/dp_mst: Force modeset CRTC if DSC toggling requires it
>       drm/i915/dp_mst: Improve BW sharing between MST streams
>       drm/i915/dp_mst: Check BW limitations only after all streams are computed
>       drm/i915/dp: Tune down FEC detection timeout error message
>       drm/i915: Fix fractional bpp handling in intel_link_bw_reduce_bpp()
>       drm/dp_mst: Store the MST PBN divider value in fixed point format
>       drm/dp_mst: Fix PBN divider calculation for UHBR rates
>       drm/dp_mst: Add kunit tests for drm_dp_get_vc_payload_bw()
>       drm/i915/dp: Replace intel_dp_is_uhbr_rate() with drm_dp_is_uhbr_rate()
>       drm/i915/dp: Account for channel coding efficiency on UHBR links
>       drm/i915/dp: Fix UHBR link M/N values
>       drm/i915/dp_mst: Calculate the BW overhead in intel_dp_mst_find_vcpi_slots_for_bpp()
>       drm/i915/dp_mst: Fix PBN / MTP_TU size calculation for UHBR rates
>       drm/i915/dp: Report a rounded-down value as the maximum data rate
>       drm/i915/dp: Simplify intel_dp_max_data_rate()
>       drm/i915/dp: Reuse intel_dp_{max,effective}_data_rate in intel_link_compute_m_n()
> 
> Jani Nikula (22):
>       drm/i915: drop gt/intel_gt.h include from skl_universal_plane.c
>       drm/i915/aux: add separate register macros and functions for VLV/CHV
>       drm/i915/aux: rename dev_priv to i915
>       drm/i915: stop including i915_utils.h from intel_runtime_pm.h
>       drm/i915/sprite: move sprite_name() to intel_sprite.c
>       drm/i915: fix Makefile sort and indent
>       drm/i915: move Makefile display debugfs files next to display
>       drm/i915: move display mutex inits to display code
>       drm/i915: move display spinlock init to display code
>       drm/i915: abstract plane protection check
>       drm/i915: remove excess functions from plane protection check
>       MAINTAINERS: update drm/i915 W: and B: entries
>       drm/i915: update in-source bug filing URLs
>       drm/i915/display: keep struct intel_display members sorted
>       drm/i915: move *_crtc_clock_get() to intel_dpll.c
>       drm/i915: add vlv_pipe_to_phy() helper to replace DPIO_PHY()
>       drm/i915: convert vlv_dpio_read()/write() from pipe to phy
>       drm/i915/dsi: assume BXT gpio works for non-native GPIO
>       drm/i915/dsi: switch mipi_exec_gpio() from dev_priv to i915
>       drm/i915/dsi: clarify GPIO exec sequence
>       drm/i915/dsi: rename platform specific *_exec_gpio() to *_gpio_set_value()
>       drm/i915/dsi: bxt/icl GPIO set value do not need gpio source
> 
> Jouni H�gander (29):
>       drm/i915/display: Move releasing gem object away from fb tracking
>       drm/i915/display: Use intel_bo_to_drm_bo instead of obj->base
>       drm/i915/display: Add framework to add parameters specific to display
>       drm/i915/display: Dump also display parameters
>       drm/i915/display: Move enable_fbc module parameter under display
>       drm/i915/display: Move psr related module parameters under display
>       drm/i915/display: Move vbt_firmware module parameter under display
>       drm/i915/display: Move lvds_channel_mode module parameter under display
>       drm/i915/display: Move panel_use_ssc module parameter under display
>       drm/i915/display: Move vbt_sdvo_panel_type module parameter under display
>       drm/i915/display: Move enable_dc module parameter under display
>       drm/i915/display: Move enable_dpt module parameter under display
>       drm/i915/display: Move enable_sagv module parameter under display
>       drm/i915/display: Move disable_power_well module parameter under display
>       drm/i915/display: Move enable_ips module parameter under display
>       drm/i915/display: Move invert_brightness module parameter under display
>       drm/i915/display: Move edp_vswing module parameter under display
>       drm/i915/display: Move enable_dpcd_backlight module parameter under display
>       drm/i915/display: Move load_detect_test parameter under display
>       drm/i915/display: Move force_reset_modeset_test parameter under display
>       drm/i915/display: Move disable_display parameter under display
>       drm/i915/display: Use device parameters instead of module in I915_STATE_WARN
>       drm/i915/display: Move verbose_state_checks under display
>       drm/i915/display: Move nuclear_pageflip under display
>       drm/i915/display: Move enable_dp_mst under display
>       drm/i915/display: Use dma_fence interfaces instead of i915_sw_fence
>       drm/i915/display: Use intel_bo_to_drm_bo instead of obj->base
>       drm/i915/psr: Move psr specific dpcd init into own function
>       drm/i915/display: Do not check psr2 if psr/panel replay is not supported
> 
> Juha-Pekka Heikkila (3):
>       drm/i915/display: Separate xe and i915 common dpt code into own file
>       drm/i915/display: in skl_surf_address check for dpt-vma
>       drm/i915/display: In intel_framebuffer_init switch to use intel_bo_to_drm_bo
> 
> Lucas De Marchi (4):
>       drm/i915/lnl: Extend C10/C20 phy
>       drm/i915/lnl: Fix check for TC phy
>       drm/i915/display: Abstract C10/C20 pll hw readout
>       drm/i915/display: Abstract C10/C20 pll calculation
> 
> Mika Kahola (5):
>       drm/i915/display: Reset message bus after each read/write operation
>       drm/i915/display: Support PSR entry VSC packet to be transmitted one frame earlier
>       drm/i915/mtl: C20 state verification
>       drm/i915/display: Use int for entry setup frames
>       drm/i915/display: Use int type for entry_setup_frames
> 
> Nirmoy Das (2):
>       drm/i915/mtl: Apply notify_guc to all GTs
>       drm/i915/tc: Fix -Wformat-truncation in intel_tc_port_init
> 
> Stanislav Lisovskiy (1):
>       drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info
> 
> Suraj Kandpal (3):
>       drm/i915/hdcp: Rename HCDP 1.4 enablement function
>       drm/i915/hdcp: Convert intel_hdcp_enable to a blanket function
>       drm/i915/hdcp: Add more conditions to enable hdcp
> 
> Swati Sharma (2):
>       drm/i915/dsc: Add debugfs entry to validate DSC fractional bpp
>       drm/i915/dsc: Allow DSC only with fractional bpp when forced from debugfs
> 
> Tvrtko Ursulin (2):
>       drm/i915: Remove unused for_each_uabi_class_engine
>       drm/i915: Move for_each_engine* out of i915_drv.h
> 
> Vandita Kulkarni (1):
>       drm/i915/dsc/mtl: Add support for fractional bpp
> 
> Ville Syrj�l� (40):
>       drm/i915/bios: Clamp VBT HDMI level shift on BDW
>       drm/i915: Use named initializers for DPLL info
>       drm/i915: Abstract the extra JSL/EHL DPLL4 power domain better
>       drm/i915: Move the DPLL extra power domain handling up one level
>       drm/i915: Extract _intel_{enable,disable}_shared_dpll()
>       drm/i915: Move the g45 PEG band gap HPD workaround to the HPD code
>       drm/i915/mst: Swap TRANSCONF vs. FECSTALL_DIS_DPTSTREAM_DPTTG disable
>       drm/i915/mst: Disable transcoder before deleting the payload
>       drm/i915/mst: Clear ACT just before triggering payload allocation
>       drm/i915/mst: Always write CHICKEN_TRANS
>       drm/i915: Bump GLK CDCLK frequency when driving multiple pipes
>       drm/i915: Extract hsw_chicken_trans_reg()
>       drm/i915: Stop using a 'reg' variable
>       drm/i915: Extract mchbar_reg()
>       drm/i915/dsi: Remove dead GLK checks
>       drm/i915/dsi: Extract port_ctrl_reg()
>       drm/dp_mst: Fix fractional DSC bpp handling
>       drm/i915: Drop redundant !modeset check
>       drm/i915: Split intel_update_crtc() into two parts
>       drm/i915: Do plane/etc. updates more atomically across pipes
>       drm/i915/gvt: Clean up zero initializers
>       drm/i915: Also check for VGA converter in eDP probe
>       drm/i915/fbc: Split plane size vs. surface size checks apart
>       drm/i915/fbc: Bump max surface size to 8kx4k on icl+
>       drm/i915/fbc: Bump ivb FBC max surface size to 4kx4k
>       drm/i915: Check pipe active state in {planes,vrr}_{enabling,disabling}()
>       drm/i915: Call intel_pre_plane_updates() also for pipes getting enabled
>       drm/i915: Polish some RMWs
>       drm/i915: Push audio enable/disable further out
>       drm/i915: Wrap g4x+ DP/HDMI audio enable/disable
>       drm/i915: Split g4x+ DP audio presence detect from port enable
>       drm/i915: Split g4x+ HDMI audio presence detect from port enable
>       drm/i915: Convert audio enable/disable into encoder vfuncs
>       drm/i915: Hoist the encoder->audio_{enable,disable}() calls higher up
>       drm/i915: Push audio_{enable,disable}() to the pre/post pane update stage
>       drm/i915: Implement audio fastset
>       drm: Fix color LUT rounding
>       drm/i915: Adjust LUT rounding rules
>       drm/i915: s/clamp()/min()/ in i965_lut_11p6_max_pack()
>       drm/i915: Fix glk+ degamma LUT conversions
> 
> Vinod Govindapillai (3):
>       drm/i915/display: debugfs entry to list display capabilities
>       drm/i915: remove display device info from i915 capabilities
>       drm/i915/xe2lpd: implement WA for underruns while enabling FBC
> 
>  MAINTAINERS                                        |   4 +-
>  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c  |   7 +-
>  .../drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c  |   4 +-
>  .../amd/display/amdgpu_dm/amdgpu_dm_mst_types.c    |   7 +-
>  drivers/gpu/drm/display/drm_dp_helper.c            | 161 +++++
>  drivers/gpu/drm/display/drm_dp_mst_topology.c      | 234 ++++++--
>  drivers/gpu/drm/i915/Kconfig                       |   2 +-
>  drivers/gpu/drm/i915/Makefile                      | 180 +++---
>  drivers/gpu/drm/i915/display/g4x_dp.c              |  46 +-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c            |  66 +-
>  drivers/gpu/drm/i915/display/hsw_ips.c             |   4 +-
>  drivers/gpu/drm/i915/display/i9xx_wm.c             |   2 +-
>  drivers/gpu/drm/i915/display/icl_dsi.c             |  10 +-
>  drivers/gpu/drm/i915/display/intel_atomic.c        |   3 -
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c  |  83 +--
>  drivers/gpu/drm/i915/display/intel_audio.c         |  16 +-
>  drivers/gpu/drm/i915/display/intel_backlight.c     |   9 +-
>  drivers/gpu/drm/i915/display/intel_bios.c          |  32 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c         |  17 +-
>  drivers/gpu/drm/i915/display/intel_color.c         |  70 +--
>  drivers/gpu/drm/i915/display/intel_crt.c           |   4 +-
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c       | 160 +++--
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h       |  16 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c           | 177 ++++--
>  drivers/gpu/drm/i915/display/intel_ddi.h           |   5 +
>  drivers/gpu/drm/i915/display/intel_display.c       | 560 +++++++----------
>  drivers/gpu/drm/i915/display/intel_display.h       |   9 +-
>  drivers/gpu/drm/i915/display/intel_display_core.h  |  20 +-
>  .../gpu/drm/i915/display/intel_display_debugfs.c   |  98 +++
>  .../i915/display/intel_display_debugfs_params.c    | 176 ++++++
>  .../i915/display/intel_display_debugfs_params.h    |  13 +
>  .../gpu/drm/i915/display/intel_display_device.c    |  13 +-
>  .../gpu/drm/i915/display/intel_display_device.h    |   1 +
>  .../gpu/drm/i915/display/intel_display_driver.c    |   7 +
>  .../gpu/drm/i915/display/intel_display_params.c    | 217 +++++++
>  .../gpu/drm/i915/display/intel_display_params.h    |  61 ++
>  drivers/gpu/drm/i915/display/intel_display_power.c |  14 +-
>  .../drm/i915/display/intel_display_power_well.c    |  23 +-
>  drivers/gpu/drm/i915/display/intel_display_reset.c |   2 +-
>  drivers/gpu/drm/i915/display/intel_display_types.h |  31 +-
>  drivers/gpu/drm/i915/display/intel_dp.c            | 504 ++++++++++++----
>  drivers/gpu/drm/i915/display/intel_dp.h            |  26 +-
>  drivers/gpu/drm/i915/display/intel_dp_aux.c        |  99 +--
>  .../gpu/drm/i915/display/intel_dp_aux_backlight.c  |   4 +-
>  drivers/gpu/drm/i915/display/intel_dp_aux_regs.h   |  14 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c        | 662 +++++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_dp_mst.h        |   5 +
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c      | 171 +++---
>  drivers/gpu/drm/i915/display/intel_dpio_phy.h      |   5 +
>  drivers/gpu/drm/i915/display/intel_dpll.c          | 270 +++++++--
>  drivers/gpu/drm/i915/display/intel_dpll.h          |   9 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 187 +++---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h      |   6 +
>  drivers/gpu/drm/i915/display/intel_dpt.c           |  24 -
>  drivers/gpu/drm/i915/display/intel_dpt.h           |   2 -
>  drivers/gpu/drm/i915/display/intel_dpt_common.c    |  34 ++
>  drivers/gpu/drm/i915/display/intel_dpt_common.h    |  13 +
>  drivers/gpu/drm/i915/display/intel_dsb.c           |  98 ++-
>  drivers/gpu/drm/i915/display/intel_dsb_buffer.c    |  82 +++
>  drivers/gpu/drm/i915/display/intel_dsb_buffer.h    |  29 +
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c       | 353 +++++------
>  drivers/gpu/drm/i915/display/intel_fb.c            |   8 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c           |  57 +-
>  drivers/gpu/drm/i915/display/intel_fdi.c           |   8 +-
>  drivers/gpu/drm/i915/display/intel_frontbuffer.c   |   2 -
>  drivers/gpu/drm/i915/display/intel_hdcp.c          |  37 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.h          |   8 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c          |  10 -
>  drivers/gpu/drm/i915/display/intel_hotplug_irq.c   |  16 +
>  drivers/gpu/drm/i915/display/intel_link_bw.c       |  30 +-
>  drivers/gpu/drm/i915/display/intel_link_bw.h       |   1 +
>  drivers/gpu/drm/i915/display/intel_lvds.c          |   4 +-
>  drivers/gpu/drm/i915/display/intel_modeset_setup.c |   6 +
>  .../gpu/drm/i915/display/intel_modeset_verify.c    |   2 +-
>  drivers/gpu/drm/i915/display/intel_opregion.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_panel.c         |   4 +-
>  drivers/gpu/drm/i915/display/intel_pch_display.c   |   1 +
>  drivers/gpu/drm/i915/display/intel_pps.c           |   2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c           | 369 +++++++++---
>  drivers/gpu/drm/i915/display/intel_psr.h           |   7 +
>  drivers/gpu/drm/i915/display/intel_psr_regs.h      |   2 +
>  drivers/gpu/drm/i915/display/intel_qp_tables.c     |   3 -
>  drivers/gpu/drm/i915/display/intel_sdvo.c          |  23 +-
>  drivers/gpu/drm/i915/display/intel_sprite.c        |   7 +-
>  drivers/gpu/drm/i915/display/intel_tc.c            |  11 +-
>  drivers/gpu/drm/i915/display/intel_vdsc.c          |  29 +-
>  drivers/gpu/drm/i915/display/skl_universal_plane.c |  28 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c       |   5 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c             |  21 +-
>  .../gpu/drm/i915/gem/i915_gem_object_frontbuffer.h |   1 +
>  drivers/gpu/drm/i915/gt/intel_engine_pm.h          |   1 +
>  drivers/gpu/drm/i915/gt/intel_gt.h                 |  14 +
>  drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c |   2 +-
>  drivers/gpu/drm/i915/gvt/cmd_parser.c              |   2 +-
>  drivers/gpu/drm/i915/gvt/fb_decoder.c              |   6 +-
>  drivers/gpu/drm/i915/gvt/handlers.c                |   3 +-
>  drivers/gpu/drm/i915/i915_debugfs.c                |   4 +-
>  drivers/gpu/drm/i915/i915_debugfs_params.c         |   9 +-
>  drivers/gpu/drm/i915/i915_driver.c                 |   8 +-
>  drivers/gpu/drm/i915/i915_drv.h                    |  20 +-
>  drivers/gpu/drm/i915/i915_gem.c                    |   2 -
>  drivers/gpu/drm/i915/i915_gpu_error.c              |   5 +-
>  drivers/gpu/drm/i915/i915_gpu_error.h              |   2 +
>  drivers/gpu/drm/i915/i915_params.c                 |  89 ---
>  drivers/gpu/drm/i915/i915_params.h                 |  22 -
>  drivers/gpu/drm/i915/i915_reg.h                    |   2 -
>  drivers/gpu/drm/i915/i915_utils.h                  |   2 +-
>  drivers/gpu/drm/i915/intel_runtime_pm.h            |   2 -
>  drivers/gpu/drm/i915/selftests/intel_uncore.c      |   2 +
>  drivers/gpu/drm/i915/soc/intel_gmch.c              |  27 +-
>  drivers/gpu/drm/i915/vlv_sideband.c                |  29 +-
>  drivers/gpu/drm/i915/vlv_sideband.h                |   9 +-
>  drivers/gpu/drm/nouveau/dispnv50/disp.c            |   9 +-
>  drivers/gpu/drm/tests/drm_dp_mst_helper_test.c     | 166 +++++-
>  include/drm/display/drm_dp.h                       |  25 +
>  include/drm/display/drm_dp_helper.h                |  32 +
>  include/drm/display/drm_dp_mst_helper.h            |  16 +-
>  include/drm/drm_color_mgmt.h                       |  19 +-
>  118 files changed, 4425 insertions(+), 1969 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs_params.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_params.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_params.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dpt_common.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dpt_common.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dsb_buffer.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> 
> -- 
> Jani Nikula, Intel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
