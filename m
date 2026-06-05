Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yKQ7FhB6ImpnYAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 09:26:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEC0645F2C
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 09:26:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=ZSIV9Lvu;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b="/Y9IiZR8";
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=bqGHECoE;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=QjuUPYIW;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=suse.de
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52E7A112ABD;
	Fri,  5 Jun 2026 07:26:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E8BA112ABA
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2026 07:26:05 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id D57146B139;
 Fri,  5 Jun 2026 07:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1780644364; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=0qPw1IaSk2oUHyFt9atfgvw4vgsM+o6i1yuF73ABbOw=;
 b=ZSIV9LvuE9XuWWyWr+zTptJnTD2j8IIm9fWNA/wBVBqKSNij0L1jfL0f612iA62VKSzye2
 1/Se7o3v9/JsDlob5ZiQuI7UYVgoONs+UHJUCDNhCaa+t898mwePF0JXVIBSEnxWb573jG
 ODE1xNi3E1b3zCERQOmpaPFS2OmL/e4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1780644364;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=0qPw1IaSk2oUHyFt9atfgvw4vgsM+o6i1yuF73ABbOw=;
 b=/Y9IiZR89aZGjQZNOAdxQUEjNWloeN4j7wOZkHHo7ii0v+hMBIDFFyc4wUhsfF3jNT85MA
 mdTOec8xiduOwoDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1780644363; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=0qPw1IaSk2oUHyFt9atfgvw4vgsM+o6i1yuF73ABbOw=;
 b=bqGHECoEn9hZpzo7jsSTE3hNmjPQ7cxYU2J6ga+LlDxj0wLeOFAsqCGQ4uYWEKliaPjmhh
 1idKIWXNRpK5YVeTdhmfyT5Kd0QV/bf2TctBLhXw/lCRug4aSe+fhGRjgQzEEf2oi2Vfd6
 QRl2TFQL1vuARLNgNeW1O3zcXWAW08c=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1780644363;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=0qPw1IaSk2oUHyFt9atfgvw4vgsM+o6i1yuF73ABbOw=;
 b=QjuUPYIWnLXxU5qaL0fNKGSYpeE2/eIjUsDJWjscox9nt7QVIiB7m+TEgWxthuEhJR6jhu
 UX119Orl4fwos4BQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 72EB0779A8;
 Fri,  5 Jun 2026 07:26:03 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id d7bfGgt6Imo2LwAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Fri, 05 Jun 2026 07:26:03 +0000
Date: Fri, 5 Jun 2026 09:26:02 +0200
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
Message-ID: <20260605072602.GA268798@linux.fritz.box>
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
X-Rspamd-Action: no action
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
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
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
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,suse.com:url,suse.de:from_mime,suse.de:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url,linux.fritz.box:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BDEC0645F2C

Hi Dave, Sima,

this is the weekly fixes PR from DRM misc.

Best regards
Thomas

drm-misc-fixes-2026-06-05:
Short summary of fixes pull:

dumb-buffer:
- remove strict limits on buffer geometry

ethosu:
- reject unsupported NPU_OP_RESIZE
- fix index of IFM region
- fix weight index
- fix overflows in DMA-size calculations
- reject DMA commands with uninitialized length
- fix OOB write in ethosu_gem_cmdstream_copy_and_validate

imx:
- fix kernel-doc warnings

ivpu:
- add overflow checks in firmware handling and get_info_ioctl

v3d:
- wait for pending L2T flush before cleaning caches
- fix leak of vaddr
- skip CSD when it has zeroed workgroups
- fix ref counting in performance monitoring
The following changes since commit 5ab62dd3687bcc2cc542b99385aabac5c996db6f:

  drm: prevent integer overflows in dumb buffer creation helpers (2026-05-29 08:30:47 +0200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2026-06-05

for you to fetch changes up to c0837b9cf6eabbad8b8cbddaff1a46a6d0a2e29d:

  accel/ethosu: fix OOB write in ethosu_gem_cmdstream_copy_and_validate() (2026-06-04 22:07:59 -0500)

----------------------------------------------------------------
Short summary of fixes pull:

dumb-buffer:
- remove strict limits on buffer geometry

ethosu:
- reject unsupported NPU_OP_RESIZE
- fix index of IFM region
- fix weight index
- fix overflows in DMA-size calculations
- reject DMA commands with uninitialized length
- fix OOB write in ethosu_gem_cmdstream_copy_and_validate

imx:
- fix kernel-doc warnings

ivpu:
- add overflow checks in firmware handling and get_info_ioctl

v3d:
- wait for pending L2T flush before cleaning caches
- fix leak of vaddr
- skip CSD when it has zeroed workgroups
- fix ref counting in performance monitoring

----------------------------------------------------------------
Andrzej Kacprowski (3):
      accel/ivpu: Add bounds check for firmware runtime memory
      accel/ivpu: Add bounds checks for firmware log indices
      accel/ivpu: Add buffer overflow check in MS get_info_ioctl

Maíra Canal (4):
      drm/v3d: Wait for pending L2T flush before cleaning caches
      drm/v3d: Fix vaddr leak when indirect CSD has zeroed workgroups
      drm/v3d: Skip CSD when it has zeroed workgroups
      drm/v3d: Fix global performance monitor reference counting

Muhammad Bilal (6):
      accel/ethosu: fix IFM region index out-of-bounds in command stream parser
      accel/ethosu: reject NPU_OP_RESIZE commands from userspace
      accel/ethosu: fix wrong weight index in NPU_SET_SCALE1_LENGTH on U85
      accel/ethosu: fix arithmetic issues in dma_length()
      accel/ethosu: reject DMA commands with uninitialized length
      accel/ethosu: fix OOB write in ethosu_gem_cmdstream_copy_and_validate()

Thomas Zimmermann (1):
      drm/dumb-buffer: Drop buffer-size limits for now

Yicong Hui (1):
      drm/imx: Fix three kernel-doc warnings in dcss-scaler.c

 drivers/accel/ethosu/ethosu_gem.c      | 35 +++++++++++++++++++++++++---------
 drivers/accel/ivpu/ivpu_fw.c           | 16 ++++++++++++++++
 drivers/accel/ivpu/ivpu_fw_log.c       |  5 +++++
 drivers/accel/ivpu/ivpu_ms.c           |  7 +++++++
 drivers/gpu/drm/drm_dumb_buffers.c     |  7 -------
 drivers/gpu/drm/imx/dcss/dcss-scaler.c |  3 +++
 drivers/gpu/drm/v3d/v3d_gem.c          |  8 ++++++++
 drivers/gpu/drm/v3d/v3d_perfmon.c      | 24 ++++++++++++++++++-----
 drivers/gpu/drm/v3d/v3d_sched.c        | 17 ++++++++++++++---
 9 files changed, 98 insertions(+), 24 deletions(-)

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)
