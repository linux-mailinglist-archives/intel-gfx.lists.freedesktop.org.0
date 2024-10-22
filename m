Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C09A9A9EBC
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 11:42:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B35B110E640;
	Tue, 22 Oct 2024 09:42:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JlthCzAQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6F4E10E63F;
 Tue, 22 Oct 2024 09:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729590126; x=1761126126;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G+GJmkZ1BAJDcBlXpZl3rT+18xQfIIbo7g6/yTLf9xs=;
 b=JlthCzAQv2azCup+05fENyaA/Kt1iGzzMvnHMwTPE77ZjzcW3QaRcYPA
 6CcDb5x0NHRKM1O9wUwSj2bgVgPSzAQM2r6ZybcSieJPC8kwkZfsazbC0
 FpRpHtBnP0cTYwOPTd42lnLhNTdFzq5BXvAXXgafIrKWWxvxikn0iazN6
 MaKqSgjNfFb5rWOrr1wd49sAM2qLbeVYECRuQVskZFuFaHSyGHtCoeLC6
 BY7RKMGHkNR/uFrGQx0Q2m88MqOeb9Bm9BWJbI8hMl61MJh+V5nVXjkEr
 LvGe6DEQTvB6JyfQw1JwNsdy+SAmZRf5q758Exi1MULW8LvXv/6cO+h81 w==;
X-CSE-ConnectionGUID: xONeS1DoR2GnR0rc3qoxBA==
X-CSE-MsgGUID: KDqlpTe1Qxm+Q+urUKlo+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="16740007"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="16740007"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 02:42:05 -0700
X-CSE-ConnectionGUID: R1sh6ipRTLKlQ7CjGomCGw==
X-CSE-MsgGUID: O1AF0o/DRBKoktDqAhLjPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="79984851"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 02:42:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: [PATCH v2 1/3] drm/i915/pciids: add PVC PCI ID macros
Date: Tue, 22 Oct 2024 12:41:49 +0300
Message-Id: <bc62e37cbfa3ed4dbfc75a7ca69b87afae6a727b.1729590029.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729590029.git.jani.nikula@intel.com>
References: <cover.1729590029.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 include/drm/intel/i915_pciids.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pciids.h
index 6b92f8c3731b..81d4dc5d9242 100644
--- a/include/drm/intel/i915_pciids.h
+++ b/include/drm/intel/i915_pciids.h
@@ -780,6 +780,22 @@
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
2.39.5

