Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9145A1595D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 23:08:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50C7D10E345;
	Fri, 17 Jan 2025 22:08:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WhYmYvx/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18A6010E345;
 Fri, 17 Jan 2025 22:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737151692; x=1768687692;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ocG/ufTAuhKODS2avxqcULXuC65MfzY2O2gYpXa1kMc=;
 b=WhYmYvx//PPJNSSxZba2ujmYQtYdtDnmbnd5uVL66BT6vnmGF2N/PnAv
 PwPwDcqhSQflkH3xf3L8x5653S6KN78g4U7+ZL2mYbFhztfkrl5391myc
 WcAFyM833jCO/Lq26qZl9FOwyN8Pf4dpeDRmLnus+79z2x0awRKyRRao+
 NJoHdKhsr8NhkElqShDTtsWtNZ5ZweaYeaJoo3A5WMLOssnczyN8nWLG4
 eb56CLN7U5A8FhKfQ2bJtNjSlS/oIKevWvSObEOqfOMOKD4gKYg6VVAgf
 3PAQ8oNSFiE/oo4RJW4qf5dPtVhqrcffN69kG29V5n+7ghoGgfTypzRP+ A==;
X-CSE-ConnectionGUID: /2z75omvSquEym9z6Ur+eg==
X-CSE-MsgGUID: wxasIXUuTcSrLI/ao6BMGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="48188794"
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="48188794"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 14:08:11 -0800
X-CSE-ConnectionGUID: DpZXdk+fThKEbdTTyyg19Q==
X-CSE-MsgGUID: 4GYf8FFeT1asTKwF73KwoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="110915387"
Received: from inaky-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.109.126])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 14:08:11 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915/dmc_wl: Add extra_ranges debugfs
Date: Fri, 17 Jan 2025 19:06:54 -0300
Message-ID: <20250117220747.87927-4-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.0
In-Reply-To: <20250117220747.87927-1-gustavo.sousa@intel.com>
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
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

We already have a way of finding the set of untracked offsets for which
there has been one or more MMIO operations via the
"intel_dmc_wl/untracked" debugfs interface.

However, in order to try adding one or more of those registers to the
set of tracked offsets, one would need to manually change the source
code and re-compile the driver.

To make debugging easier, also add a "intel_dmc_wl/extra_ranges" debugfs
interface so that extra offsets to be tracked can be defined during
runtime, removing the need of re-compilation or even module reloading.

