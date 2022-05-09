Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 500DB520653
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 23:01:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5944B10F1EF;
	Mon,  9 May 2022 21:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 625E910F1EA
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 21:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652130106; x=1683666106;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=twZSMi3yviI4f0odHrBgbM8gDhqsymy4UmR9Z9/zuWo=;
 b=MYMkkRFuSZcAG+pGFZ+r+DBmJQ69u+5MACCLOJTVd4pEyUaO3zZyDuyC
 cSFL+PFMK43fAdwmPGn8jlT5hpFux1z3LOBWh2lD+ChbkD6wjlXAxytZt
 oHK+9t5q5ExgjjIXv9QU2vJJujY+RKTapW3EIwVv6CQul/3AT8OZ1GMeb
 nVv4wf5/YAVGTY81N0LjfKAmwiI09bqUOGEYbRfo2/hCuIyzmAVKleewr
 dx0SgGqpetQ5o7hSG8FKHxSZ2P0uvMLq3Zen/kxJn6h9CZOHwnvSC3znr
 hTUtGGvNWt6Da8mqq5P8DUJ70ubbELS4EqBNlil93XOI17FNWms690qgK Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="249703592"
X-IronPort-AV: E=Sophos;i="5.91,212,1647327600"; d="scan'208";a="249703592"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 14:01:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,212,1647327600"; d="scan'208";a="519410905"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga003.jf.intel.com with ESMTP; 09 May 2022 14:01:45 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 May 2022 14:01:46 -0700
Message-Id: <20220509210151.1843173-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
References: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Intel-gfx 1/6] drm/i915/guc: Fix GuC relay log debugfs
 failing open
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

When GuC-Error-Capture was introduced, we created
buf_in_use as a way to identify if relay logging
had started. It is meant to replace the previous
method where a mmap of the GuC log buffer was
the indicator but not since GuC Error Capture
shares that mapping throughout operation.

However, that method of checking was not updated
when the debugfs guc_log_relay_ctl_open was called.
Fix that check.

Fixes:
   drm/i915/guc: Add capture region into intel_guc_log
   (daff407a083d).

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Link: https://patchwork.freedesktop.org/patch/479021/?series=101603&rev=1
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 78d2989fe917..09f4d5fbca82 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -568,7 +568,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
 
 bool intel_guc_log_relay_created(const struct intel_guc_log *log)
 {
-	return log->buf_addr;
+	return log->relay.buf_in_use;
 }
 
 int intel_guc_log_relay_open(struct intel_guc_log *log)
-- 
2.25.1

