Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMxrHaIEvWkO5gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 09:26:10 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D306E2D7326
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 09:26:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 590D210EA90;
	Fri, 20 Mar 2026 08:26:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="x6W+ZCZ7";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="cTVMVG5/";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="x6W+ZCZ7";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="cTVMVG5/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7162A10EA91
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 08:26:07 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id F2F654D21A;
 Fri, 20 Mar 2026 08:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1773995166; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=u4bXpfoeAqdYm3lsUJ0hbpezIOgI+ygIBMj2ZZoyle8=;
 b=x6W+ZCZ7TJL4Xi1V6EwOyR9RpOQo72MdQTqXtm6gMYOcV2NKlcWA4ZpgV458yXT1Bljga5
 U/xmcjlFaq6X4G+sMxc4Na/LEtkA7tewp8c2HXa15b3iO1Bt2kBD9MVVZQ3cYebw0yasWW
 OblXl7itRrftoKNA6H9U2C8GpN+KXPo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1773995166;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=u4bXpfoeAqdYm3lsUJ0hbpezIOgI+ygIBMj2ZZoyle8=;
 b=cTVMVG5/xSxS1f95xUsznBqntAeA7aY7zTMQoABybHTRApaP8JMUEqCN4Qqd4B0oXyh/qZ
 BKPkXGZ/Eg26JLAg==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1773995166; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=u4bXpfoeAqdYm3lsUJ0hbpezIOgI+ygIBMj2ZZoyle8=;
 b=x6W+ZCZ7TJL4Xi1V6EwOyR9RpOQo72MdQTqXtm6gMYOcV2NKlcWA4ZpgV458yXT1Bljga5
 U/xmcjlFaq6X4G+sMxc4Na/LEtkA7tewp8c2HXa15b3iO1Bt2kBD9MVVZQ3cYebw0yasWW
 OblXl7itRrftoKNA6H9U2C8GpN+KXPo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1773995166;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=u4bXpfoeAqdYm3lsUJ0hbpezIOgI+ygIBMj2ZZoyle8=;
 b=cTVMVG5/xSxS1f95xUsznBqntAeA7aY7zTMQoABybHTRApaP8JMUEqCN4Qqd4B0oXyh/qZ
 BKPkXGZ/Eg26JLAg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 923A74273C;
 Fri, 20 Mar 2026 08:26:05 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id B8lXIp0EvWkBPwAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Fri, 20 Mar 2026 08:26:05 +0000
Date: Fri, 20 Mar 2026 09:26:04 +0100
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
Message-ID: <20260320082604.GA17867@linux.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Spam-Score: -4.30
X-Spam-Level: 
X-Spam-Flag: NO
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
	FORGED_SENDER(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,suse.de:dkim,suse.com:url,linux.fritz.box:mid]
X-Rspamd-Queue-Id: D306E2D7326
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave, Sima,

this is the weekly PR for drm-misc-next. Besides the usual fixes, it
adds support for CRTC background colors. There are some changes that
affect the kernel's math helpers.

Best regards
Thomas

drm-misc-next-2026-03-20:
drm-misc-next for v7.1:

UAPI Changes:

math:
- provide __KERNEL_DIV_ROUND_CLOSEST() in UAPI

mode:
- provide DRM_ARGB_GET*() macros for reading color components

Cross-subsystem Changes:

math:
- implement DIV_ROUND_CLOSEST() with __KERNEL_DIV_ROUND_CLOSEST()

Core Changes:

atomic:
- fix handling of colorop state in atomic updates
- provide CRTC background color

ttm:
- improve tests and doumentation

Driver Changes:

amdxdna:
- allow forcing DMA through IOMMU IOVA
- improve debugging

bridge:
- Support Lontium LT8713SX DP MST bridge plus DT bindings

imx:
- support planes behind the primary plane
- fix bus-format selection

ivpu:
- perform engine reset on TDR error

panel:
- novatek-nt36672a: Use mipi_dsi_*_multi() functions
- panel-edp: Support BOE NV153WUM-N42, CMN N153JCA-ELK, CSW MNF307QS3-2

renesas:
- rz-du: clean up

rockchip:
- support CRTC background color

sun4i:
- fix leak in init code
- clean up

tildc
- clean up

v3d:
- improve handling of struct v3d_stats
- improve error handling
- clean up

vkms:
- support CRTC background color
The following changes since commit f08ceb71c5a5615577e7c841e1e00a89f495ab51:

  Merge drm/drm-next into drm-misc-next (2026-03-12 08:25:41 +0100)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-2026-03-20

for you to fetch changes up to ade00a6c903f85031061b4e1a45e789b210f9055:

  accel/ivpu: Perform engine reset instead of device recovery on TDR (2026-03-20 08:03:11 +0100)

