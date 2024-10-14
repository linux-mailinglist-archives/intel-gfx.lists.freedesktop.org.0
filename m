Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A1599C44B
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 10:57:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1959E10E3E2;
	Mon, 14 Oct 2024 08:57:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="hShu628d";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="Hjm1nl9O";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="hShu628d";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="Hjm1nl9O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C36610E3DC;
 Mon, 14 Oct 2024 08:57:46 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 8268F1F769;
 Mon, 14 Oct 2024 08:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1728896265; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=NWtfAUvX3Hz8ILsbZRU9Ol+0ojBcuObGZN7zP9Hb52k=;
 b=hShu628d0kNEqwu6nU3uGFYIy/RLleq7RwTYDrPSb/4XUAm0NmxppE1FdsoIgnorc7utor
 1MZDPbjAYWDWkk/Ne1pWY96K94Bxm9SqAQ3t4dnuhkuMDAGVpVb/fPAiytltbYUOdeqjdV
 SSq9x9m36GOdYwgXskVKzodTnOEwVNw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1728896265;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=NWtfAUvX3Hz8ILsbZRU9Ol+0ojBcuObGZN7zP9Hb52k=;
 b=Hjm1nl9O1XUMLj+t8kWliRLcIUQ0dxrqAhg/RMeSiedyxLmphNVCmESA1K3fjgPBqgt8qd
 Rxpp/hVK3qXKUZAA==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=hShu628d;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=Hjm1nl9O
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1728896265; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=NWtfAUvX3Hz8ILsbZRU9Ol+0ojBcuObGZN7zP9Hb52k=;
 b=hShu628d0kNEqwu6nU3uGFYIy/RLleq7RwTYDrPSb/4XUAm0NmxppE1FdsoIgnorc7utor
 1MZDPbjAYWDWkk/Ne1pWY96K94Bxm9SqAQ3t4dnuhkuMDAGVpVb/fPAiytltbYUOdeqjdV
 SSq9x9m36GOdYwgXskVKzodTnOEwVNw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1728896265;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=NWtfAUvX3Hz8ILsbZRU9Ol+0ojBcuObGZN7zP9Hb52k=;
 b=Hjm1nl9O1XUMLj+t8kWliRLcIUQ0dxrqAhg/RMeSiedyxLmphNVCmESA1K3fjgPBqgt8qd
 Rxpp/hVK3qXKUZAA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 36BDD13A42;
 Mon, 14 Oct 2024 08:57:45 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id /9cADAndDGfXfAAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Mon, 14 Oct 2024 08:57:45 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: simona@ffwll.ch, airlied@gmail.com, javierm@redhat.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH v4 00/12] drm: Introduce DRM client library
Date: Mon, 14 Oct 2024 10:55:14 +0200
Message-ID: <20241014085740.582287-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 8268F1F769
X-Spam-Score: -3.51
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.51 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 MID_CONTAINS_FROM(1.00)[]; NEURAL_HAM_LONG(-1.00)[-1.000];
 R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FUZZY_BLOCKED(0.00)[rspamd.com];
 FREEMAIL_TO(0.00)[ffwll.ch,gmail.com,redhat.com];
 ARC_NA(0.00)[];
 RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from]; 
 TO_DN_SOME(0.00)[]; MIME_TRACE(0.00)[0:+];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com]; RCVD_TLS_ALL(0.00)[];
 RCVD_COUNT_TWO(0.00)[2]; FROM_EQ_ENVFROM(0.00)[];
 FROM_HAS_DN(0.00)[];
 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
 RCPT_COUNT_SEVEN(0.00)[9]; RCVD_VIA_SMTP_AUTH(0.00)[];
 RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
 DKIM_TRACE(0.00)[suse.de:+];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:mid,suse.de:dkim]
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spam-Flag: NO
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

With the next DRM client coming soon (drm_log) and most of DRM's
fbdev emulation consolidated in a few places, it is time to provide
a single place for the clients.

The base client code and client event handling is now optional. It
still remains in the DRM core, which simplifies module dependencies.
The new module drm_client_lib.ko stores most of the in-kernel client
code. Drivers can opt into client support, but the presence of the
client module depends on the user's kernel configuration. Without
selected clients, no client module will be build.

DRM now forwards suspend and resume events to client helpers instead
of calling fbdev emulation directly. This breaks a cyclic dependency
among the involved modules. It also allows any client to process suspend
and resume events.

v4:
- improve commit descriptions (Jonathan)
v3:
- fix more corner Kconfig cases (kernel test robot)
v2:
- rework of the overall design
- keep base client code in DRM core

Thomas Zimmermann (12):
  drm/i915: Select DRM_CLIENT_SELECTION
  drm/xe: Select DRM_CLIENT_SELECTION
  drm/fbdev-dma: Select FB_DEFERRED_IO
  drm/fbdev: Select fbdev I/O helpers from modules that require them
  drm/fbdev: Store fbdev module parameters in separate file
  drm/client: Move client event handlers to drm_client_event.c
  drm/client: Move suspend/resume into DRM client callbacks
  drm/amdgpu: Suspend and resume internal clients with client helpers
  drm/nouveau: Suspend and resume clients with client helpers
  drm/radeon: Suspend and resume clients with client helpers
  drm/client: Make client support optional
  drm/client: Add client-lib module

 Documentation/gpu/drm-client.rst              |   3 +
 drivers/gpu/drm/Kconfig                       |  41 +++-
 drivers/gpu/drm/Makefile                      |  20 +-
 drivers/gpu/drm/amd/amdgpu/Kconfig            |   1 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c    |  22 +-
 drivers/gpu/drm/drm_client.c                  | 121 -----------
 drivers/gpu/drm/drm_client_event.c            | 197 ++++++++++++++++++
 drivers/gpu/drm/drm_client_setup.c            |   3 +
 drivers/gpu/drm/drm_debugfs.c                 |   1 -
 drivers/gpu/drm/drm_drv.c                     |   2 +-
 drivers/gpu/drm/drm_fb_helper.c               |  31 ---
 drivers/gpu/drm/drm_fbdev_client.c            |  30 ++-
 drivers/gpu/drm/drm_file.c                    |   2 +-
 drivers/gpu/drm/drm_internal.h                |  15 ++
 drivers/gpu/drm/drm_kms_helper_common.c       |  38 ++++
 drivers/gpu/drm/drm_modeset_helper.c          |  14 +-
 drivers/gpu/drm/drm_probe_helper.c            |   2 +-
 drivers/gpu/drm/i915/Kconfig                  |   1 +
 .../drm/i915/display/intel_display_driver.c   |   2 +-
 drivers/gpu/drm/nouveau/nouveau_display.c     |   8 +-
 drivers/gpu/drm/nouveau/nouveau_vga.c         |   2 +-
 drivers/gpu/drm/radeon/radeon_device.c        |  19 +-
 drivers/gpu/drm/radeon/radeon_fbdev.c         |   6 -
 drivers/gpu/drm/radeon/radeon_mode.h          |   3 -
 drivers/gpu/drm/xe/Kconfig                    |   1 +
 include/drm/drm_client.h                      |  41 +++-
 include/drm/drm_client_event.h                |  27 +++
 27 files changed, 434 insertions(+), 219 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_client_event.c
 create mode 100644 include/drm/drm_client_event.h

-- 
2.46.0

