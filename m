Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMnyLX98/Gl0QgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 13:50:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9204E7BE6
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 13:50:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ED9310F005;
	Thu,  7 May 2026 11:50:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aNx+M0k5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 789FF10E042;
 Thu,  7 May 2026 11:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778154616; x=1809690616;
 h=message-id:date:mime-version:from:to:cc:subject:
 content-transfer-encoding;
 bh=rIZTm0IIF3nRhrqdCzjsls3KMb3LOut7IcVxo7Jqd9I=;
 b=aNx+M0k5P+/xDPZwDRrbIxP/GfU/KG5jbuFDrHMZh8IgPOBFg1BiYJRT
 cT2eNvgd0M39SNUveBE58rNgjoRbvJUmHp7yI1lgTo7TVcISc3bMHeLOu
 9U83qJ4qSM81oXaV3KkQAOtSriGWIVANbOyxCUWRtJgad6v/Hwo0WwQv5
 H261LvTVvzlFYFflDbF/x+3z7PDZgBdCSyYZkkFNBVMrOJJD1e1kFCRk+
 wVwFxX8BDMNr+PBI9hQ+xHeFbuC5PSIr8kcYQOsaaonhjvJ+563s35rhV
 RzlB8+hdh/ys+ikUwLrf9xqyhFQ8Ia9N2VkXU3eKcmXzhD5nnqM1NyzVE A==;
X-CSE-ConnectionGUID: MThbutBeQp2FGke9n50xiw==
X-CSE-MsgGUID: irNfbYwaS6a2XXbIrmBf+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="79210392"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="79210392"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 04:50:09 -0700
X-CSE-ConnectionGUID: a3BmhOIxQ7mRmDc6j++atQ==
X-CSE-MsgGUID: efRrggUeRlOi7pkmxXpnRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="241425392"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO [10.245.245.173])
 ([10.245.245.173])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 04:50:02 -0700
