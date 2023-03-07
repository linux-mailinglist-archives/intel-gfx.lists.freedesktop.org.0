Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4F96AF685
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 21:16:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B820610E552;
	Tue,  7 Mar 2023 20:16:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B283510E548
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 20:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678220178; x=1709756178;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2BnYVi9/YWKdODdxbBUPBZE6qECW9ZmSc5arohS0Ehs=;
 b=W1Ii4V4O9THexnk63a5XK8uzoG6hUvf6lDE+fmvEZ7UjC0RP0glS7KKt
 AwGJVeTsplJ/bj0ka1+55wD1pm7h52yp0rVSCX60DsiNXTDJNjDExlo0g
 Cbd37sdF2DSANgmxDUQnEU4LjpnWuqB5mFfp5at0CpIqTbo1DdHjvo7db
 1JnC8dGV0VZySVtuBysAZbrl4beVmz3c4PwlI1CTD1JgenMLS32RBAtbi
 UJPn1MBAk6MKsFLkH8mlOO7xQOEERhx1jmsIeC5E5dXAjdepmaFpkNoxS
 R1wfs7Z6X3a3OY2CFtumEkRdEwveMOIb5F7+GePt9pl/O/4yP5hbhHQZ7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="338283943"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="338283943"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 12:16:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="679085939"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="679085939"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 12:16:17 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Mar 2023 12:16:07 -0800
Message-Id: <20230307201611.773103-6-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230307201611.773103-1-umesh.nerlige.ramappa@intel.com>
References: <20230307201611.773103-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 5/9] drm/i915/perf: Fail modprobe if
 i915_perf_init fails on OOM
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

i915_perf_init can fail due to OOM. Fail driver init if i915_perf_init
fails.

v2: (Jani)
- Reorder patch in the series

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 4 +++-
 drivers/gpu/drm/i915/i915_perf.c   | 8 ++++++--
 drivers/gpu/drm/i915/i915_perf.h   | 2 +-
 3 files changed, 10 insertions(+), 4 deletions(-)

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
index 26ee8377cece..536de16b83b3 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4902,7 +4902,7 @@ static void i915_perf_init_info(struct drm_i915_private *i915)
  * Note: i915-perf initialization is split into an 'init' and 'register'
  * phase with the i915_perf_register() exposing state to userspace.
  */
-void i915_perf_init(struct drm_i915_private *i915)
+int i915_perf_init(struct drm_i915_private *i915)
 {
 	struct i915_perf *perf = &i915->perf;
 
@@ -5018,12 +5018,16 @@ void i915_perf_init(struct drm_i915_private *i915)
 		perf->i915 = i915;
 
 		ret = oa_init_engine_groups(perf);
-		if (ret)
+		if (ret) {
 			drm_err(&i915->drm,
 				"OA initialization failed %d\n", ret);
+			return ret;
+		}
 
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

