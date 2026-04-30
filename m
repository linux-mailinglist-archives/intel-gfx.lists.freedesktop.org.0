Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PvtLJxS82lnzQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 15:01:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC824A315D
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 15:01:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C04E10E447;
	Thu, 30 Apr 2026 13:01:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pa25M4RD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F67610E1C2;
 Thu, 30 Apr 2026 13:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777554062; x=1809090062;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=kf+QddkXQeU804eOxW9k4yNmlmEX4vin7JzbZV05loc=;
 b=Pa25M4RDT2HeA8OkyhP9r4u33EPi0Y792tz5xs79gye6xH7OusoT1cln
 kqQ5ZBvgL2v1YGbd3KNDAYAUSKchq4QruUfKRo6e7fAS9AcW8gG41JZpK
 isHxdsbKWLhiXXVTrFD/0kQrXpHjDF3449KnzO2F9aR81tMO9OzCDtMCb
 fQOo3pAyhIWgof373lsOQjTQNRfCbrialYEE5OSjFWYIhmlVYoQenRGzx
 uyyltApc11pggs5Z9btOJcQ9E/qTZVPORuvSwvmizjLzE+/bXfNv6Ovcb
 vuh76iC3Uz3CJHyNDFrNlfr8xQcbmD2JkemKj1e/vS2YMxuw4r492hxdS w==;
X-CSE-ConnectionGUID: ZhbB/X6+RiCInpg38Men3g==
X-CSE-MsgGUID: TzJZzJSaTVqGlDCRYmphqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="95922170"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="95922170"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 06:01:01 -0700
X-CSE-ConnectionGUID: matbbY+/SuG4BeNA+sQCnA==
X-CSE-MsgGUID: /6RvWi72RiCmS1KOwO/yZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="230229012"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO fedora)
 ([10.245.244.73])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 06:00:57 -0700
