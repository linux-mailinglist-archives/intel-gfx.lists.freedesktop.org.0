Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F026761EBA5
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 08:19:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4500010E1FF;
	Mon,  7 Nov 2022 07:19:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4525E10E1FC
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 07:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667805575; x=1699341575;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wANV4QkSk1Gz3vjdgvuKdv5NVC6xKRCtxCpiN29Vk9Y=;
 b=OAHgvrFqJDstIBL7mC1m9hH/Iql+X+kYwmQgHaBo43XAhF9wJFwJ9xxF
 lb1jRZfGc0BaExZ1J7lp4GCQrf7/m4PQ6c+rd2B8y1sdnuspBgoXBoJ1R
 QcBrf2PEv7rMbUHsOeDI/XkmQLmcY71ZLOj8BkONz4s2D9XU7m1+Btajf
 kF5ngW7epvqVjncVfoASeycidjn5k2A3cSV+y4HmtJHGsG4/2J9+CaK0v
 b7BNeo+S8Wp+dryAfQQlzJx0QC3BxZ534QS8cJuKEBw+KcOE/xKDdPUyU
 Z8XlCfKdG9uKSkQDFGF0yNNs8HkIG64Lo6ObGptVElULqurJGJkKyS0PA Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="307968042"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="307968042"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2022 23:19:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="630389186"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="630389186"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga007.jf.intel.com with ESMTP; 06 Nov 2022 23:19:23 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 12:48:01 +0530
Message-Id: <20221107071801.1352870-9-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221107071801.1352870-1-suraj.kandpal@intel.com>
References: <20221107071801.1352870-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 8/8] drm/i915: Code styling fixes
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

