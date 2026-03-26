Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mNkjFUFOxWkU8wQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 16:18:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C6E3376B8
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 16:18:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9B2B10E955;
	Thu, 26 Mar 2026 15:18:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="JYRM4LU5";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="FuDRB8K1";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="JYRM4LU5";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="FuDRB8K1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A51C10E2D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 15:18:15 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id F2C0A4D2C9;
 Thu, 26 Mar 2026 15:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1774538294; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=A5ReqOzokrz9ICoZbjJMqeO6dMHo5cPC0DJmd00jmzw=;
 b=JYRM4LU5CcDoHvNQ5lD99JpPp5/xs+sVHlYcsAnsqUIQlVs47lv+yHFxN6EVwNX4VGPIBb
 WMe4IJ8h1//7ebEJER5weh9uJkNNNprGSKREgJ8k0qOefImtbmxKb1et5yVlyp0BP0YWer
 v9j2HJbsk4tm4VWjnSxnw9VvMB7WHNY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1774538294;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=A5ReqOzokrz9ICoZbjJMqeO6dMHo5cPC0DJmd00jmzw=;
 b=FuDRB8K1QhOOsSI4AGsEyqY5ybJrd1pgjz2IoChkEomYZes5rgTzJivwfARcNA34AurPuO
 sua8RW5mbgljlWCw==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1774538294; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=A5ReqOzokrz9ICoZbjJMqeO6dMHo5cPC0DJmd00jmzw=;
 b=JYRM4LU5CcDoHvNQ5lD99JpPp5/xs+sVHlYcsAnsqUIQlVs47lv+yHFxN6EVwNX4VGPIBb
 WMe4IJ8h1//7ebEJER5weh9uJkNNNprGSKREgJ8k0qOefImtbmxKb1et5yVlyp0BP0YWer
 v9j2HJbsk4tm4VWjnSxnw9VvMB7WHNY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1774538294;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=A5ReqOzokrz9ICoZbjJMqeO6dMHo5cPC0DJmd00jmzw=;
 b=FuDRB8K1QhOOsSI4AGsEyqY5ybJrd1pgjz2IoChkEomYZes5rgTzJivwfARcNA34AurPuO
 sua8RW5mbgljlWCw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 904624A0A6;
 Thu, 26 Mar 2026 15:18:13 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id QH8GIjVOxWlLVwAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Thu, 26 Mar 2026 15:18:13 +0000
