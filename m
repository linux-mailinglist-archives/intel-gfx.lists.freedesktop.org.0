Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNVcF2fGBmpdngIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 09:08:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A5254A52F
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 09:08:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00E2810E414;
	Fri, 15 May 2026 07:08:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="f9y2fAq5";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="2c0UskpY";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="f9y2fAq5";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="2c0UskpY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE55310F421
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2026 07:08:19 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 891CE6B267;
 Fri, 15 May 2026 07:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1778828898; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=2CIZJ0KNhnjRVLvePOXzXMnViDBYZKjxm39DChZWJHc=;
 b=f9y2fAq5zN7yE+mDQPEqZyGOP772CGhNjO4d39lK3uN6R6i4dPglZJyff1cfpuWst18Cgm
 HOJ9cuga7mBmrR1A7W9p1baHVIYVVNSHxW5642zpHOlPWWyXUn6f3LJnHiGrO8I+Ak3b/P
 tPkAfJWEWrnmphy1Qzjd2NLw6/7Fcyg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1778828898;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=2CIZJ0KNhnjRVLvePOXzXMnViDBYZKjxm39DChZWJHc=;
 b=2c0UskpYDJla4kibe5BUza/2mZNNnvGuAmDO7pSkK+fNCmYwmstq/Y3mrQfEL9s1dmaLzI
 hqCwlKTQenhwqYBw==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1778828898; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=2CIZJ0KNhnjRVLvePOXzXMnViDBYZKjxm39DChZWJHc=;
 b=f9y2fAq5zN7yE+mDQPEqZyGOP772CGhNjO4d39lK3uN6R6i4dPglZJyff1cfpuWst18Cgm
 HOJ9cuga7mBmrR1A7W9p1baHVIYVVNSHxW5642zpHOlPWWyXUn6f3LJnHiGrO8I+Ak3b/P
 tPkAfJWEWrnmphy1Qzjd2NLw6/7Fcyg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1778828898;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=2CIZJ0KNhnjRVLvePOXzXMnViDBYZKjxm39DChZWJHc=;
 b=2c0UskpYDJla4kibe5BUza/2mZNNnvGuAmDO7pSkK+fNCmYwmstq/Y3mrQfEL9s1dmaLzI
 hqCwlKTQenhwqYBw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 1B426593A9;
 Fri, 15 May 2026 07:08:18 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id 1hI6BWLGBmpXXwAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Fri, 15 May 2026 07:08:18 +0000
Date: Fri, 15 May 2026 09:08:16 +0200
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
Message-ID: <20260515070816.GA88575@2a02-2455-9062-2500-7dec-552d-233d-9fe0.dyn6.pyur.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Spam-Level: 
X-Spam-Flag: NO
X-Spam-Score: -4.30
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
X-Rspamd-Queue-Id: A9A5254A52F
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,suse.com:url,gitlab.freedesktop.org:url,2a02-2455-9062-2500-7dec-552d-233d-9fe0.dyn6.pyur.net:mid]
X-Rspamd-Action: no action

Hi Dave, Sima,

this is the weekly PR from drm-misc-fixes.

Best regards
Thomas

drm-misc-fixes-2026-05-15:
Short summary of fixes pull:

bridge:
- imx8qxp-pxl2dpi: avoid ERR_PTR with device_node cleanup

gma500:
- oaktrail_lvds: fix i2c handling

loongson:
- use managed cleanup for connector polling

panfrost:
- handle results from reservation locking correctly

qaic:
- check for integer overflows in mmap logic

rocket:
- handle results from reservation locking correctly

ttm:
- avoid infinite loop in swap out
- avoid infinite loop in BO shrinking
- convert -EAGAIN from dmem_cgroup_try_charge to -ENOSPC
The following changes since commit b15838b03cd0c6cf35651cfde62d17f14bb1d566:

  drm/bochs: Drop manual put on probe error path (2026-05-07 10:51:18 +0200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2026-05-15

for you to fetch changes up to 0a9c56dd387605d17dabeedd9fdd2c4c1d0bab7b:

  drm/loongson: Use managed KMS polling (2026-05-15 08:50:54 +0200)

----------------------------------------------------------------
Short summary of fixes pull:

bridge:
- imx8qxp-pxl2dpi: avoid ERR_PTR with device_node cleanup

gma500:
- oaktrail_lvds: fix i2c handling

loongson:
- use managed cleanup for connector polling

panfrost:
- handle results from reservation locking correctly

qaic:
- check for integer overflows in mmap logic

rocket:
- handle results from reservation locking correctly

ttm:
- avoid infinite loop in swap out
- avoid infinite loop in BO shrinking
- convert -EAGAIN from dmem_cgroup_try_charge to -ENOSPC

----------------------------------------------------------------
Guangshuo Li (1):
      drm/bridge: imx8qxp-pxl2dpi: avoid ERR_PTR with device_node cleanup

Gyeyoung Baek (2):
      accel/rocket: Fix prep_bo ioctl leaking positive return from dma_resv_wait_timeout()
      drm/panfrost: Fix wait_bo ioctl leaking positive return from dma_resv_wait_timeout()

Johan Hovold (3):
      drm/gma500/oaktrail_hdmi: fix i2c adapter leak on setup
      drm/gma500/oaktrail_lvds: fix hang on init failure
      drm/gma500/oaktrail_lvds: fix i2c adapter leaks on init

Myeonghun Pak (1):
      drm/loongson: Use managed KMS polling

Thomas Hellström (3):
      drm/ttm: Fix ttm_bo_swapout() infinite LRU walk on swapout failure
      drm/ttm: Convert -EAGAIN from dmem_cgroup_try_charge to -ENOSPC
      drm/ttm: Fix ttm_bo_shrink() infinite LRU walk on backup failure

Zack McKevitt (1):
      accel/qaic: Add overflow check to remap_pfn_range during mmap

 drivers/accel/qaic/qaic_data.c               | 23 ++++++++++++++--
 drivers/accel/rocket/rocket_gem.c            |  2 ++
 drivers/gpu/drm/bridge/imx/imx8qxp-pxl2dpi.c | 40 ++++++++++++++++------------
 drivers/gpu/drm/gma500/oaktrail_hdmi.c       |  1 +
 drivers/gpu/drm/gma500/oaktrail_lvds.c       |  9 +++++--
 drivers/gpu/drm/loongson/lsdc_drv.c          |  2 +-
 drivers/gpu/drm/panfrost/panfrost_drv.c      |  2 ++
 drivers/gpu/drm/ttm/ttm_bo.c                 | 18 +++++--------
 drivers/gpu/drm/ttm/ttm_bo_util.c            | 11 +++-----
 drivers/gpu/drm/ttm/ttm_resource.c           | 18 ++++++++++++-
 include/drm/ttm/ttm_resource.h               |  2 ++
 11 files changed, 86 insertions(+), 42 deletions(-)

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)
