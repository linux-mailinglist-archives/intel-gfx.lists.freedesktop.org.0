Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9414E6972E2
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 01:54:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDA8A10E10B;
	Wed, 15 Feb 2023 00:54:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E03AC10E10B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 00:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676422460; x=1707958460;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QcKsdoptDrJqrihqTlAIAS3FXBjVmoCiWjnM6pXa5kI=;
 b=cX1Eg8uTHQotIvsHhN56ehdOXlJq+Cdy2zLSi4QhWUEpbJ14r+iB5C6O
 7tm/7uooMayhcOVA0keyNCTmruo7+iYN74BrglFYgW+ydzF+S6DVWXo1W
 buL1us202NV6RB+//D9rYrtJAnbygBLHX5misQqxWxsYnbxzvhNKrXbeF
 LH42hUdLqOKmhfQr2lDa3RDxIdso8bfKYq6ZQyZTYHzmdV8snI40ZotHI
 YXGEm7Ss7cXVYIAswPZWscnZ3luvQPJyBZOaMob0QwSUEGLTZM+/PjY82
 RChJN4wuclYMdIVuPp5KDDN4MpHcmVwEv+rv1f8CEXadMDn+ojvBCaTj4 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="417536039"
X-IronPort-AV: E=Sophos;i="5.97,298,1669104000"; d="scan'208";a="417536039"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 16:54:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="914951622"
X-IronPort-AV: E=Sophos;i="5.97,298,1669104000"; d="scan'208";a="914951622"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 16:54:20 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 16:54:14 -0800
Message-Id: <20230215005419.2100887-5-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
References: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/9] drm/i915/perf: Fail modprobe if
 i915_perf_init fails
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Check for return value from i915_perf_init and fail driver init if perf
init fails.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 4 +++-
 drivers/gpu/drm/i915/i915_perf.c   | 4 +++-
 drivers/gpu/drm/i915/i915_perf.h   | 2 +-
 3 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 0c0ae3eabb4b..998ca41c9713 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -477,7 +477,9 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	if (ret)
 		return ret;
 
-	i915_perf_init(dev_priv);
+	ret = i915_perf_init(dev_priv);
+	if (ret)
+		return ret;
 
 	ret = i915_ggtt_probe_hw(dev_priv);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 0b2097ad000e..e134523576f8 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4845,7 +4845,7 @@ static void i915_perf_init_info(struct drm_i915_private *i915)
  * Note: i915-perf initialization is split into an 'init' and 'register'
  * phase with the i915_perf_register() exposing state to userspace.
  */
-void i915_perf_init(struct drm_i915_private *i915)
+int i915_perf_init(struct drm_i915_private *i915)
 {
 	struct i915_perf *perf = &i915->perf;
 
@@ -4962,6 +4962,8 @@ void i915_perf_init(struct drm_i915_private *i915)
 
 		oa_init_supported_formats(perf);
 	}
+
+	return 0;
 }
 
 static int destroy_config(int id, void *p, void *data)
diff --git a/drivers/gpu/drm/i915/i915_perf.h b/drivers/gpu/drm/i915/i915_perf.h
index f96e09a4af04..253637651d5e 100644
--- a/drivers/gpu/drm/i915/i915_perf.h
+++ b/drivers/gpu/drm/i915/i915_perf.h
@@ -18,7 +18,7 @@ struct i915_oa_config;
 struct intel_context;
 struct intel_engine_cs;
 
-void i915_perf_init(struct drm_i915_private *i915);
+int i915_perf_init(struct drm_i915_private *i915);
 void i915_perf_fini(struct drm_i915_private *i915);
 void i915_perf_register(struct drm_i915_private *i915);
 void i915_perf_unregister(struct drm_i915_private *i915);
-- 
2.36.1

