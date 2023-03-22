Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 572B56C3EEC
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 01:09:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F3E210E1D4;
	Wed, 22 Mar 2023 00:08:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32CBB10E195
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 00:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679443736; x=1710979736;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rkd+ejb+DC/J/D/KSWX74z+8FR7OvuwGuHHGULKzKVU=;
 b=VFmQ/f88dIz6ysQs9vkDNpKl0faJGbKVYKey1V3sRLsjvNReuo8qkdO4
 a+5Qy7MUIbTx5H2jAu/38/TlW/zR5JYxyXCgnOEZSPM14iM/HhJWsUAk3
 NoY92HuMFTDpFHsUZYL0yvpUNu0NFRRYiG5OhT4/LAN1dc9lHE0OiNzym
 EGxufCb6X84AwRghp/rd5zV1ZpA5lE+lxlUbqqM8jDgHZUepDcUt+AD0l
 ZAWdWHxUzKy1/BBPUO2JhTCwIsClEXincZCt6XuQVhB5mhhyfd20ZTGua
 TDh40AqIL1taqh+Gp9tDKaZPliY8QxoBPi2bouPs+y/F1qFwRqnJnbPNu Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="319476654"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="319476654"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 17:08:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="825180334"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="825180334"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 17:08:55 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Mar 2023 17:08:48 -0700
Message-Id: <20230322000854.3310481-6-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230322000854.3310481-1-umesh.nerlige.ramappa@intel.com>
References: <20230322000854.3310481-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 05/11] drm/i915/perf: Fail modprobe if
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
index da249337c23b..8dde3512d2d1 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -469,7 +469,9 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	if (ret)
 		return ret;
 
-	i915_perf_init(dev_priv);
+	ret = i915_perf_init(dev_priv);
+	if (ret)
+		return ret;
 
 	ret = i915_ggtt_probe_hw(dev_priv);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index cf4ea5e389a5..584e3e7b9e77 100644
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

