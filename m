Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F53EA02EDD
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 18:25:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91D7A10E99F;
	Mon,  6 Jan 2025 17:25:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JkR+SQ14";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FC2710E99F;
 Mon,  6 Jan 2025 17:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736184321; x=1767720321;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GieTbMSl5FcPX9UIED8O3kGIBWMzKdkR99aNkP3UdN4=;
 b=JkR+SQ14VRpr+2xFS0tVJaNV1kEi2senZMZouY/+m2P/a6Mw8TI1vJRN
 zPGVTj5rfkKx/+5oyzX1HuHQvhKPPKPBHxpEdw1xzFHHe7XSydNMUYHsZ
 EZnfvoVVWsq4zot+7F6Jfw4k6kKIuXrC2SrhYJ5tMKoCnLwLFu3MUoLau
 BXwEeudxj4Jyhg/4XudPuhx0vEqyg1a6XZUhpBbElQhsn/FY4GMToFuU+
 rYer4lE+SZ8uAV7VWKl3ofKeXQEl/xbszg5jsSiUbD5K9mbo1wlnat3Ie
 nI5YbGe+aLVBo30+UAEWtU+hqMjo7V6EXQux1JawtKAsYHmWHcHZvnpEK Q==;
X-CSE-ConnectionGUID: jIT17NrqTzyiVoc7ycwWLQ==
X-CSE-MsgGUID: DA4LCH/+Sh2OjS+JZKJmpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="47332388"
X-IronPort-AV: E=Sophos;i="6.12,293,1728975600"; d="scan'208";a="47332388"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 09:25:20 -0800
X-CSE-ConnectionGUID: fo0VN9p0TAWPiZ1XSwsxYQ==
X-CSE-MsgGUID: ueBD1Vs/T/uBWJiqbh2wrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="107562682"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 09:25:17 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org,
	<intel-xe@lists.freedesktop.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH topic/core-for-CI] Revert "vmstat: disable vmstat_work on
 vmstat_cpu_down_prep()"
Date: Mon,  6 Jan 2025 09:24:55 -0800
Message-ID: <20250106172455.1184656-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
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

This reverts commit adcfb264c3ed51fbbf5068ddf10d309a63683868.

It completely tanks the CI and nothing gets tested. This is being either
reverted upstream or the fix will conflict with the revert and we will
find out when it does.

Link: https://lore.kernel.org/all/g4sefofdrwu72ijhse7k57wuvrwhvn2eoqmc4jdoepkcgs7h5n@hmuhkwnye6pe/#t
References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13464
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 mm/vmstat.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/mm/vmstat.c b/mm/vmstat.c
index 0889b75cef149..4d016314a56c9 100644
--- a/mm/vmstat.c
+++ b/mm/vmstat.c
@@ -2148,14 +2148,13 @@ static int vmstat_cpu_online(unsigned int cpu)
 	if (!node_state(cpu_to_node(cpu), N_CPU)) {
 		node_set_state(cpu_to_node(cpu), N_CPU);
 	}
-	enable_delayed_work(&per_cpu(vmstat_work, cpu));
 
 	return 0;
 }
 
 static int vmstat_cpu_down_prep(unsigned int cpu)
 {
-	disable_delayed_work_sync(&per_cpu(vmstat_work, cpu));
+	cancel_delayed_work_sync(&per_cpu(vmstat_work, cpu));
 	return 0;
 }
 
-- 
2.47.0