Date: Thu, 30 Apr 2026 15:00:41 +0200
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
Message-ID: <afNSeZJHC3X2m3-N@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
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
X-Rspamd-Queue-Id: 3EC824A315D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:query timed out];
	RCPT_COUNT_TWELVE(0.00)[16];
	RSPAMD_URIBL_FAIL(0.00)[intel.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[thomas.hellstrom@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim]

Hi Dave, Simona

Here's the first drm-xe-next pull towards 7.2

Highlights below.

The following changes since commit 4516432284e1b2ad9e70de8067f779c9c1072189:

  ttm/pool: track allocated_pages per numa node. (2026-04-08 06:52:48 +1000)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-next-2026-04-30

for you to fetch changes up to 438a9200d6abdae2be64a5ce085cee0244a7c231:

  drm/xe: Use drmm_mutex_init for VRAM manager lock (2026-04-30 15:42:21 +0530)

----------------------------------------------------------------
UAPI Changes:

- Debugfs multi-LRC engine info (Xin Wang, 2 commits)
  Expose multi-LRC engine classes in the debugfs engine info output
  and improve the output readability.

- drm/drm_ras: Add clear-error-counter netlink command to drm_ras

Cross-subsystem Changes:

Core Changes:

- drm/gpusvm: Reject VMAs with VM_IO or VM_PFNMAP when creating SVM ranges
- drm/i915/display: switch to including common step file directly

Driver Changes:

- Engine initialization cleanup (Matt Roper, 10 commits)
  Clean up engine initialization code inherited from i915 by moving
  hardware programming (CCS enablement, HWSTAM, GFX_MODE, BLIT_CCTL,
  STOP_RING) into the RTP infrastructure.  This makes the programming
  visible and verifiable via debugfs, and applies consistently across
  both normal and execlist init paths.  Also fixes the name/definition
  of GFX_MODE, marks BCS engines as belonging to the GT forcewake
  domain, and drops the now-unused xe_hw_engine_mmio_write32() helper.

- PF fair scheduling auto-provisioning (Michal Wajdeczko, 13 commits)
  Fix several corner cases in SR-IOV PF scheduling policy provisioning,
  then auto-provision PF and all VFs with 16ms execution-quantum and
  preemption-timeout defaults.  This prevents a VF from monopolizing
  the GPU by submitting workloads without gaps, without requiring the
  user to configure sysfs manually.

- System Controller support for CRI/Xe3p (Anoop Vijay + Raag Jadav, 10 commits)
  Add xe_sysctrl infrastructure for communicating with the System
  Controller firmware entity on CRI/Xe3p discrete GPU platforms via a
  mailbox interface.  Includes type definitions, register definitions,
  mailbox communication, initialization, power management, interrupt
  handling, and event dispatch.  Builds on this to add initial RAS
  correctable error handling, using sysctrl interrupts to receive
  threshold-crossed events.

- PXP state machine fixes (Daniele Ceraolo Spurio, 4 commits)
  Fix PXP state machine handling: reject PXP sessions on PTL platforms
  with older GSC firmware that does not support it, fix the restart
  flag not being cleared after jumping back in pxp_start, remove
  incorrect handling of an impossible state during suspend, and clean
  up termination status on failure.

- Reset/wedge/unload corner case fixes (Zhanjun Dong + Matthew Brost, 5 commits)
  Fix memory leaks and fence signal failures that occurred during GPU
  reset, device wedging, and driver unload by forcefully tearing down
  remaining exec queues in GuC submit fini, always killing queues in
  pause/abort, and triggering queue cleanup when not in wedged mode 2.
  Also ensures GuC CT state transitions via STOP before DISABLED.

- Wedge path memory allocation fixes (Matthew Brost, 3 commits)
  Avoid GFP_KERNEL allocations in xe_device_declare_wedged(), which
  runs in the DMA-fence signaling path.  Also drops the
  guc_submit_wedged_fini devm registration from xe_guc_submit_wedge()
  to clean up the wedge shutdown sequence.

- PAT type cleanup and invalid index hardening (Xin Wang, 3 commits)
  Standardize pat_index fields to u16 across the driver, default
  XE_CACHE_NONE_COMPRESSION to XE_PAT_INVALID_IDX (matching
  WB_COMPRESSION), and introduce xe_cache_pat_idx() — a macro helper
  that validates cache_mode bounds and asserts on invalid PAT indices
  before returning the index.

- Reject unsafe PAT indices for CPU cached memory (Jia Yao, 2 commits)
  Reject incoherent (coh_none) PAT indices for CPU cached memory in
  both the madvise ioctl and vm_bind with CPU_ADDR_MIRROR flag, closing
  a security gap where the GPU could bypass CPU caches and observe
  stale or sensitive data.

- OA improvements for CRI device memory (Ashutosh Dixit, 3 commits)
  Move OA buffer access to the xe_map layer to support both system and
  device memory (required for CRI), switch OA buffer mmap to use
  drm_gem_mmap_obj, and implement workaround Wa_14026633728.

- xe_drm.h documentation fixes (Shuicheng Lin, 6 commits)
  Fix multiple documentation issues in the xe_drm.h UAPI header:
  typos, spelling errors, grammar, wrong names and references,
  kernel-doc cross-reference syntax, and broken code examples.

- kernel-doc syntax fixes in xe headers (Shuicheng Lin, 4 commits)
  Fix kernel-doc syntax issues across xe header files: missing '@'
  prefixes on member tags, stale/mismatched member tags, comment
  syntax errors, and type/parameter name mismatches in references.

- Buffer object and DMA-buf resource leak fixes (Shuicheng Lin, 4 commits)
  Fix resource leaks on error paths: DMA-buf attachment leak in
  xe_gem_prime_import(), BO leak in xe_dma_buf_init_obj() on
  allocation failure, and BO leaks in xe_bo_init_locked() on GGTT
  flag validation and unaligned size validation failures.

- Include guard cleanup (Shuicheng Lin, 5 commits)
  Fix and standardize include guards across xe header files: normalize
  double-underscore guards to single, add missing leading/trailing
  underscores, add missing _H suffixes, and add guards to previously
  unprotected headers.

- VF CCS memory pool (Satyanarayana K V P, 2 commits)
  Switch VF CCS read/write operations from the DRM sub-allocator to
  DRM mm, fixing allocation failures in fence-disabled mode where
  the sub-allocator's hole cursor assumption breaks.  Also introduces
  a general BO-backed memory pool with shadow support using drm_mm.

- i915/xe step definition unification (Jani Nikula, 3 commits)
  Complete the migration to the shared intel_step header: switch xe
  from its own xe_step enum to the shared intel_step naming and
  definitions, and update i915 display code to include the common
  step header directly.

- Xe3p GT tuning fixes (3 commits)
  Three Xe3p GT tuning corrections: fix the register offset for
  GAMSTLB_CTRL, stop applying the CCCHKNREG1 tuning from Xe3p onward
  (no longer needed), and mark ROW_CHICKEN5 as a masked register.

- Forcewake cleanup in GT and GuC PC (Raag Jadav, 3 commits)
  Drop a redundant forcewake reference in xe_gt, reorder forcewake
  usage in xe_guc_pc_fini_hw() to avoid a redundant hold, and convert
  xe_guc_pc_stop() to void since it can no longer fail.

- SVM garbage collector fix on close (Matthew Brost, 2 commits)
  Disable the SVM garbage collector work item when an SVM is closed
  to prevent use-after-free when the GC fires after the SVM is freed.

- Admin-only PF mode (Satyanarayana K V P, 2 commits)
  Derive an "admin-only PF" mode flag from xe_device state instead of
  using a local flag, and restrict device query responses when running
  in admin-only PF mode to avoid exposing internal state.

- Enable hwmon energy attributes and accepted power limit for CRI (2 commits)
  Enable energy consumption hwmon attributes for the CRI platform and
  add support for reading the accepted (sustained) power limit via
  hwmon.

----------------------------------------------------------------
Anoop Vijay (8):
      drm/xe/xe_sysctrl: Add System Controller types and device integration
      drm/xe/xe_sysctrl: Add System Controller mailbox register definitions
      drm/xe/xe_sysctrl: Add ABI and mailbox interface headers
      drm/xe/xe_sysctrl: Add System Controller initialization support
      drm/xe/xe_sysctrl: Add System Controller mailbox communication support
      drm/xe/xe_sysctrl: Add System Controller power management support
      drm/xe/xe_pci: Enable System Controller support on CRI platform
      drm/xe/xe_sysctrl: Drop redundant endian conversions in mailbox header macros

Ashutosh Dixit (3):
      drm/xe/oa: Use xe_map layer
      drm/xe/oa: Use drm_gem_mmap_obj for OA buffer mmap
      drm/xe/oa: Implement Wa_14026633728

Chen Ni (1):
      drm/xe/vm: Convert comma to semicolon

Clint Taylor (1):
      drm/xe/xe3p: add gt tuning TileY 2x2 walk pattern

Daniele Ceraolo Spurio (5):
      drm/xe/pxp: Clean up termination status on failure
      drm/xe/pxp: Remove incorrect handling of impossible state during suspend
      drm/xe/pxp: Clear restart flag in pxp_start after jumping back
      drm/xe/pxp: Don't allow PXP on older PTL GSC FWs
      drm/xe: Suppress reset log for killed queues

Francois Dugast (1):
      drm/xe: Document GT statistics

Gustavo Sousa (2):
      drm/xe/xe3p_lpg: Add missing indirect ring state feature flag
      drm/xe/hdcp: Add NULL check for media_gt in intel_hdcp_gsc_check_status()

Jani Nikula (3):
      drm/xe/step: switch to the shared step definitions with i915
      drm/xe/step: switch from enum xe_step to intel_step naming
      drm/i915/display: switch to including common step file directly

Jia Yao (2):
      drm/xe/uapi: Reject coh_none PAT index for CPU cached memory in madvise
      drm/xe/uapi: Reject coh_none PAT index for CPU_ADDR_MIRROR

Jonathan Cavitt (2):
      drm/xe/vm: Add missing pad and extensions check
      drm/xe/tlb: Init range tilemask err to zero

Julia Filipchuk (1):
      drm/xe: Enable Wa_14025515070

Karthik Poosa (2):
      drm/xe/hwmon: Read accepted power limit for CRI
      drm/xe/hwmon: Enable energy attributes for CRI

Mallesh Koujalagi (1):
      drm/xe: Apply WA_14026999295 to engine

Matt Roper (17):
      drm/xe: Drop redundant rtp entries for Wa_14019988906 & Wa_14019877138
      drm/xe/tuning: Stop applying CCCHKNREG1 tuning from Xe3p onward
      drm/xe/tuning: Use proper register offset for GAMSTLB_CTRL
      drm/xe: Mark ROW_CHICKEN5 as a masked register
      drm/xe/debugfs: Correct printing of register whitelist ranges
      drm/xe: Drop skip_mtcfg descriptor flag
      drm/xe: Steer MCR for NODE/L3BANK according to L3 fusing on Xe2/Xe3
      drm/xe: Move CCS enablement to engine setup RTP
      drm/xe/rtp: Add "always true" match function
      drm/xe: Stop programming BLIT_CCTL on Xe2 and later platforms
      drm/xe: Move HWSTAM programming to RTP
      drm/xe: Fix name and definition of GFX_MODE register
      drm/xe: Const-ify parameters to xe_device_has_* functions
      drm/xe: Move GFX_MODE programming to RTP
      drm/xe: Drop unnecessary STOP_RING clearing
      drm/xe: Drop xe_hw_engine_mmio_write32()
      drm/xe: Mark BCS engines as belonging to the GT forcewake domain

Matthew Brost (4):
      drm/xe: Disable garbage collector work item on SVM close
      drm/xe: Avoid memory allocations in xe_device_declare_wedged()
      drm/xe: Drop registration of guc_submit_wedged_fini from xe_guc_submit_wedge()
      drm/gpusvm: Reject VMAs with VM_IO or VM_PFNMAP when creating SVM ranges

Michal Wajdeczko (16):
      drm/xe/uc: Track uc firmware state changes
      drm/xe/guc: Add support for NO_RESPONSE_BUSY in CTB
      drm/xe/guc: Update POLICY_SCHED_IF_IDLE documentation
      drm/xe/pf: Fix pf_get_sched_priority() function signature
      drm/xe/pf: Force new VFs prorities only once
      drm/xe/pf: Print applied policy KLVs
      drm/xe/pf: Reprovision policy settings after GT reset
      drm/xe/pf: Don't reprovision policies if already default
      drm/xe/pf: Encode scheduling priority KLV if needed
      drm/xe/pf: Check EQ/PT/PRIO when testing VF config
      drm/xe/pf: Allow to change sched_if_idle policy under lock
      drm/xe/pf: Reprovision scheduling to default when no VFs
      drm/xe/pf: Extract helper to show which VFs are provisioned
      drm/xe/pf: Extract helpers for bulk EQ/PT provisioning
      drm/xe/pf: Perform fair scheduling auto-provisioning
      drm/xe/pf: Fix VF's scheduling priority reporting

Nareshkumar Gollakoti (1):
      drm/xe: Set GT rp min frequency as 1.2GHz default for BMG/CRI

Raag Jadav (6):
      drm/xe/guc_pc: Make xe_guc_pc_stop() void
      drm/xe/guc_pc: Reorder forcewake in xe_guc_pc_fini_hw()
      drm/xe/gt: Drop redundant forcewake
      drm/xe/sysctrl: Add system controller interrupt handler
      drm/xe/sysctrl: Add system controller event support
      drm/xe/ras: Introduce correctable error handling

Riana Tauro (2):
      drm/drm_ras: Add clear-error-counter netlink command to drm_ras
      drm/xe/xe_drm_ras: Add support for clear-error-counter in XE drm_ras

Rodrigo Vivi (2):
      Merge drm/drm-next into drm-xe-next
      Merge tag 'topic/step-2026-04-09' of https://gitlab.freedesktop.org/drm/i915/kernel into drm-xe-next

Satyanarayana K V P (4):
      drm/xe: Add memory pool with shadow support
      drm/xe/vf: Use drm mm instead of drm sa for CCS read/write
      drm/xe/pf: Restrict device query responses in admin-only PF mode
      drm/xe/pf: Derive admin-only PF mode from xe_device state

Shuicheng Lin (25):
      drm/xe/ggtt: Remove duplicate XE_GGTT_FLAGS_64K macro definition
      drm/xe: Add missing include guards to unprotected headers
      drm/xe: Add missing _H to include guard suffixes
      drm/xe: Add missing trailing underscore to include guards
      drm/xe: Add missing leading underscore to include guards
      drm/xe: Normalize double-underscore include guards to single-underscore
      drm/xe/uapi: Fix typos and spelling errors in xe_drm.h documentation
      drm/xe/uapi: Fix grammar errors in xe_drm.h documentation
      drm/xe/uapi: Fix wrong names and references in xe_drm.h
      drm/xe/uapi: Fix kernel-doc cross-reference syntax in xe_drm.h
      drm/xe/uapi: Fix code examples in xe_drm.h documentation
      drm/xe/uapi: Fix doc formatting and completeness in xe_drm.h
      drm/xe: Fix potential NULL deref in xe_exec_queue_tlb_inval_last_fence_put_unlocked
      drm/xe/bo: Fix bo leak on unaligned size validation in xe_bo_init_locked()
      drm/xe/bo: Fix bo leak on GGTT flag validation in xe_bo_init_locked()
      drm/xe: Fix bo leak in xe_dma_buf_init_obj() on allocation failure
      drm/xe: Fix dma-buf attachment leak in xe_gem_prime_import()
      drm/xe: Fix error cleanup in xe_exec_queue_create_ioctl()
      drm/xe: Fix stale and mismatched kernel-doc member tags in header files
      drm/xe: Add missing '@' prefix to kernel-doc member tags
      drm/xe: Fix kernel-doc comment syntax issues in header files
      drm/xe: Fix type and parameter name mismatches in kernel-doc references
      drm/xe/eustall: Fix drm_dev_put called before stream disable in close
      drm/xe/gsc: Fix BO leak on error in query_compatibility_version()
      drm/xe/mcr: Remove unused xe_gt_mcr_steering_info_to_dss_id()

Tejas Upadhyay (2):
      Use xe_map_resource_to_region helper instead of direct access
      drm/xe: Use drmm_mutex_init for VRAM manager lock

Tvrtko Ursulin (1):
      drm/xe/xelp: Fix Wa_18022495364

Uwe Kleine-König (The Capable Hub) (1):
      drm/xe: Don't use UTS_RELEASE directly

Varun Gupta (1):
      drm/xe/xe3p_lpg: Add Wa_18044193044

Vinay Belgaumkar (1):
      drm/xe: Fix bug in idledly unit conversion

Xin Wang (5):
      drm/xe: improve readability of debugfs engine info output
      drm/xe: expose multi-lrc engine classes in debugfs info
      drm/xe: Standardize pat_index to u16 type
      drm/xe/pat: Default XE_CACHE_NONE_COMPRESSION to invalid
      drm/xe/pat: Introduce xe_cache_pat_idx() macro helper

Zbigniew Kempczyński (1):
      drm/xe/pat: Print PAT_ATS during register dump

Zhanjun Dong (1):
      drm/xe: Fix null pointer dereference in devcoredump cleanup

 Documentation/gpu/drm-ras.rst                      |   8 +
 Documentation/gpu/xe/index.rst                     |   1 +
 Documentation/gpu/xe/xe_gt_stats.rst               |  11 +
 Documentation/netlink/specs/drm_ras.yaml           |  13 +-
 drivers/gpu/drm/drm_gpusvm.c                       |   5 +
 drivers/gpu/drm/drm_ras.c                          |  43 ++-
 drivers/gpu/drm/drm_ras_nl.c                       |  13 +
 drivers/gpu/drm/drm_ras_nl.h                       |   2 +
 drivers/gpu/drm/i915/display/intel_cdclk.c         |   2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c           |   2 +-
 .../gpu/drm/i915/display/intel_display_device.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_display_power.c |   2 +-
 drivers/gpu/drm/i915/display/intel_display_wa.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c        |   2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c           |   2 +-
 drivers/gpu/drm/i915/display/intel_flipq.c         |   2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c          |   2 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c           |   2 +-
 drivers/gpu/drm/i915/display/skl_universal_plane.c |   2 +-
 drivers/gpu/drm/xe/Makefile                        |   5 +
 drivers/gpu/drm/xe/abi/guc_klvs_abi.h              |   8 +
 drivers/gpu/drm/xe/abi/xe_sysctrl_abi.h            |  65 ++++
 .../gpu/drm/xe/compat-i915-headers/intel_step.h    |  13 -
 drivers/gpu/drm/xe/display/xe_fb_pin.c             |  11 +-
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c           |  12 +-
 drivers/gpu/drm/xe/regs/xe_engine_regs.h           |   5 +-
 drivers/gpu/drm/xe/regs/xe_gt_regs.h               |   7 +-
 drivers/gpu/drm/xe/regs/xe_irq_regs.h              |   1 +
 drivers/gpu/drm/xe/regs/xe_pcode_regs.h            |   3 +
 drivers/gpu/drm/xe/regs/xe_sysctrl_regs.h          |  36 ++
 .../gpu/drm/xe/tests/xe_gt_sriov_pf_config_kunit.c |  21 +-
 drivers/gpu/drm/xe/tests/xe_migrate.c              |   3 +-
 drivers/gpu/drm/xe/tests/xe_pci.c                  |   4 +-
 drivers/gpu/drm/xe/xe_bo.c                         |  29 +-
 drivers/gpu/drm/xe/xe_bo_types.h                   |   5 +-
 drivers/gpu/drm/xe/xe_debugfs.c                    |  43 ++-
 drivers/gpu/drm/xe/xe_dep_scheduler.h              |   5 +
 drivers/gpu/drm/xe/xe_devcoredump.c                |  10 +-
 drivers/gpu/drm/xe/xe_device.c                     |  64 +++-
 drivers/gpu/drm/xe/xe_device.h                     |  23 +-
 drivers/gpu/drm/xe/xe_device_types.h               |  22 +-
 drivers/gpu/drm/xe/xe_device_wa_oob.rules          |   1 +
 drivers/gpu/drm/xe/xe_dma_buf.c                    |  23 +-
 drivers/gpu/drm/xe/xe_drm_ras.c                    |  35 +-
 drivers/gpu/drm/xe/xe_drm_ras.h                    |   4 +-
 drivers/gpu/drm/xe/xe_eu_stall.c                   |   4 +-
 drivers/gpu/drm/xe/xe_eu_stall.h                   |   4 +-
 drivers/gpu/drm/xe/xe_exec_queue.c                 |   9 +-
 drivers/gpu/drm/xe/xe_exec_queue_types.h           |   2 +-
 drivers/gpu/drm/xe/xe_execlist.c                   |   9 -
 drivers/gpu/drm/xe/xe_ggtt.c                       |   8 +-
 drivers/gpu/drm/xe/xe_gsc.c                        |   2 +-
 drivers/gpu/drm/xe/xe_gt.c                         |   1 -
 drivers/gpu/drm/xe/xe_gt_mcr.c                     |  23 +-
 drivers/gpu/drm/xe/xe_gt_mcr.h                     |   1 -
 drivers/gpu/drm/xe/xe_gt_sriov_pf.c                |   1 +
 drivers/gpu/drm/xe/xe_gt_sriov_pf_config.c         | 262 ++++++++++++--
 drivers/gpu/drm/xe/xe_gt_sriov_pf_config.h         |   2 +
 drivers/gpu/drm/xe/xe_gt_sriov_pf_policy.c         | 124 ++++---
 drivers/gpu/drm/xe/xe_gt_sriov_pf_policy.h         |   4 +-
 drivers/gpu/drm/xe/xe_gt_sriov_pf_types.h          |   1 -
 drivers/gpu/drm/xe/xe_gt_stats.c                   |  41 +++
 drivers/gpu/drm/xe/xe_gt_stats_types.h             | 118 ++++++
 drivers/gpu/drm/xe/xe_gt_types.h                   |   4 +-
 drivers/gpu/drm/xe/xe_guc.c                        |  17 +-
 drivers/gpu/drm/xe/xe_guc_ads.c                    |   5 +-
 drivers/gpu/drm/xe/xe_guc_capture.c                |   2 +-
 drivers/gpu/drm/xe/xe_guc_capture.h                |   4 +-
 drivers/gpu/drm/xe/xe_guc_capture_types.h          |   6 +-
 drivers/gpu/drm/xe/xe_guc_ct.c                     |  38 +-
 drivers/gpu/drm/xe/xe_guc_ct_types.h               |   8 +-
 drivers/gpu/drm/xe/xe_guc_fwif.h                   |   4 +-
 drivers/gpu/drm/xe/xe_guc_pc.c                     |  42 ++-
 drivers/gpu/drm/xe/xe_guc_pc.h                     |   2 +-
 drivers/gpu/drm/xe/xe_guc_relay_types.h            |   2 +-
 drivers/gpu/drm/xe/xe_guc_submit.c                 |  40 +-
 drivers/gpu/drm/xe/xe_guc_submit_types.h           |   2 +-
 drivers/gpu/drm/xe/xe_hw_engine.c                  |  89 ++---
 drivers/gpu/drm/xe/xe_hw_engine.h                  |   1 -
 drivers/gpu/drm/xe/xe_hw_engine_types.h            |   2 +-
 drivers/gpu/drm/xe/xe_hw_error.h                   |   4 +-
 drivers/gpu/drm/xe/xe_hwmon.c                      |  28 +-
 drivers/gpu/drm/xe/xe_irq.c                        |   2 +
 drivers/gpu/drm/xe/xe_lrc.c                        |  22 +-
 drivers/gpu/drm/xe/xe_mem_pool.c                   | 403 +++++++++++++++++++++
 drivers/gpu/drm/xe/xe_mem_pool.h                   |  35 ++
 drivers/gpu/drm/xe/xe_mem_pool_types.h             |  21 ++
 drivers/gpu/drm/xe/xe_migrate.c                    |  71 ++--
 drivers/gpu/drm/xe/xe_migrate.h                    |   4 +-
 drivers/gpu/drm/xe/xe_nvm.h                        |   4 +-
 drivers/gpu/drm/xe/xe_oa.c                         | 136 +++----
 drivers/gpu/drm/xe/xe_oa_types.h                   |  12 +-
 drivers/gpu/drm/xe/xe_pagefault_types.h            |   4 +-
 drivers/gpu/drm/xe/xe_pat.c                        |   9 +
 drivers/gpu/drm/xe/xe_pat.h                        |   8 +
 drivers/gpu/drm/xe/xe_pci.c                        |  13 +-
 drivers/gpu/drm/xe/xe_pci_sriov.c                  |   2 +
 drivers/gpu/drm/xe/xe_pci_types.h                  |   2 +-
 drivers/gpu/drm/xe/xe_pcode_api.h                  |   8 +-
 drivers/gpu/drm/xe/xe_pm.c                         |   6 +
 drivers/gpu/drm/xe/xe_pt.c                         |   3 +-
 drivers/gpu/drm/xe/xe_pt_types.h                   |   2 +-
 drivers/gpu/drm/xe/xe_pt_walk.h                    |  14 +-
 drivers/gpu/drm/xe/xe_pxp.c                        |   6 +
 drivers/gpu/drm/xe/xe_pxp.h                        |   6 +-
 drivers/gpu/drm/xe/xe_pxp_debugfs.h                |   6 +-
 drivers/gpu/drm/xe/xe_pxp_submit.h                 |   6 +-
 drivers/gpu/drm/xe/xe_pxp_types.h                  |   6 +-
 drivers/gpu/drm/xe/xe_query.c                      |   7 +
 drivers/gpu/drm/xe/xe_ras.c                        |  93 +++++
 drivers/gpu/drm/xe/xe_ras.h                        |  15 +
 drivers/gpu/drm/xe/xe_ras_types.h                  |  73 ++++
 drivers/gpu/drm/xe/xe_reg_sr.h                     |   4 +-
 drivers/gpu/drm/xe/xe_reg_sr_types.h               |   4 +-
 drivers/gpu/drm/xe/xe_reg_whitelist.c              |   2 +-
 drivers/gpu/drm/xe/xe_reg_whitelist.h              |   4 +-
 drivers/gpu/drm/xe/xe_rtp.c                        |  15 +
 drivers/gpu/drm/xe/xe_rtp.h                        |  28 +-
 drivers/gpu/drm/xe/xe_rtp_helpers.h                |   6 +-
 drivers/gpu/drm/xe/xe_rtp_types.h                  |   4 +-
 drivers/gpu/drm/xe/xe_sriov_pf.c                   |   6 -
 drivers/gpu/drm/xe/xe_sriov_pf_helpers.h           |   3 +-
 drivers/gpu/drm/xe/xe_sriov_pf_provision.c         |  41 +++
 drivers/gpu/drm/xe/xe_sriov_pf_provision.h         |   1 +
 drivers/gpu/drm/xe/xe_sriov_pf_types.h             |   3 -
 drivers/gpu/drm/xe/xe_sriov_vf_ccs.c               |  54 +--
 drivers/gpu/drm/xe/xe_sriov_vf_ccs_types.h         |   5 +-
 drivers/gpu/drm/xe/xe_step.c                       |   2 +-
 drivers/gpu/drm/xe/xe_step.h                       |   4 +-
 drivers/gpu/drm/xe/xe_step_types.h                 |  61 +---
 drivers/gpu/drm/xe/xe_svm.c                        |  10 +-
 drivers/gpu/drm/xe/xe_sysctrl.c                    | 132 +++++++
 drivers/gpu/drm/xe/xe_sysctrl.h                    |  24 ++
 drivers/gpu/drm/xe/xe_sysctrl_event.c              |  88 +++++
 drivers/gpu/drm/xe/xe_sysctrl_event_types.h        |  57 +++
 drivers/gpu/drm/xe/xe_sysctrl_mailbox.c            | 371 +++++++++++++++++++
 drivers/gpu/drm/xe/xe_sysctrl_mailbox.h            |  31 ++
 drivers/gpu/drm/xe/xe_sysctrl_mailbox_types.h      |  58 +++
 drivers/gpu/drm/xe/xe_sysctrl_types.h              |  39 ++
 drivers/gpu/drm/xe/xe_tlb_inval.c                  |   2 +-
 drivers/gpu/drm/xe/xe_ttm_vram_mgr.c               |   6 +-
 drivers/gpu/drm/xe/xe_tuning.c                     |   9 +-
 drivers/gpu/drm/xe/xe_tuning.h                     |   4 +-
 drivers/gpu/drm/xe/xe_uc_fw.c                      |  11 +
 drivers/gpu/drm/xe/xe_uc_fw.h                      |   4 +
 drivers/gpu/drm/xe/xe_uc_fw_abi.h                  |   4 +-
 drivers/gpu/drm/xe/xe_vm.c                         |  17 +-
 drivers/gpu/drm/xe/xe_vm_madvise.c                 |  47 +++
 drivers/gpu/drm/xe/xe_vm_types.h                   |   3 +-
 drivers/gpu/drm/xe/xe_vram.c                       |  22 ++
 drivers/gpu/drm/xe/xe_vram.h                       |   2 +
 drivers/gpu/drm/xe/xe_wa.c                         |  21 +-
 drivers/gpu/drm/xe/xe_wa.h                         |   4 +-
 drivers/gpu/drm/xe/xe_wa_oob.rules                 |   7 +
 include/drm/drm_ras.h                              |  11 +
 include/uapi/drm/drm_ras.h                         |   1 +
 include/uapi/drm/xe_drm.h                          | 206 +++++------
 159 files changed, 3175 insertions(+), 758 deletions(-)
 create mode 100644 Documentation/gpu/xe/xe_gt_stats.rst
 create mode 100644 drivers/gpu/drm/xe/abi/xe_sysctrl_abi.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
 create mode 100644 drivers/gpu/drm/xe/regs/xe_sysctrl_regs.h
 create mode 100644 drivers/gpu/drm/xe/xe_mem_pool.c
 create mode 100644 drivers/gpu/drm/xe/xe_mem_pool.h
 create mode 100644 drivers/gpu/drm/xe/xe_mem_pool_types.h
 create mode 100644 drivers/gpu/drm/xe/xe_ras.c
 create mode 100644 drivers/gpu/drm/xe/xe_ras.h
 create mode 100644 drivers/gpu/drm/xe/xe_ras_types.h
 create mode 100644 drivers/gpu/drm/xe/xe_sysctrl.c
 create mode 100644 drivers/gpu/drm/xe/xe_sysctrl.h
 create mode 100644 drivers/gpu/drm/xe/xe_sysctrl_event.c
 create mode 100644 drivers/gpu/drm/xe/xe_sysctrl_event_types.h
 create mode 100644 drivers/gpu/drm/xe/xe_sysctrl_mailbox.c
 create mode 100644 drivers/gpu/drm/xe/xe_sysctrl_mailbox.h
 create mode 100644 drivers/gpu/drm/xe/xe_sysctrl_mailbox_types.h
 create mode 100644 drivers/gpu/drm/xe/xe_sysctrl_types.h
