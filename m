Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9EB456F34
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 14:00:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9C066F525;
	Fri, 19 Nov 2021 13:00:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BC6489BD5;
 Fri, 19 Nov 2021 13:00:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="295222734"
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="295222734"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 05:00:10 -0800
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="455769573"
Received: from egedeon-mobl2.amr.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.209.179.224])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 05:00:09 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 19 Nov 2021 12:59:41 +0000
Message-Id: <20211119125945.55056-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211119125945.55056-1-tvrtko.ursulin@linux.intel.com>
References: <20211119125945.55056-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/6] igt/drm_read: Fix build warning
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

.../tests/drm_read.c: In function ‘test_short_buffer_wakeup’:
.../tests/drm_read.c:224:17: warning: ‘pthread_yield’ is deprecated: pthread_yield is deprecated, use sched_yield instead [-Wdeprecated-declarations]
  224 |                 pthread_yield();
      |                 ^~~~~~~~~~~~~

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Petri Latvala <petri.latvala@intel.com>
---
 tests/drm_read.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/drm_read.c b/tests/drm_read.c
index 3186e6097187..4a966a23b550 100644
--- a/tests/drm_read.c
+++ b/tests/drm_read.c
@@ -221,7 +221,7 @@ static void test_short_buffer_wakeup(int in, enum pipe pipe)
 		pthread_mutex_unlock(&w.mutex);
 
 		/* Give each thread a chance to sleep in drm_read() */
-		pthread_yield();
+		sched_yield();
 
 		/* One event should wake all threads as none consume */
 		generate_event(w.fd, pipe);
-- 
2.32.0

