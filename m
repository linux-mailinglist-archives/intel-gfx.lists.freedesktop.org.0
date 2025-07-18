Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AF3B0A094
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 12:26:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C69810E948;
	Fri, 18 Jul 2025 10:26:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j6iFvhXV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B6A610E948
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 10:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752834400; x=1784370400;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qPs6YHnTMI4zlY4aFrEfexSbUIJVOa/GoFWtxiwHPIM=;
 b=j6iFvhXVvGy+/bOjgMXhi4vHKosD/jGh1bFc3PEt0mpOPhJ5XWK1sUcc
 FO/6/DiV8/hr9/gG+lv+W44d8yZFx+2/FsDYRT3mCVboal9tTQTvV1qJS
 4G2uBBOmxTxeU5FenduqKT6ve7MjLNJtbBrRmPexw8XZPyzHDLf1D1IM6
 Pmy84h9ftL230ASN5H+ipOE4v6+XB4oZDQmurSMd7IozEk09W83ezoZ+W
 +rZW0WMbE5PwnBVfuczAo1XEXPSxblbZhwob7wdc+M+VX7Wiv7U8vcF5+
 WwjuR/FZS9LWLHzzX3uRtkHG/3gWg+v6vWKY5K+v28QMJZbAN/xUEj0AQ A==;
X-CSE-ConnectionGUID: ggGpYcOfTSOISFmDY3zmsQ==
X-CSE-MsgGUID: 5Vtb6KRvQB+DlY/2m36otA==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="58905471"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="58905471"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 03:26:39 -0700
X-CSE-ConnectionGUID: 6PytNUB5RAq6p4cpcASaMg==
X-CSE-MsgGUID: j+AfxLGEQLKa2N/6e9jwNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="158372359"
Received: from nitin-super-server.iind.intel.com ([10.190.238.72])
 by fmviesa009.fm.intel.com with ESMTP; 18 Jul 2025 03:26:37 -0700
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: andi.shyti@intel.com,
	Nitin Gote <nitin.r.gote@intel.com>
Subject: [PATCH] iosys-map: Fix undefined behavior in iosys_map_clear()
Date: Fri, 18 Jul 2025 16:20:51 +0530
Message-Id: <20250718105051.2709487-1-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
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

The current iosys_map_clear() implementation reads the potentially
uninitialized 'is_iomem' boolean field to decide which union member
to clear. This causes undefined behavior when called on uninitialized
structures, as 'is_iomem' may contain garbage values like 0xFF.

UBSAN detects this as:
    UBSAN: invalid-load in include/linux/iosys-map.h:267
    load of value 255 is not a valid value for type '_Bool'

Fix by unconditionally clearing the entire structure with memset(),
eliminating the need to read uninitialized data and ensuring all
fields are set to known good values.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14639
Fixes: 01fd30da0474 ("dma-buf: Add struct dma-buf-map for storing struct dma_buf.vaddr_ptr")
Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 include/linux/iosys-map.h | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/include/linux/iosys-map.h b/include/linux/iosys-map.h
index 4696abfd311c..3e85afe794c0 100644
--- a/include/linux/iosys-map.h
+++ b/include/linux/iosys-map.h
@@ -264,12 +264,7 @@ static inline bool iosys_map_is_set(const struct iosys_map *map)
  */
 static inline void iosys_map_clear(struct iosys_map *map)
 {
-	if (map->is_iomem) {
-		map->vaddr_iomem = NULL;
-		map->is_iomem = false;
-	} else {
-		map->vaddr = NULL;
-	}
+	memset(map, 0, sizeof(*map));
 }
 
 /**
-- 
2.25.1

