Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF9960DAEA
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 08:03:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB20E10E42C;
	Wed, 26 Oct 2022 06:02:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 959B710E42C
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 06:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666764172; x=1698300172;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LCHEwh/9PhYWcczjLBUDNzmaq0spsppOtra4pD+Evb0=;
 b=TosuWgPcBBbVsAiqQe1u8H0NRagcPA2EWnI2FSewd5oX9KOPl6DWz1G5
 qbyomdjaupOo9KUUOB7GJtZITrccsSRIyqmFmXprqOA2RjmP4fq1z3oFa
 4fX2zA8AOiwdfwEVBxUYrbxDxNNJNIWt2s2slM9yXug1Dz3swOK8282/1
 +L7ia3jzZ7DcTricq1q9AnlntjzQvUbgfrx22JcI10R5fgS95x8n4iJ7h
 ghFSaMpxBcuAlIQI8JZCPDepE4pFqC17KHGfKqcKsOwTYi5NMCmwEmVyd
 27NwTLsgOlRLkuKwDVus7tXAVdttkPCqF0KY1+2jIA+9WI0Z8AmAegmmk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="369934269"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; d="scan'208";a="369934269"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 23:02:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="609834785"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; d="scan'208";a="609834785"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga006.jf.intel.com with ESMTP; 25 Oct 2022 23:02:51 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Oct 2022 23:05:05 -0700
Message-Id: <20221026060506.1007830-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/1] Fix Guc-Err-Capture sizing warning
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

