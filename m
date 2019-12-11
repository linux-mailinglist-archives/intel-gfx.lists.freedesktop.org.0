Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D08F411B759
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 17:07:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B32846EB72;
	Wed, 11 Dec 2019 16:07:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A2A36EB72
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 16:07:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 08:07:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="414904272"
Received: from linux.fm.intel.com ([10.1.27.42])
 by fmsmga006.fm.intel.com with ESMTP; 11 Dec 2019 08:07:24 -0800
From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 08:07:24 -0800
Message-Id: <20191211160724.26467-2-venkata.s.dhanalakota@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20191211160724.26467-1-venkata.s.dhanalakota@intel.com>
References: <20191211160724.26467-1-venkata.s.dhanalakota@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Make warned variable private
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

Make each instance to report the hang only once.

Cc: Sudeep Dutt <sudeep.dutt@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h       | 2 ++
 drivers/gpu/drm/i915/i915_gpu_error.c | 3 +--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ce130e1f1e47..8e35f92f914e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1284,6 +1284,8 @@ struct drm_i915_private {
 	/* Mutex to protect the above hdcp component related values. */
 	struct mutex hdcp_comp_mutex;
 
+	bool warned;
+
 	I915_SELFTEST_DECLARE(struct i915_selftest_stash selftest;)
 
 	/*
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 8374d50c0770..ea282d9a9a3a 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1785,7 +1785,6 @@ void i915_capture_error_state(struct drm_i915_private *i915,
 			      intel_engine_mask_t engine_mask,
 			      const char *msg)
 {
-	static bool warned;
 	struct i915_gpu_state *error;
 	unsigned long flags;
 
@@ -1815,7 +1814,7 @@ void i915_capture_error_state(struct drm_i915_private *i915,
 		return;
 	}
 
-	if (!xchg(&warned, true) &&
+	if (!xchg(&i915->warned, true) &&
 	    ktime_get_real_seconds() - DRIVER_TIMESTAMP < DAY_AS_SECONDS(180)) {
 		pr_info("GPU hangs can indicate a bug anywhere in the entire gfx stack, including userspace.\n");
 		pr_info("Please file a _new_ bug report on bugs.freedesktop.org against DRI -> DRM/Intel\n");
-- 
2.21.0.5.gaeb582a983

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
