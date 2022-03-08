Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9773E4D1386
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 10:39:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2EE010E2B2;
	Tue,  8 Mar 2022 09:39:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 293BA10E2A9
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 09:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646732371; x=1678268371;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6eAE0z26kQVLsF39rjHrfTgQIOB3G7kshPQlMqjVGgY=;
 b=HMmejjXtTvWcCV3T/P/tfmozQTCv7GzmTKlFNklAPZUVSAvT4Zht4XZF
 FaRSup2MrnRAzZf/oliSIx/UaAbV9GSfiQTBH5otBNgZZUskUd85GMrF5
 87heLfPT7xTwyc7wLqsz2ti1NJuM6WTVoxeN1fgrzSrerjFJ0VEfg5CHG
 WsQGnsH80sdaIruOF7UAordORrVGepkJ3UTt4AMImPUcmJFX+WkzyD+VE
 w9hOF9keqVecxfAj0DDSS8iAtK5zFceqKoBKkcvBm86vIjxF4V+c+eeor
 f1R+MD6Oog2ETBc804g/j6wmVUUOE8N+V66BavOjoOlQ+vh7M7GTaX3XT A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="242079090"
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="242079090"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 01:38:27 -0800
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="537502153"
Received: from sseethax-mobl1.gar.corp.intel.com (HELO
 smullati-desk.gar.corp.intel.com) ([10.213.81.146])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 01:38:25 -0800
From: Mullati Siva <siva.mullati@intel.com>
To: intel-gfx@lists.freedesktop.org,
	siva.mullati@intel.com
Date: Tue,  8 Mar 2022 15:08:04 +0530
Message-Id: <20220308093805.879262-2-siva.mullati@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220308093805.879262-1-siva.mullati@intel.com>
References: <20220308093805.879262-1-siva.mullati@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] iosys-map: Add a helper for pointer
 difference
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Siva Mullati <siva.mullati@intel.com>

iosys_map_ptrdiff to get the difference in address of
same memory type.

Signed-off-by: Siva Mullati <siva.mullati@intel.com>
---
 include/linux/iosys-map.h | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/include/linux/iosys-map.h b/include/linux/iosys-map.h
index e69a002d5aa4..8987f69ec1e9 100644
--- a/include/linux/iosys-map.h
+++ b/include/linux/iosys-map.h
@@ -8,6 +8,7 @@
 
 #include <linux/io.h>
 #include <linux/string.h>
+#include <linux/types.h>
 
 /**
  * DOC: overview
@@ -208,6 +209,26 @@ static inline bool iosys_map_is_equal(const struct iosys_map *lhs,
 		return lhs->vaddr == rhs->vaddr;
 }
 
+/**
+ * iosys_map_ptrdiff - Difference of two iosys mapping addresses of same memory type
+ * @lhs:       The iosys_map structure
+ * @rhs:       A iosys_map structure to compare with
+ *
+ * Two iosys mapping structures of same memory type with the differences
+ * in address within that memory.
+ *
+ * Returns:
+ * Address difference of two memory locations with same memory type.
+ */
+static inline ptrdiff_t iosys_map_ptrdiff(const struct iosys_map *lhs,
+					  const struct iosys_map *rhs)
+{
+	if (lhs->is_iomem)
+		return lhs->vaddr_iomem - rhs->vaddr_iomem;
+	else
+		return lhs->vaddr - rhs->vaddr;
+}
+
 /**
  * iosys_map_is_null - Tests for a iosys mapping to be NULL
  * @map:	The iosys_map structure
-- 
2.33.0

