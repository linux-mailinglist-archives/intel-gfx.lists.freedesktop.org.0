Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C899ECBCC
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 13:17:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76D5210E617;
	Wed, 11 Dec 2024 12:17:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fflWLNWG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B283C10E617
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 12:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733919439; x=1765455439;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BnU0Ig2aKK6//CMdIJ3Vh0eB56DEBw++Kl2LakZF5ws=;
 b=fflWLNWGXAJxjB9IVj2EM1rKsfUO3ziwXxygVSMIlneX/jZ/ke9EGvKn
 MpDEi02csxfuY7Vy4/TDAugDEtYHFd3jpgAmFX/ReuWgRE+sAhLIO6Pa8
 yS+PMuU0FACq5uLFmXfmHXQAhMWbDEAFW+cHmXzdkvwC0+N2YaxBHDo7r
 /rl5sSoSmAL/fY8QLausEslB3Z7UZYJfterevV5uQ93jWh16F0klua9XY
 Mvfs9OqmPpBhDSl2DXD8x6u7i2TmDbLndtol3kk8Bqbvfj3tRhb3p2p5A
 549uu3bNRiP5Xu/vvsyI91Q3ItJc18oJH4CZ/1O7vayRJTOeS4Kbm+qW3 A==;
X-CSE-ConnectionGUID: Oxq0QEFsQbe7YNytouvl9Q==
X-CSE-MsgGUID: C3uhWQ6/SHmHC0dYR/OTzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38223988"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="38223988"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 04:17:19 -0800
X-CSE-ConnectionGUID: 4XQTxihUT42g98dwC2+UlQ==
X-CSE-MsgGUID: vNLTf1ARRea1cqZLFibTEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="100825847"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.184])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 04:17:17 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com
Subject: [core-for-CI] Revert "lockdep: Enable PROVE_RAW_LOCK_NESTING with
 PROVE_LOCKING."
Date: Wed, 11 Dec 2024 14:16:35 +0200
Message-ID: <20241211121703.2890150-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.45.2
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

This reverts commit 560af5dc839eef08a273908f390cfefefb82aa04.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 lib/Kconfig.debug | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index f3d723705879..de4ffe09323b 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -1397,14 +1397,22 @@ config PROVE_LOCKING
 	 For more details, see Documentation/locking/lockdep-design.rst.
 
 config PROVE_RAW_LOCK_NESTING
-	bool
+	bool "Enable raw_spinlock - spinlock nesting checks"
 	depends on PROVE_LOCKING
-	default y
+	default n
 	help
 	 Enable the raw_spinlock vs. spinlock nesting checks which ensure
 	 that the lock nesting rules for PREEMPT_RT enabled kernels are
 	 not violated.
 
+	 NOTE: There are known nesting problems. So if you enable this
+	 option expect lockdep splats until these problems have been fully
+	 addressed which is work in progress. This config switch allows to
+	 identify and analyze these problems. It will be removed and the
+	 check permanently enabled once the main issues have been fixed.
+
+	 If unsure, select N.
+
 config LOCK_STAT
 	bool "Lock usage statistics"
 	depends on DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT
-- 
2.45.2

