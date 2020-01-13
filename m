Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 449F613908D
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 13:00:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53C506E05F;
	Mon, 13 Jan 2020 12:00:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC4E389C09;
 Mon, 13 Jan 2020 12:00:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 04:00:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,428,1571727600"; d="scan'208";a="243978228"
Received: from plaxmina-desktop.iind.intel.com ([10.106.124.119])
 by fmsmga001.fm.intel.com with ESMTP; 13 Jan 2020 04:00:34 -0800
From: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
To: jani.nikula@intel.com, daniel@ffwll.ch, sam@ravnborg.org,
 sudeep.dutt@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@linux.ie>
Date: Mon, 13 Jan 2020 17:25:52 +0530
Message-Id: <20200113115557.32713-2-pankaj.laxminarayan.bharadiya@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200113115557.32713-1-pankaj.laxminarayan.bharadiya@intel.com>
References: <20200113115557.32713-1-pankaj.laxminarayan.bharadiya@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/print: introduce new struct drm_device
 based WARN* macros
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
Cc: pankaj.laxminaryan.bharadiya@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add new struct drm_device based WARN* macros. These are modeled after
the core kernel device based WARN* macros. These would be preferred
over the regular WARN* macros, where possible.

These macros include device information in the backtrace, so we know
what device the warnings originate from.

Knowing the device specific information in the backtrace would be
helpful in development all around.

Signed-off-by: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
---
 include/drm/drm_print.h | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/include/drm/drm_print.h b/include/drm/drm_print.h
index 8f99d389792d..61a7224e697d 100644
--- a/include/drm/drm_print.h
+++ b/include/drm/drm_print.h
@@ -553,4 +553,34 @@ void __drm_err(const char *format, ...);
 #define DRM_DEBUG_PRIME_RATELIMITED(fmt, ...)				\
 	DRM_DEV_DEBUG_PRIME_RATELIMITED(NULL, fmt, ##__VA_ARGS__)
 
+/*
+ * struct drm_device based WARNs
+ *
+ *
+ * drm_WARN*() acts like WARN*(), but with the key difference of
+ * using device specific information so that we know from which device
+ * warning is originating from.
+ *
+ * Prefer drm_device based dev_WARN* over regular WARN*
+ */
+
+/* Helper for struct drm_device based WARNs */
+#define drm_WARN(drm, condition, format, arg...)			\
+	WARN(condition, "%s %s: " format,				\
+			dev_driver_string((drm)->dev),			\
+			dev_name((drm)->dev), ## arg)
+
+#define drm_WARN_ONCE(drm, condition, format, arg...)			\
+	WARN_ONCE(condition, "%s %s: " format,				\
+			dev_driver_string((drm)->dev),			\
+			dev_name((drm)->dev), ## arg)
+
+#define drm_WARN_ON(drm, x)						\
+	drm_WARN((drm), (x), "%s",					\
+		 "drm_WARN_ON(" __stringify(x) ")")
+
+#define drm_WARN_ON_ONCE(drm, x)					\
+	drm_WARN_ONCE((drm), (x), "%s",					\
+		      "drm_WARN_ON_ONCE(" __stringify(x) ")")
+
 #endif /* DRM_PRINT_H_ */
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
