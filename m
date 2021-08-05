Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AA43E19B3
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 18:37:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0329E6EB0E;
	Thu,  5 Aug 2021 16:37:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 937BE6E39B
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 16:36:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="194470753"
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="194470753"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 09:36:55 -0700
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="419886345"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 09:36:54 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 James Ausmus <james.ausmus@intel.com>
Date: Thu,  5 Aug 2021 09:36:38 -0700
Message-Id: <20210805163647.801064-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/9] Begin enabling Xe_HP SDV and DG2
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

v4:
 - Several more patches have landed upstream; rebase and re-send the
   rest.  Some of the remaining patches are reviewed but still have
   dependencies on non-reviewed patches, so the order is shuffled this
   time to group patches by dependency rather than by xehp vs xehpsdv vs
   dg2.
 - Minor cleanup to "drm/i915/xehp: handle new steering options"
   suggested by Caz.

v5:
 - Rebase remaining patches after several more have landed upstream.
 - Drop the two MOCS patches for now; we need to wait for some prep work
   from Ayaz to land before we apply those.
 - Make a comment about uapi in the compute DSS patch more general; the
   uapi itself will show up in a future series once the corresponding
   userspace driver code is published.  (Lucas)
 - Add an extra patch for a new DG2-G11 stepping that has appeared.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: James Ausmus <james.ausmus@intel.com>


Akeem G Abodunrin (1):
  drm/i915/dg2: Add new LRI reg offsets

Ankit Nautiyal (1):
  drm/i915/dg2: Configure PCON in DP pre-enable path

Lucas De Marchi (1):
  drm/i915/xehpsdv: factor out function to read RP_STATE_CAP

Matt Roper (5):
  drm/i915/dg2: Add support for new DG2-G11 revid 0x5
  drm/i915/xehp: Loop over all gslices for INSTDONE processing
  drm/i915/dg2: Report INSTDONE_GEOM values in error state
  drm/i915/xehpsdv: Read correct RP_STATE_CAP register
  drm/i915/dg2: Maintain backward-compatible nested batch behavior

Stuart Summers (1):
  drm/i915/xehpsdv: Add compute DSS type

 drivers/gpu/drm/i915/display/intel_ddi.c     |  3 +
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c      |  8 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 55 ++++++++-----
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 15 +++-
 drivers/gpu/drm/i915/gt/intel_lrc.c          | 85 +++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_rps.c          | 19 +++--
 drivers/gpu/drm/i915/gt/intel_rps.h          |  1 +
 drivers/gpu/drm/i915/gt/intel_sseu.c         | 66 +++++++++++----
 drivers/gpu/drm/i915/gt/intel_sseu.h         | 12 ++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c  | 39 ++++++++-
 drivers/gpu/drm/i915/i915_debugfs.c          |  8 +-
 drivers/gpu/drm/i915/i915_gpu_error.c        | 36 +++++++--
 drivers/gpu/drm/i915/i915_reg.h              |  6 +-
 drivers/gpu/drm/i915/intel_step.c            |  1 +
 include/uapi/drm/i915_drm.h                  |  3 -
 15 files changed, 284 insertions(+), 73 deletions(-)

-- 
2.25.4