With "intel_dmc_wl/untracked" and "intel_dmc_wl/extra_ranges", one could
even come up with a search algorithm to find missing offsets when
debugging a failing test case in a similar fashion to git-bisect. Such
an algorithm is subject for a future tool, probably implemented in
another repository (e.g. IGT).

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   |   7 +
 .../drm/i915/display/intel_dmc_wl_debugfs.c   | 254 +++++++++++++++++-
 .../drm/i915/display/intel_dmc_wl_debugfs.h   |   7 +
 3 files changed, 267 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 3686d4e90167..c9740250be73 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -276,6 +276,13 @@ static bool intel_dmc_wl_check_range(struct intel_display *display,
 	if (ranges && intel_dmc_wl_offset_in_ranges(offset, ranges))
 		return true;
 
+	/*
+	 * Call to check extra ranges from debugfs only as last resort to avoid
+	 * taking intel_dmc_wl_dbg's spinlock.
+	 */
+	if (intel_dmc_wl_debugfs_offset_in_extra_ranges(display, offset))
+		return true;
+
 	return false;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
index 41e59d775fe5..1493d296ac98 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
@@ -3,6 +3,8 @@
  * Copyright (C) 2025 Intel Corporation
  */
 
+#include <linux/kstrtox.h>
+#include <linux/ctype.h>
 #include <linux/debugfs.h>
 
 #include <drm/drm_device.h>
@@ -13,6 +15,7 @@
 #include "intel_dmc_wl_debugfs.h"
 
 #define DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX 65536
+#define DEBUGFS_EXTRA_RANGES_MAX 255
 
 /*
  * DOC: DMC wakelock debugfs
@@ -31,7 +34,8 @@
  *   offsets to be tracked and we fail to realize that.
  *
  * To help capture these cases, we provide the intel_dmc_wl/ debugfs directory,
- * which exports a buffer of untracked register offsets.
+ * which exports a buffer of untracked register offsets and also allows extra
+ * register offsets to be tracked by the driver.
  *
  * Untracked offsets
  * -----------------
@@ -78,6 +82,43 @@
  * Once done with it, the logging can be disabled with::
  *
  *   # echo 0 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
+ *
+ * Tracking extra ranges
+ * ---------------------
+ *
+ * After looking at a list of untracked offsets via intel_dmc_wl/untracked, it
+ * is likely that one would want to check whether tracking a suspicious
+ * set of register offsets (i.e. asserting the DMC wakelock for them) would
+ * solve a bug.
+ *
+ * Instead of adding the offsets manually in the source code (which would
+ * require re-compiling and reloading the module) the intel_dmc_wl/extra_ranges
+ * debugfs interface allow defining extra ranges during runtime, which can
+ * significantly speed up debugging time.
+ *
+ * Every write to intel_dmc_wl/untracked defines a new set of ranges to be
+ * tracked. The input format is a whitespace-separated list of ranges and each
+ * range is in the format <start_offset>..<end_offset>, with ..<end_offset>
+ * being optional. Note that <end_offset> is inclusive.
+ *
+ * Examples::
+ *
+ *   # echo 0x44400..0x4440c \ # Track a single range of 4 registers
+ *      > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
+ *
+ *   # echo 0x44400..0x4440c 0x44410..0x4441c \ # Track 2 ranges
+ *      > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
+ *
+ *   # echo 0x44400 0x44410..0x4441c \ # Track a single register and 1 range
+ *      > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
+ *
+ *   # echo \ # Do not track extra ranges anymore
+ *      > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
+ *
+ * The new set of extra ranges take effect after the write operation, meaning
+ * that the next MMIOs made by the driver for registers that match those
+ * offsets will assert the wakelock (besides the offsets already hardcoded in
+ * the driver).
  */
 
 static int untracked_size_get(void *data, u64 *val)
@@ -176,6 +217,189 @@ static int untracked_show(struct seq_file *m, void *data)
 
 DEFINE_SHOW_ATTRIBUTE(untracked);
 
+static int extra_ranges_show(struct seq_file *m, void *data)
+{
+	struct intel_display *display = m->private;
+	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
+	unsigned long flags;
+
+	spin_lock_irqsave(&dbg->lock, flags);
+
+	if (!dbg->extra_ranges)
+		goto out_unlock;
+
+	for (int i = 0; dbg->extra_ranges[i].start; i++) {
+		if (dbg->extra_ranges[i].end)
+			seq_printf(m, "0x%08x..0x%08x\n",
+				   dbg->extra_ranges[i].start,
+				   dbg->extra_ranges[i].end);
+		else
+			seq_printf(m, "0x%08x\n", dbg->extra_ranges[i].start);
+	}
+
+out_unlock:
+	spin_unlock_irqrestore(&dbg->lock, flags);
+
+	return 0;
+}
+
+/*
+ * Parse *p to match the pattern <start_offset>..<end_offset> and store the
+ * offsets into *dest, if dest is not NULL.
+ *
+ * Leading whitespaces are ignored and ..<end_offset> is optional. Both offsets
+ * are expected to be expressed in hexadecimal.
+ *
+ * The pointer *p is updated to point at the next character in the string for
+ * parsing a new range.
+ *
+ * On success, 1 is returned if a valid range was found and 0 is returned if
+ * there is no range left to parse. On error, a negative error number is
+ * returned.
+ */
+static int parse_single_extra_range(struct intel_display *display,
+				    char **p,
+				    struct intel_dmc_wl_dbg_extra_range *dest)
+{
+	char c;
+	char *s;
+	char *range_substr;
+	int err;
+	u32 val;
+
+	while (isspace(**p))
+		++*p;
+
+	if (**p == '\0')
+		return 0;
+
+	range_substr = *p;
+
+	/* s is the <start_offset> substr */
+	s = *p;
+	while (!isspace(**p) && **p != '.' && **p != '\0')
+		++*p;
+	c = **p;
+	**p = '\0';
+	err = kstrtou32(s, 16, &val);
+	**p = c;
+	if (err)
+		goto out_err;
+
+	if (dest)
+		dest->start = val;
+
+	if (**p != '.') {
+		/* only the "start offset" was passed */
+		if (dest)
+			dest->end = 0;
+		return 1;
+	}
+
+	if (*(++*p) != '.') {
+		err = -EINVAL;
+		goto out_err;
+	}
+
+	/* s is the <end_offset> substr */
+	s = ++*p;
+	while (!isspace(**p) && **p != '\0')
+		++*p;
+	c = **p;
+	**p = '\0';
+	err = kstrtou32(s, 16, &val);
+	**p = c;
+	if (err)
+		goto out_err;
+
+	if (dest)
+		dest->end = val;
+
+	return 1;
+
+out_err:
+	while (!isspace(**p) && **p != '\0')
+		++*p;
+	c = **p;
+	**p = '\0';
+	drm_err(display->drm, "invalid DMC Wakelock extra range: %s\n", range_substr);
+	**p = c;
+
+	return err;
+}
+
+static struct intel_dmc_wl_dbg_extra_range *
+parse_extra_ranges(struct intel_display *display, char *s)
+{
+	struct intel_dmc_wl_dbg_extra_range *ranges;
+	char *p;
+	int num_ranges;
+	int err;
+
+	/* Do a first pass and validate everything. */
+	p = s;
+	num_ranges = 0;
+	while ((err = parse_single_extra_range(display, &p, NULL)) > 0) {
+		num_ranges++;
+		if (num_ranges > DEBUGFS_EXTRA_RANGES_MAX) {
+			drm_err(display->drm, "Too many DMC wakelock extra ranges, maximum is %d\n",
+				DEBUGFS_EXTRA_RANGES_MAX);
+			return ERR_PTR(-EINVAL);
+		}
+	}
+
+	if (err < 0)
+		return ERR_PTR(err);
+
+	/* Now allocate and do a second pass storing the parsed ranges. */
+	ranges = drmm_kmalloc_array(display->drm, num_ranges + 1, sizeof(*ranges), GFP_KERNEL);
+	if (!ranges)
+		return ERR_PTR(-ENOMEM);
+
+	p = s;
+	num_ranges = 0;
+	while (parse_single_extra_range(display, &p, &ranges[num_ranges]) > 0)
+		num_ranges++;
+
+	ranges[num_ranges].start = 0; /* Sentinel value. */
+
+	return ranges;
+}
+
+static ssize_t extra_ranges_write(struct file *file,
+				  const char __user *ubuf,
+				  size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_display *display = m->private;
+	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
+	struct intel_dmc_wl_dbg_extra_range *old_extra_ranges;
+	struct intel_dmc_wl_dbg_extra_range *new_extra_ranges;
+	unsigned long flags;
+	char *kbuf;
+
+	kbuf = memdup_user_nul(ubuf, len);
+	if (IS_ERR(kbuf))
+		return PTR_ERR(kbuf);
+
+	new_extra_ranges = parse_extra_ranges(display, kbuf);
+	kfree(kbuf);
+	if (IS_ERR(new_extra_ranges))
+		return PTR_ERR(new_extra_ranges);
+
+	spin_lock_irqsave(&dbg->lock, flags);
+	old_extra_ranges = dbg->extra_ranges;
+	dbg->extra_ranges = new_extra_ranges;
+	spin_unlock_irqrestore(&dbg->lock, flags);
+
+	if (old_extra_ranges)
+		drmm_kfree(display->drm, old_extra_ranges);
+
+	return len;
+}
+
+DEFINE_SHOW_STORE_ATTRIBUTE(extra_ranges);
+
 void intel_dmc_wl_debugfs_init(struct intel_display *display)
 {
 	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
@@ -198,6 +422,8 @@ void intel_dmc_wl_debugfs_register(struct intel_display *display)
 			    &untracked_size_fops);
 	debugfs_create_file("untracked", 0644, dir, display,
 			    &untracked_fops);
+	debugfs_create_file("extra_ranges", 0644, dir, display,
+			    &extra_ranges_fops);
 }
 
 static bool untracked_has_recent_offset(struct intel_display *display, u32 offset)