----------------------------------------------------------------
drm-misc-next for v7.1:

UAPI Changes:

math:
- provide __KERNEL_DIV_ROUND_CLOSEST() in UAPI

mode:
- provide DRM_ARGB_GET*() macros for reading color components

Cross-subsystem Changes:

math:
- implement DIV_ROUND_CLOSEST() with __KERNEL_DIV_ROUND_CLOSEST()

Core Changes:

atomic:
- fix handling of colorop state in atomic updates
- provide CRTC background color

ttm:
- improve tests and doumentation

Driver Changes:

amdxdna:
- allow forcing DMA through IOMMU IOVA
- improve debugging

bridge:
- Support Lontium LT8713SX DP MST bridge plus DT bindings

imx:
- support planes behind the primary plane
- fix bus-format selection

ivpu:
- perform engine reset on TDR error

panel:
- novatek-nt36672a: Use mipi_dsi_*_multi() functions
- panel-edp: Support BOE NV153WUM-N42, CMN N153JCA-ELK, CSW MNF307QS3-2

renesas:
- rz-du: clean up

rockchip:
- support CRTC background color

sun4i:
- fix leak in init code
- clean up

tildc
- clean up

v3d:
- improve handling of struct v3d_stats
- improve error handling
- clean up

vkms:
- support CRTC background color

----------------------------------------------------------------
Alvin1 Chen (1):
      drm/panel-edp: Add BOE NV153WUM-N42, CMN N153JCA-ELK, CSW MNF307QS3-2

Chaitanya Kumar Borah (2):
      drm/colorop: Preserve bypass value in duplicate_state()
      drm/atomic: Add affected colorops with affected planes

Chen-Yu Tsai (1):
      drm/sun4i: layers: Use drm_fb_dma_get_gem_addr() to get display memory

Chintan Patel (1):
      drm/panel: novatek-nt36672a: Convert to mipi_dsi_*_multi() helpers

Cristian Ciocaltea (4):
      uapi: Provide DIV_ROUND_CLOSEST()
      drm: Add CRTC background color property
      drm/vkms: Support setting custom background color
      drm/rockchip: vop2: Support setting custom background color

Ethan Tidmore (2):
      drm/sun4i: Fix resource leaks
      drm/bridge: waveshare-dsi: Fix signedness bug

Geert Uytterhoeven (1):
      drm: renesas: rz-du: mipi_dsi: Convert to FIELD_MODIFY()

Harry Wentland (1):
      drm/colorop: Fix blob property reference tracking in state lifecycle

Karol Wachowski (1):
      accel/ivpu: Perform engine reset instead of device recovery on TDR

Kory Maincent (TI) (2):
      drm/tilcdc: Remove tilcdc_panel driver reintroduced by a merge
      drm/tilcdc: Fix type mismatch

Lizhi Hou (3):
      accel/amdxdna: Allow forcing IOVA-based DMA via module parameter
      accel/amdxdna: Add debug prints for command submission
      accel/amdxdna: Support retrieving hardware context debug information

Marek Vasut (1):
      drm/imx: parallel-display: Prefer bus format set via legacy "interface-pix-fmt" DT property

Martin Kepplinger-Novakovic (1):
      drm/imx: parallel-display: add DRM_DISPLAY_HELPER for DRM_IMX_PARALLEL_DISPLAY

Maíra Canal (2):
      drm/v3d: Handle error from drm_sched_entity_init()
      drm/v3d: Remove dedicated fence_lock

Michael Tretter (2):
      drm/imx: ipuv3-plane: decouple zpos from plane type
      drm/imx: ipuv3-plane: support underlay plane

Thadeu Lima de Souza Cascardo (2):
      drm/ttm: document that ttm_bo_swapout deals with pages
      drm/ttm/tests: add a test to exercise ttm_bo_swapout

Tvrtko Ursulin (4):
      drm/v3d: Use raw seqcount helpers instead of fighting with lockdep
      drm/v3d: Refcount v3d_stats
      drm/v3d: Hold v3d_stats references in each job
      drm/v3d: Attach per-fd reset counters to v3d_stats

