Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB99E471B30
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Dec 2021 16:13:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CACA10F597;
	Sun, 12 Dec 2021 15:13:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04FA110F597;
 Sun, 12 Dec 2021 15:13:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10195"; a="301993386"
X-IronPort-AV: E=Sophos;i="5.88,200,1635231600"; d="scan'208";a="301993386"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2021 07:13:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,200,1635231600"; d="scan'208";a="517444539"
Received: from nipunpan-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.53.91])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2021 07:13:25 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Sun, 12 Dec 2021 17:13:21 +0200
Message-Id: <20211212151321.118168-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 10/12] drm/i915: Rename i915->gt to i915->gt0
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

In preparation of the multitile support, highlight the root GT by
calling it gt0 inside the drm i915 private data.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 902bb89f628f..059642738f6c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1005,7 +1005,7 @@ struct drm_i915_private {
 	struct i915_perf perf;
 
 	/* Abstract the submission mechanism (legacy ringbuffer or execlists) away */
-	struct intel_gt gt;
+	struct intel_gt gt0;
 
 	struct {
 		struct i915_gem_contexts {
@@ -1079,7 +1079,7 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 
 static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 {
-	return &i915->gt;
+	return &i915->gt0;
 }
 
 /* Simple iterator over all initialised engines */
-- 
2.34.1

