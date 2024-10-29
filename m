Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8839B45B5
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 10:25:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB80C10E5ED;
	Tue, 29 Oct 2024 09:25:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b7BNpOU1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27F4710E5ED
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 09:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730193947; x=1761729947;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xXiElo2ZbovN/E4RLoGHAriz/5h8t18UrSv8dOXcvmo=;
 b=b7BNpOU13f+JGEV/Vua7Rqxo3oED2UVaz64NTUf0uUaOY42wOrHD5TbN
 vy5zw7MoVQvp3u3dIdh468bBnFzlynsPmaOliOlYO+CEw1SLF8E58AsAz
 SwWYARDH+/rOTmECiNiSVggg+kpJHAdRKoH5KCQYkYhZ8GRuZe1Q7e6pi
 47n9uUvMDBu4jtWsHnTAsCWlfAKKQHve9TqHd678bnpjpy9pRZ0lzMNf7
 V4HqMgzL/cIbV8uXW+vWftcs19QY8Y9ijE/5KgtNJl1FeEz1QX6t0WBdn
 52gLtUWrppXkFDKAPzB6x7RZAJ2b9+pULwhtliOuYtKfSQmPVqjrMtVjJ g==;
X-CSE-ConnectionGUID: 01n6AgqkRDaGpihcmBHygA==
X-CSE-MsgGUID: Y0K09eCVTk6p5CpGG1nIVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="29723999"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="29723999"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 02:25:47 -0700
X-CSE-ConnectionGUID: Nm41uCsRQ3WHEs8MZuMVdQ==
X-CSE-MsgGUID: 5uPeNw2ZRgSkbsfjcKgLOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="105245201"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 02:25:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 4/4] drm/i915: hide VLV PUNIT IOSF sideband qos handling
 better
Date: Tue, 29 Oct 2024 11:25:26 +0200
Message-Id: <92632f64c1256bfafe7ebf49c1ad0618157d9484.1730193891.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730193891.git.jani.nikula@intel.com>
References: <cover.1730193891.git.jani.nikula@intel.com>
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

The sideband latency qos request is only used for VLV PUNIT
access. Abstract it better, and also add the request for VLV only.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c  |  2 --
 drivers/gpu/drm/i915/i915_drv.h     |  2 +-
 drivers/gpu/drm/i915/vlv_sideband.c | 10 ++++++++--
 3 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index c3bf7c755cb7..269233756e58 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -236,7 +236,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	intel_sbi_init(dev_priv);
 	vlv_iosf_sb_init(dev_priv);
 	mutex_init(&dev_priv->sb_lock);
-	cpu_latency_qos_add_request(&dev_priv->sb_qos, PM_QOS_DEFAULT_VALUE);
 
 	i915_memcpy_init_early(dev_priv);
 	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
@@ -294,7 +293,6 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 	vlv_suspend_cleanup(dev_priv);
 	i915_workqueues_cleanup(dev_priv);
 
-	cpu_latency_qos_remove_request(&dev_priv->sb_qos);
 	mutex_destroy(&dev_priv->sb_lock);
 	vlv_iosf_sb_fini(dev_priv);
 	intel_sbi_fini(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a73fc95762b9..c89a0cd1dc6e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -242,11 +242,11 @@ struct drm_i915_private {
 	/* VLV/CHV IOSF sideband */
 	struct {
 		struct mutex lock; /* protect sideband access */
+		struct pm_qos_request qos;
 	} vlv_iosf_sb;
 
 	/* Sideband mailbox protection */
 	struct mutex sb_lock;
-	struct pm_qos_request sb_qos;
 
 	/** Cached value of IMR to avoid reads in updating the bitfield */
 	u32 irq_mask;
diff --git a/drivers/gpu/drm/i915/vlv_sideband.c b/drivers/gpu/drm/i915/vlv_sideband.c
index ed7de9c8d0ad..114ae8eb9cd5 100644
--- a/drivers/gpu/drm/i915/vlv_sideband.c
+++ b/drivers/gpu/drm/i915/vlv_sideband.c
@@ -43,7 +43,7 @@ static void __vlv_punit_get(struct drm_i915_private *i915)
 	 * to the Valleyview P-unit and not all sideband communications.
 	 */
 	if (IS_VALLEYVIEW(i915)) {
-		cpu_latency_qos_update_request(&i915->sb_qos, 0);
+		cpu_latency_qos_update_request(&i915->vlv_iosf_sb.qos, 0);
 		on_each_cpu(ping, NULL, 1);
 	}
 }
@@ -51,7 +51,7 @@ static void __vlv_punit_get(struct drm_i915_private *i915)
 static void __vlv_punit_put(struct drm_i915_private *i915)
 {
 	if (IS_VALLEYVIEW(i915))
-		cpu_latency_qos_update_request(&i915->sb_qos,
+		cpu_latency_qos_update_request(&i915->vlv_iosf_sb.qos,
 					       PM_QOS_DEFAULT_VALUE);
 
 	iosf_mbi_punit_release();
@@ -254,10 +254,16 @@ void vlv_iosf_sb_init(struct drm_i915_private *i915)
 {
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 		mutex_init(&i915->vlv_iosf_sb.lock);
+
+	if (IS_VALLEYVIEW(i915))
+		cpu_latency_qos_add_request(&i915->vlv_iosf_sb.qos, PM_QOS_DEFAULT_VALUE);
 }
 
 void vlv_iosf_sb_fini(struct drm_i915_private *i915)
 {
+	if (IS_VALLEYVIEW(i915))
+		cpu_latency_qos_remove_request(&i915->vlv_iosf_sb.qos);
+
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 		mutex_destroy(&i915->vlv_iosf_sb.lock);
 }
-- 
2.39.5

