Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2A44GLrxC2rnRgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:14:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EC757761C
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:14:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E21C10EA44;
	Tue, 19 May 2026 05:14:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HCE6tmP8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72CA810EA42
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2026 05:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779167670; x=1810703670;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s4W6TtJDxi+yIw7PfC9iuFF7kObjQv0FIkL7H+BuVSM=;
 b=HCE6tmP80r5Z2y/U2LEL183kQxfs8XqMa2Ux04x5spbxSK9ikLy3j+iT
 9+dXmAwACVcp1jl73AEKq0/wjqH8i6v3+PC4u23t0l0gSVcNy9f8Z2ZHz
 /kapUb6RQXEZ7WiCpvTyi/vu701v2ceTkbXJVLFDd45JBuaRd5OaOzVVZ
 zPrjrRFBkmHWt1U7F4K0PMbgdN/H00OtMJp/Gz3jJ2mnobo5MAbtsEENi
 3mVgJpYr7BP5XUCsFTNXgb9dKQGyEVmXugI800+vZpKchrw+eoXoN951j
 OlhE/GEm+1EGV16LJlWkq15iqKyunmJOqERwL8DPMmtDPjB38tPw3tczV A==;
X-CSE-ConnectionGUID: TUSgjC4JQoyFinLDR8sRJQ==
X-CSE-MsgGUID: FyFh1NlSTd6aJGoCw0qrXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="97603548"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="97603548"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:14:30 -0700
X-CSE-ConnectionGUID: MEkeH/mjSEC8+3mMDzIQxg==
X-CSE-MsgGUID: CTnjMGjXTBq2AVuekAxRhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="243635820"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 18 May 2026 22:14:28 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: mitulkumar.ajitkumar.golani@intel.com, ankit.k.nautiyal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v1 6/8] drm/i915/display: Add per-CRTC debugfs interface for
 CMRR fraction level
Date: Tue, 19 May 2026 10:33:20 +0530
Message-ID: <20260519050322.3677451-7-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20260519050322.3677451-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20260519050322.3677451-1-mitulkumar.ajitkumar.golani@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 10EC757761C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a per-CRTC debugfs entry 'vrr/cmrr_scaling' to allow reading and
writing the CMRR fraction level at runtime
for debug and testing purposes.

The file accepts three string values:
  "Low"     - Apply 1000/1001 fractional multiplier to vtotal
  "Default" - Use nominal fixed refresh rate vtotal as-is
  "High"    - Apply 1001/1000 fractional multiplier to vtotal

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |  2 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 85 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h      |  1 +
 3 files changed, 88 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 81bef000a4e3..ae698560f306 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -48,6 +48,7 @@
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 #include "intel_vdsc.h"
+#include "intel_vrr.h"
 #include "intel_wm.h"
 #include "intel_tc.h"
 
@@ -1387,6 +1388,7 @@ void intel_crtc_debugfs_add(struct intel_crtc *crtc)
 	intel_drrs_crtc_debugfs_add(crtc);
 	intel_fbc_crtc_debugfs_add(crtc);
 	hsw_ips_crtc_debugfs_add(crtc);
+	intel_vrr_crtc_debugfs_add(crtc);
 
 	debugfs_create_file("i915_current_bpc", 0444, root, crtc,
 			    &i915_current_bpc_fops);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index bbc68c614667..e31778367245 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -20,6 +20,8 @@
 #include "skl_prefill.h"
 #include "skl_watermark.h"
 
+#include "linux/debugfs.h"
+
 #define FIXED_POINT_PRECISION		100
 #define CMRR_PRECISION_TOLERANCE	10
 
@@ -1227,3 +1229,86 @@ char *intel_vrr_cmrr_level_to_string(enum cmrr_level level)
 		return "Default";
 	}
 }
+
+static int string_to_cmrr(const char *str, enum cmrr_level *level)
+{
+	if (sysfs_streq(str, "Low"))
+		*level = CMRR_LOW;
+	else if (sysfs_streq(str, "High"))
+		*level = CMRR_HIGH;
+	else if (sysfs_streq(str, "Default"))
+		*level = CMRR_DEFAULT;
+	else
+		return -EINVAL;
+
+	return 0;
+}
+
+static ssize_t cmrr_write(struct file *file,
+			  const char __user *buf,
+			  size_t count, loff_t *ppos)
+{
+	struct seq_file *s = file->private_data;
+	struct intel_crtc *crtc = s->private;
+	struct intel_crtc_state *crtc_state =
+		to_intel_crtc_state(crtc->base.state);
+	char kbuf[32];
+	enum cmrr_level level;
+	int ret;
+
+	if (count >= sizeof(kbuf))
+		return -EINVAL;
+
+	if (copy_from_user(kbuf, buf, count))
+		return -EFAULT;
+
+	kbuf[count] = '\0';
+
+	ret = string_to_cmrr(kbuf, &level);
+	if (ret)
+		return ret;
+
+	crtc_state->vrr.cmrr.level = level;
+
+	return count;
+}
+
+static int cmrr_show(struct seq_file *s, void *data)
+{
+	struct intel_crtc *crtc = s->private;
+	struct intel_crtc_state *crtc_state =
+		to_intel_crtc_state(crtc->base.state);
+
+	seq_printf(s, "%s\n", intel_vrr_cmrr_level_to_string(crtc_state->vrr.cmrr.level));
+
+	return 0;
+}
+
+static int cmrr_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, cmrr_show, inode->i_private);
+}
+
+static const struct file_operations cmrr_fops = {
+	.owner   = THIS_MODULE,
+	.open    = cmrr_open,
+	.read    = seq_read,
+	.write   = cmrr_write,
+	.llseek  = seq_lseek,
+	.release = single_release,
+};
+
+void intel_vrr_crtc_debugfs_add(struct intel_crtc *crtc)
+{
+	struct dentry *root = crtc->base.debugfs_entry;
+	struct dentry *dir;
+
+	if (!root)
+		return;
+
+	dir = debugfs_create_dir("vrr", root);
+	if (IS_ERR(dir))
+		pr_err("debugfs creation : %ld\n", PTR_ERR(dir));
+
+	debugfs_create_file("cmrr_scaling", 0600, dir, crtc, &cmrr_fops);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 86707b8af2e3..9b52a0bf0e4f 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -55,5 +55,6 @@ int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_sta
 int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state);
 int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state);
 char *intel_vrr_cmrr_level_to_string(enum cmrr_level level);
+void intel_vrr_crtc_debugfs_add(struct intel_crtc *crtc);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.48.1

