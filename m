Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BAA720C19
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Jun 2023 00:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34F0210E0D9;
	Fri,  2 Jun 2023 22:55:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EA9510E0D9
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 22:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685746549; x=1717282549;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=V/n5pmchwVKdxzO5E3muKa53dT2TLcvdKIT0Vue/1tg=;
 b=Ss7iDYOAews/OA9W6Po3XW1m1vCxepHmu6jj7v5Qx8aG3PSxZlQcoOwq
 DIb4FpA38uJbz6y5BVxF4fS1f9JHmh3ta7POzJwnMDoCVXScXhbEcpRbX
 ULzroL6bh1jC7W/JjN2N8p6bKaemkbRz84aATA/ta0u9g78znmwqRF3OQ
 lq/mCDdyCHMkBcDq1iVbr2c/FfHeTuzIGQEWikUAca3gX6JEt99HguE2l
 8O1EQwEZJlONaSz1Q6y3zT1ekFqW1ugnElmbyf4iw3HAnyK3ogYevtt1K
 W6XmfKpvRBb+KRji3z5CpZgaLbgnfAFSwXICiEVHEAusB7TQ90odGGHdP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="354840855"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="354840855"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 15:55:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="658421592"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="658421592"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 15:55:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Jun 2023 15:55:38 -0700
Message-Id: <20230602225538.1255278-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Extend Wa_14015795083 platforms
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This workaround was already implemented for DG2, PVC, and some steppings
of MTL, but the workaround database has now been updated to extend this
workaround to TGL, RKL, DG1, and ADL.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 4d2dece96011..95d6f23b2605 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1485,6 +1485,9 @@ gen12_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 
 	/* Wa_14011059788:tgl,rkl,adl-s,dg1,adl-p */
 	wa_mcr_write_or(wal, GEN10_DFR_RATIO_EN_AND_CHICKEN, DFR_DISABLE);
+
+	/* Wa_14015795083 */
+	wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
 }
 
 static void
-- 
2.40.1

