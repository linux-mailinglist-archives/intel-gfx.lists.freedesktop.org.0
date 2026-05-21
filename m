Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDABHEBRD2pEJAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 20:38:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6985AB263
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 20:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6912810E1DE;
	Thu, 21 May 2026 18:38:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MhybNaF7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D073910E1DE;
 Thu, 21 May 2026 18:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779388733; x=1810924733;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=yqqsAbJm6xkO2YqXp/RbFtkyD2C996+te1K1hZwNDjQ=;
 b=MhybNaF7yZ+hV+KY1lCKad0GBUyDEH/PDlZn4bSeTRCHoyCwornwGF3m
 aypxpPAmf5ohNdS6k4qz7JvEzqC936QNTREqOGTDydqSL4PToiM4oDGUu
 v8iyQHobVBGnqHOoOb2tB+4LRDvNR1SCxCNn4u1aAveywrtbJmKE02K0p
 KYX9YoivzDMPVEOOWhZEBNtvSCqUs73ewwyqvLNllh8asgbxVlvVz0nRu
 p38ncH1USqPvLdF035LIhf5HdEBi6IVeII08FmqDO3e92oAydoQBYTs/V
 00TIQZ+sEOB9nVxJgmm7TCcZvPNTUqumA2FRVh2TVCgz/axbrVppGpKOp w==;
X-CSE-ConnectionGUID: R5It4ztLQ4e+Wmrppc20ug==
X-CSE-MsgGUID: WodDat9XRDKfGnyOA3u5FA==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="91425901"
X-IronPort-AV: E=Sophos;i="6.24,160,1774335600"; d="scan'208";a="91425901"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 11:38:52 -0700
X-CSE-ConnectionGUID: xV49pPTsS1yo7wSa7bcggQ==
X-CSE-MsgGUID: azsl9KWXSh6vkvp9W2vXXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,160,1774335600"; d="scan'208";a="240476667"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO fedora)
 ([10.245.244.105])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 11:38:48 -0700
Date: Thu, 21 May 2026 20:38:38 +0200
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
Subject: [PULL] drm-xe-next
Message-ID: <ag9RLujZiYYnSc_F@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: CD6985AB263
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave and Simona,

Here's this week's drm-xe-next PR towards 7.2.

Series highlights:

- drm/xe: Refresh MEMIRQ code
  9/9 patches pushed
  Updates the memory-based interrupt (MEMIRQ) code following a new
  programming note. Moves the IRQ page definition into the HW engine
  definition, makes internal page layout macros private, reduces buffer
  sizes, and drops cached iosys_map references for the status and mask
  pages to simplify the implementation.
  (Michal Wajdeczko)

- drm/xe: Make drm_driver const
  7/7 patches pushed
  Removes runtime modifications to the drm_driver struct that were used
  to conditionally enable display support. Replaces this with updates to
  drm_device.driver_features bits instead, following the existing
  driver_features design. Also cleans up display driver hooks, stubs, and
  removes unused includes.
  (Michal Wajdeczko)

- Fix MCR inconsistencies in RTP tables
  7/7 patches pushed
  The Xe RTP (Register Table Programming) tables had inconsistencies
  between MCR and non-MCR register types. Adds a sanity check to catch
  such mismatches, extracts a helper for steering type range queries,
  and converts several registers (CACHE_MODE_1, COMMON_SLICE_CHICKEN1,
  COMMON_SLICE_CHICKEN4) to their correct MCR definitions.
  (Gustavo Sousa)

Single patches:

