Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CC47D59FE
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 19:56:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AF6510E444;
	Tue, 24 Oct 2023 17:56:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1882E10E444
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 17:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698170159; x=1729706159;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=lRL46NnayRDwsMBFHowWbHcPjzSKqpPW43yifvzNxA4=;
 b=PFcr2Emwmio8B+WVXzYg77hE7gTspSYGMio2CaTaEn5CKmBrVJc6hK6s
 pRqG0U0/5DX8ak9ttgILiJa98qruWh9Ml8RciHQ659vu0rhdEMkZwIVZZ
 el1rs8Dyl6nSGsZvAQPPa2o1X8PsuM5i3Mfach2ACtCRkgdjEMREzEt7j
 5MabsOMC6Q3ZjXfgb0XXNHrxdkkB1wkntRu+A6F5ql0WsU23aXL51WlGU
 WchJDIWgLvXUlzItSXyL11QAECmmPkreWgNpD+RnBL6s4VotpTL7QuVzs
 Gc+F2tXu5PHrk5RKr9dL9T0LYNhPgL1pq3Zwz5LUZ+xL394xQI02djtvg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="453596660"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="453596660"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 10:55:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="758560313"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="758560313"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga002.jf.intel.com with SMTP; 24 Oct 2023 10:55:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Oct 2023 20:55:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 20:55:51 +0300
Message-ID: <20231024175552.15503-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024175552.15503-1-ville.syrjala@linux.intel.com>
References: <20231024175552.15503-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [topic/core-for-CI][PATCH 1/2] Revert "freezer: Dump
 more info on whoever is trying to get frozen with locks held"
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

This was just extra debug to hunt down a regression, which got fixed.

This reverts commit d77cc11a9ab0558923d304683ad2307ec0cd5681.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 kernel/freezer.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/kernel/freezer.c b/kernel/freezer.c
index e211184c26c7..4fad0e6fca64 100644
--- a/kernel/freezer.c
+++ b/kernel/freezer.c
@@ -125,16 +125,8 @@ static int __set_task_frozen(struct task_struct *p, void *arg)
 	/*
 	 * It's dangerous to freeze with locks held; there be dragons there.
 	 */
-	if (!(state & __TASK_FREEZABLE_UNSAFE)) {
-		static bool warned = false;
-
-		if (!warned && debug_locks && p->lockdep_depth) {
-			debug_show_held_locks(p);
-			WARN(1, "%s/%d holding locks while freezing\n",
-			     p->comm, task_pid_nr(p));
-			warned = true;
-		}
-	}
+	if (!(state & __TASK_FREEZABLE_UNSAFE))
+		WARN_ON_ONCE(debug_locks && p->lockdep_depth);
 #endif
 
 	WRITE_ONCE(p->__state, TASK_FROZEN);
-- 
2.41.0

