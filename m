Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B85662D72F
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 10:39:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39EA910E086;
	Thu, 17 Nov 2022 09:39:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 244C910E58E
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 09:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668677985; x=1700213985;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jykjE5yIiSImOVEr9Fb2YEDG1XghqzW5FUWf7CH9PhA=;
 b=DqsjUF8QISaROBRyOLXKJwOPPtnu9nf8KMFTJ8wyfe/UyJL8J38JCVky
 9RD+nY+KPDJ1gP+VepYHZnovxPx9qRzfeZWCLak7ZKT3J+rpX0vTIAzud
 7NXSOB2oOOW2HQqFbEbG/HF1d0vzzIuLbGzgVTlt0mTKiA3PbpUl2i4n0
 3KSXJigLnlwrNxvx0kcySb8yU1KtWJxIcnMe4USlgDrq2iIcLHL+E/H8g
 cHf0IL4tFThkHwHAbl3s6JRPGgymdDbAq92ziUGP69Zqc2BQiB9XeSVAB
 5DxlSRzujGWCmMv9pDCYsMwV5e7xccqlCYa7LN5exaduhmmgSk7ScPQ7s w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="374940257"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="374940257"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 01:39:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="639741942"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="639741942"
Received: from mtolakan-mobl1.amr.corp.intel.com (HELO mtolakan-mobl1.home)
 ([10.212.14.146])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 01:39:41 -0800
From: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "intel-gfx @ lists . freedesktop . org" <intel-gfx@lists.freedesktop.org>
Date: Thu, 17 Nov 2022 01:39:19 -0800
Message-Id: <20221117093919.117556-1-madhumitha.tolakanahalli.pradeep@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dmc: Add MTL DMC firmware v2.10
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

This patch adds DMC firmware v2.10 for Meteorlake.

Release Notes:
1.DCstate residency counter
2.Traphit fix
3.LM TONEFACT fix
4.Ramp up timer fix(PFET)

Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 081a4d0083b1..bebc80aca44c 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -52,6 +52,10 @@
 
 #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
 
+#define MTL_DMC_PATH			DMC_PATH(mtl, 2, 10)
+#define MTL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 10)
+MODULE_FIRMWARE(MTL_DMC_PATH);
+
 #define DG2_DMC_PATH			DMC_PATH(dg2, 2, 07)
 #define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 07)
 MODULE_FIRMWARE(DG2_DMC_PATH);
-- 
2.38.1

