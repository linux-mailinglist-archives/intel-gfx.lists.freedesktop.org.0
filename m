Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3177056BB95
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 16:20:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6816F10E5EA;
	Fri,  8 Jul 2022 14:20:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4D6110E5DA
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 14:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657290029; x=1688826029;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8lmJekwD4F2E+Y3Bh+B1Upv8Zq0gIGsA36K4HdviIns=;
 b=m48Kczs+GgOQlNzhAOajvGiRc7wWBXoA4j6kYeVCS170m7PZIm3fmE2n
 h8c5RIq4S9GPuWo271sX3LLpxOnivnMKLaMcM4IxbYbdCbh2D2hE8P2i7
 2uFJtjFYQi4pL4EuA27sIYrfqF0u9crNJ5Z4NKGqhiG1QcWq/tfZH/66W
 uB3VvsS70+eeZL4ZgMPiQh0rEo3knV7RUO0McQ44ewnHpcW3VOJRuFHTA
 NKgb9Siv6fMX5Vd68m7Vq6vERdS7KaM2sUV1jeBFffiTwMOydOZZ0t9Mw
 jAlS2kvAvLTl+C+PZwxcNg+5t+EjtkgZphpJLGNukFe12//TbL2nu2jrL w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="267321218"
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="267321218"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 07:20:29 -0700
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="621232134"
Received: from dgrynia-mobl.ger.corp.intel.com (HELO
 kdrobnik-desk.toya.net.pl) ([10.213.5.81])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 07:20:26 -0700
From: Karolina Drobnik <karolina.drobnik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jul 2022 16:20:12 +0200
Message-Id: <e37911ec087a9ce50630d6faf61fa2c0d5f96d44.1657289332.git.karolina.drobnik@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1657289332.git.karolina.drobnik@intel.com>
References: <cover.1657289332.git.karolina.drobnik@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915: Bump GT idling delay to 2
 jiffies
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

In monitoring a transcode pipeline that is latency sensitive (it waits
between submitting frames, and each frame requires work on rcs/vcs/vecs
engines), it is found that it took longer than a single jiffy for it to
sustain its workload. Allowing an extra jiffy headroom for the userspace
prevents us from prematurely parking and having to exit powersaving
immediately.

Link: https://gitlab.freedesktop.org/drm/intel/-/issues/6284
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_active.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index ee2b3a375362..7412abf166a8 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -974,7 +974,7 @@ void i915_active_acquire_barrier(struct i915_active *ref)
 
 		GEM_BUG_ON(!intel_engine_pm_is_awake(engine));
 		llist_add(barrier_to_ll(node), &engine->barrier_tasks);
-		intel_engine_pm_put_delay(engine, 1);
+		intel_engine_pm_put_delay(engine, 2);
 	}
 }
 
-- 
2.25.1

