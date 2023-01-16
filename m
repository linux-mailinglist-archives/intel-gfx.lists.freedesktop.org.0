Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4431E66BDA8
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jan 2023 13:18:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23C7210E3EB;
	Mon, 16 Jan 2023 12:18:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9CAF10E3E4;
 Mon, 16 Jan 2023 12:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673871511; x=1705407511;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+W1tKvCJ6wirX6BdOC8GKF6EZDRt5lgzvf41l8pYz+I=;
 b=XHp2GxVzoaEcppcjGu9MzzdG5GHv/M0ToTe7dANoN6nX52/ucjJToL0q
 R7guu35lVbSHpPH6EiQA/gonE8EkLlph63SNrEd4zTDKnJZTf2R9oZU1n
 wxhR7CptgFZVfcIygdAoWJaW5fBZ0fs4Iky6tpEd3xnMPMJY526U0QO7r
 ZQJcT7mKngsAi/SkxoWPMG7JjPFjx6bF+6sDGp7qDhFP4a9y//aqWDUcZ
 hceanqZZYTpHJAEwibb8KcN924nmCVw7t9SuAxpAf3fQMfo8Jt5rTuFg8
 GkpdKoT00pbGXSBSU1qwKM2V3Zo/E/1c6yJw7lNq1Q0LMEVnF17l4TYem w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="386795093"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="386795093"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 04:18:31 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="691232297"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="691232297"
Received: from amakarev-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.13.137])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 04:18:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Jan 2023 14:18:19 +0200
Message-Id: <e7e2a33f2cd65e50e5a726d7804bd79804f93475.1673871359.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1673871359.git.jani.nikula@intel.com>
References: <cover.1673871359.git.jani.nikula@intel.com>
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
Cc: jani.nikula@intel.com, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a shared abstraction for the INTEL_VGA_DEVICE() and
INTEL_QUANTA_VGA_DEVICE() initializers to help follow-up changes.

Sprinkle in some underscores and parenthesis to be safe.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 include/drm/i915_pciids.h | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 4a4c190f7698..0987bc12476f 100644
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
+		(unsigned long)(__info),				\
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
2.34.1

