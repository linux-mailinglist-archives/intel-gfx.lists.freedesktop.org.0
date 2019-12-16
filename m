Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4306121972
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 19:53:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F72E6E860;
	Mon, 16 Dec 2019 18:53:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCEE26E862
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 18:53:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 10:53:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,322,1571727600"; d="scan'208";a="205207633"
Received: from linux.fm.intel.com ([10.1.27.42])
 by orsmga007.jf.intel.com with ESMTP; 16 Dec 2019 10:53:33 -0800
From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2019 10:53:32 -0800
Message-Id: <20191216185332.83289-1-venkata.s.dhanalakota@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix typecheck macro in GT_TRACE
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
Cc: chris.p.wilson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

typecheck() macro creates an huge stack size causing
issues with static analysis with coverity, addressing
this with creating a local pointer.

Fixes: 639f2f24895f ("drm/i915: Introduce new macros for tracing")
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 9d9e8831daeb..2355cf129e9c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -12,9 +12,9 @@
 
 struct drm_i915_private;
 
-#define GT_TRACE(gt__, fmt, ...) do {					\
-	typecheck(struct intel_gt, *(gt__));				\
-	GEM_TRACE("%s  " fmt, dev_name(gt->i915->drm.dev),		\
+#define GT_TRACE(gt, fmt, ...) do {					\
+	const struct intel_gt *gt__ __maybe_unused = (gt);		\
+	GEM_TRACE("%s  " fmt, dev_name(gt__->i915->drm.dev),		\
 		  ##__VA_ARGS__);					\
 } while (0)
 
-- 
2.21.0.5.gaeb582a983

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
