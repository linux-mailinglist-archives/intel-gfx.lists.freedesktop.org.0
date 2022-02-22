Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E0E4BF762
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 12:41:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EA8010E737;
	Tue, 22 Feb 2022 11:41:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D8D710E737;
 Tue, 22 Feb 2022 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645530087; x=1677066087;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FN+wIWYXEXV/7UFJu9EhHGZanN+Dq1lhK1ysv801BR8=;
 b=RA4hpkvwm+jKd+RDu3NMuH3dv9vR5r9bLgobZo2rrWpf9Q34jMiukdkj
 ZN0UhR+vCBj4zdGrChLNwgmbG5CEVth94i/o0x3icKJOpiugK9pZQ6iCp
 KgSHzC5LkyfrSQvr41AWR69Jk07heCPh7I6t4tLY4wosAscpowAT4unwv
 TA4Zmmb78cv4rvGpnYUrPu0Euhh4bRqsq6rOBBqfkgtsl7N4BBA4oj4kd
 z838uRAH5Veh746iuvH9+TfK6dbHo5lg0qZbhXnq9is22lhASR/R2ZhbM
 9dMNlUAoau0LJG+r7RaAYADzoT2KustwqlWX6DxyOWwpVORc9/tUXYL5B g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10265"; a="312412377"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="312412377"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 03:41:26 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="547708630"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.20.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 03:41:25 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 22 Feb 2022 12:41:04 +0100
Message-Id: <20220222114106.75641-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/2] lib: Use safe wrappers around
 libpciaccess initialization functions
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Multiple calls to igt functions using pci_system_init() provided by
libpciaccess result in memory leaking if not followed by its counterpart
pci_system_cleanup() before next use.  On the other hand, calling
pci_system_cleanup() can affect other users which still depend on global
data initialized by pci_system_init().

Introduce safe IGT wrappers around those libpciaccess functions and use
those wrappers in IGT library and tests.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Chris Wilson <chris.p.wilson@intel.com>
---
 lib/igt_core.c      | 20 ++++++++++++++++++++
 lib/igt_core.h      | 28 ++++++++++++++++++++++++++++
 lib/igt_device.c    |  2 +-
 lib/intel_chipset.c |  2 +-
 4 files changed, 50 insertions(+), 2 deletions(-)

diff --git a/lib/igt_core.c b/lib/igt_core.c
index ab27a24d5a..88e2f7d01e 100644
--- a/lib/igt_core.c
+++ b/lib/igt_core.c
@@ -3070,3 +3070,23 @@ err:
 
 	return -1;
 }
+
+/* IGT wrappers around libpciaccess init/cleanup functions */
+
+static void pci_system_exit_handler(int sig)
+{
+	pci_system_cleanup();
+}
+
+static void __pci_system_init(void)
+{
+	if (!igt_warn_on_f(pci_system_init(), "Could not initialize libpciaccess global data\n"))
+		igt_install_exit_handler(pci_system_exit_handler);
+}
+
+int igt_pci_system_init(void)
+{
+	static pthread_once_t pci_system_init_once_control = PTHREAD_ONCE_INIT;
+
+	return pthread_once(&pci_system_init_once_control, __pci_system_init);
+}
diff --git a/lib/igt_core.h b/lib/igt_core.h
index 0aad161da5..78dc6202ce 100644
--- a/lib/igt_core.h
+++ b/lib/igt_core.h
@@ -1452,4 +1452,32 @@ void igt_kmsg(const char *format, ...);
 
 #define for_if(expr__) if (!(expr__)) {} else
 
+/**
+ * igt_pci_system_init:
+ * IGT wrapper around pci_system_init()
+ *
+ * Runs pci_system_init() and installs pci_system_cleanup() as IGT exit handler when
+ * called first per thread, subsequent calls are noop.  Tests should use this wrapper
+ * instead of pci_system_init() to avoid memory leaking which happens each time a call
+ * to pci_system_init() is repeated not preceded by pci_system_cleanup() (may easily
+ * happen in consequence of long jumps performed by IGT flow control functions).
+ *
+ * Return value: equal return value of pthread_once() (return value of pci_system_init()
+ *		 can't be passed through pthread_once())
+ */
+int igt_pci_system_init(void);
+
+/**
+ * igt_pci_system_cleanup():
+ * IGT replacement for pci_system_cleanup()
+ *
+ * For use in IGT library and tests to avoid destroying libpciaccess global data.
+ * Direct calls to pci_system_cleanup() should be either dropped or replaced with this
+ * wrapper (for code clarity), otherwise subsequent access to libpciaccess global data
+ * may be lost unless preceded by direct call to pci_system_init() (not recommended).
+ */
+static inline void igt_pci_system_cleanup(void)
+{
+}
+
 #endif /* IGT_CORE_H */
diff --git a/lib/igt_device.c b/lib/igt_device.c
index 07bb0a0d41..c50bf4a1f7 100644
--- a/lib/igt_device.c
+++ b/lib/igt_device.c
@@ -193,7 +193,7 @@ static struct pci_device *__igt_device_get_pci_device(int fd)
 		return NULL;
 	}
 
-	if (pci_system_init()) {
+	if (igt_pci_system_init()) {
 		igt_warn("Couldn't initialize PCI system\n");
 		return NULL;
 	}
diff --git a/lib/intel_chipset.c b/lib/intel_chipset.c
index 4748a3fb85..efb6f17714 100644
--- a/lib/intel_chipset.c
+++ b/lib/intel_chipset.c
@@ -75,7 +75,7 @@ intel_get_pci_device(void)
 	struct pci_device *pci_dev;
 	int error;
 
-	error = pci_system_init();
+	error = igt_pci_system_init();
 	igt_fail_on_f(error != 0,
 		      "Couldn't initialize PCI system\n");
 
-- 
2.25.1

