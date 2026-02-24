Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MFPDtxjnWksPQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 09:39:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F1A183DE3
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 09:39:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D1C610E504;
	Tue, 24 Feb 2026 08:39:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XmWnc2cy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70A6B10E504;
 Tue, 24 Feb 2026 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771922393; x=1803458393;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M1EfgSvb1bQqWg3xZKIqJqK3buXxyFujIFlziayWl/A=;
 b=XmWnc2cyhrnOIIQwtF7ZIGWw1wfzayNZ6VCf8hOnqy5O2YqcTv0lStDS
 Q8b/F9u5MTGEgfJIQkrTSnAYlsEHD2s1Wq1r0mYZvXMFf5Dx96EB4EuPd
 L302uCPipVJCnuM6r+4OrmMsRiA45eQIVuHmUdOArhQug7jsG7XC8x2d1
 B9tn322TtDwBmZ5Qg6+8/lrOwnEWUdryR8aniMPiYzmfHR0PSY9q7rSLs
 3xOuqfpg1DLCVkYdq5pjwooY9p6gtef86bMZKnNA5qgUWvCQclhd0CFfX
 LRtVXMjSF0nYPc/9WN5KBMKWk1sPxM47toYIvAAgzp16Q7ybSZnY8y9Mv g==;
X-CSE-ConnectionGUID: zEWzhn+YTg2MueM9ZMgxMg==
X-CSE-MsgGUID: 9OijkUCTRr+NwjV1LRZJmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72995855"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="72995855"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 00:39:53 -0800
X-CSE-ConnectionGUID: natRpWH1TneeGzw4e+vDPw==
X-CSE-MsgGUID: SqqPs6m4T7Obv48/1wzGLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="214928028"
Received: from bilal-nuc7i7bnh.iind.intel.com ([10.190.239.45])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 00:39:52 -0800
From: Mohammed Bilal <mohammed.bilal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	Mohammed Bilal <mohammed.bilal@intel.com>
Subject: [PATCH v1] drm/i915/debugfs: Add i915_extended_wakeup_timeout debugfs
 entry
Date: Tue, 24 Feb 2026 14:07:34 +0530
Message-ID: <20260224083734.2947885-1-mohammed.bilal@intel.com>
X-Mailer: git-send-email 2.48.1
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mohammed.bilal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: A6F1A183DE3
X-Rspamd-Action: no action

Add debugfs interface to expose extended wakeup timeout information for
DP connectors. This shows whether a retimer is present, the
current mode (transparent vs non-transparent), and the wakeup timeout
value in milliseconds.
This helps verify whether the extended wakeup timeout is functioning
as expected.

Signed-off-by: Mohammed Bilal <mohammed.bilal@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 2614c4863c87..292ee71643da 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1310,6 +1310,78 @@ static const struct file_operations i915_joiner_fops = {
 	.write = i915_joiner_write
 };
 
+static int i915_extended_wakeup_timeout_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = m->private;
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_encoder *encoder = intel_attached_encoder(connector);
+	struct intel_dp *intel_dp;
+	bool retimer_present = false;
+	bool transparent_mode = true;
+	int wakeup_timeout_ms = 1;
+	int lttpr_count;
+	u8 val;
+	int ret;
+
+	if (!encoder)
+		return -ENODEV;
+
+	ret = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (ret)
+		return ret;
+	if (connector->base.status != connector_status_connected) {
+		ret = -ENODEV;
+		goto out;
+	}
+
+	intel_dp = enc_to_intel_dp(encoder);
+	lttpr_count = drm_dp_lttpr_count(intel_dp->lttpr_common_caps);
+	retimer_present = (lttpr_count > 0);
+	transparent_mode = intel_dp_lttpr_transparent_mode_enabled(intel_dp);
+
+	if (transparent_mode) {
+		ret = drm_dp_dpcd_read_data(&intel_dp->aux,
+					    DP_EXTENDED_DPRX_SLEEP_WAKE_TIMEOUT_REQUEST,
+					    &val, 1);
+		if (!ret) {
+			static const u8 timeout_mapping[] = {
+				[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_1_MS] = 1,
+				[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_20_MS] = 20,
+				[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_40_MS] = 40,
+				[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_60_MS] = 60,
+				[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_80_MS] = 80,
+				[DP_DPRX_SLEEP_WAKE_TIMEOUT_PERIOD_100_MS] = 100,
+			};
+
+			if (val < ARRAY_SIZE(timeout_mapping) && timeout_mapping[val])
+				wakeup_timeout_ms = timeout_mapping[val];
+		}
+	} else {
+		ret = drm_dp_dpcd_read_data(&intel_dp->aux,
+					    DP_PHY_REPEATER_EXTENDED_WAIT_TIMEOUT,
+					    &val, 1);
+
+		if (!ret) {
+
+			int timeout_val = val & DP_EXTENDED_WAKE_TIMEOUT_REQUEST_MASK;
+
+			wakeup_timeout_ms = timeout_val ? (timeout_val * 10) : 1;
+		}
+	}
+
+	if (ret)
+		wakeup_timeout_ms = -1;
+
+	seq_printf(m, "retimer_present: %s\n", retimer_present ? "yes" : "no");
+	seq_printf(m, "mode: %s\n", transparent_mode ? "transparent" : "non-transparent");
+	seq_printf(m, "wakeup_timeout_ms: %d\n", wakeup_timeout_ms);
+
+out:
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+	return ret;
+}
+DEFINE_SHOW_ATTRIBUTE(i915_extended_wakeup_timeout);
+
 /**
  * intel_connector_debugfs_add - add i915 specific connector debugfs files
  * @connector: pointer to a registered intel_connector
@@ -1335,6 +1407,12 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	intel_dp_link_training_debugfs_add(connector);
 	intel_link_bw_connector_debugfs_add(connector);
 
+	if (DISPLAY_VER(display) >= 30 &&
+	    connector_type == DRM_MODE_CONNECTOR_DisplayPort && !connector->mst.dp) {
+		debugfs_create_file("i915_extended_wakeup_timeout", 0444, root,
+				    connector, &i915_extended_wakeup_timeout_fops);
+	}
+
 	if (DISPLAY_VER(display) >= 11 &&
 	    ((connector_type == DRM_MODE_CONNECTOR_DisplayPort && !connector->mst.dp) ||
 	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
-- 
2.48.1

