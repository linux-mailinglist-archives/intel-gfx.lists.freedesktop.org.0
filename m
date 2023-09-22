Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 485BE7AB2E0
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 15:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6A4A10E696;
	Fri, 22 Sep 2023 13:45:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7892B10E66C;
 Fri, 22 Sep 2023 13:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695390288; x=1726926288;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=amYHoNFok9nHYNtkc2sVU2CV+dAKQhf+XkDxwv1v6GI=;
 b=XM4jxK6dyMmkSHfTmme1aIk3VNog0rOvRkkH9VZCy2CfuqS+Wul+dAbn
 9mr6QbTFV08Ww1tJW4GSSoJJowpc5Me9lvT7lUTroroGSTSUsbTwZnJ0J
 J34wa7nLkC3krHqMqFE/To+v6L6q44mI40dXJISP/q4xwPSbVwSDpTcKg
 hLsuPD1+ITzsQex/syorZccgXjJ8VYKxaXfoGyLKQB8gAdqtq2xMLYwBr
 fN9725j9wCKnhCU8BGoIbFVy5nu4TYhV/R7U5KdEzbX3gvxplPxKj+bXJ
 LOpc2uKcg82pZ5LFUBjONB/7yevXaoYTH2Ngg5hNT54WAsRjET+4KFFht A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="378117136"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="378117136"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:44:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="871243557"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="871243557"
Received: from placki-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.200.149])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:44:46 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 22 Sep 2023 14:44:28 +0100
Message-Id: <20230922134437.234888-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
References: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 03/12] tools/intel_gpu_top: Restore user
 friendly error message
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

We have a nice error message displayed when an user with insufficient
permissions tries to run the tool, but that got lost while Meteorlake
support was added. Bring it back in.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 tools/intel_gpu_top.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 87e9681e53b4..e01355f90458 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -554,9 +554,11 @@ static int get_num_gts(uint64_t type)
 
 		close(fd);
 	}
-	assert(!errno || errno == ENOENT);
-	assert(cnt > 0);
-	errno = 0;
+
+	if (!cnt)
+		cnt = errno;
+	else
+		errno = 0;
 
 	return cnt;
 }
@@ -590,6 +592,8 @@ static int pmu_init(struct engines *engines)
 	engines->fd = -1;
 	engines->num_counters = 0;
 	engines->num_gts = get_num_gts(type);
+	if (engines->num_gts <= 0)
+		return -1;
 
 	engines->irq.config = I915_PMU_INTERRUPTS;
 	fd = _open_pmu(type, engines->num_counters, &engines->irq, engines->fd);
-- 
2.39.2

