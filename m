Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 816AB5F391E
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 00:33:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 369EF10E507;
	Mon,  3 Oct 2022 22:33:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAE9D10E507
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 22:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664836403; x=1696372403;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iNMUyjgWSR/Z6ualcdN94Rp15jQ6e/RU/bK81gbX2wM=;
 b=R/yLDYpOr12oLzIA8Gv8q0V+UHK7Z07T5tihrYSbc7pX0Gc5Y0gvIinW
 bUKO+9xmCZXsODRzUlV99v3TuyLxZJ1RR7IVgdg8dDz5N+U1mhKggVwYq
 Q7DdBK5O/cN9ZmskuIhryu0dH6cvfaCtq4tqSttWPNgUHa1okiRWXewiR
 QPmmg4a8XNzA/ReQxVKzGaqTElG0EzAbSwXsmGLgWrbC6t5LPUfao401e
 m6Cyq2UJtqeKHYz9F++Em0uP65bIYmaTdAh5yNlQLT4W6oFwVZSaeO9kh
 7RzxDanr8Vuj05/tcB4DrY51dzk1y19GyfNirN9TU1+F/2+QHVeogNYbE g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="285967357"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="285967357"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 15:33:23 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="692262846"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="692262846"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 15:33:21 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Oct 2022 00:32:57 +0200
Message-Id: <20221003223258.2650934-4-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003223258.2650934-1-andrzej.hajda@intel.com>
References: <20221003223258.2650934-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: refactor intel_uncore_rmw
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Two small changes in intel_uncore_rmw will allow to use it more broadly:
- write register unconditionally, for use with latch registers,
- return old value of the register, IRQ cleanup and similar.

If we really want to keep write-only-if-changed feature maybe other
helper will be more suitable for it, intel_uncore_rmw name suggests
unconditional write.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 7e1b3b89f68959..5449146a06247c 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -433,15 +433,15 @@ intel_uncore_read64_2x32(struct intel_uncore *uncore,
 #define intel_uncore_write64_fw(...) __raw_uncore_write64(__VA_ARGS__)
 #define intel_uncore_posting_read_fw(...) ((void)intel_uncore_read_fw(__VA_ARGS__))
 
-static inline void intel_uncore_rmw(struct intel_uncore *uncore,
-				    i915_reg_t reg, u32 clear, u32 set)
+static inline u32 intel_uncore_rmw(struct intel_uncore *uncore,
+				   i915_reg_t reg, u32 clear, u32 set)
 {
 	u32 old, val;
 
 	old = intel_uncore_read(uncore, reg);
 	val = (old & ~clear) | set;
-	if (val != old)
-		intel_uncore_write(uncore, reg, val);
+	intel_uncore_write(uncore, reg, val);
+	return old;
 }
 
 static inline void intel_uncore_rmw_fw(struct intel_uncore *uncore,
-- 
2.34.1

