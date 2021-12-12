Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2826471B18
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Dec 2021 16:10:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2AEC10E6FB;
	Sun, 12 Dec 2021 15:10:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FBFE10E6FB;
 Sun, 12 Dec 2021 15:10:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10195"; a="324874558"
X-IronPort-AV: E=Sophos;i="5.88,200,1635231600"; d="scan'208";a="324874558"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2021 07:10:42 -0800
X-IronPort-AV: E=Sophos;i="5.88,200,1635231600"; d="scan'208";a="517444171"
Received: from nipunpan-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.53.91])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2021 07:10:38 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Sun, 12 Dec 2021 17:10:19 +0200
Message-Id: <20211212151019.117931-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 08/12] drm/i915/pxp: Use to_gt() helper
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
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 5d169624ad60..195b2323ec00 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -16,7 +16,9 @@
 
 static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
 {
-	return &kdev_to_i915(i915_kdev)->gt.pxp;
+	struct drm_i915_private *i915 = kdev_to_i915(i915_kdev);
+
+	return &to_gt(i915)->pxp;
 }
 
 static int intel_pxp_tee_io_message(struct intel_pxp *pxp,
-- 
2.34.1

