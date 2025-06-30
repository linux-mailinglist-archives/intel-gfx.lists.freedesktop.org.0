Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 758ECAEE232
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jun 2025 17:17:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3771F10E447;
	Mon, 30 Jun 2025 15:17:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N7Z8EA3o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13D0D10E447;
 Mon, 30 Jun 2025 15:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751296661; x=1782832661;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fCqKx3ceOhZq/yr6HDd5Ig6UILnwCiiZDiEhljjFSGk=;
 b=N7Z8EA3oNGlfAs7c19D2RsPNwSUcXFMWOhU4SCrm7MCXK1vWkc3Xlc2O
 kd91CyIaGmJ0+rJJDjez/Me3FUVAY5tYLCVPFwIHeputgScYLucF0nnqz
 1v4bDkRWuRNX7n26HzWzUBewTauWbOVQr0Vn+iJuj2TKCWWJtMxiS9Uam
 rJluC3WxqT6vc1JDYv8Kq0+UxkN2KerGskUB+DwUi4e1DbMeNblbp1/g3
 H1PqNj8WTaQ7jhDjo1Bo+k7119aJVVR30VbsQB73S+g3IiyN7G+mN5mhv
 x9i4XsqKw5koPSDTdSO3bQy20bkTe0DTSjIhmIz1QKLvmM9C47SeHPRab A==;
X-CSE-ConnectionGUID: fb06U3uXRpCjuYLkbrl3bQ==
X-CSE-MsgGUID: AtsP5XukR9qVF+mS4yfCfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="71094200"
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; d="scan'208";a="71094200"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 08:17:40 -0700
X-CSE-ConnectionGUID: 9HVVcbzRQiSUIXsufHmLXQ==
X-CSE-MsgGUID: HSDYu2LMSgmoq9jTvGSTQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; d="scan'208";a="158033015"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 08:17:40 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-xe@lists.freedesktop.org>,
	intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>, ryszard.knop@intel.com,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH topic/core-for-CI] Revert "ftrace: Allow configuring global
 trace buffer size (for dump-on-oops)"
Date: Mon, 30 Jun 2025 08:17:29 -0700
Message-ID: <20250630151728.316208-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.49.0
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

This reverts commit 41e750b906022da3e4fb9dc57bc17670a340ad23.

It's not used in CI anymore, probably for a very long time. So we don't
need maintain this in topic/core-for-CI.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 kernel/trace/Kconfig | 7 -------
 kernel/trace/trace.c | 4 +++-
 2 files changed, 3 insertions(+), 8 deletions(-)

diff --git a/kernel/trace/Kconfig b/kernel/trace/Kconfig
index 012db82731e29..a3f35c7d83b6c 100644
--- a/kernel/trace/Kconfig
+++ b/kernel/trace/Kconfig
@@ -176,13 +176,6 @@ config TRACING
 	select TRACE_CLOCK
 	select NEED_TASKS_RCU
 
-config GLOBAL_TRACE_BUF_SIZE
-	int
-	prompt "Global ftrace buffer size (for trace_printk)" if EXPERT
-	range 0 4194034
-	default 1441792 # 16384 * 88 (sizeof(struct print_entry))
-	depends on TRACING
-
 config GENERIC_TRACER
 	bool
 	select TRACING
diff --git a/kernel/trace/trace.c b/kernel/trace/trace.c
index dc8ac10db04f2..95ae7c4e58357 100644
--- a/kernel/trace/trace.c
+++ b/kernel/trace/trace.c
@@ -950,7 +950,9 @@ int tracing_is_enabled(void)
  * to not have to wait for all that output. Anyway this can be
  * boot time and run time configurable.
  */
-static unsigned long		trace_buf_size = CONFIG_GLOBAL_TRACE_BUF_SIZE;
+#define TRACE_BUF_SIZE_DEFAULT	1441792UL /* 16384 * 88 (sizeof(entry)) */
+
+static unsigned long		trace_buf_size = TRACE_BUF_SIZE_DEFAULT;
 
 /* trace_types holds a link list of available tracers. */
 static struct tracer		*trace_types __read_mostly;
-- 
2.49.0

