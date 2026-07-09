Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LyLjN4vST2ovowIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 18:55:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E95733A0C
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 18:55:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GUPs0PcU;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68F0D10E0D7;
	Thu,  9 Jul 2026 16:55:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D50D410E07F;
 Thu,  9 Jul 2026 16:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783616136; x=1815152136;
 h=message-id:date:mime-version:from:to:cc:subject:
 content-transfer-encoding;
 bh=JdomNHnZ2r2VpL9ywKCXkL9/2P/FOQ2vuzSsIEQi49A=;
 b=GUPs0PcUFR1D75Ax6sn7ciTWgGPOowjODb+k04LP3qCJzhEeSDBx6rSN
 shdn8nvGRwf2WGYDeVKTB7lZROcUW2+0CLoF/tF6Kx6d032URTTZG2+Lc
 VkkWbqq94vs82Sgum1TasFbFxa3lT3qXMihyknBS/MPkkqKSgpe7DO6/y
 EMsuckN3QnoumsiV0EfMJV4ZgnyoN39w0qDPizy+qPT0nK9TmL0c/Brdq
 9Fn3GMecUfJaoCdMrcXyYygxbPwUSa4BgZVcER7NoQNaMaX7oFCyu8Qo0
 QmDOibNV8WkA0nq4blaeZWLSSC0T/Ksd3nWjfhFlKiza8pB94HvMAH67U g==;
X-CSE-ConnectionGUID: F58AcTgqQt6LpqZ+74iMXg==
X-CSE-MsgGUID: GSYLT29JRJaSWSQuS5P5fA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84325260"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="84325260"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 09:55:36 -0700
X-CSE-ConnectionGUID: uZV9zXs6TKu5F0JRNlL8xg==
X-CSE-MsgGUID: NIPvginXTuWzoDVCtwnKCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="258948499"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [10.245.244.89])
 ([10.245.244.89])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 09:55:31 -0700
Message-ID: <71e5b48b-307f-47f5-8fd5-b60ea43e4196@linux.intel.com>
Date: Thu, 9 Jul 2026 18:55:20 +0200
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
Subject: [PULL] drm-misc-fixes
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[ffwll.ch,gmail.com];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maarten.lankhorst@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gitlab.freedesktop.org:url,linux.intel.com:mid,linux.intel.com:from_mime,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D0E95733A0C

Hi Dave, Sima, 

drm-misc-fixes for v7.2-rc3!

Kind regards,
~Maarten Lankhorst

drm-misc-fixes-2026-07-09:
drm-misc-fixes for v7.2-rc3:
- Fix uaf in amdxdna mmap failure path.
- A lot of deadlocks, access races and return value fixes in amdxdna.
- Fix analogix_dp bitshifts during link training.
- Use direct label in drm_exec.
- Fix absent indirect bo handling in v3d.
- Sync on first active crtc in fb_dirty, rather than first crtc.
- Rework try_harder in the buddy allocator.
- Make imagination function static to solve compiler warning.
- Fix imagination error checking.
The following changes since commit 8dc8f3f4c2382fb7d1b1986ba8f33a2466cd3d7a:

  drm/imagination: Fix user array stride in pvr_set_uobj_array() (2026-07-02 11:16:18 +0100)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2026-07-09

for you to fetch changes up to cf385cf6e713eba0720651174dac0b2d2f5bb8f8:

  drm/imagination: fix error checking of pvr_vm_context_lookup() (2026-07-09 15:07:32 +0100)

----------------------------------------------------------------
drm-misc-fixes for v7.2-rc3:
- Fix uaf in amdxdna mmap failure path.
- A lot of deadlocks, access races and return value fixes in amdxdna.
- Fix analogix_dp bitshifts during link training.
- Use direct label in drm_exec.
- Fix absent indirect bo handling in v3d.
- Sync on first active crtc in fb_dirty, rather than first crtc.
- Rework try_harder in the buddy allocator.
- Make imagination function static to solve compiler warning.
- Fix imagination error checking.

----------------------------------------------------------------
Arunpravin Paneer Selvam (1):
      gpu/buddy: bail out of try_harder when alignment cannot be honoured

Ben Dooks (1):
      drm/imagination: make pvr_fw_trace_init_mask_ops static

Christian König (1):
      drm/drm_exec: avoid indirect goto

Damon Ding (1):
      drm/bridge: analogix_dp: Fix PE/VS value shift mismatch during link training

Lizhi Hou (10):
      accel/amdxdna: Prevent PM resume deadlock in hwctx_sync_debug_bo()
      accel/amdxdna: Use unsigned long for nr_pages in amdxdna_hmm_register()
      accel/amdxdna: Fix VMA access race
      accel/amdxdna: Fix potential amdxdna_umap lifetime race
      accel/amdxdna: fix open_ref leak and stale client pointer on dma map failure
      accel/amdxdna: Fix deadlock on debug BO command timeout
      accel/amdxdna: Fix hardware context race in amdxdna_update_heap()
      accel/amdxdna: Check drmm_mutex_init() return value
      accel/amdxdna: Check init_srcu_struct() return value
      accel/amdxdna: Fix potential NULL pointer dereference of abo->client

Luigi Santivetti (1):
      drm/imagination: fix error checking of pvr_vm_context_lookup()

Maíra Canal (1):
      drm/v3d: Reject invalid indirect BO handle in indirect CSD setup

Robert Mader (1):
      drm: Guard DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE

Thomas Zimmermann (1):
      drm/fb-helper: Only consider active CRTCs for vblank sync

Wentao Liang (1):
      accel/amdxdna: Fix use-after-free in amdxdna_gem_dmabuf_mmap()

 drivers/accel/amdxdna/aie2_ctx.c                   | 19 ++---
 drivers/accel/amdxdna/aie2_message.c               |  4 +-
 drivers/accel/amdxdna/amdxdna_ctx.c                | 56 ++++++++++---
 drivers/accel/amdxdna/amdxdna_gem.c                | 50 ++++++++----
 drivers/accel/amdxdna/amdxdna_gem.h                | 12 ++-
 drivers/accel/amdxdna/amdxdna_pci_drv.c            | 21 ++++-
 drivers/gpu/buddy.c                                | 67 +++++++++++-----
 drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c             |  2 +
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |  4 +
 drivers/gpu/drm/drm_fb_helper.c                    | 92 +++++++++++++++++++++-
 drivers/gpu/drm/drm_ioctl.c                        | 14 +++-
 drivers/gpu/drm/imagination/pvr_context.c          |  4 +-
 drivers/gpu/drm/imagination/pvr_fw_trace.c         |  2 +-
 drivers/gpu/drm/tests/drm_exec_test.c              | 28 ++++---
 drivers/gpu/drm/v3d/v3d_submit.c                   |  2 +
 include/drm/drm_exec.h                             | 34 ++++----
 16 files changed, 311 insertions(+), 100 deletions(-)
