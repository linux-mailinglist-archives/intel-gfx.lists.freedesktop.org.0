Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF958180AE4
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 22:52:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2DD56E3BC;
	Tue, 10 Mar 2020 21:52:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B45A6E3BC
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 21:52:17 +0000 (UTC)
Received: from bell.riseup.net (unknown [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 48cTDv1DSDzFf5Q;
 Tue, 10 Mar 2020 14:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1583876783; bh=Em3LQ/i9qE+XviHhjKpHAV1sZpQvpkA6BrliyYuH/uc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=a5msvmkcIO57AAGJc89+HHSxVg2LIbloDxw/HvHznTUtSxduq7znS+NRbCQzRXf8N
 84+oHm3B93XfbIv96eOdF3rcZDbFi1o3EAXlYfNtyfjQhv69SQRS6BPriZZgiaNjdR
 5TptE3BvJsn21dZ6at3kNt6pbEjeLoAOPwj3pKKA=
X-Riseup-User-ID: 583ABCE62A94267CFC14F2494EA6EFFB9D4D6D5C94C1D8E07D8BB2D22A43EFE3
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 48cTDt6PcMzJrlc;
 Tue, 10 Mar 2020 14:46:22 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: linux-pm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 14:41:56 -0700
Message-Id: <20200310214203.26459-4-currojerez@riseup.net>
In-Reply-To: <20200310214203.26459-1-currojerez@riseup.net>
References: <20200310214203.26459-1-currojerez@riseup.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/10] OPTIONAL: drm/i915: Expose PM QoS control
 parameters via debugfs.
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, "Pandruvada,
 Srinivas" <srinivas.pandruvada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Francisco Jerez <currojerez@riseup.net>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 69 +++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 8f2525e4ce0f..e5c27b9302d9 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1745,6 +1745,72 @@ static const struct file_operations i915_guc_log_relay_fops = {
 	.release = i915_guc_log_relay_release,
 };
 
+static int
+i915_rf_qos_delay_max_ns_set(void *data, u64 val)
+{
+	struct drm_i915_private *dev_priv = data;
+
+	WRITE_ONCE(dev_priv->gt.rf_qos.delay_max_ns, val);
+	return 0;
+}
+
+static int
+i915_rf_qos_delay_max_ns_get(void *data, u64 *val)
+{
+	struct drm_i915_private *dev_priv = data;
+
+	*val = READ_ONCE(dev_priv->gt.rf_qos.delay_max_ns);
+	return 0;
+}
+
+DEFINE_SIMPLE_ATTRIBUTE(i915_rf_qos_delay_max_ns_fops,
+			i915_rf_qos_delay_max_ns_get,
+			i915_rf_qos_delay_max_ns_set, "%llu\n");
+
+static int
+i915_rf_qos_delay_slope_shift_set(void *data, u64 val)
+{
+	struct drm_i915_private *dev_priv = data;
+
+	WRITE_ONCE(dev_priv->gt.rf_qos.delay_slope_shift, val);
+	return 0;
+}
+
+static int
+i915_rf_qos_delay_slope_shift_get(void *data, u64 *val)
+{
+	struct drm_i915_private *dev_priv = data;
+
+	*val = READ_ONCE(dev_priv->gt.rf_qos.delay_slope_shift);
+	return 0;
+}
+
+DEFINE_SIMPLE_ATTRIBUTE(i915_rf_qos_delay_slope_shift_fops,
+			i915_rf_qos_delay_slope_shift_get,
+			i915_rf_qos_delay_slope_shift_set, "%llu\n");
+
+static int
+i915_rf_qos_target_hz_set(void *data, u64 val)
+{
+	struct drm_i915_private *dev_priv = data;
+
+	WRITE_ONCE(dev_priv->gt.rf_qos.target_hz, val);
+	return 0;
+}
+
+static int
+i915_rf_qos_target_hz_get(void *data, u64 *val)
+{
+	struct drm_i915_private *dev_priv = data;
+
+	*val = READ_ONCE(dev_priv->gt.rf_qos.target_hz);
+	return 0;
+}
+
+DEFINE_SIMPLE_ATTRIBUTE(i915_rf_qos_target_hz_fops,
+			i915_rf_qos_target_hz_get,
+			i915_rf_qos_target_hz_set, "%llu\n");
+
 static int i915_runtime_pm_status(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
@@ -2390,6 +2456,9 @@ static const struct i915_debugfs_files {
 #endif
 	{"i915_guc_log_level", &i915_guc_log_level_fops},
 	{"i915_guc_log_relay", &i915_guc_log_relay_fops},
+	{"i915_rf_qos_delay_max_ns", &i915_rf_qos_delay_max_ns_fops},
+	{"i915_rf_qos_delay_slope_shift", &i915_rf_qos_delay_slope_shift_fops},
+	{"i915_rf_qos_target_hz", &i915_rf_qos_target_hz_fops}
 };
 
 int i915_debugfs_register(struct drm_i915_private *dev_priv)
-- 
2.22.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
