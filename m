Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ii+MI2l/Rmp7XQsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 17:10:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E38146F93D1
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 17:10:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=l0Osp2qv;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77C9B10F44D;
	Thu,  2 Jul 2026 15:10:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC22510F447;
 Thu,  2 Jul 2026 15:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783005030; x=1814541030;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ZqPDId4rZ0crapCTq1eL01OWkFGEpp+rSALCnzW0tyc=;
 b=l0Osp2qvQj8r9Rl/qUOI4inX7b5KLEEyySq1rStgx3n8N4ljHYEL9ws7
 aQAUl/LZFE5vJszNyOCgaQd7F26UocEDRyGKCuUjxas02A0KWxfEBRskK
 lE+3GPZjwDMY92XWdJbiyuzUdZQGbON1RjATGJiMfUFPJo75B7XU9oAoU
 jvP2EtVzKFKeL7dKlrX0YcZ/fHjBOTFiGHdEuhf6L7MLVZvvF2aN63hDS
 6GCePCrImMVFaMcJ1Pip45T7GAiKX9rGVIGjbHNoehw9OeLd5/XkrBkPJ
 vLyzBOtIId2xwwMUmNyHtOI2VcWZUeTVW+kjkMwEwiudXHCJEAupbP8Ys Q==;
X-CSE-ConnectionGUID: 6NSTBeE4RoyX4AG2iV7Jaw==
X-CSE-MsgGUID: Jdih+9KXSNel97Et777R4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="82751168"
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="82751168"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 08:10:29 -0700
X-CSE-ConnectionGUID: wCXkafQbQ7OtQtjmelQETw==
X-CSE-MsgGUID: C7earjokT/CYAXobTXsUJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="254819431"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO fedora)
 ([10.245.244.232])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 08:10:26 -0700
Date: Thu, 2 Jul 2026 17:10:09 +0200
From: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>
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
Subject: [PULL] drm-xe-fixes
Message-ID: <akZ_UbrL94G4F2iA@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.hellstrom@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E38146F93D1

Hi Dave, Simona!

Here's the drm-xe-fixes PR towards -rc2.

Mostly various fixes sprinkled all over the place, with the notable
exception of the RTP/OA whitelist fixes backport, manly by Ashutosh

Thanks,
Thomas

