Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLoCHbdxsmmuMgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 08:56:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 244DC26E849
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 08:56:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC6C910E995;
	Thu, 12 Mar 2026 07:56:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="OXjjnk7L";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="qy5lwvbO";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="OXjjnk7L";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="qy5lwvbO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE54F10E994
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2026 07:56:32 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 9765E5BD9A;
 Thu, 12 Mar 2026 07:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1773302191; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=DHVNXKHqHBN4I0S02ySoOpHlXMNjJ0NB2c/sQHZ56Q8=;
 b=OXjjnk7Lme3svZXSDQe9dCKsgg8CKOeLI+U9pU5SUh+15iDvoVcU4FWniDYRQlMMjdwtQC
 p3W2t7sG9LE16v9TUTV3ot1YMBDEBLN6ODwgL3hWF4Sg544MXo0J0v0N5XgmlWaPxKZRPR
 ph6CrXmEpUYX5GHqIu4j/9HHjLiwX74=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1773302191;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=DHVNXKHqHBN4I0S02ySoOpHlXMNjJ0NB2c/sQHZ56Q8=;
 b=qy5lwvbOVNC2qna+8SOxvTc6FvVMfncc7+vdLmh96antddOFtBx00sl6YtSoimYrpvdyr/
 DvcND5Q9+BhoiEAg==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=OXjjnk7L;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=qy5lwvbO
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1773302191; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=DHVNXKHqHBN4I0S02ySoOpHlXMNjJ0NB2c/sQHZ56Q8=;
 b=OXjjnk7Lme3svZXSDQe9dCKsgg8CKOeLI+U9pU5SUh+15iDvoVcU4FWniDYRQlMMjdwtQC
 p3W2t7sG9LE16v9TUTV3ot1YMBDEBLN6ODwgL3hWF4Sg544MXo0J0v0N5XgmlWaPxKZRPR
 ph6CrXmEpUYX5GHqIu4j/9HHjLiwX74=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1773302191;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=DHVNXKHqHBN4I0S02ySoOpHlXMNjJ0NB2c/sQHZ56Q8=;
 b=qy5lwvbOVNC2qna+8SOxvTc6FvVMfncc7+vdLmh96antddOFtBx00sl6YtSoimYrpvdyr/
 DvcND5Q9+BhoiEAg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 3729C3FE6E;
 Thu, 12 Mar 2026 07:56:31 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id KF1GDK9xsmmMRgAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Thu, 12 Mar 2026 07:56:31 +0000
Date: Thu, 12 Mar 2026 08:56:29 +0100
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
Message-ID: <20260312075629.GA21234@linux.fritz.box>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,suse.com:url,gitlab.freedesktop.org:url,suse.de:dkim]
X-Rspamd-Queue-Id: 244DC26E849
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave, Sima,

here's this week's PR for drm-misc-next.

Best regards
Thomas

drm-misc-next-2026-03-12:
drm-misc-next for v7.1:

UAPI Changes:

amdxdna:
- Add sensors ioctls

Cross-subsystem Changes:

dma-buf:
- clean pages with helpers

Documenatation:
- devicetree: Add lxd vendor prefix

Core Changes:

buddy:
- improve aligned allocations

gem-shmem:
- Track page accessed/dirty status across mmap/vmap

ttm:
- fix fence signalling

Driver Changes:

amdxdna:
- provide NPU power estimate
- support sensor for column utilization

bridge:
- anx7625: Fix USB Type-C handling
- cdns-mhdp8546-core: Handle HDCP state in bridge atomic_check

ivpu:
- fixes

loongson:
- replace custom code with drm_gem_ttm_dumb_map_offset()

mxsfb:
- lcdif: report probing errors with dev_err_probe()

