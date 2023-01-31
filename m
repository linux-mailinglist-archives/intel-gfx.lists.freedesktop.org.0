Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F5068209A
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 01:22:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE83110E304;
	Tue, 31 Jan 2023 00:21:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EBF310E297
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 00:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675124512; x=1706660512;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nlS1zY02Zy+wwzREhEXOsUaJDv0SO7LpN6bYL3MWVT8=;
 b=Y9eDsEx7ZSpoNZawq6cXcYQSjPLBv84TN6Em9IPGaRrT+DVhy6mZpqGD
 I2BHH9FXiebU+k0NSal/Si/1ShJl041LHuMyMd1lwufceAnclvnmkYzvE
 TDb/xmSDczKXvmYIjRFezaQ/jHsUA4Gi0aQVSTDQR+0EOqj6h6DyRsxZr
 58DDEUUpcCsbSbUVX2ttBL95d5htyhCO1x4QznxS64z9Y/Sd6x4pujjqS
 Aql1xLql7WviA/HhhtyoBRaeTo5p8YziNRiO4+qsANOODuCWyRXjsoSa/
 +xitlVCin9C3a513fjEWyw/FMsSL50xpP7iXRi1P2X4JE8UQ+2GJOjpqu A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="326376809"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="326376809"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 16:21:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="657648778"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="657648778"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 30 Jan 2023 16:21:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 31 Jan 2023 02:21:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Jan 2023 02:21:27 +0200
Message-Id: <20230131002127.29305-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230131002127.29305-1-ville.syrjala@linux.intel.com>
References: <20230131002127.29305-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Expose SAGV state via debugfs
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Since SAGV is controlled via unidirectional pcode commands
we have no way to query the current state. So instead let's
expose the last programmed state via debugfs. This way we
can at least know whether SAGV should be enabled or not
(which can be important to know when dealing with underruns/etc.).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |  2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  | 31 ++++++++++++++++---
 drivers/gpu/drm/i915/display/skl_watermark.h  |  2 +-
 3 files changed, 28 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 7bcd90384a46..9e2fb8626c96 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1622,7 +1622,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 	intel_dmc_debugfs_register(i915);
 	intel_fbc_debugfs_register(i915);
 	intel_hpd_debugfs_register(i915);
-	skl_watermark_ipc_debugfs_register(i915);
+	skl_watermark_debugfs_register(i915);
 }
 
 static int i915_panel_show(struct seq_file *m, void *data)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 5916694f147c..022aed8dd440 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3545,13 +3545,34 @@ static const struct file_operations skl_watermark_ipc_status_fops = {
 	.write = skl_watermark_ipc_status_write
 };
 
-void skl_watermark_ipc_debugfs_register(struct drm_i915_private *i915)
+static int intel_sagv_status_show(struct seq_file *m, void *unused)
+{
+	struct drm_i915_private *i915 = m->private;
+	static const char * const sagv_status[] = {
+		[I915_SAGV_UNKNOWN] = "unknown",
+		[I915_SAGV_DISABLED] = "disabled",
+		[I915_SAGV_ENABLED] = "enabled",
+		[I915_SAGV_NOT_CONTROLLED] = "not controlled",
+	};
+
+	seq_printf(m, "SAGV available: %s\n", str_yes_no(intel_has_sagv(i915)));
+	seq_printf(m, "SAGV status: %s\n", sagv_status[i915->display.sagv.status]);
+	seq_printf(m, "SAGV block time: %d usec\n", i915->display.sagv.block_time_us);
+
+	return 0;
+}
+
+DEFINE_SHOW_ATTRIBUTE(intel_sagv_status);
+
+void skl_watermark_debugfs_register(struct drm_i915_private *i915)
 {
 	struct drm_minor *minor = i915->drm.primary;
 
-	if (!HAS_IPC(i915))
-		return;
+	if (HAS_IPC(i915))
+		debugfs_create_file("i915_ipc_status", 0644, minor->debugfs_root, i915,
+				    &skl_watermark_ipc_status_fops);
 
-	debugfs_create_file("i915_ipc_status", 0644, minor->debugfs_root, i915,
-			    &skl_watermark_ipc_status_fops);
+	if (HAS_SAGV(i915))
+		debugfs_create_file("i915_sagv_status", 0444, minor->debugfs_root, i915,
+				    &intel_sagv_status_fops);
 }
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index 37954c472070..1f81e1a5a4a3 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -47,7 +47,7 @@ void intel_wm_state_verify(struct intel_crtc *crtc,
 void skl_watermark_ipc_init(struct drm_i915_private *i915);
 void skl_watermark_ipc_update(struct drm_i915_private *i915);
 bool skl_watermark_ipc_enabled(struct drm_i915_private *i915);
-void skl_watermark_ipc_debugfs_register(struct drm_i915_private *i915);
+void skl_watermark_debugfs_register(struct drm_i915_private *i915);
 
 void skl_wm_init(struct drm_i915_private *i915);
 
-- 
2.39.1

