Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CN2vGvKP12kaPwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 13:39:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 969413C9B96
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 13:39:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CCB910E7CC;
	Thu,  9 Apr 2026 11:39:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="yUeln8t4";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="VIbex2xb";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="yUeln8t4";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="VIbex2xb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB2FC10E7C9
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 11:39:24 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 5C5465BD40;
 Thu,  9 Apr 2026 11:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1775734763; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=MAUVBmhuTBUhREJUkroSSctt3j2cKepD/iyuUlHFR8o=;
 b=yUeln8t4VpGWAQDOxH4pwfIvgcQIkE2Bx1eEPeJpSlahmaCRNlYyGlGphw6LOol0Cuy3R5
 J4NrC2VCCEhddtn0C4X5pRmiUyy4Uk1/2WMFLaM+Nb+nWJiRZmmV/2w7juQH9su5VmEGBS
 e+F1ch5GzTZ9rsp/z0TcvLLyxctsPtY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1775734763;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=MAUVBmhuTBUhREJUkroSSctt3j2cKepD/iyuUlHFR8o=;
 b=VIbex2xbQWxT+uR/eLH0CT6AMLYHTFclXYrRcQBwwaXWyl66ioRUKqtxNY0FXhfrvpHsOh
 p0SBZHjWcPKH7wCQ==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=yUeln8t4;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=VIbex2xb
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1775734763; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=MAUVBmhuTBUhREJUkroSSctt3j2cKepD/iyuUlHFR8o=;
 b=yUeln8t4VpGWAQDOxH4pwfIvgcQIkE2Bx1eEPeJpSlahmaCRNlYyGlGphw6LOol0Cuy3R5
 J4NrC2VCCEhddtn0C4X5pRmiUyy4Uk1/2WMFLaM+Nb+nWJiRZmmV/2w7juQH9su5VmEGBS
 e+F1ch5GzTZ9rsp/z0TcvLLyxctsPtY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1775734763;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=MAUVBmhuTBUhREJUkroSSctt3j2cKepD/iyuUlHFR8o=;
 b=VIbex2xbQWxT+uR/eLH0CT6AMLYHTFclXYrRcQBwwaXWyl66ioRUKqtxNY0FXhfrvpHsOh
 p0SBZHjWcPKH7wCQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id C99F34A0B3;
 Thu,  9 Apr 2026 11:39:22 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id xOvLL+qP12kYUwAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Thu, 09 Apr 2026 11:39:22 +0000
Date: Thu, 9 Apr 2026 13:39:21 +0200
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
Subject: [PULL] drm-misc-next-fixes
Message-ID: <20260409113921.GA181028@linux.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Spam-Flag: NO
X-Spam-Score: -4.51
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,suse.com:url,suse.de:dkim]
X-Rspamd-Queue-Id: 969413C9B96
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave, Sima,

we're past -rc6, so here's a pull request for drm-misc-next-fixes.

Best regards
Thomas

drm-misc-next-fixes-2026-04-09:
Short summary of fixes pull:

dma-buf:
- fence: fix docs for dma_fence_unlock_irqrestore()

fb-helper:
- unlock in error path

gem-shmem:
- fix PMD write update

gem-vram:
- remove obsolete documentation