panel:
- ilitek-ili9882t: Allow GPIO calls to sleep
- jadard: Support TAIGUAN XTI05101-01A
- lxd: Support LXD M9189A plus DT bindings
- mantix: Fix pixel clock; Clean up
- motorola: Support Motorola Atrix 4G and Droid X2 plus DT bindings
- novatek: Support Novatek/Tianma NT37700F plus DT bindings
- renesas: Clean up
- simple: Support EDT ET057023UDBA plus DT bindings; Support Powertip
  PH800480T032-ZHC19 plus DT bindings; Support Waveshare 13.3"
  - clean up DT bindings of various drivers

panthor:
- fix fence handling

vc4:
- check return value of platform_get_irq_byname()
The following changes since commit 58351f46de26bcc4403f9972f7aed430d15cbd03:

  Merge v7.0-rc3 into drm-next (2026-03-11 11:18:31 +0100)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-2026-03-12

for you to fetch changes up to f08ceb71c5a5615577e7c841e1e00a89f495ab51:

  Merge drm/drm-next into drm-misc-next (2026-03-12 08:25:41 +0100)

----------------------------------------------------------------
drm-misc-next for v7.1:

UAPI Changes:

amdxdna:
- Add sensors ioctls

Cross-subsystem Changes:

dma-buf:
- clean pages with helpers

Documenatation:
- devicetree: Add lxd vendor prefix

Core Changes:

buddy:
- improve aligned allocations

gem-shmem:
- Track page accessed/dirty status across mmap/vmap

ttm:
- fix fence signalling

Driver Changes:

amdxdna:
- provide NPU power estimate
- support sensor for column utilization

bridge:
- anx7625: Fix USB Type-C handling
- cdns-mhdp8546-core: Handle HDCP state in bridge atomic_check

ivpu:
- fixes

loongson:
- replace custom code with drm_gem_ttm_dumb_map_offset()

mxsfb:
- lcdif: report probing errors with dev_err_probe()

panel:
- ilitek-ili9882t: Allow GPIO calls to sleep
- jadard: Support TAIGUAN XTI05101-01A
- lxd: Support LXD M9189A plus DT bindings
- mantix: Fix pixel clock; Clean up
- motorola: Support Motorola Atrix 4G and Droid X2 plus DT bindings
- novatek: Support Novatek/Tianma NT37700F plus DT bindings
- renesas: Clean up
- simple: Support EDT ET057023UDBA plus DT bindings; Support Powertip
  PH800480T032-ZHC19 plus DT bindings; Support Waveshare 13.3"
  - clean up DT bindings of various drivers

panthor:
- fix fence handling

vc4:
- check return value of platform_get_irq_byname()

----------------------------------------------------------------
Alexander Stein (1):
      drm: lcdif: Use dev_err_probe()

Amin GATTOUT (1):
      drm/loongson: use drm_gem_ttm_dumb_map_offset()

Andrzej Kacprowski (1):
      accel/ivpu: Remove boot params address setting via MMIO register

Arnd Bergmann (1):
      drm: bridge: anx7625: enforce CONFIG_USB_ROLE_SWITCH dependency

Arunpravin Paneer Selvam (2):
      drm/buddy: Improve offset-aligned allocation handling
      drm/buddy: Add KUnit test for offset-aligned allocations

Boris Brezillon (1):
      drm/panthor: Fix the "done_fence is initialized" detection logic

Dave Hansen (1):
      MAINTAINERS: Remove bouncing Keem Bay maintainer

Dmitry Baryshkov (1):
      drm: bridge: anx7625: correctly detect if PD can be disabled

Florijan Plohl (2):
      dt-bindings: display: simple: Add Powertip PH800480T032-ZHC19 panel
      drm/panel: simple: Add Powertip PH800480T032-ZHC19 panel

Greg Kroah-Hartman (1):
      drm/vc4: platform_get_irq_byname() returns an int

Harikrishna Shenoy (1):
      drm/bridge: cadence: cdns-mhdp8546-core: Handle HDCP state in bridge atomic check

