Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5dtnLlwUVmqIywAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 12:50:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6677A753923
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 12:50:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=h8h1kXeU;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCE1610E1B3;
	Tue, 14 Jul 2026 10:50:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DFE510E500;
 Tue, 14 Jul 2026 10:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784026202; x=1815562202;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wskZvYM8YXSLGr+Q+ieWae8Y2zpq4BsbDi46wERALNI=;
 b=h8h1kXeU8rke3Nsjx5xAWNVNGcqjxzu1TvP6ejpUmULsnzIFQp20ZzOp
 m0f7eRTNai5iZIMKnP77yOvDO5eohliAo1vsMeCtTrPulFwf2bEoQ3XdF
 Y4spFFB3ECCuVqjU6LsnZllQqHxpX3HVJmxApOvlUPIxW7Smn200PGNGF
 Hay1GE97zI91DZS5/vRmbCvsfFr+Yew6sTMNaYG7Z3KrLkOgjFne9CW2m
 WFyMUTKI673qckQiCxJ1n9uGyD4L30vFVXtvedDb0cbJI2HjTNbCCJwKV
 IvMKIDMH7orfiwdywRMkqtbJU2nDJOP1QnIM66rK0m6VR/99svu8V8WV5 Q==;
X-CSE-ConnectionGUID: Aj4HIqtOStOyx5YjLLM1rw==
X-CSE-MsgGUID: iqtyU7zCQR+cpdKdgUy1nQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="88544444"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="88544444"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 03:50:02 -0700
X-CSE-ConnectionGUID: NT35g4RjTPSLYW1Pad0hBg==
X-CSE-MsgGUID: oBQdi5DOTyaYsadSP9+zFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="260134495"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa005.jf.intel.com with ESMTP; 14 Jul 2026 03:50:00 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, chaitanya.kumar.borah@intel.com
Subject: [PATCH v3 1/8] drm/i915/vrr: Add per-CRTC vrr/cmrr debugfs control
Date: Tue, 14 Jul 2026 16:09:30 +0530
Message-ID: <20260714103938.2371448-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20260714103938.2371448-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20260714103938.2371448-1-mitulkumar.ajitkumar.golani@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6677A753923

Add a per-CRTC debugfs file 'intel_vrr_cmrr' that lets the user force a
CMRR target refresh rate and video-mode requirement.

The file uses a "numerator/denominator" format:
  - numerator:   requested refresh rate in milli-Hz
                 (refresh rate in Hz * 1000, e.g. 60000 for 60 Hz)
  - denominator: 1000 for a 1:1 ratio (no video timing) or
                 1001 for the 1000/1001 video timing

Reading the file reports the currently stored values; writing updates
them. The file is created only on platforms with VRR and CMRR support.

--v2:
- Drop the "vrr" debugfs subdirectory and expose a single flat,
  intel_-prefixed "intel_vrr_cmrr" file (Jani, Nikula)
- Rename struct intel_crtc.cmrr to force_cmrr to make its purpose
  explicit (Chaitanya)
- Fix parse comment: numerator unit is milli-Hz, not KHz (Chaitanya)
- Add debugfs/intel_ prefixes to the debugfs handler functions (Chaitanya)
- Expand commit message with debugfs entry semantics (Chaitanya)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../drm/i915/display/intel_display_types.h    |   5 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 103 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h      |   2 +
 4 files changed, 112 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 3f02868ef105..2bbf4760dc30 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -49,6 +49,7 @@
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 #include "intel_vdsc.h"
+#include "intel_vrr.h"
 #include "intel_wm.h"
 #include "intel_tc.h"
 
@@ -1395,6 +1396,7 @@ void intel_crtc_debugfs_add(struct intel_crtc *crtc)
 	intel_drrs_crtc_debugfs_add(crtc);
 	intel_fbc_crtc_debugfs_add(crtc);
 	hsw_ips_crtc_debugfs_add(crtc);
