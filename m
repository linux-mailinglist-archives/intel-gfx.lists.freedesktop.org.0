Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB22F1A2D21
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 02:57:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 088C46EB25;
	Thu,  9 Apr 2020 00:57:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02D286EB25
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2020 00:57:24 +0000 (UTC)
IronPort-SDR: MRT4DysnUCVu6Nk0HgCAcPFoSMTdngs5m+n58xnOVQXs23jTaGQf5ExqUNcbfji8hYN64lwWq0
 +oRAgEa6Iibg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 17:57:24 -0700
IronPort-SDR: A7dwn0K9g4g3HpWiwUu43H/Cl/rRy4nLbonHCsWIP14zhybmcfcz/J1LQtFIEiTlg/rhTSHabw
 l0tZ/RjhzEdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,360,1580803200"; d="scan'208";a="244185356"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 08 Apr 2020 17:57:24 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Apr 2020 17:56:54 -0700
Message-Id: <20200409005658.12262-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] uC code cleanups
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Drop a couple of unused variables and move the wopcm code under gt/uc.
The 3 patches are independent from each other, I'm sending them as a
series just to avoid spamming CI.

Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <john.c.harrison@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>

Daniele Ceraolo Spurio (4):
  drm/i915/guc: drop guc parameter from guc_ggtt_offset
  drm/i915/guc: drop gt.pm_guc_events
  drm/i915: consolidate WOPCM management under gt/uc
  HAX: drm/i915: default to enable_guc=2

 Documentation/gpu/i915.rst                    |   2 +-
 drivers/gpu/drm/i915/Makefile                 |   4 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |   2 +-
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   2 -
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  14 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   4 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |   2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   5 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h    |   3 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   4 +-
 drivers/gpu/drm/i915/gt/uc/intel_huc.c        |   3 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  67 +--------
 drivers/gpu/drm/i915/gt/uc/intel_uc.h         |  25 ++++
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  11 --
 .../{intel_wopcm.c => gt/uc/intel_uc_wopcm.c} | 141 ++++++++++++------
 drivers/gpu/drm/i915/i915_drv.c               |   2 -
 drivers/gpu/drm/i915/i915_drv.h               |   3 -
 drivers/gpu/drm/i915/i915_gem.c               |   2 +-
 drivers/gpu/drm/i915/i915_irq.c               |   4 -
 drivers/gpu/drm/i915/i915_params.h            |   2 +-
 drivers/gpu/drm/i915/intel_wopcm.h            |  60 --------
 21 files changed, 146 insertions(+), 216 deletions(-)
 rename drivers/gpu/drm/i915/{intel_wopcm.c => gt/uc/intel_uc_wopcm.c} (71%)
 delete mode 100644 drivers/gpu/drm/i915/intel_wopcm.h

-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