Jayesh Choudhary (5):
      drm/bridge: cadence: cdns-mhdp8546-core: Set the mhdp connector earlier in atomic_enable()
      drm/bridge: cadence: cdns-mhdp8546-core: Add mode_valid hook to drm_bridge_funcs
      drm/bridge: cadence: cdns-mhdp8546-core: Remove legacy support for connector initialisation in bridge
      cadence: cdns-mhdp8546*: Change drm_connector from structure to pointer
      drm/bridge: cadence: cdns-mhdp8546-core: Reduce log level for DPCD read/write

John Keeping (1):
      drm/panel: ilitek-ili9882t: use gpiod_set_value_cansleep()

Karol Wachowski (2):
      accel/ivpu: Test for imported buffers with drm_gem_is_imported()
      accel/ivpu: Apply minor code style cleanups to align with kernel style

Krzysztof Kozlowski (4):
      dt-bindings: display: samsung,s6d7aa0: Document port
      dt-bindings: display: innolux,p097pfg: Document ports
      dt-bindings: display: panel: Drop redundant properties
      dt-bindings: display: panel: Align style of additionalProperties

Langyan Ye (3):
      dt-bindings: vendor: add taiguanck
      dt-bindings: display: panel: Add compatible for TAIGUAN XTI05101-01A
      drm/panel: panel-jadard-jd9365da-h3: support for taiguan-xti05101-01a MIPI-DSI panel

Linus Walleij (2):
      dma-buf: heaps: Clear CMA pages with clear_pages()
      dma-buf: heaps: Clear CMA highages using helper

Lizhi Hou (1):
      accel/amdxdna: Add IOCTL to retrieve realtime NPU power estimate

Loic Poulain (1):
      drm: bridge: anx7625: don't crash if Type-C port is not used

Luca Leonardo Scorcia (1):
      dt-bindings: display: panel: Document the rotation property

Lukas Bulwahn (1):
      MAINTAINERS: adjust file entry in GPU BUDDY ALLOCATOR

Marco Felsch (2):
      dt-bindings: display: simple: add EDT ET057023UDBA panel
      drm/panel: simple: add EDT ET057023UDBA panel

Marek Vasut (1):
      drm/panel: simple: Add Waveshare 13.3" panel support

Mario Limonciello (AMD) (2):
      accel/amdxdna: Import AMD_PMF namespace
      accel/amdxdna: Support sensors for column utilization

Maxime Ripard (1):
      Merge drm/drm-next into drm-misc-next

Richard Acayan (3):
      dt-bindings: arm: qcom: document google,bonito-tianma board
      dt-bindings: panel-simple-dsi: add nt37700f compatible
      drm/panel: Add Novatek/Tianma NT37700F panel

Rouven Czerwinski (3):
      dt-bindings: vendor-prefixes: Add lxd
      dt-bindings: display: panel: add LXD M9189A
      drm/panel: add LXD M9189A panel driver

Sanjay Yadav (1):
      gpu/tests/gpu_buddy: Add gpu_test_buddy_alloc_range for exact-range allocation

Sebastian Brzezinka (1):
      drm/ttm: fix NULL deref in ttm_bo_flush_all_fences() after fence ops detach

Sebastian Krzyszkowiak (2):
      drm/panel: mantix: Drop the shutdown callback
      drm/panel: mantix: Set the pixel clocks for 60 Hz

Svyatoslav Ryhel (7):
      drm/panel: r61307: align with schema property
      drm/panel: r61307/r69328: convert to drm_connector_helper_get_modes_fixed
      drm/panel: r61307/r69328: remove redundant checks
      drm/panel: r61307/r69328: return accumulated errors
      drm/panel: r61307/r69328: convert to devm_mipi_dsi_attach
      dt-bindings: display: panel: document Atrix 4G and Droid X2 DSI panel
      gpu/drm: panel: add support for DSI panel used in Motorola Atrix 4G and Droid X2

