Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6600F627DEE
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 13:39:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0611810E0A0;
	Mon, 14 Nov 2022 12:39:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 698A510E09F
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 12:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668429545; x=1699965545;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UndTAeuBaYbQPRRfVlcPR0AdR/RepvEya6fk8aiEiH0=;
 b=l5Q1VLQxLTmOadTib/eXccpFXHmxL5o8gmkVaK8TXKCBkrOtnQjyswbd
 CaexoQI7+qyGpXMhP6TP7fn3PhE2Oo2QuTSFCV3VYP+GDfGrbhAkwXjjE
 YPjmG95bjiSlLyjAvX5LxdnN6FgeFfjwp3Pni7I7ha2DIwunXWKre3LmD
 AVJHhrkBAuRZPPz4h9UK2zQNu3NKW/wc7kyPHiGh28FfQ+3PEUYnIAaJt
 hPmuLGwhj/ZBn7S15u4CpP6S0x6/3ddFRFK4wU8UtKgslw3lWaWw5DaWy
 XPyD7ivy2HW6mIDL25oZbVUlPugFfGTOZY3GjjbiVSZTb/6y2jxE2wsTm w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="299476485"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="299476485"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:39:05 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="701990032"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="701990032"
Received: from anshuma1-desk.iind.intel.com ([10.190.239.112])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:39:02 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 18:08:42 +0530
Message-Id: <20221114123843.880902-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221114123843.880902-1-anshuman.gupta@intel.com>
References: <20221114123843.880902-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 2/3] test/device_reset: Refactor
 initiate_device_reset
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

Added a reset type enum to support multiple types
of reset like WARM, COLD and FLR reset.

No functional change.

v2:
- Removed WARM_RESET enum as not used yet. [Badal]

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 tests/device_reset.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/tests/device_reset.c b/tests/device_reset.c
index e60d4c7fd..0c477a02c 100644
--- a/tests/device_reset.c
+++ b/tests/device_reset.c
@@ -19,6 +19,11 @@ IGT_TEST_DESCRIPTION("Examine behavior of a driver on device sysfs reset");
 #define DEV_PATH_LEN 80
 #define DEV_BUS_ADDR_LEN 13 /* addr has form 0000:00:00.0 */
 
+enum reset {
+	COLD_RESET,
+	FLR_RESET
+};
+
 /**
  * Helper structure containing file descriptors
  * and bus address related to tested device
@@ -222,10 +227,13 @@ static void driver_bind(struct device_fds *dev)
 }
 
 /* Initiate device reset */
-static void initiate_device_reset(struct device_fds *dev)
+static void initiate_device_reset(struct device_fds *dev, enum reset type)
 {
 	igt_debug("reset device\n");
-	igt_assert(igt_sysfs_set(dev->fds.dev_dir, "reset", "1"));
+
+	if (type == FLR_RESET)
+		igt_assert(igt_sysfs_set(dev->fds.dev_dir, "reset", "1"));
+
 }
 
 static bool is_i915_wedged(int i915)
@@ -274,14 +282,14 @@ static void set_device_filter(const char* dev_path)
 	igt_assert_eq(igt_device_filter_add(filter), 1);
 }
 
-static void unbind_reset_rebind(struct device_fds *dev)
+static void unbind_reset_rebind(struct device_fds *dev, enum reset type)
 {
 	igt_debug("close the device\n");
 	close_if_opened(&dev->fds.dev);
 
 	driver_unbind(dev);
 
-	initiate_device_reset(dev);
+	initiate_device_reset(dev, type);
 
 	driver_bind(dev);
 }
@@ -306,13 +314,13 @@ igt_main
 	igt_describe("Unbinds driver from device, initiates reset"
 		     " then rebinds driver to device");
 	igt_subtest("unbind-reset-rebind") {
-		unbind_reset_rebind(&dev);
+		unbind_reset_rebind(&dev, FLR_RESET);
 		healthcheck(&dev);
 	}
 
 	igt_describe("Resets device with bound driver");
 	igt_subtest("reset-bound") {
-		initiate_device_reset(&dev);
+		initiate_device_reset(&dev, FLR_RESET);
 		healthcheck(&dev);
 	}
 
-- 
2.25.1

