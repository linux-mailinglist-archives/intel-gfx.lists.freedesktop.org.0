Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9A760E35F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 16:32:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FB3B10E092;
	Wed, 26 Oct 2022 14:32:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B09910E276
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 14:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666794724; x=1698330724;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pV4TWwuX66MgJ+7iliEwZEi3Ql+HcyWaMSim1YoxxyY=;
 b=Ay3REaw7g2mLfBgB++x358dj9lYDSL/uYGMXEwqd72lvF2fPLZSsinD6
 F/KsWHICrMbZPD0GKmqMIGEA3GTyAV+E+Cn0jp1H01bSro1EtyTgg2/uH
 76do4wJf7ylC3HkP3q80K5bSrzMZsYT8cnaL57+sEo26oFc8uCL28oeUC
 LFIxuS5uj2NQe3a1la0e5awkV6UJ+/xBIag3CO8lvGyedz3iG/iDu9Paa
 x4oIKmlDbZjOWLl9S+Hpdx7B1ce8nppyM3IQ39e/EdR94m1oZyrXDHYiD
 cGtrn4XGPVGTaGxrQS0ChsDyPvpguS6RliI31BXtAdariMVSTqIjGoF8f A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="291262924"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="291262924"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 07:31:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="634505683"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="634505683"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga007.fm.intel.com with ESMTP; 26 Oct 2022 07:31:54 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 07:34:08 -0700
Message-Id: <20221026143409.1020496-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/1] Fix Guc-Err-Capture sizing warning
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

GuC Error capture initialization calculates an estimation
buffer size for worst case scenario of all engines getting
reset. Fix the calculation change from drm_warn to drm_dbg
since its a corner case

Changes from prior revs:
   v5: - Fixed "fixes" tag + added R-b that was received from v3.
   v3: - Rebase on latest drm-tip
   v2: - Reduce the guc-log-buffer error-capture-region allocation
         from 4MB to 1MB since the corrected math uncovers the
         larger headroom available to us.
       - Modify the code comment to focus on highlighting the
         headroom we have from how min_est is caclulated.
       - Add example min-est data from real hw in the patch comment.
   v1: - Change drm_dbg to drm_warn for the case of the mis-estated
         size not being met (John Harrison).

Alan Previn (1):
  drm/i915/guc: Fix GuC error capture sizing estimation and reporting

 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 29 ++++++++++++-------
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  6 ++--
 2 files changed, 21 insertions(+), 14 deletions(-)


base-commit: 3844a56a09225527d7d9148d7e05ef5a99ac282f
-- 
2.34.1

