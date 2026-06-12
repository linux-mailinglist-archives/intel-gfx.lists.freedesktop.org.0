Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nyKHDOK/K2oxEQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 10:14:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C719677B4E
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 10:14:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=tRbi+o4E;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=tKFQHzFj;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=oMcXLtIl;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=4cy5Oi+s;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=suse.de
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1744710F321;
	Fri, 12 Jun 2026 08:14:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A60F10F328
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2026 08:14:23 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 8DFC875D71;
 Fri, 12 Jun 2026 08:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1781252061; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=jdx8SoUNOMjnR2OzjfkwDvrV5yiZw1e14hAOBhRbT4o=;
 b=tRbi+o4EAel0O6v1Y2H9cEl0DXIRGztlS2hzvTlDtggV29rsQ1tYZIZ18V0tgNT6iFGNDc
 b0uOb8zcddvpv4TSidtVJMQYNPcHAVWhSgPmeqxv3jU5cwyCRd7jO91DL6/E6ddlT4oEyG
 skKDLhe1eEhtvltG/8vZ8cjS78wTsPY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1781252061;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=jdx8SoUNOMjnR2OzjfkwDvrV5yiZw1e14hAOBhRbT4o=;
 b=tKFQHzFjWdF/p84xfVw5sTk1uwn4eNmauF1AhHHhmd2z1VHB8LUAwYgr+FUFgXE2WYLJx3
 fXxaMwoJXAu19nBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1781252060; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=jdx8SoUNOMjnR2OzjfkwDvrV5yiZw1e14hAOBhRbT4o=;
 b=oMcXLtIlekN/QR/+dtJzTC1m8T9BWtud7+MAEN2AmOwNDfqYCwtLOWax5GGPPtZbsDK+vj
 NuLuE5HpbMXUU9XCzxxZE5QFC7Z0IlFZRnwgajPgrhXfHrEf7jZuUsFlLDAmd1QXiCGcv9
 /0ioenki52ff/4OVU9l62y78eKL+BlM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1781252060;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=jdx8SoUNOMjnR2OzjfkwDvrV5yiZw1e14hAOBhRbT4o=;
 b=4cy5Oi+scto49X28Z/kWcqF3viZ7s6YzDK9DcnlhyIXGZ2s/RfpCg4IYnA76Bwwg99R3U8
 fP8i6tFZwOPMk5Cw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 291F4779A7;
 Fri, 12 Jun 2026 08:14:20 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id iu7gCNy/K2o5OAAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Fri, 12 Jun 2026 08:14:20 +0000
Date: Fri, 12 Jun 2026 10:14:18 +0200
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
Subject: [PULL] drm-misc-fixes
Message-ID: <20260612081418.GA17001@2a02-2455-9062-2500-e496-5a17-62ba-545e.dyn6.pyur.net>
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
X-Rspamd-Action: no action
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
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
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
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:dkim,suse.de:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,suse.com:url,gitlab.freedesktop.org:url,2a02-2455-9062-2500-e496-5a17-62ba-545e.dyn6.pyur.net:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8C719677B4E

Hi Dave, Sima, 

here's the fixes PR for drm-misc for this week.

Best regards
Thomas

drm-misc-fixes-2026-06-12:
Short summary of fixes pull:

amd:
- track colorop changes correctly

amdxdna:
- fix possible leak of mm_struct

colorop:
- make lut interpolation mutable
- track colorop updates correctly

ivpu:
- fix integer truncation

vc4:
- fix leak in krealloc() error handling

virtio:
- fix dma_fence ref-count leak
The following changes since commit c0837b9cf6eabbad8b8cbddaff1a46a6d0a2e29d:

  accel/ethosu: fix OOB write in ethosu_gem_cmdstream_copy_and_validate() (2026-06-04 22:07:59 -0500)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2026-06-12

for you to fetch changes up to 2f41af638c92bac6f1f9275ea2d1901baef578f3:

  accel/amdxdna: Fix mm_struct reference leak in aie2_populate_range() (2026-06-11 09:50:07 -0700)

----------------------------------------------------------------
Short summary of fixes pull:

amd:
- track colorop changes correctly

amdxdna:
- fix possible leak of mm_struct

colorop:
- make lut interpolation mutable
- track colorop updates correctly

ivpu:
- fix integer truncation

vc4:
- fix leak in krealloc() error handling

virtio:
- fix dma_fence ref-count leak

----------------------------------------------------------------
Alex Hung (1):
      drm/colorop: Remove read-only comments from interpolation fields

Alexander A. Klimov (1):
      drm/vc4: fix krealloc() memory leak

Andrzej Kacprowski (1):
      accel/ivpu: Fix signed integer truncation in IPC receive

Dmitry Osipenko (1):
      drm/virtio: Fix driver removal with disabled KMS

Lizhi Hou (1):
      accel/amdxdna: Fix mm_struct reference leak in aie2_populate_range()

Melissa Wen (3):
      drm/colorop: make lut(1/3)d_interpolation props correctly behave as mutable
      drm/atomic: track individual colorop updates
      drm/amd/display: use plane color_mgmt_changed to track colorop changes

Wentao Liang (1):
      drm/virtio: fix dma_fence refcount leak on error in virtio_gpu_dma_fence_wait()

 drivers/accel/amdxdna/aie2_ctx.c                  |  3 +
 drivers/accel/ivpu/ivpu_ipc.c                     |  2 +-
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |  6 +-
 drivers/gpu/drm/drm_atomic.c                      |  4 +-
 drivers/gpu/drm/drm_atomic_uapi.c                 | 68 ++++++++++++++++++-----
 drivers/gpu/drm/drm_colorop.c                     | 16 +++++-
 drivers/gpu/drm/vc4/vc4_validate_shaders.c        | 13 +++--
 drivers/gpu/drm/virtio/virtgpu_drv.c              |  5 +-
 drivers/gpu/drm/virtio/virtgpu_submit.c           |  4 +-
 include/drm/drm_atomic_uapi.h                     |  4 +-
 include/drm/drm_colorop.h                         | 34 ++++++------
 11 files changed, 111 insertions(+), 48 deletions(-)

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)