ivpu:
- fix device-recovery handling
The following changes since commit 7aaa8047eafd0bd628065b15757d9b48c5f9c07d:

  Linux 7.0-rc6 (2026-03-29 15:40:00 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-fixes-2026-04-09

for you to fetch changes up to 4aa0deae1070690d08c1f47c489f8b5ce3f6ea6d:

  drm/vram: remove DRM_VRAM_MM_FILE_OPERATIONS from docs (2026-04-09 09:34:28 +0200)

----------------------------------------------------------------
Short summary of fixes pull:

dma-buf:
- fence: fix docs for dma_fence_unlock_irqrestore()

fb-helper:
- unlock in error path

gem-shmem:
- fix PMD write update

gem-vram:
- remove obsolete documentation

ivpu:
- fix device-recovery handling

----------------------------------------------------------------
Bart Van Assche (1):
      drm/fb-helper: Fix a locking bug in an error path

Boris Brezillon (1):
      drm/shmem_helper: Make sure PMD entries get the writeable upgrade

Karol Wachowski (1):
      accel/ivpu: Trigger recovery on TDR with OS scheduling

Maxime Ripard (1):
      Merge drm/drm-fixes into drm-misc-next-fixes

Randy Dunlap (1):
      dma-fence: correct kernel-doc function parameter @flags

Thadeu Lima de Souza Cascardo (1):
      drm/vram: remove DRM_VRAM_MM_FILE_OPERATIONS from docs

 .../ABI/testing/sysfs-driver-intel-xe-sriov        |    31 +
 Documentation/devicetree/bindings/arm/qcom.yaml    |     6 +
 .../devicetree/bindings/display/arm,komeda.yaml    |     4 +-
 .../bindings/display/bridge/analogix,anx7625.yaml  |    98 +-
 .../bindings/display/bridge/fsl,ldb.yaml           |    18 +
 .../bindings/display/bridge/lontium,lt8713sx.yaml  |   113 +
 .../bindings/display/bridge/lontium,lt9611.yaml    |    15 +-
 .../bindings/display/bridge/lvds-codec.yaml        |     1 +
 .../display/bridge/thead,th1520-dw-hdmi.yaml       |   120 +
 .../bindings/display/bridge/waveshare,dsi2dpi.yaml |     3 +
 .../bindings/display/panel/abt,y030xx067a.yaml     |     5 -
 .../display/panel/advantech,idk-1110wr.yaml        |     4 +-
 .../display/panel/advantech,idk-2121wr.yaml        |     4 +-
 .../display/panel/bananapi,s070wv20-ct16.yaml      |     4 +-
 .../bindings/display/panel/dlc,dlc0700yzg-1.yaml   |     4 +-
 .../display/panel/feiyang,fy07024di26a30d.yaml     |     1 -
 .../bindings/display/panel/himax,hx83102.yaml      |     2 +
 .../bindings/display/panel/himax,hx83112a.yaml     |     2 -
 .../bindings/display/panel/himax,hx83121a.yaml     |    91 +
 .../bindings/display/panel/himax,hx8394.yaml       |     7 +-
 .../bindings/display/panel/ilitek,ili9163.yaml     |     4 -
 .../bindings/display/panel/ilitek,ili9322.yaml     |     3 -
 .../bindings/display/panel/ilitek,ili9341.yaml     |     6 +-
 .../bindings/display/panel/ilitek,ili9806e.yaml    |    38 +-
 .../bindings/display/panel/innolux,ej030na.yaml    |     5 -
 .../bindings/display/panel/innolux,p097pfg.yaml    |    26 +-
 .../bindings/display/panel/jadard,jd9365da-h3.yaml |     4 +-
 .../display/panel/kingdisplay,kd035g6-54nt.yaml    |     5 -
 .../display/panel/leadtek,ltk050h3146w.yaml        |     1 +
 .../display/panel/leadtek,ltk500hd1829.yaml        |     1 +
 .../bindings/display/panel/lgphilips,lb035q02.yaml |     4 -
 .../bindings/display/panel/lxd,m9189a.yaml         |    64 +
 .../display/panel/mantix,mlaf057we51-x.yaml        |     5 +-
 .../display/panel/mitsubishi,aa104xd12.yaml        |     4 +-
 .../display/panel/mitsubishi,aa121td01.yaml        |     4 +-
 .../bindings/display/panel/motorola,mot-panel.yaml |    69 +
 .../bindings/display/panel/nec,nl8048hl11.yaml     |     4 -
 .../bindings/display/panel/novatek,nt35510.yaml    |     3 +-
 .../bindings/display/panel/novatek,nt36523.yaml    |     3 -
 .../bindings/display/panel/novatek,nt36672a.yaml   |     3 -
 .../bindings/display/panel/orisetech,otm8009a.yaml |     4 +-
 .../bindings/display/panel/panel-edp-legacy.yaml   |     2 +
 .../bindings/display/panel/panel-lvds.yaml         |     4 +
 .../bindings/display/panel/panel-simple-dsi.yaml   |     2 +
 .../bindings/display/panel/panel-simple.yaml       |    10 +-
 .../bindings/display/panel/pda,91-00156-a0.yaml    |     4 +-
 .../bindings/display/panel/raydium,rm68200.yaml    |     4 +-
 .../bindings/display/panel/raydium,rm692e5.yaml    |     2 -
 .../bindings/display/panel/renesas,r61307.yaml     |     3 +-
 .../bindings/display/panel/renesas,r69328.yaml     |     1 -
 .../display/panel/rocktech,jh057n00900.yaml        |     5 +-
 .../bindings/display/panel/samsung,atna33xc20.yaml |     4 +-
 .../bindings/display/panel/samsung,ld9040.yaml     |     4 -
 .../bindings/display/panel/samsung,lms380kf01.yaml |     6 -
 .../bindings/display/panel/samsung,lms397kf04.yaml |     6 -
 .../bindings/display/panel/samsung,s6d27a1.yaml    |     6 -
 .../bindings/display/panel/samsung,s6d7aa0.yaml    |     8 +
 .../bindings/display/panel/samsung,s6e3ha8.yaml    |     4 -
 .../bindings/display/panel/samsung,s6e63m0.yaml    |     2 -
 .../panel/samsung,s6e8aa5x01-ams561ra01.yaml       |     5 +-
 .../bindings/display/panel/sgd,gktw70sdae4se.yaml  |     4 +-
 .../bindings/display/panel/sitronix,st7701.yaml    |     6 -
 .../bindings/display/panel/sitronix,st7789v.yaml   |     6 -
 .../bindings/display/panel/sony,acx565akm.yaml     |     4 -
 .../display/panel/sony,tulip-truly-nt35521.yaml    |     2 -
 .../display/panel/startek,kd070fhfid015.yaml       |    11 +-
 .../devicetree/bindings/display/panel/tpo,td.yaml  |     5 -
 .../bindings/display/panel/visionox,r66451.yaml    |     4 +-
 .../bindings/display/panel/visionox,rm69299.yaml   |     4 +-
 .../bindings/display/panel/visionox,vtdr6130.yaml  |     4 +-
 .../bindings/display/rockchip/rockchip,dw-dp.yaml  |    27 +-
 .../devicetree/bindings/display/tilcdc/panel.txt   |     1 +
 .../bindings/display/tilcdc/ti,am33xx-tilcdc.yaml  |   100 +
 .../devicetree/bindings/display/tilcdc/tilcdc.txt  |    82 -
 .../bindings/display/verisilicon,dc.yaml           |   122 +
 .../devicetree/bindings/vendor-prefixes.yaml       |    12 +
 Documentation/gpu/drm-kms-helpers.rst              |    12 -
 Documentation/gpu/drm-mm.rst                       |    10 +-
 Documentation/gpu/drm-uapi.rst                     |    14 +-
 Documentation/gpu/introduction.rst                 |     6 -
 Documentation/gpu/todo.rst                         |    32 +
 Documentation/gpu/xe/xe_firmware.rst               |     3 +
 MAINTAINERS                                        |    31 +-
 drivers/accel/amdxdna/Makefile                     |     1 +
 drivers/accel/amdxdna/aie2_ctx.c                   |    95 +-
 drivers/accel/amdxdna/aie2_error.c                 |     5 +-
 drivers/accel/amdxdna/aie2_message.c               |   139 +-
 drivers/accel/amdxdna/aie2_msg_priv.h              |    52 +
 drivers/accel/amdxdna/aie2_pci.c                   |    71 +
 drivers/accel/amdxdna/aie2_pci.h                   |    38 +-
 drivers/accel/amdxdna/amdxdna_ctx.c                |    29 +-
 drivers/accel/amdxdna/amdxdna_ctx.h                |    33 +-
 drivers/accel/amdxdna/amdxdna_gem.c                |   515 +-
 drivers/accel/amdxdna/amdxdna_gem.h                |    39 +-
 drivers/accel/amdxdna/amdxdna_iommu.c              |   184 +
 drivers/accel/amdxdna/amdxdna_mailbox.c            |     2 +-
 drivers/accel/amdxdna/amdxdna_pci_drv.c            |    55 +-
 drivers/accel/amdxdna/amdxdna_pci_drv.h            |    28 +
 drivers/accel/amdxdna/amdxdna_ubuf.c               |    17 +-
 drivers/accel/amdxdna/amdxdna_ubuf.h               |     5 -
 drivers/accel/amdxdna/npu4_regs.c                  |     3 +-
 drivers/accel/ivpu/ivpu_debugfs.c                  |    14 +-
 drivers/accel/ivpu/ivpu_drv.c                      |    95 +-
 drivers/accel/ivpu/ivpu_drv.h                      |    29 +-
 drivers/accel/ivpu/ivpu_gem.c                      |    12 +-
 drivers/accel/ivpu/ivpu_job.c                      |    86 +-
 drivers/accel/ivpu/ivpu_jsm_msg.c                  |    19 +-
 drivers/accel/ivpu/ivpu_jsm_msg.h                  |     3 +-
 drivers/accel/ivpu/ivpu_mmu.c                      |     3 +-
 drivers/accel/ivpu/ivpu_pm.c                       |    21 +-
 drivers/accel/ivpu/ivpu_pm.h                       |     1 +
 drivers/accel/ivpu/vpu_boot_api.h                  |   211 +-
 drivers/dma-buf/Kconfig                            |    12 -
 drivers/dma-buf/dma-buf.c                          |    69 +-
 drivers/dma-buf/dma-fence-array.c                  |    19 +-
 drivers/dma-buf/dma-fence-chain.c                  |    16 +-
 drivers/dma-buf/dma-fence.c                        |   168 +-
 drivers/dma-buf/dma-resv.c                         |     5 +-
 drivers/dma-buf/heaps/cma_heap.c                   |     7 +-
 drivers/dma-buf/st-dma-fence.c                     |    50 +-
 drivers/dma-buf/sw_sync.c                          |    14 +-
 drivers/dma-buf/sync_debug.h                       |     2 +-
 drivers/firmware/google/Kconfig                    |     5 +-
 drivers/firmware/google/cbmem.c                    |     1 +
 drivers/firmware/google/coreboot_table.c           |    13 +-
 drivers/firmware/google/coreboot_table.h           |    59 +-
 drivers/firmware/google/framebuffer-coreboot.c     |   126 +-
 drivers/firmware/google/memconsole-coreboot.c      |     1 +
 drivers/firmware/google/vpd.c                      |     1 +
 drivers/gpu/Kconfig                                |    13 +
 drivers/gpu/Makefile                               |     4 +-
 drivers/gpu/buddy.c                                |  1525 +
 drivers/gpu/drm/Kconfig                            |     8 +-
 drivers/gpu/drm/Kconfig.debug                      |     2 -
 drivers/gpu/drm/Makefile                           |     4 +-
 drivers/gpu/drm/amd/amdgpu/Makefile                |     2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu.h                |   154 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_benchmark.c      |     2 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c             |     7 -
 drivers/gpu/drm/amd/amdgpu/amdgpu_ctx.c            |     9 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ctx.h            |    13 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_debugfs.c        |     8 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c         |   814 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_discovery.c      |     1 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c        |    14 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c            |    20 -
 drivers/gpu/drm/amd/amdgpu/amdgpu_fence.c          |   116 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c            |    49 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.h            |     2 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_gmc.c            |     6 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c        |     6 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ib.c             |    56 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_job.c            |    19 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_object.c         |     2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c            |    52 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c     |     3 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_reg_access.c     |   959 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_reg_access.h     |   163 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_res_cursor.h     |    12 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c           |    50 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ring.h           |    42 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c            |   163 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h            |    31 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_userq.h          |     2 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_userq_fence.c    |   184 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_vce.c            |    18 -
 drivers/gpu/drm/amd/amdgpu/amdgpu_vce.h            |     2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c             |    49 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.h             |     4 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c       |    79 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.h       |    20 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c           |    15 +-
 drivers/gpu/drm/amd/amdgpu/amdgv_sriovmsg.h        |    25 +-
 drivers/gpu/drm/amd/amdgpu/aqua_vanjaram.c         |    21 +-
 drivers/gpu/drm/amd/amdgpu/atom.c                  |    28 +-
 drivers/gpu/drm/amd/amdgpu/cik.c                   |    52 +-
 drivers/gpu/drm/amd/amdgpu/cik_sdma.c              |    31 +-
 drivers/gpu/drm/amd/amdgpu/dce_v10_0.c             |    12 +-
 drivers/gpu/drm/amd/amdgpu/dce_v6_0.c              |    12 +-
 drivers/gpu/drm/amd/amdgpu/dce_v8_0.c              |    12 +-
 drivers/gpu/drm/amd/amdgpu/df_v3_6.c               |    20 +-
 drivers/gpu/drm/amd/amdgpu/gfx_v11_0.c             |    33 +
 drivers/gpu/drm/amd/amdgpu/gfx_v12_0.c             |    33 +
 drivers/gpu/drm/amd/amdgpu/gfx_v12_1.c             |     2 +-
 drivers/gpu/drm/amd/amdgpu/gmc_v12_0.c             |    10 +-
 drivers/gpu/drm/amd/amdgpu/gmc_v12_1.c             |     2 -
 drivers/gpu/drm/amd/amdgpu/nv.c                    |    30 +-
 drivers/gpu/drm/amd/amdgpu/psp_v13_0.c             |     2 +-
 drivers/gpu/drm/amd/amdgpu/sdma_v2_4.c             |    31 +-
 drivers/gpu/drm/amd/amdgpu/sdma_v3_0.c             |    31 +-
 drivers/gpu/drm/amd/amdgpu/sdma_v4_0.c             |    54 +-
 drivers/gpu/drm/amd/amdgpu/sdma_v4_4_2.c           |    39 +-
 drivers/gpu/drm/amd/amdgpu/sdma_v5_0.c             |    31 +-
 drivers/gpu/drm/amd/amdgpu/sdma_v5_2.c             |    35 +-
 drivers/gpu/drm/amd/amdgpu/sdma_v6_0.c             |    33 +-
 drivers/gpu/drm/amd/amdgpu/sdma_v7_0.c             |    33 +-
 drivers/gpu/drm/amd/amdgpu/sdma_v7_1.c             |    33 +-
 drivers/gpu/drm/amd/amdgpu/si.c                    |    66 +-
 drivers/gpu/drm/amd/amdgpu/si_dma.c                |    31 +-
 drivers/gpu/drm/amd/amdgpu/soc15.c                 |    68 +-
 drivers/gpu/drm/amd/amdgpu/soc15.h                 |     1 -
 drivers/gpu/drm/amd/amdgpu/soc15_common.h          |    25 +-
 drivers/gpu/drm/amd/amdgpu/soc21.c                 |    30 +-
 drivers/gpu/drm/amd/amdgpu/soc24.c                 |    18 +-
 drivers/gpu/drm/amd/amdgpu/soc_v1_0.c              |    26 +-
 drivers/gpu/drm/amd/amdgpu/vce_v1_0.c              |    33 +-
 drivers/gpu/drm/amd/amdgpu/vi.c                    |    76 +-
 drivers/gpu/drm/amd/amdkfd/Kconfig                 |     2 +-
 .../gpu/drm/amd/amdkfd/cwsr_trap_handler_gfx12.asm |     3 -
 drivers/gpu/drm/amd/amdkfd/kfd_flat_memory.c       |    35 +-
 drivers/gpu/drm/amd/amdkfd/kfd_migrate.c           |    12 +-
 drivers/gpu/drm/amd/amdkfd/kfd_mqd_manager_cik.c   |     1 -
 drivers/gpu/drm/amd/amdkfd/kfd_mqd_manager_v10.c   |     1 -
 drivers/gpu/drm/amd/amdkfd/kfd_mqd_manager_v11.c   |     1 -
 drivers/gpu/drm/amd/amdkfd/kfd_mqd_manager_v12.c   |     1 -
 drivers/gpu/drm/amd/amdkfd/kfd_mqd_manager_v12_1.c |     1 -
 drivers/gpu/drm/amd/amdkfd/kfd_mqd_manager_v9.c    |     1 -
 drivers/gpu/drm/amd/amdkfd/kfd_mqd_manager_vi.c    |     1 -
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c  |   287 +-
 .../drm/amd/display/amdgpu_dm/amdgpu_dm_colorop.c  |    27 +-
 .../drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c  |     9 +-
 .../drm/amd/display/amdgpu_dm/amdgpu_dm_plane.c    |     3 +-
 drivers/gpu/drm/amd/display/dc/bios/bios_parser.c  |    46 +-
 .../gpu/drm/amd/display/dc/bios/command_table.c    |   124 +-
 .../amd/display/dc/bios/command_table_helper2.c    |     1 +
 drivers/gpu/drm/amd/display/dc/clk_mgr/Makefile    |    23 +-
 drivers/gpu/drm/amd/display/dc/clk_mgr/clk_mgr.c   |    14 +-
 .../amd/display/dc/clk_mgr/dce100/dce_clk_mgr.c    |    64 +-
 .../amd/display/dc/clk_mgr/dce60/dce60_clk_mgr.c   |   166 -
 .../drm/amd/display/dc/clk_mgr/dcn35/dcn35_smu.c   |    14 +-
 .../amd/display/dc/clk_mgr/dcn42/dcn42_clk_mgr.c   |  1152 +
 .../amd/display/dc/clk_mgr/dcn42/dcn42_clk_mgr.h   |    79 +
 .../drm/amd/display/dc/clk_mgr/dcn42/dcn42_smu.c   |   431 +
 .../drm/amd/display/dc/clk_mgr/dcn42/dcn42_smu.h   |   190 +
 drivers/gpu/drm/amd/display/dc/core/dc.c           |   157 +-
 .../gpu/drm/amd/display/dc/core/dc_hw_sequencer.c  |    60 +-
 drivers/gpu/drm/amd/display/dc/core/dc_resource.c  |     7 +
 drivers/gpu/drm/amd/display/dc/dc.h                |    17 +-
 drivers/gpu/drm/amd/display/dc/dc_bios_types.h     |     6 +-
 drivers/gpu/drm/amd/display/dc/dc_dp_types.h       |     4 +-
 drivers/gpu/drm/amd/display/dc/dc_helper.c         |     2 +
 drivers/gpu/drm/amd/display/dc/dc_hw_types.h       |    73 +
 drivers/gpu/drm/amd/display/dc/dc_types.h          |     6 +-
 drivers/gpu/drm/amd/display/dc/dccg/Makefile       |    11 +-
 .../gpu/drm/amd/display/dc/dccg/dcn20/dcn20_dccg.h |    15 +-
 .../gpu/drm/amd/display/dc/dccg/dcn42/dcn42_dccg.c |   278 +
 .../gpu/drm/amd/display/dc/dccg/dcn42/dcn42_dccg.h |   263 +
 drivers/gpu/drm/amd/display/dc/dce/dce_abm.h       |    60 +-
 drivers/gpu/drm/amd/display/dc/dce/dce_audio.c     |   131 -
 drivers/gpu/drm/amd/display/dc/dce/dce_audio.h     |     9 -
 drivers/gpu/drm/amd/display/dc/dce/dce_clk_mgr.c   |   966 -
 drivers/gpu/drm/amd/display/dc/dio/Makefile        |    11 +-
 .../display/dc/dio/dcn10/dcn10_stream_encoder.h    |    10 +-
 .../display/dc/dio/dcn42/dcn42_dio_link_encoder.c  |   205 +
 .../display/dc/dio/dcn42/dcn42_dio_link_encoder.h  |   140 +
 .../dc/dio/dcn42/dcn42_dio_stream_encoder.c        |   522 +
 .../dc/dio/dcn42/dcn42_dio_stream_encoder.h        |   206 +
 .../dc/dml2_0/dml21/dml21_translation_helper.c     |     8 +-
 .../drm/amd/display/dc/dml2_0/dml21/dml21_utils.c  |   227 +-
 .../drm/amd/display/dc/dml2_0/dml21/dml21_utils.h  |     1 +
 .../dml2_0/dml21/inc/dml_top_soc_parameter_types.h |     2 +
 .../amd/display/dc/dml2_0/dml2_dc_resource_mgmt.c  |     6 +-
 .../gpu/drm/amd/display/dc/dml2_0/dml2_wrapper.h   |     1 +
 drivers/gpu/drm/amd/display/dc/dpp/Makefile        |    10 +-
 .../gpu/drm/amd/display/dc/dpp/dcn401/dcn401_dpp.h |     5 +-
 .../gpu/drm/amd/display/dc/dpp/dcn42/dcn42_dpp.c   |   333 +
 .../gpu/drm/amd/display/dc/dpp/dcn42/dcn42_dpp.h   |   469 +
 drivers/gpu/drm/amd/display/dc/gpio/Makefile       |    13 +-
 .../amd/display/dc/gpio/dcn42/hw_factory_dcn42.c   |   254 +
 .../amd/display/dc/gpio/dcn42/hw_factory_dcn42.h   |    31 +
 .../amd/display/dc/gpio/dcn42/hw_translate_dcn42.c |   205 +
 .../amd/display/dc/gpio/dcn42/hw_translate_dcn42.h |    36 +
 drivers/gpu/drm/amd/display/dc/gpio/hw_factory.c   |     4 +
 drivers/gpu/drm/amd/display/dc/gpio/hw_translate.c |     4 +
 drivers/gpu/drm/amd/display/dc/hpo/Makefile        |    11 +-
 .../dc/hpo/dcn31/dcn31_hpo_dp_stream_encoder.h     |    10 +-
 .../dc/hpo/dcn42/dcn42_hpo_dp_link_encoder.c       |    93 +
 .../dc/hpo/dcn42/dcn42_hpo_dp_link_encoder.h       |    17 +
 drivers/gpu/drm/amd/display/dc/hubbub/Makefile     |    10 +-
 .../drm/amd/display/dc/hubbub/dcn10/dcn10_hubbub.h |     6 +-
 .../drm/amd/display/dc/hubbub/dcn42/dcn42_hubbub.c |   539 +
 .../drm/amd/display/dc/hubbub/dcn42/dcn42_hubbub.h |   268 +
 drivers/gpu/drm/amd/display/dc/hubp/Makefile       |    10 +-
 .../gpu/drm/amd/display/dc/hubp/dcn20/dcn20_hubp.h |     8 +-
 .../gpu/drm/amd/display/dc/hubp/dcn42/dcn42_hubp.c |   643 +
 .../gpu/drm/amd/display/dc/hubp/dcn42/dcn42_hubp.h |    79 +
 drivers/gpu/drm/amd/display/dc/hwss/Makefile       |    12 +-
 .../gpu/drm/amd/display/dc/hwss/dce/dce_hwseq.h    |    13 +-
 .../drm/amd/display/dc/hwss/dce110/dce110_hwseq.c  |    66 +
 .../drm/amd/display/dc/hwss/dcn401/dcn401_hwseq.c  |    23 +-
 .../drm/amd/display/dc/hwss/dcn42/dcn42_hwseq.c    |  1472 +
 .../drm/amd/display/dc/hwss/dcn42/dcn42_hwseq.h    |    53 +
 .../gpu/drm/amd/display/dc/hwss/dcn42/dcn42_init.c |   167 +
 .../gpu/drm/amd/display/dc/hwss/dcn42/dcn42_init.h |    11 +
 drivers/gpu/drm/amd/display/dc/hwss/hw_sequencer.h |    23 +-
 .../drm/amd/display/dc/hwss/hw_sequencer_private.h |     5 +-
 drivers/gpu/drm/amd/display/dc/inc/hw/clk_mgr.h    |    24 +-
 .../drm/amd/display/dc/inc/hw/clk_mgr_internal.h   |    63 +-
 drivers/gpu/drm/amd/display/dc/inc/hw/dpp.h        |    10 +-
 drivers/gpu/drm/amd/display/dc/inc/hw/mpc.h        |    20 +-
 .../drm/amd/display/dc/inc/hw/timing_generator.h   |     4 +-
 drivers/gpu/drm/amd/display/dc/irq/Makefile        |     9 +
 .../amd/display/dc/irq/dcn42/irq_service_dcn42.c   |   412 +
 .../amd/display/dc/irq/dcn42/irq_service_dcn42.h   |    15 +
 .../gpu/drm/amd/display/dc/link/link_detection.c   |    58 +-
 drivers/gpu/drm/amd/display/dc/link/link_dpms.c    |   634 +-
 drivers/gpu/drm/amd/display/dc/link/link_factory.c |    29 +-
 .../display/dc/link/protocols/link_dp_capability.c |     2 +
 .../amd/display/dc/link/protocols/link_dp_dpia.c   |     2 +-
 .../dc/link/protocols/link_dp_panel_replay.c       |     2 +-
 .../dc/link/protocols/link_edp_panel_control.c     |     8 +-
 drivers/gpu/drm/amd/display/dc/mmhubbub/Makefile   |    10 +-
 .../amd/display/dc/mmhubbub/dcn42/dcn42_mmhubbub.c |    25 +
 .../amd/display/dc/mmhubbub/dcn42/dcn42_mmhubbub.h |    13 +
 drivers/gpu/drm/amd/display/dc/mpc/Makefile        |    10 +-
 .../gpu/drm/amd/display/dc/mpc/dcn401/dcn401_mpc.c |    13 +-
 .../gpu/drm/amd/display/dc/mpc/dcn401/dcn401_mpc.h |    10 +-
 .../gpu/drm/amd/display/dc/mpc/dcn42/dcn42_mpc.c   |  1121 +
 .../gpu/drm/amd/display/dc/mpc/dcn42/dcn42_mpc.h   |  1006 +
 drivers/gpu/drm/amd/display/dc/optc/Makefile       |    10 +-
 .../gpu/drm/amd/display/dc/optc/dcn10/dcn10_optc.h |    20 +-
 .../gpu/drm/amd/display/dc/optc/dcn42/dcn42_optc.c |   198 +
 .../gpu/drm/amd/display/dc/optc/dcn42/dcn42_optc.h |   211 +
 drivers/gpu/drm/amd/display/dc/pg/Makefile         |    10 +-
 .../drm/amd/display/dc/pg/dcn42/dcn42_pg_cntl.c    |   648 +
 .../drm/amd/display/dc/pg/dcn42/dcn42_pg_cntl.h    |   175 +
 drivers/gpu/drm/amd/display/dc/resource/Makefile   |    18 +
 .../amd/display/dc/resource/dce60/dce60_resource.c |     2 +-
 .../amd/display/dc/resource/dcn42/dcn42_resource.c |  2337 +
 .../amd/display/dc/resource/dcn42/dcn42_resource.h |   588 +
 .../display/dc/resource/dcn42/dcn42_resource_fpu.c |    47 +
 .../dcn42/dcn42_resource_fpu.h}                    |    17 +-
 drivers/gpu/drm/amd/display/dmub/dmub_srv.h        |     5 +-
 drivers/gpu/drm/amd/display/dmub/inc/dmub_cmd.h    |    54 +
 drivers/gpu/drm/amd/display/dmub/src/Makefile      |     3 +-
 drivers/gpu/drm/amd/display/dmub/src/dmub_dcn42.c  |   752 +
 drivers/gpu/drm/amd/display/dmub/src/dmub_dcn42.h  |   171 +
 drivers/gpu/drm/amd/display/dmub/src/dmub_srv.c    |    64 +-
 .../drm/amd/display/include/bios_parser_types.h    |     2 +
 drivers/gpu/drm/amd/display/include/dal_asic_id.h  |     1 +
 drivers/gpu/drm/amd/display/include/dal_types.h    |     1 +
 .../amd/include/asic_reg/dcn/dcn_4_2_0_offset.h    | 17872 +++++
 .../amd/include/asic_reg/dcn/dcn_4_2_0_sh_mask.h   | 67277 +++++++++++++++++++
 .../amd/include/asic_reg/dpcs/dpcs_4_0_0_offset.h  |   142 +
 .../amd/include/asic_reg/dpcs/dpcs_4_0_0_sh_mask.h |   688 +
 drivers/gpu/drm/amd/include/atomfirmware.h         |     1 +
 drivers/gpu/drm/amd/include/kgd_pp_interface.h     |     2 +
 drivers/gpu/drm/amd/pm/legacy-dpm/si_smc.c         |    16 +-
 drivers/gpu/drm/amd/pm/swsmu/amdgpu_smu.c          |    12 +
 drivers/gpu/drm/amd/pm/swsmu/inc/amdgpu_smu.h      |     2 +
 drivers/gpu/drm/amd/pm/swsmu/smu13/smu_v13_0.c     |     7 +-
 .../gpu/drm/amd/pm/swsmu/smu13/smu_v13_0_6_ppt.c   |    11 +
 drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c             |     4 +-
 drivers/gpu/drm/amd/ras/ras_mgr/amdgpu_ras_mgr.c   |     3 +
 .../gpu/drm/amd/ras/ras_mgr/amdgpu_ras_mp1_v13_0.c |    46 +
 drivers/gpu/drm/amd/ras/ras_mgr/amdgpu_ras_sys.c   |     3 +-
 .../gpu/drm/amd/ras/ras_mgr/amdgpu_virt_ras_cmd.c  |   169 +-
 .../gpu/drm/amd/ras/ras_mgr/amdgpu_virt_ras_cmd.h  |    14 +-
 drivers/gpu/drm/amd/ras/rascore/Makefile           |     3 +-
 drivers/gpu/drm/amd/ras/rascore/ras.h              |    30 +
 drivers/gpu/drm/amd/ras/rascore/ras_aca.c          |    29 +-
 drivers/gpu/drm/amd/ras/rascore/ras_cmd.c          |     9 +-
 drivers/gpu/drm/amd/ras/rascore/ras_cmd.h          |    29 +
 drivers/gpu/drm/amd/ras/rascore/ras_core.c         |    41 +-
 drivers/gpu/drm/amd/ras/rascore/ras_eeprom.c       |     4 +-
 drivers/gpu/drm/amd/ras/rascore/ras_eeprom.h       |     7 -
 drivers/gpu/drm/amd/ras/rascore/ras_eeprom_fw.c    |   520 +
 drivers/gpu/drm/amd/ras/rascore/ras_eeprom_fw.h    |    87 +
 drivers/gpu/drm/amd/ras/rascore/ras_umc.c          |    37 +-
 drivers/gpu/drm/amd/ras/rascore/ras_umc.h          |     2 +
 drivers/gpu/drm/amd/ras/rascore/ras_umc_v12_0.c    |    19 +-
 .../gpu/drm/arm/display/include/malidp_product.h   |     1 +
 .../gpu/drm/arm/display/komeda/d71/d71_component.c |    14 +-
 drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c   |     1 +
 drivers/gpu/drm/arm/display/komeda/komeda_crtc.c   |     2 +-
 drivers/gpu/drm/arm/display/komeda/komeda_drv.c    |     1 +
 .../drm/arm/display/komeda/komeda_framebuffer.c    |     6 +-
 .../gpu/drm/arm/display/komeda/komeda_pipeline.h   |     7 +-
 .../drm/arm/display/komeda/komeda_pipeline_state.c |     2 +-
 .../drm/arm/display/komeda/komeda_private_obj.c    |   208 +-
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c       |    81 +
 drivers/gpu/drm/bridge/Kconfig                     |    21 +
 drivers/gpu/drm/bridge/Makefile                    |     2 +
 drivers/gpu/drm/bridge/adv7511/adv7511_drv.c       |     2 +-
 drivers/gpu/drm/bridge/analogix/Kconfig            |     2 +
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |   292 +-
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.h |     4 +-
 drivers/gpu/drm/bridge/analogix/anx7625.c          |   216 +-
 drivers/gpu/drm/bridge/analogix/anx7625.h          |    34 +-
 .../gpu/drm/bridge/cadence/cdns-mhdp8546-core.c    |   281 +-
 .../gpu/drm/bridge/cadence/cdns-mhdp8546-core.h    |     4 +-
 .../gpu/drm/bridge/cadence/cdns-mhdp8546-hdcp.c    |    18 +-
 drivers/gpu/drm/bridge/fsl-ldb.c                   |     7 +
 drivers/gpu/drm/bridge/imx/imx8qxp-pixel-link.c    |    50 +-
 drivers/gpu/drm/bridge/inno-hdmi.c                 |     6 +-
 drivers/gpu/drm/bridge/ite-it6263.c                |     2 +-
 drivers/gpu/drm/bridge/lontium-lt8713sx.c          |   598 +
 drivers/gpu/drm/bridge/lontium-lt9611.c            |    46 +-
 drivers/gpu/drm/bridge/samsung-dsim.c              |     7 +-
 drivers/gpu/drm/bridge/synopsys/dw-dp.c            |    83 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c       |   224 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.h       |     3 +
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c          |    16 +-
 drivers/gpu/drm/bridge/tda998x_drv.c               |   263 +-
 drivers/gpu/drm/bridge/th1520-dw-hdmi.c            |   173 +
 drivers/gpu/drm/bridge/waveshare-dsi.c             |    16 +-
 drivers/gpu/drm/display/drm_bridge_connector.c     |    22 +-
 drivers/gpu/drm/display/drm_dp_mst_topology.c      |    36 +-
 drivers/gpu/drm/display/drm_dp_tunnel.c            |    25 +-
 drivers/gpu/drm/display/drm_hdmi_helper.c          |     7 +-
 drivers/gpu/drm/display/drm_hdmi_state_helper.c    |    60 +-
 drivers/gpu/drm/drm_atomic.c                       |    30 +-
 drivers/gpu/drm/drm_atomic_helper.c                |     6 +-
 drivers/gpu/drm/drm_atomic_state_helper.c          |    24 +
 drivers/gpu/drm/drm_atomic_uapi.c                  |     4 +
 drivers/gpu/drm/drm_blend.c                        |    39 +-
 drivers/gpu/drm/drm_bridge.c                       |    66 +-
 drivers/gpu/drm/drm_buddy.c                        |  1272 +-
 drivers/gpu/drm/drm_client.c                       |     3 +-
 drivers/gpu/drm/drm_colorop.c                      |    77 +-
 drivers/gpu/drm/drm_connector.c                    |    49 +-
 drivers/gpu/drm/drm_crtc.c                         |    10 +-
 drivers/gpu/drm/drm_drv.c                          |     2 +-
 drivers/gpu/drm/drm_edid.c                         |    18 +-
 drivers/gpu/drm/drm_fb_helper.c                    |    19 +-
 drivers/gpu/drm/drm_gem.c                          |    56 +-
 drivers/gpu/drm/drm_gem_atomic_helper.c            |    22 -
 drivers/gpu/drm/drm_gem_dma_helper.c               |    23 +-
 drivers/gpu/drm/drm_gem_shmem_helper.c             |    76 +-
 drivers/gpu/drm/drm_gem_vram_helper.c              |     7 +-
 drivers/gpu/drm/drm_gpusvm.c                       |     7 +-
 drivers/gpu/drm/drm_mipi_dbi.c                     |   394 +-
 drivers/gpu/drm/drm_mode_config.c                  |    12 +
 drivers/gpu/drm/drm_modeset_helper.c               |     3 -
 drivers/gpu/drm/drm_prime.c                        |     2 +-
 drivers/gpu/drm/drm_probe_helper.c                 |     2 +-
 drivers/gpu/drm/drm_self_refresh_helper.c          |     2 +-
 drivers/gpu/drm/drm_simple_kms_helper.c            |    83 -
 drivers/gpu/drm/drm_suballoc.c                     |   106 +-
 drivers/gpu/drm/drm_writeback.c                    |     2 +-
 drivers/gpu/drm/gma500/fbdev.c                     |   101 +-
 drivers/gpu/drm/gma500/framebuffer.c               |   104 +-
 drivers/gpu/drm/gma500/psb_drv.h                   |     6 -
 drivers/gpu/drm/gud/gud_pipe.c                     |     2 +-
 .../gpu/drm/i915/display/intel_color_pipeline.c    |   175 +-
 drivers/gpu/drm/i915/display/intel_colorop.c       |     6 +
 drivers/gpu/drm/i915/display/intel_colorop.h       |     1 +
 .../gpu/drm/i915/display/intel_display_device.c    |     1 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c            |     2 +-
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c        |     2 +-
 drivers/gpu/drm/i915/i915_active.c                 |    19 +-
 drivers/gpu/drm/i915/i915_scatterlist.c            |    10 +-
 drivers/gpu/drm/i915/i915_ttm_buddy_manager.c      |    55 +-
 drivers/gpu/drm/i915/i915_ttm_buddy_manager.h      |     4 +-
 drivers/gpu/drm/i915/selftests/i915_active.c       |     4 +-
 .../gpu/drm/i915/selftests/intel_memory_region.c   |    20 +-
 drivers/gpu/drm/imagination/Makefile               |     1 +
 drivers/gpu/drm/imagination/pvr_ccb.c              |    25 +-
 drivers/gpu/drm/imagination/pvr_device.h           |    10 +-
 drivers/gpu/drm/imagination/pvr_dump.c             |   113 +
 drivers/gpu/drm/imagination/pvr_dump.h             |    17 +
 drivers/gpu/drm/imagination/pvr_fw_startstop.c     |   100 +-
 drivers/gpu/drm/imagination/pvr_gem.c              |     6 +-
 drivers/gpu/drm/imagination/pvr_power.c            |   122 +-
 drivers/gpu/drm/imagination/pvr_rogue_fwif.h       |     8 +-
 .../gpu/drm/imagination/pvr_rogue_fwif_shared.h    |    18 +-
 drivers/gpu/drm/imx/ipuv3/Kconfig                  |     1 +
 drivers/gpu/drm/imx/ipuv3/ipuv3-plane.c            |    23 +-
 drivers/gpu/drm/imx/ipuv3/parallel-display.c       |    15 +-
 drivers/gpu/drm/ingenic/ingenic-drm-drv.c          |    28 +-
 drivers/gpu/drm/ingenic/ingenic-ipu.c              |    28 +-
 drivers/gpu/drm/loongson/lsdc_drv.c                |     3 +-
 drivers/gpu/drm/loongson/lsdc_gem.c                |    15 -
 drivers/gpu/drm/loongson/lsdc_gem.h                |     4 -
 drivers/gpu/drm/mcde/mcde_dsi.c                    |    17 +-
 drivers/gpu/drm/mediatek/Makefile                  |     1 -
 drivers/gpu/drm/mediatek/mtk_crtc.c                |     1 -
 drivers/gpu/drm/mediatek/mtk_dp.c                  |     4 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.c             |    21 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.h             |     1 -
 drivers/gpu/drm/mediatek/mtk_gem.c                 |   231 -
 drivers/gpu/drm/mediatek/mtk_gem.h                 |    17 -
 drivers/gpu/drm/mediatek/mtk_hdmi_v2.c             |     8 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |    41 +-
 drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c           |    40 +-
 drivers/gpu/drm/mxsfb/lcdif_drv.c                  |     8 +-
 drivers/gpu/drm/nouveau/include/nvkm/engine/gr.h   |    19 +
 drivers/gpu/drm/nouveau/nouveau_abi16.c            |    29 +
 drivers/gpu/drm/nouveau/nouveau_abi16.h            |     1 +
 drivers/gpu/drm/nouveau/nouveau_bo.c               |     2 +-
 drivers/gpu/drm/nouveau/nouveau_drm.c              |    38 +-
 drivers/gpu/drm/nouveau/nouveau_fence.c            |     3 +-
 drivers/gpu/drm/nouveau/nvkm/engine/device/base.c  |    11 +-
 drivers/gpu/drm/nouveau/nvkm/subdev/gsp/ga100.c    |     4 -
 .../gpu/drm/nouveau/nvkm/subdev/gsp/rm/r535/gr.c   |     9 +-
 .../gpu/drm/nouveau/nvkm/subdev/gsp/rm/r535/gsp.c  |     7 +-
 .../gpu/drm/nouveau/nvkm/subdev/gsp/rm/r570/gr.c   |    34 +-
 .../drm/nouveau/nvkm/subdev/gsp/rm/r570/nvrm/gr.h  |    19 +
 drivers/gpu/drm/nouveau/nvkm/subdev/gsp/rm/rm.h    |     2 +-
 drivers/gpu/drm/nouveau/nvkm/subdev/gsp/tu102.c    |    18 +-
 drivers/gpu/drm/omapdrm/omap_drv.c                 |    22 +-
 drivers/gpu/drm/panel/Kconfig                      |    79 +-
 drivers/gpu/drm/panel/Makefile                     |     9 +-
 .../gpu/drm/panel/panel-boe-th101mb31ig002-28a.c   |     7 +-
 drivers/gpu/drm/panel/panel-edp.c                  |    40 +-
 drivers/gpu/drm/panel/panel-himax-hx83102.c        |   151 +
 drivers/gpu/drm/panel/panel-himax-hx83121a.c       |   749 +
 drivers/gpu/drm/panel/panel-ilitek-ili9806e-core.c |   134 +
 drivers/gpu/drm/panel/panel-ilitek-ili9806e-core.h |    15 +
 ...itek-ili9806e.c => panel-ilitek-ili9806e-dsi.c} |   153 +-
 drivers/gpu/drm/panel/panel-ilitek-ili9806e-spi.c  |   323 +
 drivers/gpu/drm/panel/panel-ilitek-ili9882t.c      |    14 +-
 drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c   |   244 +
 drivers/gpu/drm/panel/panel-jdi-lt070me05000.c     |   105 +-
 drivers/gpu/drm/panel/panel-lxd-m9189a.c           |   243 +
 drivers/gpu/drm/panel/panel-mantix-mlaf057we51.c   |    15 +-
 drivers/gpu/drm/panel/panel-motorola-mot.c         |   244 +
 drivers/gpu/drm/panel/panel-novatek-nt36672a.c     |    94 +-
 drivers/gpu/drm/panel/panel-novatek-nt37700f.c     |   299 +
 drivers/gpu/drm/panel/panel-renesas-r61307.c       |    40 +-
 drivers/gpu/drm/panel/panel-renesas-r69328.c       |    38 +-
 .../gpu/drm/panel/panel-samsung-s6e8fc0-m1906f9.c  |   301 +
 drivers/gpu/drm/panel/panel-sharp-ls043t1le01.c    |     1 +
 drivers/gpu/drm/panel/panel-simple.c               |   154 +-
 drivers/gpu/drm/panfrost/panfrost_gem.c            |     2 +-
 drivers/gpu/drm/panthor/Makefile                   |     2 +
 drivers/gpu/drm/panthor/panthor_device.h           |   107 +-
 drivers/gpu/drm/panthor/panthor_drv.c              |   134 +-
 drivers/gpu/drm/panthor/panthor_fw.c               |    20 +-
 drivers/gpu/drm/panthor/panthor_gem.c              |     2 +-
 drivers/gpu/drm/panthor/panthor_gpu.c              |    30 +-
 drivers/gpu/drm/panthor/panthor_gpu.h              |     2 +
 drivers/gpu/drm/panthor/panthor_hw.c               |    62 +
 drivers/gpu/drm/panthor/panthor_hw.h               |     8 +
 drivers/gpu/drm/panthor/panthor_mmu.c              |    47 +-
 drivers/gpu/drm/panthor/panthor_pwr.c              |     2 +-
 drivers/gpu/drm/panthor/panthor_sched.c            |     2 +-
 drivers/gpu/drm/panthor/panthor_trace.h            |    86 +
 drivers/gpu/drm/qxl/qxl_release.c                  |     5 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_cmm.c         |    26 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_cmm.h         |    18 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_crtc.c     |    16 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_crtc.h     |     3 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_drv.h      |     8 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_kms.c      |    52 +-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_vsp.c      |    16 +
 drivers/gpu/drm/renesas/rcar-du/rcar_du_vsp.h      |     2 +
 drivers/gpu/drm/renesas/rcar-du/rcar_mipi_dsi.c    |    35 +-
 drivers/gpu/drm/renesas/rz-du/rzg2l_mipi_dsi.c     |     3 +-
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c    |     4 +-
 drivers/gpu/drm/rockchip/dw_dp-rockchip.c          |    27 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c       |    24 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h       |     4 +
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c       |     8 +-
 drivers/gpu/drm/scheduler/sched_fence.c            |    10 +-
 drivers/gpu/drm/scheduler/sched_main.c             |    38 +-
 drivers/gpu/drm/scheduler/tests/tests_basic.c      |     4 +-
 drivers/gpu/drm/sitronix/st7586.c                  |   185 +-
 drivers/gpu/drm/sitronix/st7735r.c                 |   142 +-
 drivers/gpu/drm/sun4i/sun4i_backend.c              |    33 +-
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c             |     2 +-
 drivers/gpu/drm/sun4i/sun8i_mixer.c                |    29 +-
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c             |    16 +-
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c             |    27 +-
 drivers/gpu/drm/sun4i/sunxi_engine.h               |     7 +-
 drivers/gpu/drm/sysfb/Kconfig                      |    16 +
 drivers/gpu/drm/sysfb/Makefile                     |     1 +
 drivers/gpu/drm/sysfb/corebootdrm.c                |   434 +
 drivers/gpu/drm/sysfb/drm_sysfb.c                  |    24 +
 drivers/gpu/drm/sysfb/drm_sysfb_helper.h           |     8 +-
 drivers/gpu/drm/sysfb/drm_sysfb_screen_info.c      |    30 -
 drivers/gpu/drm/sysfb/efidrm.c                     |     8 +-
 drivers/gpu/drm/sysfb/vesadrm.c                    |     8 +-
 drivers/gpu/drm/tegra/hub.c                        |    22 +-
 drivers/gpu/drm/tests/Makefile                     |     1 -
 drivers/gpu/drm/tests/drm_buddy_test.c             |   928 -
 drivers/gpu/drm/tests/drm_connector_test.c         |    80 +-
 drivers/gpu/drm/tests/drm_exec_test.c              |     2 -
 drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c |   182 +-
 drivers/gpu/drm/tests/drm_mm_test.c                |     2 -
 drivers/gpu/drm/tilcdc/Kconfig                     |    18 +
 drivers/gpu/drm/tilcdc/Makefile                    |     5 +-
 drivers/gpu/drm/tilcdc/tilcdc_crtc.c               |   192 +-
 drivers/gpu/drm/tilcdc/tilcdc_drv.c                |   496 +-
 drivers/gpu/drm/tilcdc/tilcdc_drv.h                |    99 +-
 drivers/gpu/drm/tilcdc/tilcdc_encoder.c            |    69 +
 .../tilcdc/{tilcdc_external.h => tilcdc_encoder.h} |     5 +-
 drivers/gpu/drm/tilcdc/tilcdc_external.c           |   179 -
 drivers/gpu/drm/tilcdc/tilcdc_panel.c              |   408 -
 drivers/gpu/drm/tilcdc/tilcdc_panel.h              |    15 -
 drivers/gpu/drm/tilcdc/tilcdc_panel_legacy.c       |   185 +
 drivers/gpu/drm/tilcdc/tilcdc_panel_legacy.dtso    |    29 +
 drivers/gpu/drm/tilcdc/tilcdc_plane.c              |    35 +-
 drivers/gpu/drm/tilcdc/tilcdc_regs.h               |     8 +-
 drivers/gpu/drm/tiny/hx8357d.c                     |   138 +-
 drivers/gpu/drm/tiny/ili9163.c                     |   138 +-
 drivers/gpu/drm/tiny/ili9225.c                     |   192 +-
 drivers/gpu/drm/tiny/ili9341.c                     |   138 +-
 drivers/gpu/drm/tiny/ili9486.c                     |   139 +-
 drivers/gpu/drm/tiny/mi0283qt.c                    |   138 +-
 drivers/gpu/drm/tiny/panel-mipi-dbi.c              |   141 +-
 drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c   |    45 +-
 drivers/gpu/drm/ttm/tests/ttm_mock_manager.c       |    18 +-
 drivers/gpu/drm/ttm/tests/ttm_mock_manager.h       |     4 +-
 drivers/gpu/drm/ttm/ttm_backup.c                   |     6 +-
 drivers/gpu/drm/ttm/ttm_bo.c                       |    12 +-
 drivers/gpu/drm/ttm/ttm_pool.c                     |     7 +-
 drivers/gpu/drm/v3d/v3d_drv.c                      |    55 +-
 drivers/gpu/drm/v3d/v3d_drv.h                      |    51 +-
 drivers/gpu/drm/v3d/v3d_fence.c                    |     2 +-
 drivers/gpu/drm/v3d/v3d_gem.c                      |    43 +-
 drivers/gpu/drm/v3d/v3d_irq.c                      |     2 +-
 drivers/gpu/drm/v3d/v3d_perfmon.c                  |    57 +-
 drivers/gpu/drm/v3d/v3d_sched.c                    |   133 +-
 drivers/gpu/drm/v3d/v3d_submit.c                   |     6 +
 drivers/gpu/drm/v3d/v3d_sysfs.c                    |     2 +-
 drivers/gpu/drm/vc4/vc4_bo.c                       |     2 +-
 drivers/gpu/drm/vc4/vc4_drv.h                      |     5 +-
 drivers/gpu/drm/vc4/vc4_gem.c                      |     2 +-
 drivers/gpu/drm/vc4/vc4_hdmi.c                     |    36 +-
 drivers/gpu/drm/vc4/vc4_hdmi.h                     |     2 +-
 drivers/gpu/drm/vc4/vc4_kms.c                      |    67 +-
 drivers/gpu/drm/vc4/vc4_perfmon.c                  |    51 +-
 drivers/gpu/drm/verisilicon/Kconfig                |    16 +
 drivers/gpu/drm/verisilicon/Makefile               |     5 +
 drivers/gpu/drm/verisilicon/vs_bridge.c            |   371 +
 drivers/gpu/drm/verisilicon/vs_bridge.h            |    39 +
 drivers/gpu/drm/verisilicon/vs_bridge_regs.h       |    54 +
 drivers/gpu/drm/verisilicon/vs_crtc.c              |   191 +
 drivers/gpu/drm/verisilicon/vs_crtc.h              |    31 +
 drivers/gpu/drm/verisilicon/vs_crtc_regs.h         |    60 +
 drivers/gpu/drm/verisilicon/vs_dc.c                |   207 +
 drivers/gpu/drm/verisilicon/vs_dc.h                |    38 +
 drivers/gpu/drm/verisilicon/vs_dc_top_regs.h       |    27 +
 drivers/gpu/drm/verisilicon/vs_drm.c               |   182 +
 drivers/gpu/drm/verisilicon/vs_drm.h               |    28 +
 drivers/gpu/drm/verisilicon/vs_hwdb.c              |   150 +
 drivers/gpu/drm/verisilicon/vs_hwdb.h              |    29 +
 drivers/gpu/drm/verisilicon/vs_plane.c             |   124 +
 drivers/gpu/drm/verisilicon/vs_plane.h             |    72 +
 drivers/gpu/drm/verisilicon/vs_primary_plane.c     |   173 +
 .../gpu/drm/verisilicon/vs_primary_plane_regs.h    |    53 +
 drivers/gpu/drm/virtio/virtgpu_prime.c             |     4 +-
 drivers/gpu/drm/vkms/vkms_colorop.c                |    16 +-
 drivers/gpu/drm/vkms/vkms_composer.c               |     8 +-
 drivers/gpu/drm/vkms/vkms_crtc.c                   |     3 +
 drivers/gpu/drm/vkms/vkms_drv.c                    |     1 -
 drivers/gpu/drm/vmwgfx/vmwgfx_fence.c              |     3 +-
 drivers/gpu/drm/xe/Makefile                        |     1 +
 drivers/gpu/drm/xe/display/xe_fb_pin.c             |     5 +-
 .../gpu/drm/xe/instructions/xe_gfxpipe_commands.h  |    10 +
 drivers/gpu/drm/xe/regs/xe_gt_regs.h               |    25 +-
 drivers/gpu/drm/xe/regs/xe_guc_regs.h              |     8 +
 drivers/gpu/drm/xe/tests/xe_dma_buf.c              |     7 +-
 .../gpu/drm/xe/tests/xe_gt_sriov_pf_config_kunit.c |    98 +-
 drivers/gpu/drm/xe/tests/xe_guc_buf_kunit.c        |     6 +-
 drivers/gpu/drm/xe/tests/xe_guc_g2g_test.c         |    61 +-
 drivers/gpu/drm/xe/tests/xe_pci_test.c             |     8 +
 drivers/gpu/drm/xe/tests/xe_rtp_test.c             |     3 +-
 drivers/gpu/drm/xe/xe_bb.c                         |    59 +-
 drivers/gpu/drm/xe/xe_bb.h                         |     6 +-
 drivers/gpu/drm/xe/xe_bo.c                         |     6 +-
 drivers/gpu/drm/xe/xe_configfs.c                   |    64 +-
 drivers/gpu/drm/xe/xe_configfs.h                   |    16 +-
 drivers/gpu/drm/xe/xe_defaults.h                   |    26 +
 drivers/gpu/drm/xe/xe_devcoredump.c                |     2 +-
 drivers/gpu/drm/xe/xe_device.c                     |    64 +-
 drivers/gpu/drm/xe/xe_device.h                     |    16 +-
 drivers/gpu/drm/xe/xe_device_types.h               |   190 +-
 drivers/gpu/drm/xe/xe_dma_buf.c                    |    14 +-
 drivers/gpu/drm/xe/xe_exec_queue.c                 |   113 +-
 drivers/gpu/drm/xe/xe_exec_queue.h                 |     1 +
 drivers/gpu/drm/xe/xe_exec_queue_types.h           |    19 +-
 drivers/gpu/drm/xe/xe_execlist.c                   |     9 +-
 drivers/gpu/drm/xe/xe_force_wake.c                 |    46 +-
 drivers/gpu/drm/xe/xe_force_wake.h                 |    11 +
 drivers/gpu/drm/xe/xe_ggtt.c                       |   380 +-
 drivers/gpu/drm/xe/xe_ggtt.h                       |    14 +-
 drivers/gpu/drm/xe/xe_ggtt_types.h                 |    63 +-
 drivers/gpu/drm/xe/xe_gt.c                         |    13 +-
 drivers/gpu/drm/xe/xe_gt_ccs_mode.c                |    44 +-
 drivers/gpu/drm/xe/xe_gt_debugfs.c                 |    26 +
 drivers/gpu/drm/xe/xe_gt_idle.c                    |    25 +
 drivers/gpu/drm/xe/xe_gt_mcr.c                     |    30 +-
 drivers/gpu/drm/xe/xe_gt_sriov_pf_config.c         |   237 +-
 drivers/gpu/drm/xe/xe_gt_sriov_pf_config.h         |     4 +
 drivers/gpu/drm/xe/xe_gt_sriov_pf_control.c        |     2 +-
 drivers/gpu/drm/xe/xe_gt_sriov_pf_service.c        |     2 +
 drivers/gpu/drm/xe/xe_gt_sriov_vf.c                |    89 +-
 drivers/gpu/drm/xe/xe_gt_sriov_vf.h                |     3 +-
 drivers/gpu/drm/xe/xe_gt_sriov_vf_types.h          |     4 +-
 drivers/gpu/drm/xe/xe_gt_stats.c                   |    64 +-
 drivers/gpu/drm/xe/xe_gt_stats.h                   |     6 +
 drivers/gpu/drm/xe/xe_gt_stats_types.h             |    20 +
 drivers/gpu/drm/xe/xe_gt_topology.c                |    39 +-
 drivers/gpu/drm/xe/xe_gt_types.h                   |    22 +-
 drivers/gpu/drm/xe/xe_guc.c                        |    83 +-
 drivers/gpu/drm/xe/xe_guc_ct.c                     |   119 +-
 drivers/gpu/drm/xe/xe_guc_ct_types.h               |     4 +-
 drivers/gpu/drm/xe/xe_guc_fwif.h                   |     5 +-
 drivers/gpu/drm/xe/xe_guc_log.h                    |     6 +-
 drivers/gpu/drm/xe/xe_guc_pagefault.c              |    18 +-
 drivers/gpu/drm/xe/xe_guc_pc.c                     |   118 +-
 drivers/gpu/drm/xe/xe_guc_pc.h                     |     6 +-
 drivers/gpu/drm/xe/xe_guc_rc.c                     |   131 +
 drivers/gpu/drm/xe/xe_guc_rc.h                     |    16 +
 drivers/gpu/drm/xe/xe_guc_submit.c                 |   176 +-
 drivers/gpu/drm/xe/xe_guc_tlb_inval.c              |   242 +-
 drivers/gpu/drm/xe/xe_hw_engine.c                  |     6 +-
 drivers/gpu/drm/xe/xe_hw_engine_group.c            |     3 +-
 drivers/gpu/drm/xe/xe_hw_fence.c                   |     3 +-
 drivers/gpu/drm/xe/xe_i2c.c                        |     2 +-
 drivers/gpu/drm/xe/xe_lmtt.c                       |    17 +
 drivers/gpu/drm/xe/xe_lmtt.h                       |     1 +
 drivers/gpu/drm/xe/xe_lrc.c                        |   289 +-
 drivers/gpu/drm/xe/xe_lrc.h                        |     4 +
 drivers/gpu/drm/xe/xe_lrc_types.h                  |     6 +
 drivers/gpu/drm/xe/xe_migrate.c                    |   119 +-
 drivers/gpu/drm/xe/xe_mmio.h                       |     7 +-
 drivers/gpu/drm/xe/xe_mmio_types.h                 |    64 +
 drivers/gpu/drm/xe/xe_mocs.c                       |     1 +
 drivers/gpu/drm/xe/xe_module.c                     |    44 +-
 drivers/gpu/drm/xe/xe_nvm.c                        |    12 +-
 drivers/gpu/drm/xe/xe_oa.c                         |    24 +-
 drivers/gpu/drm/xe/xe_oa_types.h                   |     3 -
 drivers/gpu/drm/xe/xe_pagefault.c                  |    31 +-
 drivers/gpu/drm/xe/xe_pagefault_types.h            |    20 +-
 drivers/gpu/drm/xe/xe_pat.c                        |   149 +-
 drivers/gpu/drm/xe/xe_pci.c                        |    59 +
 drivers/gpu/drm/xe/xe_pci_types.h                  |     4 +
 drivers/gpu/drm/xe/xe_platform_types.h             |     1 +
 drivers/gpu/drm/xe/xe_query.c                      |     3 -
 drivers/gpu/drm/xe/xe_reg_sr.c                     |    72 +-
 drivers/gpu/drm/xe/xe_reg_sr.h                     |     7 +
 drivers/gpu/drm/xe/xe_reg_whitelist.c              |    12 +-
 drivers/gpu/drm/xe/xe_res_cursor.h                 |    34 +-
 drivers/gpu/drm/xe/xe_rtp.c                        |     8 +-
 drivers/gpu/drm/xe/xe_rtp.h                        |     3 +-
 drivers/gpu/drm/xe/xe_sa.c                         |    36 +
 drivers/gpu/drm/xe/xe_sa.h                         |     2 +
 drivers/gpu/drm/xe/xe_sched_job.c                  |     4 +-
 drivers/gpu/drm/xe/xe_sleep.h                      |    57 +
 drivers/gpu/drm/xe/xe_soc_remapper.c               |     1 +
 drivers/gpu/drm/xe/xe_sriov.c                      |     2 +-
 drivers/gpu/drm/xe/xe_sriov.h                      |     7 +-
 drivers/gpu/drm/xe/xe_sriov_pf.c                   |    10 +-
 drivers/gpu/drm/xe/xe_sriov_pf_helpers.h           |     3 +-
 drivers/gpu/drm/xe/xe_sriov_pf_provision.c         |   119 +-
 drivers/gpu/drm/xe/xe_sriov_pf_provision.h         |     4 +
 drivers/gpu/drm/xe/xe_sriov_pf_sysfs.c             |    31 +-
 drivers/gpu/drm/xe/xe_sriov_pf_types.h             |     3 +
 drivers/gpu/drm/xe/xe_svm.c                        |    12 +-
 drivers/gpu/drm/xe/xe_tile.h                       |     4 +-
 drivers/gpu/drm/xe/xe_tile_sriov_vf.c              |   198 +-
 drivers/gpu/drm/xe/xe_tile_sriov_vf.h              |     3 -
 drivers/gpu/drm/xe/xe_tile_sysfs.c                 |     2 +-
 drivers/gpu/drm/xe/xe_tile_types.h                 |   141 +
 drivers/gpu/drm/xe/xe_tlb_inval.c                  |    33 +
 drivers/gpu/drm/xe/xe_tlb_inval.h                  |     2 +
 drivers/gpu/drm/xe/xe_ttm_vram_mgr.c               |    85 +-
 drivers/gpu/drm/xe/xe_ttm_vram_mgr_types.h         |     4 +-
 drivers/gpu/drm/xe/xe_tuning.c                     |    36 +-
 drivers/gpu/drm/xe/xe_uc.c                         |    10 +-
 drivers/gpu/drm/xe/xe_uc.h                         |     1 -
 drivers/gpu/drm/xe/xe_vm.c                         |    88 +-
 drivers/gpu/drm/xe/xe_vm.h                         |    10 +
 drivers/gpu/drm/xe/xe_vm_types.h                   |    17 +
 drivers/gpu/drm/xe/xe_vram_freq.c                  |     2 +-
 drivers/gpu/drm/xe/xe_wa.c                         |   376 +-
 drivers/gpu/drm/xe/xe_wa_oob.rules                 |    39 +-
 drivers/gpu/drm/xe/xe_wopcm.c                      |    15 +-
 drivers/gpu/tests/Makefile                         |     4 +
 drivers/gpu/tests/gpu_buddy_test.c                 |  1421 +
 .../{drm/lib/drm_random.c => tests/gpu_random.c}   |    18 +-
 .../{drm/lib/drm_random.h => tests/gpu_random.h}   |    18 +-
 drivers/infiniband/core/ib_core_uverbs.c           |     2 +-
 drivers/infiniband/core/umem_dmabuf.c              |    10 -
 drivers/infiniband/core/uverbs_std_types_dmabuf.c  |     2 +-
 drivers/infiniband/hw/mlx5/mr.c                    |     2 +-
 drivers/iommu/iommufd/pages.c                      |    11 +-
 drivers/iommu/iommufd/selftest.c                   |     2 +-
 drivers/vfio/pci/vfio_pci_dmabuf.c                 |    80 +-
 drivers/video/Kconfig                              |     1 +
 include/drm/bridge/dw_dp.h                         |     7 +
 include/drm/bridge/dw_hdmi_qp.h                    |     2 +-
 include/drm/display/drm_hdmi_helper.h              |     3 +-
 include/drm/drm_atomic.h                           |    20 +-
 include/drm/drm_atomic_state_helper.h              |     3 +
 include/drm/drm_blend.h                            |     4 +-
 include/drm/drm_bridge.h                           |     6 +-
 include/drm/drm_buddy.h                            |   163 +-
 include/drm/drm_client.h                           |     3 +
 include/drm/drm_colorop.h                          |    32 +-
 include/drm/drm_connector.h                        |    49 +-
 include/drm/drm_crtc.h                             |    12 +
 include/drm/drm_fb_helper.h                        |   105 -
 include/drm/drm_mipi_dbi.h                         |   145 +-
 include/drm/drm_mode_config.h                      |     9 +
 include/drm/drm_simple_kms_helper.h                |   216 +-
 include/drm/drm_suballoc.h                         |     6 +
 include/drm/intel/pciids.h                         |    12 +
 include/drm/ttm/ttm_backup.h                       |     2 +-
 include/drm/ttm/ttm_bo.h                           |    28 +-
 include/linux/coreboot.h                           |    90 +
 include/linux/dma-buf.h                            |    17 +-
 include/linux/dma-fence-array.h                    |     1 -
 include/linux/dma-fence-chain.h                    |     1 -
 include/linux/dma-fence.h                          |    97 +-
 include/linux/gpu_buddy.h                          |   241 +
 include/linux/math.h                               |    18 +-
 include/trace/events/dma_fence.h                   |    35 +-
 include/uapi/drm/amdgpu_drm.h                      |     7 +-
 include/uapi/drm/amdxdna_accel.h                   |    47 +-
 include/uapi/drm/drm_fourcc.h                      |    16 +
 include/uapi/drm/drm_mode.h                        |    84 +
 include/uapi/drm/nouveau_drm.h                     |    66 +
 include/uapi/drm/panthor_drm.h                     |    63 +-
 include/uapi/drm/xe_drm.h                          |    14 +-
 include/uapi/linux/const.h                         |    18 +
 819 files changed, 128712 insertions(+), 14784 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml
 create mode 100644 Documentation/devicetree/bindings/display/bridge/thead,th1520-dw-hdmi.yaml
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml
 create mode 100644 Documentation/devicetree/bindings/display/panel/lxd,m9189a.yaml
 create mode 100644 Documentation/devicetree/bindings/display/panel/motorola,mot-panel.yaml
 create mode 100644 Documentation/devicetree/bindings/display/tilcdc/ti,am33xx-tilcdc.yaml
 delete mode 100644 Documentation/devicetree/bindings/display/tilcdc/tilcdc.txt
 create mode 100644 Documentation/devicetree/bindings/display/verisilicon,dc.yaml
 create mode 100644 drivers/accel/amdxdna/amdxdna_iommu.c
 create mode 100644 drivers/gpu/Kconfig
 create mode 100644 drivers/gpu/buddy.c
 create mode 100644 drivers/gpu/drm/amd/amdgpu/amdgpu_reg_access.c
 create mode 100644 drivers/gpu/drm/amd/amdgpu/amdgpu_reg_access.h
 delete mode 100644 drivers/gpu/drm/amd/display/dc/clk_mgr/dce60/dce60_clk_mgr.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/clk_mgr/dcn42/dcn42_clk_mgr.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/clk_mgr/dcn42/dcn42_clk_mgr.h
 create mode 100644 drivers/gpu/drm/amd/display/dc/clk_mgr/dcn42/dcn42_smu.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/clk_mgr/dcn42/dcn42_smu.h
 create mode 100644 drivers/gpu/drm/amd/display/dc/dccg/dcn42/dcn42_dccg.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/dccg/dcn42/dcn42_dccg.h
 delete mode 100644 drivers/gpu/drm/amd/display/dc/dce/dce_clk_mgr.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/dio/dcn42/dcn42_dio_link_encoder.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/dio/dcn42/dcn42_dio_link_encoder.h
 create mode 100644 drivers/gpu/drm/amd/display/dc/dio/dcn42/dcn42_dio_stream_encoder.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/dio/dcn42/dcn42_dio_stream_encoder.h
 create mode 100644 drivers/gpu/drm/amd/display/dc/dpp/dcn42/dcn42_dpp.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/dpp/dcn42/dcn42_dpp.h
 create mode 100644 drivers/gpu/drm/amd/display/dc/gpio/dcn42/hw_factory_dcn42.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/gpio/dcn42/hw_factory_dcn42.h
 create mode 100644 drivers/gpu/drm/amd/display/dc/gpio/dcn42/hw_translate_dcn42.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/gpio/dcn42/hw_translate_dcn42.h
 create mode 100644 drivers/gpu/drm/amd/display/dc/hpo/dcn42/dcn42_hpo_dp_link_encoder.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/hpo/dcn42/dcn42_hpo_dp_link_encoder.h
 create mode 100644 drivers/gpu/drm/amd/display/dc/hubbub/dcn42/dcn42_hubbub.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/hubbub/dcn42/dcn42_hubbub.h
 create mode 100644 drivers/gpu/drm/amd/display/dc/hubp/dcn42/dcn42_hubp.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/hubp/dcn42/dcn42_hubp.h
 create mode 100644 drivers/gpu/drm/amd/display/dc/hwss/dcn42/dcn42_hwseq.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/hwss/dcn42/dcn42_hwseq.h
 create mode 100644 drivers/gpu/drm/amd/display/dc/hwss/dcn42/dcn42_init.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/hwss/dcn42/dcn42_init.h
 create mode 100644 drivers/gpu/drm/amd/display/dc/irq/dcn42/irq_service_dcn42.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/irq/dcn42/irq_service_dcn42.h
 create mode 100644 drivers/gpu/drm/amd/display/dc/mmhubbub/dcn42/dcn42_mmhubbub.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/mmhubbub/dcn42/dcn42_mmhubbub.h
 create mode 100644 drivers/gpu/drm/amd/display/dc/mpc/dcn42/dcn42_mpc.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/mpc/dcn42/dcn42_mpc.h
 create mode 100644 drivers/gpu/drm/amd/display/dc/optc/dcn42/dcn42_optc.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/optc/dcn42/dcn42_optc.h
 create mode 100644 drivers/gpu/drm/amd/display/dc/pg/dcn42/dcn42_pg_cntl.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/pg/dcn42/dcn42_pg_cntl.h
 create mode 100644 drivers/gpu/drm/amd/display/dc/resource/dcn42/dcn42_resource.c
 create mode 100644 drivers/gpu/drm/amd/display/dc/resource/dcn42/dcn42_resource.h
 create mode 100644 drivers/gpu/drm/amd/display/dc/resource/dcn42/dcn42_resource_fpu.c
 rename drivers/gpu/drm/amd/display/dc/{clk_mgr/dce60/dce60_clk_mgr.h => resource/dcn42/dcn42_resource_fpu.h} (78%)
 create mode 100644 drivers/gpu/drm/amd/display/dmub/src/dmub_dcn42.c
 create mode 100644 drivers/gpu/drm/amd/display/dmub/src/dmub_dcn42.h
 create mode 100644 drivers/gpu/drm/amd/include/asic_reg/dcn/dcn_4_2_0_offset.h
 create mode 100644 drivers/gpu/drm/amd/include/asic_reg/dcn/dcn_4_2_0_sh_mask.h
 create mode 100644 drivers/gpu/drm/amd/include/asic_reg/dpcs/dpcs_4_0_0_offset.h
 create mode 100644 drivers/gpu/drm/amd/include/asic_reg/dpcs/dpcs_4_0_0_sh_mask.h
 create mode 100644 drivers/gpu/drm/amd/ras/rascore/ras_eeprom_fw.c
 create mode 100644 drivers/gpu/drm/amd/ras/rascore/ras_eeprom_fw.h
 create mode 100644 drivers/gpu/drm/bridge/lontium-lt8713sx.c
 create mode 100644 drivers/gpu/drm/bridge/th1520-dw-hdmi.c
 create mode 100644 drivers/gpu/drm/imagination/pvr_dump.c
 create mode 100644 drivers/gpu/drm/imagination/pvr_dump.h
 delete mode 100644 drivers/gpu/drm/mediatek/mtk_gem.c
 delete mode 100644 drivers/gpu/drm/mediatek/mtk_gem.h
 create mode 100644 drivers/gpu/drm/panel/panel-himax-hx83121a.c
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-core.c
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-core.h
 rename drivers/gpu/drm/panel/{panel-ilitek-ili9806e.c => panel-ilitek-ili9806e-dsi.c} (82%)
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-spi.c
 create mode 100644 drivers/gpu/drm/panel/panel-lxd-m9189a.c
 create mode 100644 drivers/gpu/drm/panel/panel-motorola-mot.c
 create mode 100644 drivers/gpu/drm/panel/panel-novatek-nt37700f.c
 create mode 100644 drivers/gpu/drm/panel/panel-samsung-s6e8fc0-m1906f9.c
 create mode 100644 drivers/gpu/drm/panthor/panthor_trace.h
 create mode 100644 drivers/gpu/drm/sysfb/corebootdrm.c
 delete mode 100644 drivers/gpu/drm/tests/drm_buddy_test.c
 create mode 100644 drivers/gpu/drm/tilcdc/tilcdc_encoder.c
 rename drivers/gpu/drm/tilcdc/{tilcdc_external.h => tilcdc_encoder.h} (51%)
 delete mode 100644 drivers/gpu/drm/tilcdc/tilcdc_external.c
 delete mode 100644 drivers/gpu/drm/tilcdc/tilcdc_panel.c
 delete mode 100644 drivers/gpu/drm/tilcdc/tilcdc_panel.h
 create mode 100644 drivers/gpu/drm/tilcdc/tilcdc_panel_legacy.c
 create mode 100644 drivers/gpu/drm/tilcdc/tilcdc_panel_legacy.dtso
 create mode 100644 drivers/gpu/drm/verisilicon/Kconfig
 create mode 100644 drivers/gpu/drm/verisilicon/Makefile
 create mode 100644 drivers/gpu/drm/verisilicon/vs_bridge.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_bridge.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_bridge_regs.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc_regs.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_dc_top_regs.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_drm.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_drm.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_hwdb.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_hwdb.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.h
 create mode 100644 drivers/gpu/drm/verisilicon/vs_primary_plane.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_primary_plane_regs.h
 create mode 100644 drivers/gpu/drm/xe/xe_defaults.h
 create mode 100644 drivers/gpu/drm/xe/xe_guc_rc.c
 create mode 100644 drivers/gpu/drm/xe/xe_guc_rc.h
 create mode 100644 drivers/gpu/drm/xe/xe_mmio_types.h
 create mode 100644 drivers/gpu/drm/xe/xe_sleep.h
 create mode 100644 drivers/gpu/drm/xe/xe_tile_types.h
 create mode 100644 drivers/gpu/tests/Makefile
 create mode 100644 drivers/gpu/tests/gpu_buddy_test.c
 rename drivers/gpu/{drm/lib/drm_random.c => tests/gpu_random.c} (59%)
 rename drivers/gpu/{drm/lib/drm_random.h => tests/gpu_random.h} (53%)
 create mode 100644 include/linux/coreboot.h
 create mode 100644 include/linux/gpu_buddy.h

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)