Thomas Zimmermann (6):
      drm/gem-shmem: Use obj directly where appropriate in fault handler
      drm/gem-shmem: Test for existence of page in mmap fault handler
      drm/gem-shmem: Return vm_fault_t from drm_gem_shmem_try_map_pmd()
      drm/gem-shmem: Refactor drm_gem_shmem_try_map_pmd()
      drm/gem-shmem: Track folio accessed/dirty status in mmap
      drm/gem-shmem: Track folio accessed/dirty status in vmap

 Documentation/devicetree/bindings/arm/qcom.yaml    |   6 +
 .../bindings/display/panel/abt,y030xx067a.yaml     |   5 -
 .../display/panel/advantech,idk-1110wr.yaml        |   4 +-
 .../display/panel/advantech,idk-2121wr.yaml        |   4 +-
 .../display/panel/bananapi,s070wv20-ct16.yaml      |   4 +-
 .../bindings/display/panel/dlc,dlc0700yzg-1.yaml   |   4 +-
 .../bindings/display/panel/himax,hx83112a.yaml     |   2 -
 .../bindings/display/panel/himax,hx8394.yaml       |   4 +-
 .../bindings/display/panel/ilitek,ili9163.yaml     |   4 -
 .../bindings/display/panel/ilitek,ili9322.yaml     |   3 -
 .../bindings/display/panel/ilitek,ili9341.yaml     |   6 +-
 .../bindings/display/panel/innolux,ej030na.yaml    |   5 -
 .../bindings/display/panel/innolux,p097pfg.yaml    |  26 +-
 .../bindings/display/panel/jadard,jd9365da-h3.yaml |   4 +-
 .../display/panel/kingdisplay,kd035g6-54nt.yaml    |   5 -
 .../bindings/display/panel/lgphilips,lb035q02.yaml |   4 -
 .../bindings/display/panel/lxd,m9189a.yaml         |  64 +++
 .../display/panel/mitsubishi,aa104xd12.yaml        |   4 +-
 .../display/panel/mitsubishi,aa121td01.yaml        |   4 +-
 .../bindings/display/panel/motorola,mot-panel.yaml |  69 +++
 .../bindings/display/panel/nec,nl8048hl11.yaml     |   4 -
 .../bindings/display/panel/novatek,nt36523.yaml    |   3 -
 .../bindings/display/panel/novatek,nt36672a.yaml   |   3 -
 .../bindings/display/panel/orisetech,otm8009a.yaml |   4 +-
 .../bindings/display/panel/panel-simple-dsi.yaml   |   2 +
 .../bindings/display/panel/panel-simple.yaml       |   4 +
 .../bindings/display/panel/pda,91-00156-a0.yaml    |   4 +-
 .../bindings/display/panel/raydium,rm68200.yaml    |   4 +-
 .../bindings/display/panel/raydium,rm692e5.yaml    |   2 -
 .../bindings/display/panel/samsung,atna33xc20.yaml |   4 +-
 .../bindings/display/panel/samsung,ld9040.yaml     |   4 -
 .../bindings/display/panel/samsung,lms380kf01.yaml |   6 -
 .../bindings/display/panel/samsung,lms397kf04.yaml |   6 -
 .../bindings/display/panel/samsung,s6d27a1.yaml    |   6 -
 .../bindings/display/panel/samsung,s6d7aa0.yaml    |   8 +
 .../bindings/display/panel/samsung,s6e3ha8.yaml    |   4 -
 .../bindings/display/panel/samsung,s6e63m0.yaml    |   2 -
 .../bindings/display/panel/sgd,gktw70sdae4se.yaml  |   4 +-
 .../bindings/display/panel/sitronix,st7701.yaml    |   6 -
 .../bindings/display/panel/sitronix,st7789v.yaml   |   6 -
 .../bindings/display/panel/sony,acx565akm.yaml     |   4 -
 .../display/panel/startek,kd070fhfid015.yaml       |   4 +-
 .../devicetree/bindings/display/panel/tpo,td.yaml  |   5 -
 .../bindings/display/panel/visionox,r66451.yaml    |   4 +-
 .../bindings/display/panel/visionox,rm69299.yaml   |   4 +-
 .../bindings/display/panel/visionox,vtdr6130.yaml  |   4 +-
 .../devicetree/bindings/vendor-prefixes.yaml       |   4 +
 MAINTAINERS                                        |  11 +-
 drivers/accel/amdxdna/aie2_pci.c                   |  53 +++
 drivers/accel/amdxdna/aie2_pci.h                   |  28 ++
 drivers/accel/amdxdna/amdxdna_pci_drv.c            |   4 +-
 drivers/accel/ivpu/ivpu_gem.c                      |  12 +-
 drivers/accel/ivpu/ivpu_hw_40xx_reg.h              |   6 -
 drivers/accel/ivpu/ivpu_hw_ip.c                    |   1 -
 drivers/dma-buf/heaps/cma_heap.c                   |   7 +-
 drivers/gpu/buddy.c                                | 274 ++++++++++--
 drivers/gpu/drm/bridge/analogix/Kconfig            |   3 +-
 drivers/gpu/drm/bridge/analogix/anx7625.c          |  41 +-
 .../gpu/drm/bridge/cadence/cdns-mhdp8546-core.c    | 257 +++--------
 .../gpu/drm/bridge/cadence/cdns-mhdp8546-core.h    |   2 +-
 .../gpu/drm/bridge/cadence/cdns-mhdp8546-hdcp.c    |  18 +-
 drivers/gpu/drm/drm_gem_shmem_helper.c             |  79 ++--
 drivers/gpu/drm/imagination/pvr_gem.c              |   6 +-
 drivers/gpu/drm/loongson/lsdc_drv.c                |   3 +-
 drivers/gpu/drm/loongson/lsdc_gem.c                |  15 -
 drivers/gpu/drm/loongson/lsdc_gem.h                |   4 -
 drivers/gpu/drm/mxsfb/lcdif_drv.c                  |   8 +-
 drivers/gpu/drm/panel/Kconfig                      |  32 ++
 drivers/gpu/drm/panel/Makefile                     |   3 +
 drivers/gpu/drm/panel/panel-ilitek-ili9882t.c      |  14 +-
 drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c   | 244 ++++++++++
 drivers/gpu/drm/panel/panel-lxd-m9189a.c           | 243 ++++++++++
 drivers/gpu/drm/panel/panel-mantix-mlaf057we51.c   |  15 +-
 drivers/gpu/drm/panel/panel-motorola-mot.c         | 244 ++++++++++
 drivers/gpu/drm/panel/panel-novatek-nt37700f.c     | 299 +++++++++++++
 drivers/gpu/drm/panel/panel-renesas-r61307.c       |  40 +-
 drivers/gpu/drm/panel/panel-renesas-r69328.c       |  38 +-
 drivers/gpu/drm/panel/panel-simple.c               |  92 ++++
 drivers/gpu/drm/panthor/panthor_sched.c            |   2 +-
 drivers/gpu/drm/ttm/ttm_bo.c                       |   6 +-
 drivers/gpu/drm/vc4/vc4_hdmi.c                     |  14 +-
 drivers/gpu/tests/gpu_buddy_test.c                 | 493 +++++++++++++++++++++
 include/linux/gpu_buddy.h                          |   2 +
 include/uapi/drm/amdxdna_accel.h                   |   3 +-
 84 files changed, 2397 insertions(+), 565 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/lxd,m9189a.yaml
 create mode 100644 Documentation/devicetree/bindings/display/panel/motorola,mot-panel.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-lxd-m9189a.c
 create mode 100644 drivers/gpu/drm/panel/panel-motorola-mot.c
 create mode 100644 drivers/gpu/drm/panel/panel-novatek-nt37700f.c

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)
