Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA4D9E97F1
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 14:56:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A44C10E4B1;
	Mon,  9 Dec 2024 13:56:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mvjXOLCh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 039DF10E4B1;
 Mon,  9 Dec 2024 13:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733752580; x=1765288580;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FHUQOon0sEw/VdfNSYGR3fXhpLFMUvU6e5Cc0QNcb40=;
 b=mvjXOLChm1dt8P5PXBIQkfQVQofJwzx7z6T74nAUTqQart8vSR1E0JNV
 XxEOB5YtZ+9eGYGhcoFXAvUV0BcM4ds0zFJrwNmwC8KRgPBzXi5BvqljH
 5awgqsjTnC8G699pp+sxtOdfagnTeAPZRMau+xiGh+yUzYTbEYjK2JwH8
 o6vcW+vaxrsFIIiugA5QWNiNs0gRxq20eoMBdbJPfcf+GmyHhxnMsD/FZ
 O2vgVpheD8aOUqvAFLAzPzeHHs+Rb6c0mWlfrrA/8rwpQHzxw6yP2I9/9
 pDeo6g3b/MyxVTms7Ji+MxfzQQq8m96xJT1U5HLkkhpiyHK286sqNMeVL Q==;
X-CSE-ConnectionGUID: L+WM+jpjSvq9OdYDX+dWCw==
X-CSE-MsgGUID: QnCgeNQ8QRCSowtKdu4vkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="34194828"
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="34194828"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 05:56:20 -0800
X-CSE-ConnectionGUID: 4j1iTvw9SrKFd9kCRbg3DA==
X-CSE-MsgGUID: bLYkoilCRDCIqAmC/JQthw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="118317294"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.245.245.43])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 05:56:18 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.saarinen@intel.com
Subject: [RFT] Revert "lockdep: Enable PROVE_RAW_LOCK_NESTING with
 PROVE_LOCKING."
Date: Mon,  9 Dec 2024 15:53:51 +0200
Message-ID: <20241209135602.2716023-1-luciano.coelho@intel.com>
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

It seems that we have a few issues with this configuration in xe and
in i915.  Let's try to revert it to see if the problems we're seeing
go away.

Note, these are _real_ issues, but only if CONFIG_RT is enabled, so the actual issues need to be solved properly, but we can revert this change until then, to avoid regressions.


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