drm-xe-fixes-2026-07-02:
Driver Changes:
- Wedge from the timeout handler only after releasing the queue (Rodrigo)
- Fix a NULL pointer dereference (Francois)
- Remove redundant exec_queue_suspended (Lu)
- RTP / OA whitelist fixes (Ashutosh, Gustavo, Thomas)
- Return error on non-migratable faults requiring devmem (Matt Brost)
- Skip FORCE_WC and vm_bound check for external dma-bufs (Matt Auld)
- Hold notifier lock for write on inject test path (Shuicheng)
- Drop bogus static from finish in force_invalidate (Shuicheng)
- Fix double-free of managed BO in error path (Shuicheng)
- Don't attempt to process FAST_REQ or EVENT relays (Michal)
- Fix NPD in bo_meminfo (Matthew Auld)
- Prevent invalid cursor access for purged BOs (Matthew Auld)
- Fix offset alignment for MERT WHITELST_OA_MERT_MMIO_TRG (Ashutosh)
The following changes since commit dc59e4fea9d83f03bad6bddf3fa2e52491777482:

  Linux 7.2-rc1 (2026-06-28 12:01:31 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-fixes-2026-07-02

for you to fetch changes up to 959b5016e4646b55fd2fd0438932e4c4e9ce171f:

  drm/xe/oa: Fix offset alignment for MERT WHITELIST_OA_MERT_MMIO_TRG (2026-07-02 12:29:44 +0200)

----------------------------------------------------------------
Driver Changes:
- Wedge from the timeout handler only after releasing the queue (Rodrigo)
- Fix a NULL pointer dereference (Francois)
- Remove redundant exec_queue_suspended (Lu)
- RTP / OA whitelist fixes (Ashutosh, Gustavo, Thomas)
- Return error on non-migratable faults requiring devmem (Matt Brost)
- Skip FORCE_WC and vm_bound check for external dma-bufs (Matt Auld)
- Hold notifier lock for write on inject test path (Shuicheng)
- Drop bogus static from finish in force_invalidate (Shuicheng)
- Fix double-free of managed BO in error path (Shuicheng)
- Don't attempt to process FAST_REQ or EVENT relays (Michal)
- Fix NPD in bo_meminfo (Matthew Auld)
- Prevent invalid cursor access for purged BOs (Matthew Auld)
- Fix offset alignment for MERT WHITELST_OA_MERT_MMIO_TRG (Ashutosh)

----------------------------------------------------------------
Ashutosh Dixit (10):
      drm/xe/rtp: Add RING_FORCE_TO_NONPRIV_DENY to OA whitelists
      drm/xe/rtp: Maintain OA whitelists separately
      drm/xe/rtp: Keep track of non-OA nonpriv slots
      drm/xe/rtp: Generalize whitelist_apply_to_hwe
      drm/xe/rtp: Save OA nonpriv registers to register save/restore lists
      drm/xe/rtp: Toggle 'deny' bit to (de-)whitelist OA regs
      drm/xe/rtp: (De-)whitelist OA registers for all hwe's for a gt
      drm/xe/oa: (De-)whitelist OA registers on OA stream open/release
      drm/xe/rtp: Ensure locking/ref counting for OA whitelists
      drm/xe/oa: Fix offset alignment for MERT WHITELIST_OA_MERT_MMIO_TRG

Francois Dugast (1):
      drm/xe/pt: Fix NULL pointer dereference in xe_pt_zap_ptes_entry()

Gustavo Sousa (1):
      drm/xe/rtp: Add struct types for RTP tables

Lu Yao (1):
      drm/xe: Remove redundant exec_queue_suspended() check in submit_exec_queue()

Matthew Auld (3):
      drm/xe/display: skip FORCE_WC and vm_bound check for external dma-bufs
      drm/xe: fix NPD in bo_meminfo()
      drm/xe/pt: prevent invalid cursor access for purged BOs

Matthew Brost (1):
      drm/xe: Return error on non-migratable faults requiring devmem

Michal Wajdeczko (1):
      drm/xe/pf: Don't attempt to process FAST_REQ or EVENT relays

Rodrigo Vivi (1):
      drm/xe: wedge from the timeout handler only after releasing the queue

Shuicheng Lin (3):
      drm/xe/userptr: Hold notifier_lock for write on inject test path
      drm/xe/userptr: Drop bogus static from finish in force_invalidate
      drm/xe/hw_engine: Fix double-free of managed BO in error path

Thomas Hellström (1):
      drm/xe/rtp: Fix build error with clang < 21 and non-const initializers

 drivers/gpu/drm/xe/display/xe_display_bo.c |   3 +-
 drivers/gpu/drm/xe/display/xe_fb_pin.c     |   3 +-
 drivers/gpu/drm/xe/tests/xe_rtp_test.c     | 103 +++++++++++------------------
 drivers/gpu/drm/xe/xe_drm_client.c         |  12 +++-
 drivers/gpu/drm/xe/xe_gt_debugfs.c         |   4 +-
 drivers/gpu/drm/xe/xe_guc_relay.c          |  13 ++--
 drivers/gpu/drm/xe/xe_guc_submit.c         |   9 ++-
 drivers/gpu/drm/xe/xe_hw_engine.c          |  20 +++---
 drivers/gpu/drm/xe/xe_hw_engine_types.h    |   8 +++
 drivers/gpu/drm/xe/xe_oa.c                 |   7 ++
 drivers/gpu/drm/xe/xe_oa_types.h           |   3 +
 drivers/gpu/drm/xe/xe_pt.c                 |  67 ++++++++++++++-----
 drivers/gpu/drm/xe/xe_reg_whitelist.c      | 102 ++++++++++++++++++++++++----
 drivers/gpu/drm/xe/xe_reg_whitelist.h      |   4 ++
 drivers/gpu/drm/xe/xe_rtp.c                |  31 ++++-----
 drivers/gpu/drm/xe/xe_rtp.h                |  24 ++++++-
 drivers/gpu/drm/xe/xe_rtp_types.h          |  10 +++
 drivers/gpu/drm/xe/xe_svm.c                |   6 +-
 drivers/gpu/drm/xe/xe_svm.h                |  15 ++++-
 drivers/gpu/drm/xe/xe_tuning.c             |  45 ++++++-------
 drivers/gpu/drm/xe/xe_userptr.c            |   2 +-
 drivers/gpu/drm/xe/xe_wa.c                 |  89 +++++++++++++------------
 22 files changed, 376 insertions(+), 204 deletions(-)
