Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 529B14693E0
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Dec 2021 11:29:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DB0D7B146;
	Mon,  6 Dec 2021 10:21:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3FC36F56B;
 Mon,  6 Dec 2021 00:50:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10189"; a="217908759"
X-IronPort-AV: E=Sophos;i="5.87,290,1631602800"; d="scan'208";a="217908759"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2021 16:50:19 -0800
X-IronPort-AV: E=Sophos;i="5.87,290,1631602800"; d="scan'208";a="599102461"
Received: from etrosmax-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.249.32.248])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2021 16:50:15 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Mon,  6 Dec 2021 02:48:58 +0200
Message-Id: <20211206004901.69729-9-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211206004901.69729-1-andi.shyti@linux.intel.com>
References: <20211206004901.69729-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 08/11] drm/i915/pxp: Use to_gt() helper
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use to_gt() helper consistently throughout the codebase.
Pure mechanical s/i915->gt/to_gt(i915). No functional changes.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 5d169624ad60..726c2b5a3fa3 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -14,9 +14,11 @@
 #include "intel_pxp_tee.h"
 #include "intel_pxp_tee_interface.h"
 
-static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
+static  struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
 {
-	return &kdev_to_i915(i915_kdev)->gt.pxp;
+	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
+
+	return &to_gt(i915)->pxp;
 }
 
 static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
-- 
2.34.1

