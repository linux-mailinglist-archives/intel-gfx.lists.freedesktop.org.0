Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 477243D3EF5
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 19:42:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D14C56FB95;
	Fri, 23 Jul 2021 17:42:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A33386FB95
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 17:42:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10054"; a="275742909"
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="275742909"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 10:42:48 -0700
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="463229030"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 10:42:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Jul 2021 10:42:09 -0700
Message-Id: <20210723174239.1551352-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 00/30] Begin enabling Xe_HP SDV and DG2
 platforms
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series provides some of the initial enablement patches for two
upcoming discrete GPUs:
 * XeHP SDV:  Xe_HP (version 12.50) graphics IP, no display IP
 * DG2:  Xe_HPG (version 12.55) graphics IP, Xe_LPD (version 13) display IP

Both platforms will need additional enablement patches beyond what's
present in this series before they're truly usable, including various
LMEM and GuC work that's already happening separately.  The new
features/functionality that these platforms bring (such as multi-tile
support, dedicated compute engines, etc.) may be referenced in passing
in some of these patches but will be fully enabled in future series.

v2:
 - General rebase and incorporation of r-b's.
 - Re-order intel_gt_info and intel_device_info structures to eliminate
   some unnecessary padding after the size change of
   intel_engine_mask_t.  (Tvrtko)
 - Use 'intel_step' mechanisms for revid->stepping mapping.  (Jani)
 - Drop the DSC patches for now; they need some rework.  (Jani)

v3:
 - About 20 of the patches have landed upstream now.  Rebase and resend
   the rest.  Some of these are already reviewed, but have dependencies
   on other unreviewed patches (e.g., the new engine definitions, the
   initial SNPS PHY support, etc.).

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: James Ausmus <james.ausmus@intel.com>

Akeem G Abodunrin (1):
  drm/i915/dg2: Add new LRI reg offsets

Animesh Manna (1):
  drm/i915/dg2: Update to bigjoiner path

Ankit Nautiyal (1):
  drm/i915/dg2: Configure PCON in DP pre-enable path

Daniele Ceraolo Spurio (1):
  drm/i915/xehp: handle new steering options

Gwan-gyeong Mun (1):
  drm/i915/dg2: Update lane disable power state during PSR

John Harrison (3):
  drm/i915/xehp: Extra media engines - Part 1 (engine definitions)
  drm/i915/xehp: Extra media engines - Part 2 (interrupts)
  drm/i915/xehp: Extra media engines - Part 3 (reset)

Lucas De Marchi (2):
  drm/i915/xehpsdv: Define MOCS table for XeHP SDV
  drm/i915/xehpsdv: factor out function to read RP_STATE_CAP

Matt Roper (18):
  drm/i915/xehpsdv: Correct parameters for IS_XEHPSDV_GT_STEP()
  drm/i915/xehp: Xe_HP forcewake support
  drm/i915/xehp: Loop over all gslices for INSTDONE processing
  drm/i915/xehpsdv: Add maximum sseu limits
  drm/i915/xehpsdv: Define steering tables
  drm/i915/xehpsdv: Read correct RP_STATE_CAP register
  drm/i915/dg2: DG2 uses the same sseu limits as XeHP SDV
  drm/i915/dg2: Add forcewake table
  drm/i915/dg2: Update LNCF steering ranges
  drm/i915/dg2: Add SQIDI steering
  drm/i915/dg2: Maintain backward-compatible nested batch behavior
  drm/i915/dg2: Report INSTDONE_GEOM values in error state
  drm/i915/dg2: Define MOCS table for DG2
  drm/i915/dg2: Add MPLLB programming for SNPS PHY
  drm/i915/dg2: Add MPLLB programming for HDMI
  drm/i915/dg2: Add vswing programming for SNPS phys
  drm/i915/dg2: Update modeset sequences
  drm/i915/dg2: Wait for SNPS PHY calibration during display init

Matthew Auld (1):
  drm/i915/xehp: Changes to ss/eu definitions

Stuart Summers (1):
  drm/i915/xehpsdv: Add compute DSS type

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      | 161 +++-
 drivers/gpu/drm/i915/display/intel_display.c  |  51 ++
 .../drm/i915/display/intel_display_power.c    |   5 +
 .../drm/i915/display/intel_display_types.h    |  17 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  12 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  11 +
 drivers/gpu/drm/i915/display/intel_psr.c      |   7 +
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 862 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_snps_phy.h |  35 +
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c       |   8 +-
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |   7 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  99 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |  29 +-
 .../drm/i915/gt/intel_execlists_submission.c  |   4 +
 drivers/gpu/drm/i915/gt/intel_gt.c            |  66 +-
 drivers/gpu/drm/i915/gt/intel_gt.h            |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  13 +-
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  12 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  85 +-
 drivers/gpu/drm/i915/gt/intel_mocs.c          |  66 +-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c   |   1 +
 drivers/gpu/drm/i915/gt/intel_reset.c         |   6 +
 drivers/gpu/drm/i915/gt/intel_rps.c           |  19 +-
 drivers/gpu/drm/i915/gt/intel_rps.h           |   1 +
 drivers/gpu/drm/i915/gt/intel_sseu.c          | 116 ++-
 drivers/gpu/drm/i915/gt/intel_sseu.h          |  20 +-
 drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c  |   2 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 155 +++-
 drivers/gpu/drm/i915/i915_debugfs.c           |   8 +-
 drivers/gpu/drm/i915/i915_drv.h               |   7 +-
 drivers/gpu/drm/i915/i915_getparam.c          |   6 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  36 +-
 drivers/gpu/drm/i915/i915_pci.c               |   6 +-
 drivers/gpu/drm/i915/i915_reg.h               | 100 +-
 drivers/gpu/drm/i915/intel_device_info.h      |   4 +-
 drivers/gpu/drm/i915/intel_uncore.c           | 367 ++++++--
 drivers/gpu/drm/i915/intel_uncore.h           |  14 +-
 drivers/gpu/drm/i915/selftests/intel_uncore.c |   2 +
 include/uapi/drm/i915_drm.h                   |   3 -
 40 files changed, 2251 insertions(+), 174 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_snps_phy.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_snps_phy.h

-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
