Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B434D5F45
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 11:19:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1128210E87C;
	Fri, 11 Mar 2022 10:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A694310E87C
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 10:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646993940; x=1678529940;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8DPa6HL78saAq7X5At5K17KtdrmP+mig2lbejOmimiM=;
 b=e6/hV6Yf8MKyy+EeayndggjfyIWeOsSceCeHrph4hhdxeHBdS73TVcOB
 mEPML9TzOXbVTiNylMAWPT8VNy5lA5NU+o4w30aydPH/2J+Wh9LMDL16D
 t+QRKHnCwYfEsXMDbGxKbIYML62LytuY8I3i7Qza1Mv4AlIQ1qLg4Mj4K
 XGPHLsJ3AEOhfC/5T/AbfO1fGHbCOthJMRwPe5HZX6wt3ZcTMJjuZfthc
 7iglDNPOiItvAEKSkRxm9MwW7inwX4kA5bheUttg9105i5D48sx5iH2Vj
 je5njJllyntwehXmumY+4crp95xEIakfipDWgJI0i/A6WVLaBKcxi2pul A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="253109323"
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="253109323"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 02:19:00 -0800
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="555248673"
Received: from cchitora-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.187])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 02:18:58 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 12:18:52 +0200
Message-Id: <20220311101854.146911-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/pciids: add common
 INTEL_VGA_DEVICE_INIT macro
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a shared abstraction for the initialization to help follow-up
changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 include/drm/i915_pciids.h | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 3609f3254f24..637333c9e1c0 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -35,17 +35,18 @@
  * Don't use C99 here because "class" is reserved and we want to
  * give userspace flexibility.
  */
-#define INTEL_VGA_DEVICE(id, info) {		\
-	0x8086,	id,				\
-	~0, ~0,					\
-	0x030000, 0xff0000,			\
-	(unsigned long) info }
-
-#define INTEL_QUANTA_VGA_DEVICE(info) {		\
-	0x8086,	0x16a,				\
-	0x152d,	0x8990,				\
-	0x030000, 0xff0000,			\
-	(unsigned long) info }
+#define INTEL_VGA_DEVICE_INIT(__id, __subvendor, __subdevice, __info) { \
+		0x8086, (__id),						\
+		(__subvendor), (__subdevice),				\
+		0x030000, 0xff0000,					\
+		(kernel_ulong_t)(__info),				\
+	}
+
+#define INTEL_VGA_DEVICE(__id, __info)			\
+	INTEL_VGA_DEVICE_INIT(__id, ~0, ~0, __info)
+
+#define INTEL_QUANTA_VGA_DEVICE(__info)				\
+	INTEL_VGA_DEVICE_INIT(0x16a, 0x152d, 0x8990, __info)
 
 #define INTEL_I810_IDS(info)					\
 	INTEL_VGA_DEVICE(0x7121, info), /* I810 */		\
-- 
2.30.2

