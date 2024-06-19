Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B10B490E260
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 06:40:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15C9D10E8BA;
	Wed, 19 Jun 2024 04:40:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bcMlGuFo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2665D10E0E6
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 04:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718772027; x=1750308027;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fXPE+j+XJvyf90JcAgLSXXhYTsT3vCHv503FnjI12Zo=;
 b=bcMlGuFovEcDJs9Shb3FdzmHYRX9/TMTlG1aPCbzmsszl8wNTbKIVosy
 q+mTQ8SCoKx0roqwZYMWrKkBFVBrI1jRqE567nXPYdmxG895ozT9abAk7
 zQxs76GsMpFIiPzXoXCx8wQWgwqH0o8bnfKkKbXAgVmkAqHk7gOr2R8D5
 4A85i19RUWosBDhmSNAnZhMApx0LdCpwSyV26aDdTm9i8sE3gPi0XCi9v
 QctNCI0EFTUs07aK3xAZyTnzPyZ01UvtSqLeiIk12BJr5CoWuNF6hNEZL
 pW7a3QzaxMKaPN2TyVs8pJfJb6pe2nRFkEmZkciRQfGni1ZVDZ5gxLiyN A==;
X-CSE-ConnectionGUID: nHyFkwviQTKkWpdw3H/6ww==
X-CSE-MsgGUID: ggUeMwHqRAGTfbBUuf2fdw==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="27106536"
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="27106536"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 21:40:27 -0700
X-CSE-ConnectionGUID: n6vLHUx+QYakaWIt9gy6Kg==
X-CSE-MsgGUID: 04YYGs2HQyOvqmisEI3y/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="46163359"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa003.fm.intel.com with ESMTP; 18 Jun 2024 21:40:25 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, arun.r.murthy@intel.com, jouni.hogander@intel.com,
 jani.nikula@linux.intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/psr: Add return bool value for hsw_activate_psr1
Date: Wed, 19 Jun 2024 10:07:55 +0530
Message-ID: <20240619043756.2068376-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240619043756.2068376-1-suraj.kandpal@intel.com>
References: <20240619043756.2068376-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Convert hsw_activate_psr1 from void to bool as going forward
there is a chance psr1 is not enabled.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 920186c2264d..080bf5e51148 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -808,7 +808,7 @@ static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
 	return idle_frames;
 }
 
-static void hsw_activate_psr1(struct intel_dp *intel_dp)
+static bool hsw_activate_psr1(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
@@ -836,6 +836,8 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
 
 	intel_de_rmw(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder),
 		     ~EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK, val);
+
+	return true;
 }
 
 static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp)
@@ -1560,6 +1562,7 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
+	bool ret = true;
 
 	drm_WARN_ON(&dev_priv->drm,
 		    transcoder_has_psr2(dev_priv, cpu_transcoder) &&
@@ -1578,9 +1581,9 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 	else if (intel_dp->psr.sel_update_enabled)
 		hsw_activate_psr2(intel_dp);
 	else
-		hsw_activate_psr1(intel_dp);
+		ret = hsw_activate_psr1(intel_dp);
 
-	intel_dp->psr.active = true;
+	intel_dp->psr.active = ret;
 }
 
 static u32 wa_16013835468_bit_get(struct intel_dp *intel_dp)
-- 
2.43.2

