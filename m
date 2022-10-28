Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE53610F89
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 13:18:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7721810E805;
	Fri, 28 Oct 2022 11:18:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB79110E7EB
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 11:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666955905; x=1698491905;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6QoQZ67TmSm6Pet0/wbOKrqAwpGGFz3pulXzSKG4XZ4=;
 b=H873KPcsPoPa+2zGtGwi3f6ZHHuok0ek4Zp6n5WwBtrzqEDeAgP1fB3L
 gJv3VEU6ip8pRWeQa2/CZ1GdqOFiMB+Yu4c7Wlwf68MAyMjcGiAN3wDWn
 Mo0UkzwVrWGa4YKiBDyuF+qylpC7Tvyv8NdRUzM/ABbMEwAA15Tjajf21
 FHeNW78Ev0ehrMU9/oGecgypddEpxE/nv2a46nqtxsELOugHRGDQRSEXi
 ifRuHyvPFIsJE6VjnHka7lWCo8icZGPtqpfzfkzVBaojHEqdHQdDKf/7d
 vhCBMU4xcPCRHlHPCcubg0xaPdSc6QkWWAsNapUT5ooyRGkwtU9EWGVp3 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="370534676"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="370534676"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 04:18:25 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="701701544"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="701701544"
Received: from srr4-3-linux-118-swatish2.iind.intel.com ([10.223.34.130])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 04:18:24 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Oct 2022 16:49:53 +0530
Message-Id: <20221028111953.12552-9-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028111953.12552-1-swati2.sharma@intel.com>
References: <20221028111953.12552-1-swati2.sharma@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/8] drm/i915: Code styling fixes
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

Removed extra newlines and did few styling fixes.

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 1f051f74a00a..2f19a84eebfe 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1438,7 +1438,6 @@ static ssize_t wm_latency_write(struct file *file, const char __user *ubuf,
 	return len;
 }
 
-
 static ssize_t pri_wm_latency_write(struct file *file, const char __user *ubuf,
 				    size_t len, loff_t *offp)
 {
@@ -1787,13 +1786,13 @@ static ssize_t i915_dsc_fec_support_write(struct file *file,
 					  const char __user *ubuf,
 					  size_t len, loff_t *offp)
 {
-	bool dsc_enable = false;
-	int ret;
 	struct drm_connector *connector =
 		((struct seq_file *)file->private_data)->private;
 	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	bool dsc_enable = false;
+	int ret;
 
 	if (len == 0)
 		return 0;
@@ -1810,6 +1809,7 @@ static ssize_t i915_dsc_fec_support_write(struct file *file,
 	intel_dp->force_dsc_en = dsc_enable;
 
 	*offp += len;
+
 	return len;
 }
 
-- 
2.25.1