Message-ID: <f73f342d-6efb-416d-81b0-1716bdd98d5f@linux.intel.com>
Date: Thu, 7 May 2026 13:49:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: Simona Vetter <simona.vetter@ffwll.ch>, Dave Airlie <airlied@gmail.com>
Cc: dim-tools@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Oded Gabbay <ogabbay@kernel.org>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Brost <matthew.brost@intel.com>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Subject: [PULL] drm-misc-next
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Queue-Id: 0D9204E7BE6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[ffwll.ch,gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[maarten.lankhorst@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

Hey Dave, Simona,

Apologies for the big pull, wanted to send it on monday but
a small issue with the tooling and one of the commits required
a resolution first!

Now finally here, the pull request for v7.2-rc1.

Kind regards,
~Maarten Lankhorst

drm-misc-next-2026-05-07:
drm-misc-next for v7.2-rc1:

UAPI Changes:
- Support medium/low power modes in amdxdna.
- Support limiting frequency in ivpu.
- Document license for drm core uAPI headers.
- Add the following DRM formats: P230, Y7, XYYY2101010, T430,
  XVUY210101010.

Cross-subsystem Changes:
- Add and improve dt-bindings.
- Remove unused dma-fence-array's signal_on_any support.

Core Changes:
- Do not call drop_master on file close if not master.
- Convert drm-bridge and drm/atomic to use drm_printf_indent.
- Remove the extra call to drm_connector_attach_encoder after
  drm_bridge_connector_init().
- Assorted docbook updates.

Driver Changes:
- Bugfixes in amdxdna, ivpu, mipi-dsi, imagination, nouveau, panthor,
  bridge/analogix_dp, ipv3, lontium-lt8912b, verisilicon, tve200,
  etnaviv, panel/focaltech-ota7290b, panel/jadard-jd9365da-h3,
  bridge/ite-it6263, renesas, xlnx, bridge/cdns-dsi, gma500,
  bridge/microchip-lvds, mgag200.
- Add support for MStar TSUMU88ADT3-LF-1 bridge.
- Add support for WaveShare 7, Novatek NT35532, Startek KD070HDFLD092,
  ChipWealth CH13726A AMOLED, Team Source Display TST070WSNE-196C,
  Displaytech DT050BTFT-PTS panels.
- Improve mipi-dsi shutdown and convert a panasonic panel to use the
  mipi-dsi wrappers.
- Allowing dumping vbios over debugfs in GSP-RM mode.
- Update maintainers for ivpu, add reviewer for drm-bridge code
  and update maintainers for LT8912B DRM HDMI bridge.
- Add test pattern support to bridge/ti-sn65dsi83.
- Convert vmwgfx to vblank timers.
- Add power management to sysfb drm drivers to allow suspend/resume.
- Support the aforementioned new drm formats in xlnx/qynqmp.
- Fix panel Kconfig dependencies.
- Add carveout support for debugging and bringup to amxdna.
- Add support for long command tx via videobuffer in bridge/tc358768.
The following changes since commit 254f49634ee16a731174d2ae34bc50bd5f45e731:

  Linux 7.1-rc1 (2026-04-26 14:19:00 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-2026-05-07

for you to fetch changes up to 921578cf373981eba92774a27f7644a11282cf89:

  drm/bridge: tc358768: Add support for long command tx via video buffer (2026-05-07 12:38:46 +0300)

----------------------------------------------------------------
drm-misc-next for v7.2-rc1:

UAPI Changes:
- Support medium/low power modes in amdxdna.
- Support limiting frequency in ivpu.
- Document license for drm core uAPI headers.
- Add the following DRM formats: P230, Y7, XYYY2101010, T430,
  XVUY210101010.

Cross-subsystem Changes:
- Add and improve dt-bindings.
- Remove unused dma-fence-array's signal_on_any support.

Core Changes:
- Do not call drop_master on file close if not master.
- Convert drm-bridge and drm/atomic to use drm_printf_indent.
- Remove the extra call to drm_connector_attach_encoder after
  drm_bridge_connector_init().
- Assorted docbook updates.

Driver Changes:
- Bugfixes in amdxdna, ivpu, mipi-dsi, imagination, nouveau, panthor,
  bridge/analogix_dp, ipv3, lontium-lt8912b, verisilicon, tve200,
  etnaviv, panel/focaltech-ota7290b, panel/jadard-jd9365da-h3,
  bridge/ite-it6263, renesas, xlnx, bridge/cdns-dsi, gma500,
  bridge/microchip-lvds, mgag200.
- Add support for MStar TSUMU88ADT3-LF-1 bridge.
- Add support for WaveShare 7, Novatek NT35532, Startek KD070HDFLD092,
  ChipWealth CH13726A AMOLED, Team Source Display TST070WSNE-196C,
  Displaytech DT050BTFT-PTS panels.
- Improve mipi-dsi shutdown and convert a panasonic panel to use the
  mipi-dsi wrappers.
- Allowing dumping vbios over debugfs in GSP-RM mode.
- Update maintainers for ivpu, add reviewer for drm-bridge code
  and update maintainers for LT8912B DRM HDMI bridge.
- Add test pattern support to bridge/ti-sn65dsi83.
- Convert vmwgfx to vblank timers.
- Add power management to sysfb drm drivers to allow suspend/resume.
- Support the aforementioned new drm formats in xlnx/qynqmp.
- Fix panel Kconfig dependencies.
- Add carveout support for debugging and bringup to amxdna.
- Add support for long command tx via videobuffer in bridge/tc358768.

----------------------------------------------------------------
Aaron Kling (1):
      dt-bindings: display: panel: Add ChipWealth CH13726A AMOLED driver

Andrzej Kacprowski (1):
      accel/ivpu: Add support for limiting NPU frequency

Arnd Bergmann (1):
      drm/ipv3: add CONFIG_OF dependency for DRM_OF_DISPLAY_MODE_BRIDGE

Avinal Kumar (2):
      drm/mipi-dsi: add mipi_dsi_shutdown_peripheral_multi
      drm/panel: panasonic-vvx10f034n00: transition to mipi_dsi wrapped functions

Biju Das (2):
      drm/bridge: ite-it6263: Move chip initialization code from probe to atomic_enable
      drm/bridge: ite-it6263: Drop unnecessary blank line

Brajesh Gupta (1):
      drm/imagination: Restrict init_fw_trace_mask module param to read only

Chen Ni (1):
      drm/panel: focaltech-ota7290b: Fix error check for devm_drm_panel_alloc()

Chen-Yu Tsai (1):
      drm/xlnx/zynqmp-dpsub: Fix dependencies for COMPILE_TEST

Chris Brandt (1):
      drm: renesas: rz-du: mipi_dsi: Fix return path on error

Christian König (1):
      dma-buf/dma_fence_array: remove unused functionality v4

Cristian Cozzolino (2):
      dt-bindings: display: panel: Add Novatek NT35532 LCD DSI
      drm/panel: Add driver for Novatek NT35532

David Heidelberg (4):
      dt-bindigs: display: extend the LVDS codec with Triple 10-BIT LVDS Transmitter
      drm/panel: Clean up S6E3FC2X01 config dependencies
      drm/panel: Clean up S6E3HA2 config dependencies and fill help text
      drm/panel: Enable GPIOLIB for panels which uses functions from it

Dharma Balasubiramani (3):
      drm/bridge: microchip-lvds: Remove unused drm_panel and redundant port node lookup
      drm/bridge: microchip-lvds: migrate to atomic bridge ops
      drm/bridge: microchip-lvds: fix bus format mismatch with VESA displays

Dmitry Baryshkov (2):
      dt-bindings: display/panel: ilitek,ili9881c: describe Waveshare panel
      drm/panel: ilitek-ili9881c: support Waveshare 7.0" DSI panel

Eduardo Vasconcelos (1):
      drm/crc: Fix typo in doc for drm_crtc_crc

Ethan Tidmore (2):
      drm/bridge: analogix_dp: Extract error pointer from correct variable
      drm/panel: jadard-jd9365da-h3: Fix signedness bug

Francesco Dolcini (1):
      MAINTAINERS: Update maintainer for LT8912B DRM HDMI bridge

Hamza Mahfooz (2):
      drm/edid: add CTA Video Format Data Block support
      drm/hyperv: use VMBUS_RING_SIZE()

Icenowy Zheng (4):
      drm: verisilicon: make vs_format conversion function return int
      drm: verisilicon: subclass drm_plane_state
      drm: verisilicon: call atomic helper's plane state check even if no CRTC
      drm: verisilicon: fill plane's vs_format in atomic_check

Jani Nikula (2):
      drm/atomic: prefer drm_printf_indent() over inline \t
      drm/bridge: prefer drm_printf_indent() over inline \t

Jonathan Cavitt (1):
      drm/auth: Only drm_drop_master if it exists

Karol Wachowski (1):
      accel/ivpu: Fix swapped register names in pwr_island_drive functions

Karunika Choo (8):
      drm/panthor: Pass an iomem pointer to GPU register access helpers
      drm/panthor: Split register definitions by components
      drm/panthor: Replace cross-component register accesses with helpers
      drm/panthor: Store IRQ register base iomem pointer in panthor_irq
      drm/panthor: Use a local iomem base for GPU registers
      drm/panthor: Use a local iomem base for PWR registers
      drm/panthor: Use a local iomem base for firmware control registers
      drm/panthor: Use a local iomem base for MMU AS registers

Laurent Pinchart (1):
      drm: uapi: Use SPDX in DRM core uAPI headers

Lizhi Hou (1):
      accel/amdxdna: Set default DPM level based on QoS for temporal-only mode

Luca Ceresoli (43):
      drm/display: bridge-connector: attach the encoder to the created connector
      drm: adp: remove now-redundant call to drm_connector_attach_encoder()
      drm/bridge: adv7511: remove now-redundant call to drm_connector_attach_encoder()
      drm/bridge: ite-it6263: remove now-redundant call to drm_connector_attach_encoder()
      drm/bridge: ti-sn65dsi86: remove now-redundant call to drm_connector_attach_encoder()
      drm/imx/dcss: remove now-redundant call to drm_connector_attach_encoder()
      drm/imx: ldb: remove now-redundant call to drm_connector_attach_encoder()
      drm/imx: parallel-display: remove now-redundant call to drm_connector_attach_encoder()
      drm/imx/lcdc: remove now-redundant call to drm_connector_attach_encoder()
      drm/ingenic: remove now-redundant call to drm_connector_attach_encoder()
      drm/kmb/dsi: remove now-redundant call to drm_connector_attach_encoder()
      drm/mediatek: mtk_dpi: remove now-redundant call to drm_connector_attach_encoder()
      drm/mediatek: mtk_dsi: remove now-redundant call to drm_connector_attach_encoder()
      drm/meson: encoder_cvbs: remove now-redundant call to drm_connector_attach_encoder()
      drm/meson: encoder_hdmi: remove now-redundant call to drm_connector_attach_encoder()
      drm/msm/dp: remove now-redundant call to drm_connector_attach_encoder()
      drm/msm/hdmi: remove now-redundant call to drm_connector_attach_encoder()
      drm/omapdrm: remove now-redundant call to drm_connector_attach_encoder()
      drm/rockchip: cdn-dp: remove now-redundant call to drm_connector_attach_encoder()
      drm/rockchip: rk3066_hdmi: remove now-redundant call to drm_connector_attach_encoder()
      drm/tegra: hdmi: remove now-redundant call to drm_connector_attach_encoder()
      drm/tegra: rgb: remove now-redundant call to drm_connector_attach_encoder()
      drm/tests: bridge: remove now-redundant call to drm_connector_attach_encoder()
      drm: verisilicon: remove now-redundant call to drm_connector_attach_encoder()
      drm/exynos: exynos_dp: remove now-redundant call to drm_connector_attach_encoder()
      drm: rcar-du: encoder: remove now-redundant call to drm_connector_attach_encoder()
      drm: renesas: rz-du: rzg2l_du_encoder: remove now-redundant call to drm_connector_attach_encoder()
      drm/rockchip: analogix_dp: remove now-redundant call to drm_connector_attach_encoder()
      drm/rockchip: dw_dp: remove now-redundant call to drm_connector_attach_encoder()
      drm/rockchip: dw_hdmi_qp: remove now-redundant call to drm_connector_attach_encoder()
      drm/rockchip: inno-hdmi: remove now-redundant call to drm_connector_attach_encoder()
      drm/msm/mdp4: remove now-redundant call to drm_connector_attach_encoder()
      drm/msm/dsi: remove now-redundant call to drm_connector_attach_encoder()
      drm/mxsfb/lcdif: remove now-redundant call to drm_connector_attach_encoder()
      drm/rockchip: lvds: remove now-redundant call to drm_connector_attach_encoder()
      drm/tidss: remove now-redundant call to drm_connector_attach_encoder()
      drm/tilcdc: remove now-redundant call to drm_connector_attach_encoder()
      drm: zynqmp_kms: remove now-redundant call to drm_connector_attach_encoder()
      drm/imx: dc: remove now-redundant call to drm_connector_attach_encoder()
      drm/rockchip: rgb: remove now-redundant call to drm_connector_attach_encoder()
      drm: renesas: shmobile: remove now-redundant call to drm_connector_attach_encoder()
      drm/bridge: ti-sn65dsi83: add test pattern generation support
      MAINTAINERS: add Luca Ceresoli as reviewer for DRM bridge code

Maarten Lankhorst (1):
      Revert "drm/edid: add CTA Video Format Data Block support"

Maciej Falkowski (1):
      MAINTAINERS: accel/ivpu: Remove myself and add Andrzej as maintainer

Marco Crivellari (3):
      drm/nouveau: replace use of system_unbound_wq with system_dfl_wq
      drm/nouveau: WQ_PERCPU added to alloc_workqueue users
      drm/bridge: replace use of system_wq with system_percpu_wq

Marek Vasut (3):
      dt-bindings: vendor-prefixes: Add Displaytech Ltd.
      dt-bindings: display: simple: Document Displaytech DT050BTFT-PTS panel
      drm/panel: simple: Add Displaytech DT050BTFT-PTS panel

Marijn Suijten (1):
      drm/panel: Clean up SOFEF00 config dependencies

Max Krummenacher (1):
      drm/bridge: lontium-lt8912b: Do not generate HFP

Max Zhen (2):
      accel/amdxdna: Improve tracing for job lifecycle and mailbox RX worker
      accel/amdxdna: Add carveout memory support for non-IOMMU systems

Maxim Schwalm (1):
      drm/bridge: simple-bridge: Add support for MStar TSUMU88ADT3-LF-1

Myeonghun Pak (1):
      drm/tve200: Fix probe cleanup after register failure

Nishad Saraf (2):
      accel/amdxdna: Set the system efficiency factor to 2
      accel/amdxdna: Add configuring low and medium power mode

Parth Pancholi (1):
      drm/bridge: tc358768: Set pre_enable_prev_first for reverse order

Rosen Penev (1):
      drm/etnaviv: use kzalloc_flex

Shuicheng Lin (1):
      drm/gpusvm: Drop redundant @flags.* kernel-doc on struct drm_gpusvm_pages

Stefan Kerkmann (2):
      dt-bindings: display: simple: Add Startek KD070HDFLD092 panel
      drm/panel: simple: Add Startek KD070HDFLD092 LVDS panel support

Svyatoslav Ryhel (1):
      dt-bindigs: display: extend the simple bridge with MStar TSUMU88ADT3-LF-1 bridge

Teguh Sobirin (1):
      drm/panel: Add panel driver for ChipWealth CH13726A based panels

Thomas Zimmermann (9):
      Merge drm/drm-next into drm-misc-next
      drm/vmwgfx: Determine lock-waiting timeout from vblank state
      drm/vmwgfx: Move vblank handling into separate helper
      drm/vmwgfx: Convert to DRM vblank timers
      drm/sysfb: corebootdrm: Support power management
      drm/sysfb: efidrm: Support power management
      drm/sysfb: ofdrm: Support power management
      drm/sysfb: simpledrm: Support power management
      drm/sysfb: vesadrm: Support power management

Timur Tabi (1):
      drm/nouveau: expose VBIOS via debugfs on GSP-RM systems

Tomi Valkeinen (17):
      drm/fourcc: Add warning for bad bpp
      drm/fourcc: Add DRM_FORMAT_P230
      drm/fourcc: Add DRM_FORMAT_Y8
      drm/fourcc: Add DRM_FORMAT_XYYY2101010
      drm/fourcc: Add DRM_FORMAT_T430
      drm/fourcc: Add DRM_FORMAT_XVUY2101010
      drm: xlnx: zynqmp: Use drm helpers when calculating buffer sizes
      drm: xlnx: zynqmp: Add support for P030 & P230
      drm: xlnx: zynqmp: Add support for Y8 and XYYY2101010
      drm: xlnx: zynqmp: Add support for T430
      drm: xlnx: zynqmp: Add support for XVUY2101010
      drm/bridge: tc358768: Fix typo in TC358768_DSI_CONTROL_DIS_MODE
      drm/bridge: tc358768: Separate indirect register writes
      drm/bridge: tc358768: Support non-continuous clock
      drm/bridge: tc358768: Add LP mode command support
      drm/bridge: tc358768: Separate video format config
      drm/bridge: tc358768: Add support for long command tx via video buffer

Uwe Kleine-König (The Capable Hub) (2):
      drm/gma500: Drop unused include of <drm/drm_pciids.h>
      drm/mgag200: Drop unused include of <drm/drm_pciids.h>

Vitor Soares (1):
      drm/bridge: cdns-dsi: Replace deprecated UNIVERSAL_DEV_PM_OPS()

William Bright (2):
      dt-bindings: panel-simple-dsi: Add Team Source Display TST070WSNE-196C
      drm/panel: simple: Add Team Source Display TST070WSBE-196C panel

gyeyoung (1):
      drm/panthor: Fix missing declaration for panthor_transparent_hugepage

 Documentation/ABI/obsolete/sysfs-driver-ivpu       |   30 +
 Documentation/ABI/testing/sysfs-driver-ivpu        |   65 +
 Documentation/accel/amdxdna/amdnpu.rst             |   25 +
 .../bindings/display/bridge/lvds-codec.yaml        |    1 +
 .../bindings/display/bridge/simple-bridge.yaml     |    1 +
 .../bindings/display/bridge/waveshare,dsi2dpi.yaml |    9 +-
 .../display/panel/chipwealth,ch13726a.yaml         |   67 +
 .../bindings/display/panel/focaltech,ota7290b.yaml |   70 +
 .../bindings/display/panel/himax,hx83102.yaml      |    2 +
 .../bindings/display/panel/himax,hx8394.yaml       |    2 +
 .../bindings/display/panel/ilitek,ili9881c.yaml    |    2 +
 .../bindings/display/panel/jadard,jd9365da-h3.yaml |    6 +
 .../bindings/display/panel/novatek,nt35532.yaml    |   80 ++
 .../bindings/display/panel/panel-simple-dsi.yaml   |    2 +
 .../bindings/display/panel/panel-simple.yaml       |   32 +
 .../devicetree/bindings/gpu/arm,mali-bifrost.yaml  |    2 +
 .../devicetree/bindings/vendor-prefixes.yaml       |    2 +
 Documentation/gpu/drm-uapi.rst                     |    4 +
 Documentation/gpu/drm-usage-stats.rst              |    1 +
 MAINTAINERS                                        |   13 +-
 drivers/accel/amdxdna/Makefile                     |   12 +-
 drivers/accel/amdxdna/aie.c                        |  119 ++
 drivers/accel/amdxdna/aie.h                        |  111 ++
 drivers/accel/amdxdna/aie2_ctx.c                   |   86 +-
 drivers/accel/amdxdna/aie2_error.c                 |   17 +-
 drivers/accel/amdxdna/aie2_message.c               |  229 +--
 drivers/accel/amdxdna/aie2_msg_priv.h              |   41 +-
 drivers/accel/amdxdna/aie2_pci.c                   |  234 ++--
 drivers/accel/amdxdna/aie2_pci.h                   |  117 +-
 drivers/accel/amdxdna/aie2_pm.c                    |   22 +-
 drivers/accel/amdxdna/aie2_psp.c                   |  161 ---
 drivers/accel/amdxdna/aie2_smu.c                   |  156 ---
 drivers/accel/amdxdna/aie2_solver.c                |   10 +-
 drivers/accel/amdxdna/aie4_message.c               |   27 +
 drivers/accel/amdxdna/aie4_msg_priv.h              |   49 +
 drivers/accel/amdxdna/aie4_pci.c                   |  483 +++++++
 drivers/accel/amdxdna/aie4_pci.h                   |   53 +
 drivers/accel/amdxdna/aie4_sriov.c                 |   88 ++
 drivers/accel/amdxdna/aie_psp.c                    |  235 ++++
 drivers/accel/amdxdna/aie_smu.c                    |  153 +++
 drivers/accel/amdxdna/amdxdna_cbuf.c               |  280 ++++
 drivers/accel/amdxdna/amdxdna_cbuf.h               |   18 +
 drivers/accel/amdxdna/amdxdna_ctx.c                |    3 +-
 drivers/accel/amdxdna/amdxdna_ctx.h                |    1 +
 drivers/accel/amdxdna/amdxdna_debugfs.c            |  129 ++
 drivers/accel/amdxdna/amdxdna_debugfs.h            |   18 +
 drivers/accel/amdxdna/amdxdna_gem.c                |   95 +-
 drivers/accel/amdxdna/amdxdna_iommu.c              |   76 +-
 drivers/accel/amdxdna/amdxdna_mailbox.c            |   30 +-
 drivers/accel/amdxdna/amdxdna_mailbox.h            |    8 +-
 drivers/accel/amdxdna/amdxdna_pci_drv.c            |  134 +-
 drivers/accel/amdxdna/amdxdna_pci_drv.h            |   24 +-
 drivers/accel/amdxdna/amdxdna_sysfs.c              |    5 +-
 drivers/accel/amdxdna/amdxdna_ubuf.c               |   41 +-
 drivers/accel/amdxdna/npu1_regs.c                  |   30 +-
 drivers/accel/amdxdna/npu3_regs.c                  |   77 ++
 drivers/accel/amdxdna/npu4_regs.c                  |   71 +-
 drivers/accel/amdxdna/npu5_regs.c                  |   10 +-
 drivers/accel/amdxdna/npu6_regs.c                  |   10 +-
 drivers/accel/ethosu/ethosu_job.c                  |    1 -
 drivers/accel/ivpu/ivpu_drv.c                      |    8 +-
 drivers/accel/ivpu/ivpu_hw.h                       |   16 +-
 drivers/accel/ivpu/ivpu_hw_btrs.c                  |  112 +-
 drivers/accel/ivpu/ivpu_hw_btrs.h                  |   10 +-
 drivers/accel/ivpu/ivpu_hw_ip.c                    |   24 +-
 drivers/accel/ivpu/ivpu_jsm_msg.c                  |   18 +-
 drivers/accel/ivpu/ivpu_jsm_msg.h                  |    3 +-
 drivers/accel/ivpu/ivpu_sysfs.c                    |  190 ++-
 drivers/accel/ivpu/vpu_jsm_api.h                   |   34 +-
 drivers/accel/qaic/mhi_controller.c                |    2 +-
 drivers/accel/qaic/mhi_controller.h                |    9 +-
 drivers/accel/qaic/qaic.h                          |    9 +-
 drivers/accel/qaic/qaic_control.c                  |    2 +-
 drivers/accel/qaic/qaic_data.c                     |    2 +-
 drivers/accel/qaic/qaic_debugfs.c                  |   30 +-
 drivers/accel/qaic/qaic_debugfs.h                  |    2 +-
 drivers/accel/qaic/qaic_drv.c                      |    2 +-
 drivers/accel/qaic/qaic_ras.c                      |    1 -
 drivers/accel/qaic/qaic_ras.h                      |    1 +
 drivers/accel/qaic/qaic_ssr.c                      |    2 +-
 drivers/accel/qaic/qaic_ssr.h                      |    9 +-
 drivers/accel/qaic/qaic_timesync.c                 |    3 +-
 drivers/accel/qaic/qaic_timesync.h                 |    7 +-
 drivers/accel/qaic/sahara.c                        |    2 +-
 drivers/accel/qaic/sahara.h                        |    2 +-
 drivers/accel/rocket/rocket_job.c                  |    1 -
 drivers/dma-buf/.kunitconfig                       |    2 +
 drivers/dma-buf/Kconfig                            |   11 +-
 drivers/dma-buf/Makefile                           |    5 +-
 drivers/dma-buf/dma-fence-array.c                  |   13 +-
 drivers/dma-buf/dma-fence-unwrap.c                 |    3 +-
 drivers/dma-buf/dma-fence.c                        |    3 +-
 drivers/dma-buf/dma-resv.c                         |    3 +-
 drivers/dma-buf/selftest.c                         |  167 ---
 drivers/dma-buf/selftest.h                         |   30 -
 drivers/dma-buf/selftests.h                        |   16 -
 drivers/dma-buf/st-dma-fence-chain.c               |  217 ++-
 drivers/dma-buf/st-dma-fence-unwrap.c              |  292 ++--
 drivers/dma-buf/st-dma-fence.c                     |  200 ++-
 drivers/dma-buf/st-dma-resv.c                      |  145 +-
 drivers/dma-buf/udmabuf.c                          |   58 +-
 drivers/gpu/drm/adp/adp_drv.c                      |    2 -
 drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c             |    6 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c         |    1 -
 drivers/gpu/drm/amd/amdgpu/amdgpu_job.c            |   27 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_job.h            |    5 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h          |    8 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm_sdma.c        |    8 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_xcp.c            |    8 +-
 drivers/gpu/drm/ast/ast_2000.c                     |   61 +-
 drivers/gpu/drm/ast/ast_2100.c                     |  292 ++--
 drivers/gpu/drm/ast/ast_2300.c                     |  392 +++---
 drivers/gpu/drm/ast/ast_2500.c                     |  327 ++---
 drivers/gpu/drm/ast/ast_dp501.c                    |  130 +-
 drivers/gpu/drm/ast/ast_drv.c                      |   84 +-
 drivers/gpu/drm/ast/ast_drv.h                      |   60 +-
 drivers/gpu/drm/ast/ast_mode.c                     |   86 +-
 drivers/gpu/drm/ast/ast_post.c                     |   48 +-
 drivers/gpu/drm/ast/ast_post.h                     |   20 +-
 drivers/gpu/drm/ast/ast_reg.h                      |  211 ++-
 drivers/gpu/drm/bridge/Kconfig                     |   10 +
 drivers/gpu/drm/bridge/Makefile                    |    1 +
 drivers/gpu/drm/bridge/adv7511/adv7511_drv.c       |    2 -
 drivers/gpu/drm/bridge/analogix/Kconfig            |    3 +
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |  235 ++--
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.h |    1 -
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c     |   11 +-
 drivers/gpu/drm/bridge/imx/Kconfig                 |   28 +-
 drivers/gpu/drm/bridge/imx/Makefile                |    3 +-
 drivers/gpu/drm/bridge/imx/imx-legacy-bridge.c     |   91 --
 .../bridge/imx/imx8mp-hdmi-tx-connector-fixup.c    |   75 +
 .../bridge/imx/imx8mp-hdmi-tx-connector-fixup.dtso |   30 +
 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c        |    1 +
 drivers/gpu/drm/bridge/ite-it6263.c                |   29 +-
 drivers/gpu/drm/bridge/ite-it6505.c                |    2 +-
 drivers/gpu/drm/bridge/lontium-lt8912b.c           |    1 +
 drivers/gpu/drm/bridge/microchip-lvds.c            |   63 +-
 drivers/gpu/drm/bridge/of-display-mode-bridge.c    |   93 ++
 drivers/gpu/drm/bridge/simple-bridge.c             |    5 +
 drivers/gpu/drm/bridge/synopsys/dw-dp.c            |    4 -
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c          |   49 +-
 drivers/gpu/drm/bridge/tc358768.c                  |  202 ++-
 drivers/gpu/drm/bridge/ti-sn65dsi83.c              |   14 +-
 drivers/gpu/drm/bridge/ti-sn65dsi86.c              |    2 -
 drivers/gpu/drm/bridge/ti-tfp410.c                 |    2 +-
 drivers/gpu/drm/bridge/waveshare-dsi.c             |    5 +-
 drivers/gpu/drm/display/drm_bridge_connector.c     |   11 +-
 drivers/gpu/drm/drm_atomic.c                       |  110 +-
 drivers/gpu/drm/drm_auth.c                         |    2 +-
 drivers/gpu/drm/drm_bridge.c                       |   96 +-
 drivers/gpu/drm/drm_colorop.c                      |    8 +-
 drivers/gpu/drm/drm_connector.c                    |    9 +-
 drivers/gpu/drm/drm_encoder.c                      |   18 +-
 drivers/gpu/drm/drm_fourcc.c                       |   25 +-
 drivers/gpu/drm/drm_gem.c                          |   10 +
 drivers/gpu/drm/drm_gpusvm.c                       |   53 +-
 drivers/gpu/drm/drm_gpuvm.c                        |    3 +
 drivers/gpu/drm/drm_mipi_dsi.c                     |   28 +
 drivers/gpu/drm/drm_of.c                           |   34 +
 drivers/gpu/drm/drm_pagemap.c                      |  229 ++-
 drivers/gpu/drm/drm_panel.c                        |   23 +
 drivers/gpu/drm/drm_vblank.c                       |   36 +-
 drivers/gpu/drm/etnaviv/etnaviv_drv.h              |   12 -
 drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c       |    3 +-
 drivers/gpu/drm/etnaviv/etnaviv_sched.c            |    1 -
 drivers/gpu/drm/exynos/Kconfig                     |    3 +
 drivers/gpu/drm/exynos/exynos_dp.c                 |  110 +-
 drivers/gpu/drm/gma500/psb_drv.c                   |    1 -
 drivers/gpu/drm/hyperv/hyperv_drm_proto.c          |    2 +-
 drivers/gpu/drm/i915/Kconfig.debug                 |    2 +-
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     |    3 +-
 drivers/gpu/drm/imagination/pvr_fw_trace.c         |    2 +-
 drivers/gpu/drm/imagination/pvr_job.c              |    8 +-
 drivers/gpu/drm/imagination/pvr_queue.c            |  155 ++-
 drivers/gpu/drm/imagination/pvr_queue.h            |    2 +-
 .../gpu/drm/imagination/pvr_rogue_fwif_shared.h    |   10 +-
 drivers/gpu/drm/imagination/pvr_sync.c             |    8 +-
 drivers/gpu/drm/imagination/pvr_sync.h             |    2 +-
 drivers/gpu/drm/imx/dc/dc-kms.c                    |    8 +-
 drivers/gpu/drm/imx/dcss/dcss-kms.c                |    2 -
 drivers/gpu/drm/imx/ipuv3/Kconfig                  |    6 +-
 drivers/gpu/drm/imx/ipuv3/imx-ldb.c                |    8 +-
 drivers/gpu/drm/imx/ipuv3/parallel-display.c       |    7 +-
 drivers/gpu/drm/imx/lcdc/imx-lcdc.c                |    2 -
 drivers/gpu/drm/ingenic/ingenic-drm-drv.c          |    2 -
 drivers/gpu/drm/kmb/kmb_dsi.c                      |    4 +-
 drivers/gpu/drm/lima/lima_sched.c                  |    1 -
 drivers/gpu/drm/mediatek/mtk_dpi.c                 |    1 -
 drivers/gpu/drm/mediatek/mtk_dsi.c                 |    1 -
 drivers/gpu/drm/meson/meson_encoder_cvbs.c         |    2 -
 drivers/gpu/drm/meson/meson_encoder_hdmi.c         |    2 -
 drivers/gpu/drm/mgag200/mgag200_drv.c              |    1 -
 drivers/gpu/drm/mgag200/mgag200_g200se.c           |   13 +-
 drivers/gpu/drm/mgag200/mgag200_mode.c             |  109 +-
 drivers/gpu/drm/mgag200/mgag200_reg.h              |    1 +
 drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c           |    7 -
 drivers/gpu/drm/msm/dp/dp_drm.c                    |    2 -
 drivers/gpu/drm/msm/dsi/dsi_manager.c              |    4 -
 drivers/gpu/drm/msm/hdmi/hdmi.c                    |    2 -
 drivers/gpu/drm/msm/msm_gem_vma.c                  |    1 -
 drivers/gpu/drm/msm/msm_ringbuffer.c               |    1 -
 drivers/gpu/drm/mxsfb/Kconfig                      |    2 +
 drivers/gpu/drm/mxsfb/lcdif_drv.c                  |   61 +-
 drivers/gpu/drm/nouveau/dispnv50/disp.c            |    2 +-
 drivers/gpu/drm/nouveau/nouveau_abi16.c            |    2 +-
 drivers/gpu/drm/nouveau/nouveau_bios.c             |   21 +-
 drivers/gpu/drm/nouveau/nouveau_drm.c              |    2 +-
 drivers/gpu/drm/nouveau/nouveau_sched.c            |    4 +-
 drivers/gpu/drm/omapdrm/dss/output.c               |   11 +-
 drivers/gpu/drm/omapdrm/omap_drv.c                 |    2 -
 drivers/gpu/drm/panel/Kconfig                      |   58 +-
 drivers/gpu/drm/panel/Makefile                     |    3 +
 drivers/gpu/drm/panel/panel-chipwealth-ch13726a.c  |  333 +++++
 drivers/gpu/drm/panel/panel-edp.c                  |    2 +
 drivers/gpu/drm/panel/panel-focaltech-ota7290b.c   |  225 +++
 drivers/gpu/drm/panel/panel-himax-hx83102.c        |  144 +-
 drivers/gpu/drm/panel/panel-himax-hx8394.c         |  279 +++-
 drivers/gpu/drm/panel/panel-ilitek-ili9881c.c      |  251 +++-
 drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c   | 1423 ++++++++++++++++++-
 drivers/gpu/drm/panel/panel-novatek-nt35532.c      |  796 +++++++++++
 .../gpu/drm/panel/panel-panasonic-vvx10f034n00.c   |   24 +-
 drivers/gpu/drm/panel/panel-simple.c               |  482 +++++++
 drivers/gpu/drm/panfrost/panfrost_device.c         |   34 +-
 drivers/gpu/drm/panfrost/panfrost_device.h         |    1 +
 drivers/gpu/drm/panfrost/panfrost_drv.c            |    1 +
 drivers/gpu/drm/panfrost/panfrost_job.c            |    1 -
 drivers/gpu/drm/panthor/Kconfig                    |    1 -
 drivers/gpu/drm/panthor/panthor_device.c           |   39 +-
 drivers/gpu/drm/panthor/panthor_device.h           |  165 ++-
 drivers/gpu/drm/panthor/panthor_drv.c              |   41 +-
 drivers/gpu/drm/panthor/panthor_drv.h              |    2 +
 drivers/gpu/drm/panthor/panthor_fw.c               |   56 +-
 drivers/gpu/drm/panthor/panthor_fw.h               |    1 +
 drivers/gpu/drm/panthor/panthor_fw_regs.h          |   29 +
 drivers/gpu/drm/panthor/panthor_gem.c              | 1453 +++++++++++++++++---
 drivers/gpu/drm/panthor/panthor_gem.h              |  136 +-
 drivers/gpu/drm/panthor/panthor_gpu.c              |  101 +-
 drivers/gpu/drm/panthor/panthor_gpu.h              |    6 +
 drivers/gpu/drm/panthor/panthor_gpu_regs.h         |  119 ++
 drivers/gpu/drm/panthor/panthor_heap.c             |    2 +-
 drivers/gpu/drm/panthor/panthor_hw.c               |   56 +-
 drivers/gpu/drm/panthor/panthor_hw.h               |    2 +-
 drivers/gpu/drm/panthor/panthor_mmu.c              |  559 ++++++--
 drivers/gpu/drm/panthor/panthor_mmu.h              |    8 +
 drivers/gpu/drm/panthor/panthor_mmu_regs.h         |   69 +
 drivers/gpu/drm/panthor/panthor_pwr.c              |   95 +-
 drivers/gpu/drm/panthor/panthor_pwr_regs.h         |   79 ++
 drivers/gpu/drm/panthor/panthor_regs.h             |  291 ----
 drivers/gpu/drm/panthor/panthor_sched.c            |   90 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_encoder.c  |   31 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_encoder.h  |    1 +
 drivers/gpu/drm/renesas/rcar-du/rcar_du_kms.c      |    2 +
 drivers/gpu/drm/renesas/rz-du/rzg2l_du_encoder.c   |   15 +-
 drivers/gpu/drm/renesas/rz-du/rzg2l_du_vsp.c       |   16 +
 drivers/gpu/drm/renesas/rz-du/rzg2l_du_vsp.h       |    2 +
 drivers/gpu/drm/renesas/rz-du/rzg2l_mipi_dsi.c     |   46 +-
 drivers/gpu/drm/renesas/shmobile/shmob_drm_crtc.c  |   16 +-
 drivers/gpu/drm/rockchip/Kconfig                   |    1 +
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c    |   67 +-
 drivers/gpu/drm/rockchip/cdn-dp-core.c             |    2 -
 drivers/gpu/drm/rockchip/cdn-dp-reg.c              |    2 +
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c          |   33 +-
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c     |   15 +-
 drivers/gpu/drm/rockchip/inno_hdmi-rockchip.c      |    5 +-
 drivers/gpu/drm/rockchip/rk3066_hdmi.c             |    2 -
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c        |    2 +-
 drivers/gpu/drm/rockchip/rockchip_lvds.c           |    6 -
 drivers/gpu/drm/rockchip/rockchip_rgb.c            |    9 -
 drivers/gpu/drm/scheduler/Makefile                 |    2 +-
 drivers/gpu/drm/scheduler/sched_entity.c           |  175 +--
 drivers/gpu/drm/scheduler/sched_fence.c            |    2 +-
 drivers/gpu/drm/scheduler/sched_internal.h         |   70 +-
 drivers/gpu/drm/scheduler/sched_main.c             |  351 +----
 drivers/gpu/drm/scheduler/sched_rq.c               |  383 ++++++
 drivers/gpu/drm/scheduler/tests/Makefile           |    3 +-
 drivers/gpu/drm/scheduler/tests/mock_scheduler.c   |    1 -
 drivers/gpu/drm/scheduler/tests/tests_scheduler.c  |  882 ++++++++++++
 drivers/gpu/drm/sysfb/corebootdrm.c                |   21 +
 drivers/gpu/drm/sysfb/efidrm.c                     |   19 +
 drivers/gpu/drm/sysfb/ofdrm.c                      |   19 +
 drivers/gpu/drm/sysfb/simpledrm.c                  |   21 +
 drivers/gpu/drm/sysfb/vesadrm.c                    |   19 +
 drivers/gpu/drm/tegra/hdmi.c                       |    2 -
 drivers/gpu/drm/tegra/rgb.c                        |    2 -
 drivers/gpu/drm/tests/drm_bridge_test.c            |    2 -
 drivers/gpu/drm/tidss/tidss_encoder.c              |    8 +-
 drivers/gpu/drm/tidss/tidss_kms.c                  |    2 -
 drivers/gpu/drm/tilcdc/tilcdc_crtc.c               |    2 +-
 drivers/gpu/drm/tilcdc/tilcdc_encoder.c            |    6 -
 drivers/gpu/drm/tve200/tve200_drv.c                |    6 +-
 drivers/gpu/drm/v3d/Makefile                       |    1 +
 drivers/gpu/drm/v3d/v3d_debugfs.c                  |   23 +-
 drivers/gpu/drm/v3d/v3d_drv.c                      |  160 +--
 drivers/gpu/drm/v3d/v3d_drv.h                      |   18 +
 drivers/gpu/drm/v3d/v3d_gem.c                      |   17 +-
 drivers/gpu/drm/v3d/v3d_irq.c                      |   15 +-
 drivers/gpu/drm/v3d/v3d_mmu.c                      |   10 +-
 drivers/gpu/drm/v3d/v3d_perfmon.c                  |   18 +-
 drivers/gpu/drm/v3d/v3d_power.c                    |   87 ++
 drivers/gpu/drm/v3d/v3d_sched.c                    |    1 -
 drivers/gpu/drm/v3d/v3d_submit.c                   |   19 +-
 drivers/gpu/drm/vc4/vc4_bo.c                       |    1 -
 drivers/gpu/drm/vc4/vc4_drv.c                      |    2 -
 drivers/gpu/drm/vc4/vc4_gem.c                      |    1 -
 drivers/gpu/drm/vc4/vc4_irq.c                      |   33 +-
 drivers/gpu/drm/vc4/vc4_plane.c                    |    2 -
 drivers/gpu/drm/vc4/vc4_render_cl.c                |    1 -
 drivers/gpu/drm/vc4/vc4_validate.c                 |    1 -
 drivers/gpu/drm/verisilicon/vs_bridge.c            |    1 -
 drivers/gpu/drm/verisilicon/vs_plane.c             |   54 +-
 drivers/gpu/drm/verisilicon/vs_plane.h             |   18 +-
 drivers/gpu/drm/verisilicon/vs_primary_plane.c     |   48 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_kms.h                |    2 -
 drivers/gpu/drm/vmwgfx/vmwgfx_ldu.c                |    1 +
 drivers/gpu/drm/vmwgfx/vmwgfx_scrn.c               |    1 +
 drivers/gpu/drm/vmwgfx/vmwgfx_stdu.c               |    1 +
 drivers/gpu/drm/vmwgfx/vmwgfx_vkms.c               |   70 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_vkms.h               |    2 +-
 drivers/gpu/drm/xe/xe_dep_scheduler.c              |    1 -
 drivers/gpu/drm/xe/xe_execlist.c                   |    1 -
 drivers/gpu/drm/xe/xe_gpu_scheduler.c              |    1 -
 drivers/gpu/drm/xe/xe_svm.c                        |    1 -
 drivers/gpu/drm/xe/xe_sync.c                       |    2 +-
 drivers/gpu/drm/xe/xe_vm.c                         |    2 +-
 drivers/gpu/drm/xlnx/Kconfig                       |    4 +-
 drivers/gpu/drm/xlnx/zynqmp_disp.c                 |   56 +-
 drivers/gpu/drm/xlnx/zynqmp_kms.c                  |    6 -
 include/drm/bridge/analogix_dp.h                   |    8 +-
 include/drm/bridge/dw_hdmi.h                       |    6 +
 include/drm/bridge/imx.h                           |   17 -
 include/drm/bridge/of-display-mode-bridge.h        |   17 +
 include/drm/drm_bridge.h                           |   73 +-
 include/drm/drm_connector.h                        |    2 +-
 include/drm/drm_debugfs_crc.h                      |    2 +-
 include/drm/drm_encoder.h                          |    4 +
 include/drm/drm_gpusvm.h                           |   12 +-
 include/drm/drm_mipi_dsi.h                         |    1 +
 include/drm/drm_of.h                               |   13 +
 include/drm/drm_pagemap.h                          |    9 +-
 include/drm/drm_panel.h                            |    1 +
 include/drm/gpu_scheduler.h                        |   45 +-
 include/linux/dma-fence-array.h                    |    6 +-
 include/trace/events/amdxdna.h                     |   42 +-
 include/trace/events/dma_fence.h                   |   40 +-
 include/uapi/drm/amdxdna_accel.h                   |    3 +-
 include/uapi/drm/drm.h                             |   27 +-
 include/uapi/drm/drm_fourcc.h                      |   48 +-
 include/uapi/drm/drm_mode.h                        |   19 +-
 include/uapi/drm/drm_sarea.h                       |   20 +-
 349 files changed, 15166 insertions(+), 5256 deletions(-)
 create mode 100644 Documentation/ABI/obsolete/sysfs-driver-ivpu
 create mode 100644 Documentation/ABI/testing/sysfs-driver-ivpu
 create mode 100644 Documentation/devicetree/bindings/display/panel/chipwealth,ch13726a.yaml
 create mode 100644 Documentation/devicetree/bindings/display/panel/focaltech,ota7290b.yaml
 create mode 100644 Documentation/devicetree/bindings/display/panel/novatek,nt35532.yaml
 create mode 100644 drivers/accel/amdxdna/aie.c
 create mode 100644 drivers/accel/amdxdna/aie.h
 delete mode 100644 drivers/accel/amdxdna/aie2_psp.c
 delete mode 100644 drivers/accel/amdxdna/aie2_smu.c
 create mode 100644 drivers/accel/amdxdna/aie4_message.c
 create mode 100644 drivers/accel/amdxdna/aie4_msg_priv.h
 create mode 100644 drivers/accel/amdxdna/aie4_pci.c
 create mode 100644 drivers/accel/amdxdna/aie4_pci.h
 create mode 100644 drivers/accel/amdxdna/aie4_sriov.c
 create mode 100644 drivers/accel/amdxdna/aie_psp.c
 create mode 100644 drivers/accel/amdxdna/aie_smu.c
 create mode 100644 drivers/accel/amdxdna/amdxdna_cbuf.c
 create mode 100644 drivers/accel/amdxdna/amdxdna_cbuf.h
 create mode 100644 drivers/accel/amdxdna/amdxdna_debugfs.c
 create mode 100644 drivers/accel/amdxdna/amdxdna_debugfs.h
 create mode 100644 drivers/accel/amdxdna/npu3_regs.c
 create mode 100644 drivers/dma-buf/.kunitconfig
 delete mode 100644 drivers/dma-buf/selftest.c
 delete mode 100644 drivers/dma-buf/selftest.h
 delete mode 100644 drivers/dma-buf/selftests.h
 delete mode 100644 drivers/gpu/drm/bridge/imx/imx-legacy-bridge.c
 create mode 100644 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx-connector-fixup.c
 create mode 100644 drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx-connector-fixup.dtso
 create mode 100644 drivers/gpu/drm/bridge/of-display-mode-bridge.c
 create mode 100644 drivers/gpu/drm/panel/panel-chipwealth-ch13726a.c
 create mode 100644 drivers/gpu/drm/panel/panel-focaltech-ota7290b.c
 create mode 100644 drivers/gpu/drm/panel/panel-novatek-nt35532.c
 create mode 100644 drivers/gpu/drm/panthor/panthor_fw_regs.h
 create mode 100644 drivers/gpu/drm/panthor/panthor_gpu_regs.h
 create mode 100644 drivers/gpu/drm/panthor/panthor_mmu_regs.h
 create mode 100644 drivers/gpu/drm/panthor/panthor_pwr_regs.h
 delete mode 100644 drivers/gpu/drm/panthor/panthor_regs.h
 create mode 100644 drivers/gpu/drm/scheduler/sched_rq.c
 create mode 100644 drivers/gpu/drm/scheduler/tests/tests_scheduler.c
 create mode 100644 drivers/gpu/drm/v3d/v3d_power.c
 delete mode 100644 include/drm/bridge/imx.h
 create mode 100644 include/drm/bridge/of-display-mode-bridge.h
