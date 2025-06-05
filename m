Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD4EACEDA2
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jun 2025 12:29:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7793F10E979;
	Thu,  5 Jun 2025 10:29:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IqoiK2ot";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D058F10E96B;
 Thu,  5 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749119394; x=1780655394;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mX8SGYvZ+ilqS7OcxpSK0wqi88JniMJGl0CYHP7WHX4=;
 b=IqoiK2otximcg9cjZyQKL4hjCdzFiORRhXVp/KH8NR3831MIg017DgZO
 cdqSHWJyCKxLsQbCHIaT65OosPGCX2v31nrRqv8qQsys4T9Sxy7M2BvC7
 +PWdj3OmyPf0svGlcxo8zqvFCORbG+OE62vGlZWC1wThp0uyRbmAxUm74
 z987dgUUuMQYcoENYiyvgZEFGV1yUVQGldQApOoVxp9juaSHLhaJTstia
 quvILCWWzMHptRbr3SHH+CR29r+ypTAnI0Y7ec0k/sGxEOPU70S8rkjCU
 UyY8M9e1WqLf/vbjAhjJHVofIgtwjq3itGtwkvXrfEtnkhJZf0Bq6SDSc A==;
X-CSE-ConnectionGUID: 7us0PcuEQYKK/lyglMwaKg==
X-CSE-MsgGUID: eH7jrDXhSn2AVRruKvRZXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="51378099"
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="51378099"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 03:29:54 -0700
X-CSE-ConnectionGUID: Bc91X5c9T3e+1iK8bnWYTg==
X-CSE-MsgGUID: ATAVBCSLQciPsgdRWSx6ZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="168639745"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.67])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 03:29:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com,
	rodrigo.vivi@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 2/6] drm/i915/pcode: add struct drm_device based interface
Date: Thu,  5 Jun 2025 13:29:34 +0300
Message-Id: <a40c9d61b47e4b0ebfb00c7244398d4daaecca3d.1749119274.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749119274.git.jani.nikula@intel.com>
References: <cover.1749119274.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

In preparation for dropping the dependency on struct intel_uncore from
display code, add a struct drm_device based interface to pcode.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_pcode.c | 24 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_pcode.h | 10 ++++++++++
 2 files changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index b7e9b4ee1425..81da75108c60 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -272,3 +272,27 @@ int snb_pcode_write_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u3
 
 	return err;
 }
+
+/* Helpers with drm device */
+int intel_pcode_read(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+
+	return snb_pcode_read(&i915->uncore, mbox, val, val1);
+}
+
+int intel_pcode_write_timeout(struct drm_device *drm, u32 mbox, u32 val, int timeout_ms)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+
+	return snb_pcode_write_timeout(&i915->uncore, mbox, val, timeout_ms);
+}
+
+int intel_pcode_request(struct drm_device *drm, u32 mbox, u32 request,
+			u32 reply_mask, u32 reply, int timeout_base_ms)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+
+	return skl_pcode_request(&i915->uncore, mbox, request, reply_mask, reply,
+				 timeout_base_ms);
+}
diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
index 401ce27f72d4..c91a821a88d4 100644
--- a/drivers/gpu/drm/i915/intel_pcode.h
+++ b/drivers/gpu/drm/i915/intel_pcode.h
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 
+struct drm_device;
 struct intel_uncore;
 
 int snb_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val, u32 *val1);
@@ -26,4 +27,13 @@ int intel_pcode_init(struct intel_uncore *uncore);
 int snb_pcode_read_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u32 *val);
 int snb_pcode_write_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u32 val);
 
+/* Helpers with drm device */
+int intel_pcode_read(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1);
+int intel_pcode_write_timeout(struct drm_device *drm, u32 mbox, u32 val, int timeout_ms);
+#define intel_pcode_write(drm, mbox, val) \
+	intel_pcode_write_timeout((drm), (mbox), (val), 1)
+
+int intel_pcode_request(struct drm_device *drm, u32 mbox, u32 request,
+			u32 reply_mask, u32 reply, int timeout_base_ms);
+
 #endif /* _INTEL_PCODE_H */
-- 
2.39.5