- drm/xe/oa: Fix exec_queue leak on width check in stream open (Shuicheng Lin)
- drm/xe/guc: Use xe_device_is_l2_flush_optimized() (Gustavo Sousa)
- drm/xe/multi_queue: Fix secondary queue error case (Niranjana Vishwanathapura)
- drm/xe/pf: Fix CFI failure in debugfs access (Mohanram Meenakshisundaram)
- drm/xe/vf: Fix signature of print functions (Michal Wajdeczko)
- drm/xe/sriov: Mark NVL as SR-IOV capable (Jakub Kolakowski)
- drm/xe/gt_idle: Use NSEC_PER_MSEC instead of float literal (Shuicheng Lin)
- drm/xe/gsc: Fix double-free of managed BO in error path (Shuicheng Lin)

drm-xe-next-2026-05-21:
Driver Changes:
- drm/xe/oa: Fix exec_queue leak on width check in stream open (Shuicheng Lin)
- drm/xe/memirq: Drop cached iosys_map for MEMIRQ status (Michal Wajdeczko)
- drm/xe/memirq: Drop cached iosys_map for MEMIRQ mask (Michal Wajdeczko)
- drm/xe/memirq: Dump all source pages if MSI-X (Michal Wajdeczko)
- drm/xe/memirq: Update diagnostic message (Michal Wajdeczko)
- drm/xe/memirq: Reduce buffer size (Michal Wajdeczko)
- drm/xe/memirq: Use IRQ page from HW engine definition (Michal Wajdeczko)
- drm/xe/memirq: Update GuC initialization and IRQ handler (Michal Wajdeczko)
- drm/xe/memirq: Make page layout macros private (Michal Wajdeczko)
- drm/xe: Add IRQ page to HW engine definition (Michal Wajdeczko)
- drm/xe/guc: Use xe_device_is_l2_flush_optimized() (Gustavo Sousa)
- drm/xe/multi_queue: Fix secondary queue error case (Niranjana Vishwanathapura)
- drm/xe/reg_sr: Do sanity check for MCR vs non-MCR (Gustavo Sousa)
- drm/xe/mcr: Extract reg_in_steering_type_ranges() (Gustavo Sousa)
- drm/xe/kunit: Use KUNIT_EXPECT_EQ() in xe_wa_gt() (Gustavo Sousa)
- drm/xe: Extract xe_hw_engine_setup_reg_lrc() (Gustavo Sousa)
- drm/xe: Define and use MCR version of COMMON_SLICE_CHICKEN4 (Gustavo Sousa)
- drm/xe: Define and use MCR version of COMMON_SLICE_CHICKEN1 (Gustavo Sousa)
- drm/xe: Define CACHE_MODE_1 as MCR register (Gustavo Sousa)
- drm/xe/pf: Fix CFI failure in debugfs access (Mohanram Meenakshisundaram)
- drm/xe/vf: Fix signature of print functions (Michal Wajdeczko)
- drm/xe: Make drm_driver const (Michal Wajdeczko)
- drm/xe/display: Drop xe_display_driver_set_hooks() (Michal Wajdeczko)
- drm/xe/display: Add macro with display driver features (Michal Wajdeczko)
- drm/xe/display: Add macro with display driver ops (Michal Wajdeczko)
- drm/xe/display: Prefer forward declarations (Michal Wajdeczko)
- drm/xe/display: Drop xe_display_driver_remove() stub (Michal Wajdeczko)
- drm/xe: Drop unused drm/drm_atomic_helper.h include (Michal Wajdeczko)
- drm/xe/sriov: Mark NVL as SR-IOV capable (Jakub Kolakowski)
- drm/xe/gt_idle: Use NSEC_PER_MSEC instead of float literal (Shuicheng Lin)
- drm/xe/gsc: Fix double-free of managed BO in error path (Shuicheng Lin)
The following changes since commit 2ddedd4b7b7c329dd65358025cba8652675bec3d:

  drm/xe/memirq: Enable GT_MI_USER_INTERRUPT only (2026-05-13 20:11:21 +0200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-next-2026-05-21

for you to fetch changes up to 339fa0be9e4a5d69fa47e91f4a36574224fb478f:

  drm/xe/oa: Fix exec_queue leak on width check in stream open (2026-05-19 08:48:46 -0700)

----------------------------------------------------------------
Driver Changes:
- drm/xe/oa: Fix exec_queue leak on width check in stream open (Shuicheng Lin)
- drm/xe/memirq: Drop cached iosys_map for MEMIRQ status (Michal Wajdeczko)
- drm/xe/memirq: Drop cached iosys_map for MEMIRQ mask (Michal Wajdeczko)
- drm/xe/memirq: Dump all source pages if MSI-X (Michal Wajdeczko)
- drm/xe/memirq: Update diagnostic message (Michal Wajdeczko)
- drm/xe/memirq: Reduce buffer size (Michal Wajdeczko)
- drm/xe/memirq: Use IRQ page from HW engine definition (Michal Wajdeczko)
- drm/xe/memirq: Update GuC initialization and IRQ handler (Michal Wajdeczko)
- drm/xe/memirq: Make page layout macros private (Michal Wajdeczko)
- drm/xe: Add IRQ page to HW engine definition (Michal Wajdeczko)
- drm/xe/guc: Use xe_device_is_l2_flush_optimized() (Gustavo Sousa)
- drm/xe/multi_queue: Fix secondary queue error case (Niranjana Vishwanathapura)
- drm/xe/reg_sr: Do sanity check for MCR vs non-MCR (Gustavo Sousa)
- drm/xe/mcr: Extract reg_in_steering_type_ranges() (Gustavo Sousa)
- drm/xe/kunit: Use KUNIT_EXPECT_EQ() in xe_wa_gt() (Gustavo Sousa)
- drm/xe: Extract xe_hw_engine_setup_reg_lrc() (Gustavo Sousa)
- drm/xe: Define and use MCR version of COMMON_SLICE_CHICKEN4 (Gustavo Sousa)
- drm/xe: Define and use MCR version of COMMON_SLICE_CHICKEN1 (Gustavo Sousa)
- drm/xe: Define CACHE_MODE_1 as MCR register (Gustavo Sousa)
- drm/xe/pf: Fix CFI failure in debugfs access (Mohanram Meenakshisundaram)
- drm/xe/vf: Fix signature of print functions (Michal Wajdeczko)
- drm/xe: Make drm_driver const (Michal Wajdeczko)
- drm/xe/display: Drop xe_display_driver_set_hooks() (Michal Wajdeczko)
- drm/xe/display: Add macro with display driver features (Michal Wajdeczko)
- drm/xe/display: Add macro with display driver ops (Michal Wajdeczko)
- drm/xe/display: Prefer forward declarations (Michal Wajdeczko)
- drm/xe/display: Drop xe_display_driver_remove() stub (Michal Wajdeczko)
- drm/xe: Drop unused drm/drm_atomic_helper.h include (Michal Wajdeczko)
- drm/xe/sriov: Mark NVL as SR-IOV capable (Jakub Kolakowski)
- drm/xe/gt_idle: Use NSEC_PER_MSEC instead of float literal (Shuicheng Lin)
- drm/xe/gsc: Fix double-free of managed BO in error path (Shuicheng Lin)

----------------------------------------------------------------
Gustavo Sousa (8):
      drm/xe: Define CACHE_MODE_1 as MCR register
      drm/xe: Define and use MCR version of COMMON_SLICE_CHICKEN1
      drm/xe: Define and use MCR version of COMMON_SLICE_CHICKEN4
      drm/xe: Extract xe_hw_engine_setup_reg_lrc()
      drm/xe/kunit: Use KUNIT_EXPECT_EQ() in xe_wa_gt()
      drm/xe/mcr: Extract reg_in_steering_type_ranges()
      drm/xe/reg_sr: Do sanity check for MCR vs non-MCR
      drm/xe/guc: Use xe_device_is_l2_flush_optimized()

Jakub Kolakowski (1):
      drm/xe/sriov: Mark NVL as SR-IOV capable

Michal Wajdeczko (17):
      drm/xe: Drop unused drm/drm_atomic_helper.h include
      drm/xe/display: Drop xe_display_driver_remove() stub
      drm/xe/display: Prefer forward declarations
      drm/xe/display: Add macro with display driver ops
      drm/xe/display: Add macro with display driver features
      drm/xe/display: Drop xe_display_driver_set_hooks()
      drm/xe: Make drm_driver const
      drm/xe/vf: Fix signature of print functions
      drm/xe: Add IRQ page to HW engine definition
      drm/xe/memirq: Make page layout macros private
      drm/xe/memirq: Update GuC initialization and IRQ handler
      drm/xe/memirq: Use IRQ page from HW engine definition
      drm/xe/memirq: Reduce buffer size
      drm/xe/memirq: Update diagnostic message
      drm/xe/memirq: Dump all source pages if MSI-X
      drm/xe/memirq: Drop cached iosys_map for MEMIRQ mask
      drm/xe/memirq: Drop cached iosys_map for MEMIRQ status

Mohanram Meenakshisundaram (1):
      drm/xe/pf: Fix CFI failure in debugfs access

Niranjana Vishwanathapura (1):
      drm/xe/multi_queue: Fix secondary queue error case

Shuicheng Lin (3):
      drm/xe/gsc: Fix double-free of managed BO in error path
      drm/xe/gt_idle: Use NSEC_PER_MSEC instead of float literal
      drm/xe/oa: Fix exec_queue leak on width check in stream open

 drivers/gpu/drm/xe/display/xe_display.c     |  33 +++-----
 drivers/gpu/drm/xe/display/xe_display.h     |  21 ++++-
 drivers/gpu/drm/xe/regs/xe_gt_regs.h        |   4 +-
 drivers/gpu/drm/xe/tests/xe_rtp_test.c      |  71 +++++++++++++++--
 drivers/gpu/drm/xe/tests/xe_wa_test.c       |  14 +++-
 drivers/gpu/drm/xe/xe_device.c              |  13 +--
 drivers/gpu/drm/xe/xe_gsc.c                 |   5 +-
 drivers/gpu/drm/xe/xe_gt.c                  |   8 +-
 drivers/gpu/drm/xe/xe_gt_idle.c             |   4 +-
 drivers/gpu/drm/xe/xe_gt_mcr.c              |  65 ++++++++++-----
 drivers/gpu/drm/xe/xe_gt_mcr.h              |   1 +
 drivers/gpu/drm/xe/xe_gt_sriov_pf_monitor.c |   6 +-
 drivers/gpu/drm/xe/xe_gt_sriov_pf_monitor.h |   2 +-
 drivers/gpu/drm/xe/xe_gt_sriov_vf.c         |  24 ++++--
 drivers/gpu/drm/xe/xe_gt_sriov_vf.h         |   6 +-
 drivers/gpu/drm/xe/xe_guc.c                 |   2 +-
 drivers/gpu/drm/xe/xe_guc_submit.c          |  16 ++--
 drivers/gpu/drm/xe/xe_hw_engine.c           |  26 ++++--
 drivers/gpu/drm/xe/xe_hw_engine.h           |   2 +-
 drivers/gpu/drm/xe/xe_hw_engine_types.h     |   2 +
 drivers/gpu/drm/xe/xe_memirq.c              | 118 +++++++++++++++++-----------
 drivers/gpu/drm/xe/xe_memirq_types.h        |  13 +--
 drivers/gpu/drm/xe/xe_oa.c                  |   6 +-
 drivers/gpu/drm/xe/xe_pci.c                 |   2 +
 drivers/gpu/drm/xe/xe_reg_sr.c              |  36 +++++++++
 drivers/gpu/drm/xe/xe_tuning.c              |   2 +-
 drivers/gpu/drm/xe/xe_wa.c                  |   6 +-
 27 files changed, 348 insertions(+), 160 deletions(-)