Date: Thu, 26 Mar 2026 16:18:12 +0100
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dim-tools@lists.freedesktop.org
Subject: [PULL] drm-misc-next
Message-ID: <20260326151812.GA76082@linux.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Spam-Flag: NO
X-Spam-Score: -4.30
X-Spam-Level: 
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona.vetter@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:rodrigo.vivi@intel.com,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:ogabbay@kernel.org,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:dim-tools@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[suse.de:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.fritz.box:mid,suse.com:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,haoyu.lu:url,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 03C6E3376B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave, Sima,

this is the final PR for drm-misc-next that goes towards v7.1. It
consists mostly of smaller improvements all over the place, plus a
number of new panel drivers.

Best regards
Thomas

drm-misc-next-2026-03-26:
drm-misc-next for v7.1:

UAPI Changes:

amdxdna:
- support per-BO memory-usage queries

docs:
- Improve UAPI documentation

panthor:
- extend timestamp query with flags

Core Changes:

edid:
- provide enum drm_output_color_format; mass-convert drivers

gem-dma:
- use drm_dev_dma_dev() for DMA mappings
- set VM_DONTDUMP on mmap

mipi-dbi:
- drop simple-display; mass-convert drivers

prime:
- use drm_dev_dma_dev() for DMA mappings

ttm:
- improve handling of gfp_retry_mayfail

Driver Changes:

amdgpu:
- use atomic_create_state for private_obj

amdxdna:
- refactor GEM implementation
- fixes

bridge:
- provide clear-and-put helper for reliable cleanup
- analogix_dp: Use DP helpers for link training
- lontium-lt8713sx: Fix 64-bit division and Kconfig
- samsung-dsim: Use clear-and-put

imagination:
- improve power-off sequence
- support context-reset notification from firmware

komeda:
- support Arm China Linlon D6 plus DT bindings

mediatek:
- use drm_dev_dma_dev() for DMA mappings

panel:
- support Himax HX83121A plus DT bindings
- support JuTouch JT070TM041 plus DT bindings
- support Samsung S6E8FC0 plus DT bindings
- himax-hx83102c: support Samsung S6E8FC0 plus DT bindings; support backlight
- ili9806e: support Rocktech RK050HR345-CT106A plus DT bindings
- simple: support Tianma TM050RDH03 plus DT bindings

panthor:
- support various sources for timestamp queries
- fixes

omapdrm:
- use atomic_create_state for private_obj

rcar-du:
- fix suspend/resume wrt VSP interface
- fix leak of device_link
- clean up

sun4i:
- use drm_dev_dma_dev() for DMA mappings

tegra:
- use atomic_create_state for private_obj

xe:
- send 'none' recovery method for XE_WEDGED_MODE_UPON_ANY_HANG_NO_RESET
The following changes since commit ade00a6c903f85031061b4e1a45e789b210f9055:

  accel/ivpu: Perform engine reset instead of device recovery on TDR (2026-03-20 08:03:11 +0100)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-2026-03-26

for you to fetch changes up to 3bce3fdd1ff2ba242f76ab66659fff27207299f1:

  drm: rcar-du: Don't leak device_link to CMM (2026-03-26 15:16:25 +0200)

----------------------------------------------------------------
drm-misc-next for v7.1:

UAPI Changes:

amdxdna:
- support per-BO memory-usage queries

docs:
- Improve UAPI documentation

panthor:
- extend timestamp query with flags

Core Changes:

edid:
- provide enum drm_output_color_format; mass-convert drivers

gem-dma:
- use drm_dev_dma_dev() for DMA mappings
- set VM_DONTDUMP on mmap

mipi-dbi:
- drop simple-display; mass-convert drivers

prime:
- use drm_dev_dma_dev() for DMA mappings

ttm:
- improve handling of gfp_retry_mayfail

Driver Changes:

amdgpu:
- use atomic_create_state for private_obj

amdxdna:
- refactor GEM implementation
- fixes

bridge:
- provide clear-and-put helper for reliable cleanup
- analogix_dp: Use DP helpers for link training
- lontium-lt8713sx: Fix 64-bit division and Kconfig
- samsung-dsim: Use clear-and-put

imagination:
- improve power-off sequence
- support context-reset notification from firmware

komeda:
- support Arm China Linlon D6 plus DT bindings

mediatek:
- use drm_dev_dma_dev() for DMA mappings

panel:
- support Himax HX83121A plus DT bindings
- support JuTouch JT070TM041 plus DT bindings
- support Samsung S6E8FC0 plus DT bindings
- himax-hx83102c: support Samsung S6E8FC0 plus DT bindings; support backlight
- ili9806e: support Rocktech RK050HR345-CT106A plus DT bindings
- simple: support Tianma TM050RDH03 plus DT bindings

panthor:
- support various sources for timestamp queries
- fixes

omapdrm:
- use atomic_create_state for private_obj

rcar-du:
- fix suspend/resume wrt VSP interface
- fix leak of device_link
- clean up

sun4i:
- use drm_dev_dma_dev() for DMA mappings

tegra:
- use atomic_create_state for private_obj

xe:
- send 'none' recovery method for XE_WEDGED_MODE_UPON_ANY_HANG_NO_RESET

----------------------------------------------------------------
Alexandru Dadu (3):
      drm/imagination: Add missing rogue context reset reasons
      drm/imagination: Switch reset_reason fields from enum to u32
      drm/imagination: Implement handling of context reset notification

Arnd Bergmann (2):
      drm/bridge: lt8713sx select CONFIG_CRC8
      drm/bridge: lt8713sx: avoid 64-bit division

Brajesh Gupta (2):
      drm/imagination: Improve firmware power off for layout_mars config
      drm/imagination: Skip 2nd thread DM association for non META Firmware

Chen-Yu Tsai (5):
      drm/prime: Limit scatter list size with dedicated DMA device
      drm/gem-dma: Support dedicated DMA device for allocation and mapping
      drm/mediatek: Set dedicated DMA device and drop custom GEM callbacks
      drm/sun4i: Use backend/mixer as dedicated DMA device
      drm/gem-dma: set VM_DONTDUMP for mmap

Christian Hewitt (1):
      drm/panthor: correct firmware related messages

Cunyuan Liu (3):
      dt-bindings: vendor-prefixes: Add Arm Technology (China) Co., Ltd.
      dt-bindings: display: arm,komeda: add Arm China Linlon D6 compatible
      drm/komeda: Add support for Arm China Linlon-D6

Damon Ding (5):
      drm/bridge: analogix_dp: Reuse &link_train.training_lane[] to set DPCD DP_TRAINING_LANEx_SET
      drm/bridge: analogix_dp: Apply DP helper API drm_dp_dpcd_read_link_status()
      drm/bridge: analogix_dp: Apply DP helper API drm_dp_clock_recovery_ok()
      drm/bridge: analogix_dp: Apply DP helper API drm_dp_channel_eq_ok()
      drm/bridge: analogix_dp: Apply DP helper APIs to get adjusted voltages and pre-emphasises

Dario Binacchi (4):
      drm/panel: ilitek-ili9806e: rename to specific DSI driver
      drm/panel: ilitek-ili9806e: split core and DSI logic
      dt-bindings: ili9806e: add Rocktech RK050HR345-CT106A display
      drm/panel: ilitek-ili9806e: add Rocktech RK050HR345-CT106A SPI panel

Dmitry Baryshkov (1):
      drm/panel: sharp-ls043t1le01: make use of prepare_prev_first

Icenowy Zheng (1):
      drm: verisilicon: make vs_dc_platform_driver static

Julian Braha (1):
      drm: fix dead default for DRM_TTM_KUNIT_TEST

Krzysztof Kozlowski (1):
      dt-bindings: display: panel: Align style of "true" properties

Laurent Pinchart (4):
      drm: rcar-du: Ensure correct suspend/resume ordering with VSP
      drm: rcar-du: Store CMM device pointer instead of platform_device
      drm: rcar-du: Use __free() to simplify device_node handling
      drm: rcar-du: Don't leak device_link to CMM

Liu Ying (2):
      dt-bindings: display: simple: Add Tianma TM050RDH03 panel
      drm/panel: simple: Add Tianma TM050RDH03 panel

Luca Ceresoli (2):
      drm/bridge: add drm_bridge_clear_and_put()
      drm/bridge: samsung-dsim: use drm_bridge_clear_and_put() to put the next bridge

Marcin Slusarz (1):
      drm/panthor: extend timestamp query with flags

Max Zhen (2):
      accel/amdxdna: Refactor GEM BO handling and add helper APIs for address retrieval
      accel/amdxdna: Add per-process BO memory usage query support

Maxime Ripard (18):
      drm/amdgpu: Switch private_obj initialization to atomic_create_state
      drm/omapdrm: Switch private_obj initialization to atomic_create_state
      drm/tegra: Switch private_obj initialization to atomic_create_state
      drm/atomic: Remove state argument to drm_atomic_private_obj_init
      drm/connector: Introduce drm_output_color_format enum
      drm/edid: Convert to drm_output_color_format enum
      drm/display: hdmi: Convert to drm_output_color_format
      drm/amdgpu: display: Convert to drm_output_color_format
      drm/bridge: adv7511: Convert to drm_output_color_format
      drm/bridge: analogix: Convert to drm_output_color_format
      drm/bridge: cadence: Convert to drm_output_color_format
      drm/bridge: synopsys: dw-dp: Convert to drm_output_color_format
      drm/bridge: synopsys: dw-hdmi: Convert to drm_output_color_format
      drm/arm: komeda: Convert to drm_output_color_format
      drm/mediatek: dp: Convert to drm_output_color_format
      drm/rockchip: analogix: Convert to drm_output_color_format
      drm/connector: Remove DRM_COLOR_FORMAT defines
      drm/display: hdmi: Use drm_output_color_format instead of hdmi_colorspace

Mithil Bavishi (3):
      dt-bindings: vendor-prefixes: Add Doestek
      dt-bindings: display: bridge: lvds-codec: add doestek,dtc34lm85am
      dt-bindings: display: panel-lvds: Add compatibles for Samsung LTN070NL01 and LTN101AL03 panels

Pengyu Luo (2):
      dt-bindings: display: panel: Add Himax HX83121A
      drm/panel: Add Himax HX83121A panel driver

Raag Jadav (3):
      drm/doc: Update documentation for 'none' recovery method
      drm: Update log for 'none' recovery method
      drm/xe: Send 'none' recovery method for XE_WEDGED_MODE_UPON_ANY_HANG_NO_RESET

Sebastian Reichel (1):
      drm/panel: simple: Correct G190EAN01 prepare timing

Steffen Trumtrar (2):
      dt-bindings: display: simple: Add JuTouch JT070TM041 panel
      drm/panel: simple: add JuTouch JT070TM041

Thomas Hellström (3):
      drm/ttm: Don't spam the log on buffer object backing store allocation failure
      drm/ttm: Avoid invoking the OOM killer when reading back swapped content
      drm/ttm: Update the struct ttm_operation_ctx kerneldoc

Thomas Zimmermann (16):
      drm/mipi-dbi: Only modify planes on enabled CRTCs
      drm/mipi-dbi: Support custom pipelines with drm_mipi_dbi_dev_init()
      drm/mipi-dbi: Provide callbacks for atomic interfaces
      drm/hx8357d: Use regular atomic helpers; drop simple-display helpers
      drm/ili9163: Use regular atomic helpers; drop simple-display helpers
      drm/ili9225: Use regular atomic helpers; drop simple-display helpers
      drm/ili9341: Use regular atomic helpers; drop simple-display helpers
      drm/ili9486: Use regular atomic helpers; drop simple-display helpers
      drm/mi0283qt: Use regular atomic helpers; drop simple-display helpers
      drm/panel-mipi-dbi: Use regular atomic helpers; drop simple-display helpers
      drm/st7586: Use regular atomic helpers; drop simple-display helpers
      drm/st7735r: Rename struct st7735r_priv to struct st7735r_device
      drm/st7735r: Rename priv variable to st7735r
      drm/st7735r: Use regular atomic helpers; drop simple-display helpers
      drm/mipi-dbi: Remove simple-display helpers from mipi-dbi
      drm/simple-kms: Deprecate simple-kms helpers

Tvrtko Ursulin (1):
      drm/gem: Improve drm_gem_objects_lookup() kerneldoc

Val Packett (4):
      dt-bindings: vendor-prefixes: Add Holitech
      dt-bindings: display: panel: Add compatible for Holitech HTF065H045
      drm/panel: himax-hx83102: Add support for Holitech HTF065H045
      drm/panel: himax-hx83102: Add support for DSI DCS backlight control

Wendy Liang (1):
      accel/amdxdna: Return ERR_PTR on dma_alloc_noncoherent failure

Yedaya Katsman (2):
      dt-bindings: display: panel: Add Samsung S6E8FC0-M1906F9
      drm: panel: Add Samsung S6E8FC0 DSI controller for M1906F9 panel

haoyu.lu (1):
      accel/amdxdna: fix missing newline in pr_err message

 .../devicetree/bindings/display/arm,komeda.yaml    |   4 +-
 .../bindings/display/bridge/lvds-codec.yaml        |   1 +
 .../display/panel/feiyang,fy07024di26a30d.yaml     |   1 -
 .../bindings/display/panel/himax,hx83102.yaml      |   2 +
 .../bindings/display/panel/himax,hx83121a.yaml     |  91 +++
 .../bindings/display/panel/himax,hx8394.yaml       |   3 -
 .../bindings/display/panel/ilitek,ili9806e.yaml    |  38 +-
 .../display/panel/leadtek,ltk050h3146w.yaml        |   1 +
 .../display/panel/leadtek,ltk500hd1829.yaml        |   1 +
 .../display/panel/mantix,mlaf057we51-x.yaml        |   5 +-
 .../bindings/display/panel/novatek,nt35510.yaml    |   3 +-
 .../bindings/display/panel/panel-lvds.yaml         |   4 +
 .../bindings/display/panel/panel-simple.yaml       |   4 +
 .../bindings/display/panel/renesas,r61307.yaml     |   3 +-
 .../bindings/display/panel/renesas,r69328.yaml     |   1 -
 .../display/panel/rocktech,jh057n00900.yaml        |   5 +-
 .../panel/samsung,s6e8aa5x01-ams561ra01.yaml       |   5 +-
 .../display/panel/sony,tulip-truly-nt35521.yaml    |   2 -
 .../display/panel/startek,kd070fhfid015.yaml       |   7 +-
 .../devicetree/bindings/vendor-prefixes.yaml       |   6 +
 Documentation/gpu/drm-kms-helpers.rst              |  12 -
 Documentation/gpu/drm-uapi.rst                     |  14 +-
 Documentation/gpu/introduction.rst                 |   6 -
 Documentation/gpu/todo.rst                         |  32 +
 MAINTAINERS                                        |   8 +-
 drivers/accel/amdxdna/aie2_ctx.c                   |   8 +-
 drivers/accel/amdxdna/aie2_message.c               |  40 +-
 drivers/accel/amdxdna/aie2_pci.c                   |   4 +
 drivers/accel/amdxdna/amdxdna_ctx.c                |  23 +-
 drivers/accel/amdxdna/amdxdna_ctx.h                |  15 +-
 drivers/accel/amdxdna/amdxdna_gem.c                | 508 ++++++++------
 drivers/accel/amdxdna/amdxdna_gem.h                |  37 +-
 drivers/accel/amdxdna/amdxdna_mailbox.c            |   2 +-
 drivers/accel/amdxdna/amdxdna_pci_drv.c            |   8 +-
 drivers/accel/amdxdna/amdxdna_pci_drv.h            |   4 +
 drivers/accel/amdxdna/amdxdna_ubuf.c               |  17 +-
 drivers/accel/amdxdna/amdxdna_ubuf.h               |   5 -
 drivers/gpu/drm/Kconfig.debug                      |   1 -
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c  |  55 +-
 .../gpu/drm/arm/display/include/malidp_product.h   |   1 +
 .../gpu/drm/arm/display/komeda/d71/d71_component.c |  14 +-
 drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c   |   1 +
 drivers/gpu/drm/arm/display/komeda/komeda_crtc.c   |   2 +-
 drivers/gpu/drm/arm/display/komeda/komeda_drv.c    |   1 +
 .../gpu/drm/arm/display/komeda/komeda_pipeline.h   |   5 +-
 .../drm/arm/display/komeda/komeda_pipeline_state.c |   2 +-
 .../drm/arm/display/komeda/komeda_private_obj.c    |  16 +-
 drivers/gpu/drm/bridge/Kconfig                     |   1 +
 drivers/gpu/drm/bridge/adv7511/adv7511_drv.c       |   2 +-
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 135 +---
 .../gpu/drm/bridge/cadence/cdns-mhdp8546-core.c    |  24 +-
 .../gpu/drm/bridge/cadence/cdns-mhdp8546-core.h    |   2 +-
 drivers/gpu/drm/bridge/inno-hdmi.c                 |   6 +-
 drivers/gpu/drm/bridge/ite-it6263.c                |   2 +-
 drivers/gpu/drm/bridge/lontium-lt8713sx.c          |   2 +-
 drivers/gpu/drm/bridge/samsung-dsim.c              |   7 +-
 drivers/gpu/drm/bridge/synopsys/dw-dp.c            |  71 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c          |  16 +-
 drivers/gpu/drm/display/drm_bridge_connector.c     |   4 +-
 drivers/gpu/drm/display/drm_dp_mst_topology.c      |   1 -
 drivers/gpu/drm/display/drm_dp_tunnel.c            |   2 +-
 drivers/gpu/drm/display/drm_hdmi_helper.c          |   7 +-
 drivers/gpu/drm/display/drm_hdmi_state_helper.c    |  60 +-
 drivers/gpu/drm/drm_atomic.c                       |  22 +-
 drivers/gpu/drm/drm_bridge.c                       |  37 +-
 drivers/gpu/drm/drm_connector.c                    |  16 +-
 drivers/gpu/drm/drm_crtc.c                         |   6 +-
 drivers/gpu/drm/drm_drv.c                          |   2 +-
 drivers/gpu/drm/drm_edid.c                         |  18 +-
 drivers/gpu/drm/drm_gem.c                          |  11 +-
 drivers/gpu/drm/drm_gem_atomic_helper.c            |  22 -
 drivers/gpu/drm/drm_gem_dma_helper.c               |  23 +-
 drivers/gpu/drm/drm_mipi_dbi.c                     | 394 ++++-------
 drivers/gpu/drm/drm_modeset_helper.c               |   3 -
 drivers/gpu/drm/drm_prime.c                        |   2 +-
 drivers/gpu/drm/drm_simple_kms_helper.c            |  83 ---
 drivers/gpu/drm/imagination/Makefile               |   1 +
 drivers/gpu/drm/imagination/pvr_ccb.c              |   5 +
 drivers/gpu/drm/imagination/pvr_dump.c             | 113 ++++
 drivers/gpu/drm/imagination/pvr_dump.h             |  17 +
 drivers/gpu/drm/imagination/pvr_fw_startstop.c     | 100 ++-
 drivers/gpu/drm/imagination/pvr_rogue_fwif.h       |   8 +-
 .../gpu/drm/imagination/pvr_rogue_fwif_shared.h    |  18 +-
 drivers/gpu/drm/ingenic/ingenic-drm-drv.c          |   2 +-
 drivers/gpu/drm/ingenic/ingenic-ipu.c              |   2 +-
 drivers/gpu/drm/mediatek/Makefile                  |   1 -
 drivers/gpu/drm/mediatek/mtk_crtc.c                |   1 -
 drivers/gpu/drm/mediatek/mtk_dp.c                  |   4 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.c             |  21 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.h             |   1 -
 drivers/gpu/drm/mediatek/mtk_gem.c                 | 231 -------
 drivers/gpu/drm/mediatek/mtk_gem.h                 |  17 -
 drivers/gpu/drm/mediatek/mtk_hdmi_v2.c             |   8 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 -
 drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c           |   1 -
 drivers/gpu/drm/omapdrm/omap_drv.c                 |  22 +-
 drivers/gpu/drm/panel/Kconfig                      |  46 +-
 drivers/gpu/drm/panel/Makefile                     |   6 +-
 drivers/gpu/drm/panel/panel-himax-hx83102.c        | 151 +++++
 drivers/gpu/drm/panel/panel-himax-hx83121a.c       | 749 +++++++++++++++++++++
 drivers/gpu/drm/panel/panel-ilitek-ili9806e-core.c | 134 ++++
 drivers/gpu/drm/panel/panel-ilitek-ili9806e-core.h |  15 +
 ...itek-ili9806e.c => panel-ilitek-ili9806e-dsi.c} | 153 ++---
 drivers/gpu/drm/panel/panel-ilitek-ili9806e-spi.c  | 323 +++++++++
 .../gpu/drm/panel/panel-samsung-s6e8fc0-m1906f9.c  | 301 +++++++++
 drivers/gpu/drm/panel/panel-sharp-ls043t1le01.c    |   1 +
 drivers/gpu/drm/panel/panel-simple.c               |  37 +-
 drivers/gpu/drm/panthor/panthor_drv.c              | 134 +++-
 drivers/gpu/drm/panthor/panthor_fw.c               |   4 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_cmm.c         |  26 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_cmm.h         |  18 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_crtc.c     |  16 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_crtc.h     |   3 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_drv.h      |   8 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_kms.c      |  52 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_vsp.c      |  16 +
 drivers/gpu/drm/renesas/rcar-du/rcar_du_vsp.h      |   2 +
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c    |   4 +-
 drivers/gpu/drm/sitronix/st7586.c                  | 185 +++--
 drivers/gpu/drm/sitronix/st7735r.c                 | 142 +++-
 drivers/gpu/drm/sun4i/sun4i_backend.c              |  27 +-
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c             |   2 +-
 drivers/gpu/drm/sun4i/sun8i_mixer.c                |  27 +-
 drivers/gpu/drm/tegra/hub.c                        |  22 +-
 drivers/gpu/drm/tests/drm_connector_test.c         |  80 +--
 drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c | 182 ++---
 drivers/gpu/drm/tiny/hx8357d.c                     | 138 +++-
 drivers/gpu/drm/tiny/ili9163.c                     | 138 +++-
 drivers/gpu/drm/tiny/ili9225.c                     | 192 ++++--
 drivers/gpu/drm/tiny/ili9341.c                     | 138 +++-
 drivers/gpu/drm/tiny/ili9486.c                     | 139 +++-
 drivers/gpu/drm/tiny/mi0283qt.c                    | 138 +++-
 drivers/gpu/drm/tiny/panel-mipi-dbi.c              | 141 +++-
 drivers/gpu/drm/ttm/ttm_backup.c                   |   6 +-
 drivers/gpu/drm/ttm/ttm_pool.c                     |   7 +-
 drivers/gpu/drm/vc4/vc4_hdmi.c                     |  18 +-
 drivers/gpu/drm/vc4/vc4_hdmi.h                     |   2 +-
 drivers/gpu/drm/vc4/vc4_kms.c                      |   4 +-
 drivers/gpu/drm/verisilicon/vs_dc.c                |   2 +-
 drivers/gpu/drm/xe/xe_device.c                     |   9 +-
 include/drm/bridge/dw_hdmi_qp.h                    |   2 +-
 include/drm/display/drm_hdmi_helper.h              |   3 +-
 include/drm/drm_atomic.h                           |   1 -
 include/drm/drm_bridge.h                           |   6 +-
 include/drm/drm_connector.h                        |  48 +-
 include/drm/drm_mipi_dbi.h                         | 145 ++--
 include/drm/drm_simple_kms_helper.h                | 216 +-----
 include/drm/ttm/ttm_backup.h                       |   2 +-
 include/drm/ttm/ttm_bo.h                           |  28 +-
 include/uapi/drm/amdxdna_accel.h                   |  44 +-
 include/uapi/drm/panthor_drm.h                     |  63 +-
 151 files changed, 4881 insertions(+), 2198 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml
 create mode 100644 drivers/gpu/drm/imagination/pvr_dump.c
 create mode 100644 drivers/gpu/drm/imagination/pvr_dump.h
 delete mode 100644 drivers/gpu/drm/mediatek/mtk_gem.c
 delete mode 100644 drivers/gpu/drm/mediatek/mtk_gem.h
 create mode 100644 drivers/gpu/drm/panel/panel-himax-hx83121a.c
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-core.c
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-core.h
 rename drivers/gpu/drm/panel/{panel-ilitek-ili9806e.c => panel-ilitek-ili9806e-dsi.c} (82%)
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-spi.c
 create mode 100644 drivers/gpu/drm/panel/panel-samsung-s6e8fc0-m1906f9.c

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)