Vishnu Saini (2):
      dt-bindings: bridge: lt8713sx: Add bindings
      drm/bridge: add support for lontium lt8713sx bridge driver

 .../bindings/display/bridge/lontium,lt8713sx.yaml  | 113 ++++
 drivers/accel/amdxdna/Makefile                     |   1 +
 drivers/accel/amdxdna/aie2_ctx.c                   |  91 +++-
 drivers/accel/amdxdna/aie2_error.c                 |   5 +-
 drivers/accel/amdxdna/aie2_message.c               | 105 +++-
 drivers/accel/amdxdna/aie2_msg_priv.h              |  52 ++
 drivers/accel/amdxdna/aie2_pci.c                   |  14 +
 drivers/accel/amdxdna/aie2_pci.h                   |  10 +-
 drivers/accel/amdxdna/amdxdna_ctx.c                |   6 +-
 drivers/accel/amdxdna/amdxdna_ctx.h                |  18 +-
 drivers/accel/amdxdna/amdxdna_gem.c                |  45 +-
 drivers/accel/amdxdna/amdxdna_gem.h                |  10 +
 drivers/accel/amdxdna/amdxdna_iommu.c              | 184 +++++++
 drivers/accel/amdxdna/amdxdna_pci_drv.c            |  45 +-
 drivers/accel/amdxdna/amdxdna_pci_drv.h            |  24 +
 drivers/accel/amdxdna/npu4_regs.c                  |   3 +-
 drivers/accel/ivpu/ivpu_debugfs.c                  |  14 +-
 drivers/accel/ivpu/ivpu_drv.c                      |   1 +
 drivers/accel/ivpu/ivpu_drv.h                      |   3 +-
 drivers/accel/ivpu/ivpu_job.c                      |  50 +-
 drivers/accel/ivpu/ivpu_jsm_msg.c                  |  19 +-
 drivers/accel/ivpu/ivpu_jsm_msg.h                  |   3 +-
 drivers/accel/ivpu/ivpu_mmu.c                      |   3 +-
 drivers/accel/ivpu/ivpu_pm.c                       |  15 +-
 drivers/accel/ivpu/ivpu_pm.h                       |   1 +
 drivers/gpu/drm/bridge/Kconfig                     |  10 +
 drivers/gpu/drm/bridge/Makefile                    |   1 +
 drivers/gpu/drm/bridge/lontium-lt8713sx.c          | 598 +++++++++++++++++++++
 drivers/gpu/drm/bridge/waveshare-dsi.c             |   8 +-
 drivers/gpu/drm/drm_atomic.c                       |   8 +
 drivers/gpu/drm/drm_atomic_state_helper.c          |   1 +
 drivers/gpu/drm/drm_atomic_uapi.c                  |   4 +
 drivers/gpu/drm/drm_blend.c                        |  39 +-
 drivers/gpu/drm/drm_colorop.c                      |  28 +-
 drivers/gpu/drm/drm_mode_config.c                  |   6 +
 drivers/gpu/drm/imx/ipuv3/Kconfig                  |   1 +
 drivers/gpu/drm/imx/ipuv3/ipuv3-plane.c            |  23 +-
 drivers/gpu/drm/imx/ipuv3/parallel-display.c       |  15 +-
 drivers/gpu/drm/panel/panel-edp.c                  |   3 +
 drivers/gpu/drm/panel/panel-novatek-nt36672a.c     |  94 ++--
 drivers/gpu/drm/renesas/rz-du/rzg2l_mipi_dsi.c     |   3 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c       |  24 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h       |   4 +
 drivers/gpu/drm/sun4i/sun4i_backend.c              |   3 +-
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c             |  16 +-
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c             |  27 +-
 drivers/gpu/drm/tilcdc/tilcdc_panel.c              | 408 --------------
 drivers/gpu/drm/tilcdc/tilcdc_panel_legacy.c       |   4 +-
 drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c   |  41 ++
 drivers/gpu/drm/ttm/ttm_bo.c                       |   6 +-
 drivers/gpu/drm/v3d/v3d_drv.c                      |  55 +-
 drivers/gpu/drm/v3d/v3d_drv.h                      |  46 +-
 drivers/gpu/drm/v3d/v3d_fence.c                    |   2 +-
 drivers/gpu/drm/v3d/v3d_gem.c                      |  43 +-
 drivers/gpu/drm/v3d/v3d_irq.c                      |   2 +-
 drivers/gpu/drm/v3d/v3d_sched.c                    | 133 ++---
 drivers/gpu/drm/v3d/v3d_submit.c                   |   6 +
 drivers/gpu/drm/v3d/v3d_sysfs.c                    |   2 +-
 drivers/gpu/drm/vkms/vkms_composer.c               |   8 +-
 drivers/gpu/drm/vkms/vkms_crtc.c                   |   3 +
 include/drm/drm_blend.h                            |   4 +-
 include/drm/drm_crtc.h                             |  12 +
 include/drm/drm_mode_config.h                      |   5 +
 include/linux/math.h                               |  18 +-
 include/uapi/drm/drm_mode.h                        |  80 +++
 include/uapi/linux/const.h                         |  18 +
 66 files changed, 1872 insertions(+), 775 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml
 create mode 100644 drivers/accel/amdxdna/amdxdna_iommu.c
 create mode 100644 drivers/gpu/drm/bridge/lontium-lt8713sx.c
 delete mode 100644 drivers/gpu/drm/tilcdc/tilcdc_panel.c

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)