+	intel_vrr_crtc_debugfs_add(crtc);
 
 	debugfs_create_file("i915_current_bpc", 0444, root, crtc,
 			    &i915_current_bpc_fops);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c048da7d6fea..84a6d016e226 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1546,6 +1546,11 @@ struct intel_crtc {
 		u64 flip_count;
 	} dc_balance;
 
+	struct {
+		u32 numerator;
+		u32 denominator;
+	} force_cmrr;
+
 	int scanline_offset;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 51e4f3309b8b..8b6e36ee9f55 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -4,6 +4,10 @@
  *
  */
 
+#include <linux/debugfs.h>
+#include <linux/seq_file.h>
+#include <linux/string.h>
+
 #include <drm/drm_print.h>
 #include <drm/intel/step.h>
 
@@ -1231,3 +1235,102 @@ int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_st
 
 	return intel_vrr_vblank_start(crtc_state, VRR_DCB_VMAX(tmp) + 1);
 }
+
+static
+int intel_vrr_cmrr_parse_ratio(char *str, u32 *numerator, u32 *denominator)
+{
+	char *sep;
+	int ret;
+
+	/*
+	 * Parse a "numerator/denominator" CMRR ratio string. The numerator
+	 * is the requested refresh rate in milli-Hz (refresh rate in Hz * 1000)
+	 * and the denominator selects the timing: 1000 for a 1:1 ratio
+	 * (no video timing) or 1001 for the 1000/1001 video timing.
+	 */
+
+	sep = strchr(str, '/');
+	if (!sep)
+		return -EINVAL;
+
+	*sep = '\0';
+
+	ret = kstrtou32(strim(str), 10, numerator);
+	if (ret)
+		return ret;
+
+	ret = kstrtou32(strim(sep + 1), 10, denominator);
+	if (ret)
+		return ret;
+
+	if (*numerator == 0)
+		return -EINVAL;
+
+	if (*denominator != 1000 && *denominator != 1001)
+		return -EINVAL;
+
+	return 0;
+}
+
+static int intel_vrr_debugfs_cmrr_show(struct seq_file *m, void *data)
+{
+	struct intel_crtc *crtc = m->private;
+
+	seq_printf(m, "%u/%u\n", crtc->force_cmrr.numerator, crtc->force_cmrr.denominator);
+
+	return 0;
+}
+
+static int intel_vrr_debugfs_cmrr_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, intel_vrr_debugfs_cmrr_show, inode->i_private);
+}
+
+static ssize_t intel_vrr_debugfs_cmrr_write(struct file *file, const char __user *ubuf,
+					    size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_crtc *crtc = m->private;
+	u32 numerator, denominator;
+	char kbuf[32];
+	int ret;
+
+	if (len >= sizeof(kbuf))
+		return -EINVAL;
+
+	if (copy_from_user(kbuf, ubuf, len))
+		return -EFAULT;
+
+	kbuf[len] = '\0';
+
+	ret = intel_vrr_cmrr_parse_ratio(kbuf, &numerator, &denominator);
+	if (ret)
+		return ret;
+
+	crtc->force_cmrr.numerator = numerator;
+	crtc->force_cmrr.denominator = denominator;
+
+	return len;
+}
+
+static const struct file_operations intel_vrr_debugfs_cmrr_fops = {
+	.owner = THIS_MODULE,
+	.open = intel_vrr_debugfs_cmrr_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+	.write = intel_vrr_debugfs_cmrr_write,
+};
+
+void intel_vrr_crtc_debugfs_add(struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	if (!HAS_VRR(display))
+		return;
+
+	if (HAS_CMRR(display))
+		debugfs_create_file("intel_vrr_cmrr", 0600, crtc->base.debugfs_entry,
+				    crtc, &intel_vrr_debugfs_cmrr_fops);
+}
+
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 55e9c429f579..19c7990be1b2 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -56,4 +56,6 @@ int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_sta
 int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state);
 int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state);
 
+void intel_vrr_crtc_debugfs_add(struct intel_crtc *crtc);
+
 #endif /* __INTEL_VRR_H__ */
-- 
2.48.1

