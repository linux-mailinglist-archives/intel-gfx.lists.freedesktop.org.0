Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A1833D8F8
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Mar 2021 17:19:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90ACF6E405;
	Tue, 16 Mar 2021 16:19:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC3D36E405;
 Tue, 16 Mar 2021 16:19:16 +0000 (UTC)
IronPort-SDR: 6oowVjn/SmIlzyjR3VevXGuouOaoYM2HEFDCbkWJUrGwZxx8VAuQNhRmqK0FkL8gVSja7YzIHJ
 eRd7LdPac3ng==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="176885372"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="176885372"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 09:18:56 -0700
IronPort-SDR: /3DqOGwpEnZpP1FuwIT83MkOqikhUkaTK5VQj7HiMbti48+NvPhQGUtUAtS/HFKHRx9fCTzYGV
 YA58lX7QCVYg==
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="412272400"
Received: from lmirensk-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.195.153])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 09:18:54 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 16 Mar 2021 16:18:39 +0000
Message-Id: <20210316161840.1993818-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210316161840.1993818-1-tvrtko.ursulin@linux.intel.com>
References: <20210316161840.1993818-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] lib: Add helper for reading modparam
 values
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Add __igt_params_get for simple reading of modparams.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 lib/igt_params.c | 26 ++++++++++++++++++++++++++
 lib/igt_params.h |  2 ++
 2 files changed, 28 insertions(+)

diff --git a/lib/igt_params.c b/lib/igt_params.c
index c06416988baa..1dc6de77b2e0 100644
--- a/lib/igt_params.c
+++ b/lib/igt_params.c
@@ -156,6 +156,32 @@ int igt_params_open(int device)
 	return params;
 }
 
+/**
+ * __igt_params_get:
+ * @device: fd of the device
+ * @parameter: the name of the parameter to set
+ *
+ * This reads the value of the modparam.
+ *
+ * Returns:
+ * A nul-terminated string, must be freed by caller after use, or NULL
+ * on failure.
+ */
+char *__igt_params_get(int device, const char *parameter)
+{
+	char *str;
+	int dir;
+
+	dir = igt_params_open(device);
+	if (dir < 0)
+		return NULL;
+
+	str = igt_sysfs_get(dir, parameter);
+	close(dir);
+
+	return str;
+}
+
 __attribute__((format(printf, 3, 0)))
 static bool __igt_params_set(int device, const char *parameter,
 			     const char *fmt, va_list ap, bool save)
diff --git a/lib/igt_params.h b/lib/igt_params.h
index bbd6f3ee6582..6494786f0696 100644
--- a/lib/igt_params.h
+++ b/lib/igt_params.h
@@ -28,6 +28,8 @@
 
 int igt_params_open(int device);
 
+char *__igt_params_get(int device, const char *parameter);
+
 __attribute__((format(printf, 3, 4)))
 bool igt_params_set(int device, const char *parameter, const char *fmt, ...);
 
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
