Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EB2627DED
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 13:39:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FA7010E09F;
	Mon, 14 Nov 2022 12:39:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAA4B10E01F
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 12:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668429542; x=1699965542;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1hbxmiOGAcIQ5Mmb3PcIfD3RLQo8Va5u2Hncu8Ciwb4=;
 b=F8CIfWNXILuGkd3MnGIgGvsYxwF1aSReC9ro5CvxWBwQgdaTiMyOTHPT
 4yD/i7OQeHnr0cHBgu4o/EhptcKQ66O2VMcvkKTZnfV8bOdReVVGeHtId
 F6BvsImob8otciwj3dWS7pGgWiE3+vDOnkXU+0YU8PsM1b7X5TwO+h795
 TIG/5vsO0sBGzBUkQ6FKnDVI5mzHKoomhAAMbgdKkwo5bNr+hO+GnwNN/
 srwH6g8c0qYDHYVflvNncYDviiy5GauxgXS0A/BNC+jRRANH56CWKpILE
 6DzJNNLcM+bLIwiFseYxflWG3XXLb7zUOSjI+y1wyYYE7R1sh/pbs37pp Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="299476480"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="299476480"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:39:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="701990015"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="701990015"
Received: from anshuma1-desk.iind.intel.com ([10.190.239.112])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:39:00 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 18:08:41 +0530
Message-Id: <20221114123843.880902-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221114123843.880902-1-anshuman.gupta@intel.com>
References: <20221114123843.880902-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 1/3] lib/igt_pm: Refactor get
 firmware_node fd
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Created igt_pm_open_pci_firmware_node() to refactor
the retrieving the firmware_node fd code.

igt_pm_open_pci_firmware_node() will be used by other
firmware_node consumers.

While doing that fixed the leaked fd as well.

v2:
- return false instead of igt_require on no firmware_node_fd. [Kamil]
- use igt_assert() when failed to open 'real_power_state' on error
  other then ENONET.

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 lib/igt_pm.c | 36 +++++++++++++++++++++++++-----------
 1 file changed, 25 insertions(+), 11 deletions(-)

diff --git a/lib/igt_pm.c b/lib/igt_pm.c
index 1e6e9ed3f..4f0cfbdd1 100644
--- a/lib/igt_pm.c
+++ b/lib/igt_pm.c
@@ -863,6 +863,20 @@ bool i915_output_is_lpsp_capable(int drm_fd, igt_output_t *output)
 	return strstr(buf, "LPSP: capable");
 }
 
+static int igt_pm_open_pci_firmware_node(struct pci_device *pci_dev)
+{
+	char name[PATH_MAX];
+	int dir;
+
+	snprintf(name, PATH_MAX,
+		 "/sys/bus/pci/devices/%04x:%02x:%02x.%01x/firmware_node",
+		 pci_dev->domain, pci_dev->bus, pci_dev->dev, pci_dev->func);
+
+	dir = open(name, O_RDONLY);
+
+	return dir;
+}
+
 /**
  * igt_pm_acpi_d3cold_supported:
  * @pci_dev: root port pci_dev.
@@ -873,23 +887,23 @@ bool i915_output_is_lpsp_capable(int drm_fd, igt_output_t *output)
  */
 bool igt_pm_acpi_d3cold_supported(struct pci_device *pci_dev)
 {
-	char name[PATH_MAX];
-	int dir, fd;
-
-	snprintf(name, PATH_MAX,
-		 "/sys/bus/pci/devices/%04x:%02x:%02x.%01x/firmware_node",
-		 pci_dev->domain, pci_dev->bus, pci_dev->dev, pci_dev->func);
+	int firmware_node_fd, fd;
 
-	dir = open(name, O_RDONLY);
-	igt_require(dir > 0);
+	firmware_node_fd = igt_pm_open_pci_firmware_node(pci_dev);
+	if (firmware_node_fd < 0)
+		return false;
 
 	/* BIOS need to enable ACPI D3Cold Support.*/
-	fd = openat(dir, "real_power_state", O_RDONLY);
-	if (fd < 0 && errno == ENOENT)
+	fd = openat(firmware_node_fd, "real_power_state", O_RDONLY);
+	if (fd < 0 && errno == ENOENT) {
+		close(firmware_node_fd);
 		return false;
+	}
 
-	igt_require(fd > 0);
+	igt_assert(errno > 0);
 
+	close(firmware_node_fd);
+	close(fd);
 	return true;
 }
 
-- 
2.25.1

