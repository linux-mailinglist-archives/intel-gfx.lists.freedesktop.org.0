Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 008737A25C0
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 20:31:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 439BC10E66E;
	Fri, 15 Sep 2023 18:30:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0100D10E66B;
 Fri, 15 Sep 2023 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694802654; x=1726338654;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=STKguHkp6y044N/8efM43FRY1CREuNzhIblM0QvP9Tk=;
 b=RMUWn3Sc840VJho7cPv9svyZia5zTIQkTVDnZYPGUTZOSSo4lifHllSS
 KasqSgndy3Q8p4XB7wpTsHquIK3CAuKDfGUIPNSiLbt6q9vbHFFs3KIaF
 XXu6ILlk45GaUB1R/Q9agzryqhlF2dEGu3VYW44nZeIH+suhzMH/PyvHY
 766ATCfrCrlDaR2rQSylckR5ctxaUKQwgw2zni7lE1zncIieAqEFGGZ8G
 PFuJCT1UswOqohJRexHGA1Az1AkUDXTK5PZb7Z6cC4WtTP2lE0t8h2NCT
 JMCrOSEFDO67ajwamm+ClgEDChsp/A/RbyhTyqLNwHCKedG9NevMk1ItQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="445789292"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="445789292"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 11:30:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="991949754"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="991949754"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga006.fm.intel.com with ESMTP; 15 Sep 2023 11:30:53 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 11:30:48 -0700
Message-Id: <20230915183051.1232026-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 0/3] drm/i915/pxp/mtl: Update gsc-heci cmd
 submission to align with fw/hw spec
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
Cc: dri-devel@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For MTL, update the GSC-HECI packet size and the max firmware
response timeout to match internal fw specs. Enforce setting
run-alone bit in LRC for protected contexts.

Changes from prio revs:
   v5: - PAGE_ALIGN typo fix (Alan).
       - Use macro for runalone bit (Vivaik)
       - Spec alignment with system overhead,
         increase fw timeout to 500ms (Alan)
   v4: - PAGE_ALIGN the max heci packet size (Alan).
   v3: - Patch #1. Only start counting the request completion
         timeout from after the request has started (Daniele).
   v2: - Patch #3: fix sparse warning reported by kernel test robot.
   v1: - N/A (Re-test)

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>

Alan Previn (3):
  drm/i915/pxp/mtl: Update pxp-firmware response timeout
  drm/i915/pxp/mtl: Update pxp-firmware packet size
  drm/i915/lrc: User PXP contexts requires runalone bit in lrc

 drivers/gpu/drm/i915/gt/intel_engine_regs.h   |  1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 23 +++++++++++++++++++
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c | 20 ++++++++++++++--
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.h |  6 +++++
 .../drm/i915/pxp/intel_pxp_cmd_interface_43.h |  4 ++--
 drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.h    | 10 ++++----
 6 files changed, 54 insertions(+), 10 deletions(-)


base-commit: cf1e91e884bb1113c653e654e9de1754fc1d4488
-- 
2.39.0

