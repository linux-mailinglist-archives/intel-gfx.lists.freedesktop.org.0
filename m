Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C75A2968CB6
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 19:15:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA11C10E377;
	Mon,  2 Sep 2024 17:15:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MTHuiJXN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82C8510E376;
 Mon,  2 Sep 2024 17:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725297299; x=1756833299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/l3/1EmVkzNW8xNEbJ9nb7ebL6QBSmS1nF3xum4aTMg=;
 b=MTHuiJXNqN6S8k+LyNnkz6a0S6Uvg0Jdeh8v12OEGch1/eK6xN7lAuOu
 0KLaQiExj7Cc4McrDW4fcYoIb91d/29x+QPJxcERwOGh1703miSL6hub/
 i9YY+Auem7wTXoll0VP3JPNJzL3jte1oiOuo1+19reiyDr+81XGnuRYaw
 XqkjmaFuC8H9MKGO1IMHmTtwFd8uug5l6LpxrYJ8JmJi6+SIdKltyegir
 U+MJBWb46W7+laKX3ID5LOr6d0eaXBzMDhgOHgK6nPUcJk7pFfltewHPz
 WvUZsIJg+kWdPN6kFaBgNQCWGsN4V1ZnXInVqvBuDFpzWlKuH2k2xeL42 g==;
X-CSE-ConnectionGUID: OkxXvOXhQ9+YW5aVympoeA==
X-CSE-MsgGUID: 9Ua2PHSGTgah+9hW5SlSQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="23451216"
X-IronPort-AV: E=Sophos;i="6.10,196,1719903600"; d="scan'208";a="23451216"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 10:14:59 -0700
X-CSE-ConnectionGUID: 8+u/Xq/kTWWzlVch957NfA==
X-CSE-MsgGUID: OhAeoEJ8QsS/DYWL3paIXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,196,1719903600"; d="scan'208";a="102107309"
Received: from ltuz-desk.ger.corp.intel.com (HELO localhost) ([10.245.246.4])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 10:14:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 6/8] drm/i915/pciids: add PVC PCI ID macros
Date: Mon,  2 Sep 2024 20:14:05 +0300
Message-Id: <0333164323fb89fbd609fced76a09308138bdba4.1725297097.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725297097.git.jani.nikula@intel.com>
References: <cover.1725297097.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The xe PCI ID macros are a subset of the i915 PCI IDs macros, apart from
the PVC PCI IDs (naturally, because i915 does not and will not support
PVC). In preparation of using a shared file, add PVC PCI IDs to
i915_pciids.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 include/drm/intel/i915_pciids.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pciids.h
index cbb12fdbcb7f..25ef0a17efbe 100644
--- a/include/drm/intel/i915_pciids.h
+++ b/include/drm/intel/i915_pciids.h
@@ -779,6 +779,22 @@
 	MACRO__(0x7D60, ## __VA_ARGS__), \
 	MACRO__(0x7DD5, ## __VA_ARGS__)
 
+/* PVC */
+#define INTEL_PVC_IDS(MACRO__, ...) \
+	MACRO__(0x0B69, ## __VA_ARGS__), \
+	MACRO__(0x0B6E, ## __VA_ARGS__), \
+	MACRO__(0x0BD4, ## __VA_ARGS__), \
+	MACRO__(0x0BD5, ## __VA_ARGS__), \
+	MACRO__(0x0BD6, ## __VA_ARGS__), \
+	MACRO__(0x0BD7, ## __VA_ARGS__), \
+	MACRO__(0x0BD8, ## __VA_ARGS__), \
+	MACRO__(0x0BD9, ## __VA_ARGS__), \
+	MACRO__(0x0BDA, ## __VA_ARGS__), \
+	MACRO__(0x0BDB, ## __VA_ARGS__), \
+	MACRO__(0x0BE0, ## __VA_ARGS__), \
+	MACRO__(0x0BE1, ## __VA_ARGS__), \
+	MACRO__(0x0BE5, ## __VA_ARGS__)
+
 /* LNL */
 #define INTEL_LNL_IDS(MACRO__, ...) \
 	MACRO__(0x6420, ## __VA_ARGS__), \
-- 
2.39.2