@@ -249,3 +475,29 @@ void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, u32 offse
 out_unlock:
 	spin_unlock_irqrestore(&dbg->lock, flags);
 }
+
+bool intel_dmc_wl_debugfs_offset_in_extra_ranges(struct intel_display *display, u32 offset)
+{
+	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
+	bool ret = false;
+	unsigned long flags;
+
+	spin_lock_irqsave(&dbg->lock, flags);
+
+	if (!dbg->extra_ranges)
+		goto out_unlock;
+
+	for (int i = 0; dbg->extra_ranges[i].start; i++) {
+		u32 end = dbg->extra_ranges[i].end ?: dbg->extra_ranges[i].start;
+
+		if (dbg->extra_ranges[i].start <= offset && offset <= end) {
+			ret = true;
+			goto out_unlock;
+		}
+	}
+
+out_unlock:
+	spin_unlock_irqrestore(&dbg->lock, flags);
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
index 9437c324966f..ae61217a2789 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
@@ -11,6 +11,11 @@
 
 struct intel_display;
 
+struct intel_dmc_wl_dbg_extra_range {
+	u32 start;
+	u32 end;
+};
+
 struct intel_dmc_wl_dbg {
 	spinlock_t lock; /* protects everything below */
 	struct {
@@ -20,10 +25,12 @@ struct intel_dmc_wl_dbg {
 		size_t size;
 		bool overflow;
 	} untracked;
+	struct intel_dmc_wl_dbg_extra_range *extra_ranges;
 };
 
 void intel_dmc_wl_debugfs_init(struct intel_display *display);
 void intel_dmc_wl_debugfs_register(struct intel_display *display);
 void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, u32 offset);
+bool intel_dmc_wl_debugfs_offset_in_extra_ranges(struct intel_display *display, u32 offset);
 
 #endif /* __INTEL_DMC_WL_DEBUGFS_H__ */
-- 
2.48.0

