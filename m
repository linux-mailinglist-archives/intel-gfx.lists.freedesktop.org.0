Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1212B61ED3E
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 09:44:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50D3610E258;
	Mon,  7 Nov 2022 08:44:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF97410E232
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 08:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667810654; x=1699346654;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wANV4QkSk1Gz3vjdgvuKdv5NVC6xKRCtxCpiN29Vk9Y=;
 b=b7M1z5wvdWsZz1WefR9f0ceORAEwhVwCm2QXNi0VAQ3PvG2hwwRHoey/
 VbfNLHMDLDDq9x9HqdX4Egni8JbHwB1Dr+/1phAspIIvtsclWE6J9sHbd
 zUKxY3FDNiaPGdW/ZoNn+K0o43tKTi36LWt/vaQOlse7rb26Xzz7FQyLI
 hpiIUA3bhuK0BP9tuOX2lma+Wq1r9LlMF47Ed48dDCY5M6CF/mDXmmRTE
 8f9EZVOJHaQcGQ6z0qBON+g2S9x0OfEzd0PJfB64Nnj35zK5tfQIiujVe
 i/Nlu5nQCs3Qm9IV4BAeEb2n614Wm/7iBHH8JQ7QHdRHfI4AP0wjDFTmh A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="311495198"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="311495198"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 00:44:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="778406288"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="778406288"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga001.fm.intel.com with ESMTP; 07 Nov 2022 00:44:12 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 14:12:58 +0530
Message-Id: <20221107084258.1353210-9-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221107084258.1353210-1-suraj.kandpal@intel.com>
References: <20221107084258.1353210-1-suraj.kandpal@intel.com>
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

From: Swati Sharma <swati2.sharma@intel.com>

Removed extra newlines and did few styling fixes.

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 2ccaf698cbfb..5e0e8d1ffadc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1438,7 +1438,6 @@ static ssize_t wm_latency_write(struct file *file, const char __user *ubuf,
 	return len;
 }
 
-
 static ssize_t pri_wm_latency_write(struct file *file, const char __user *ubuf,
 				    size_t len, loff_t *offp)
 {
@@ -1788,13 +1787,13 @@ static ssize_t i915_dsc_fec_support_write(struct file *file,
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
@@ -1811,6 +1810,7 @@ static ssize_t i915_dsc_fec_support_write(struct file *file,
 	intel_dp->force_dsc_en = dsc_enable;
 
 	*offp += len;
+
 	return len;
 }
 
-- 
2.25.1

