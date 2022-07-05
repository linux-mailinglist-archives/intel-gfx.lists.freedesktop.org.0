Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 663C456698C
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 13:33:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1824510FE85;
	Tue,  5 Jul 2022 11:30:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E72610E021
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jul 2022 10:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657018659; x=1688554659;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=huweXFP7lXaD24FZyvA0tV4Uuf1CweuoC05ievLO91o=;
 b=G4xLUcJt9BgHYb0TBwacdXYg7lnGLhBB2TNv2iErp4dZpcSqWAwtCT9U
 hiAbHosKx/sg2FKmwUYbvYyK4llrUUfKD/HxTCaGB3h9QFue28zbbmpkC
 UD4hyvxFF+nXRifByFI1n/Aff7lFxIWtGHDAH8egv4cVO//2WYFszE9sg
 lSlXXWsdnQzu0xoCRjS8ztesrU2rkODiY0ZyLdMS91aoDsiXaS97+b4Gv
 34wPxh7R3nvYq5McpmxNWJDlkg3SQG7tGnjBQiM0JB2DeudcVHxnBZDma
 /tfdB+Aptvr72c3mQBIjc8sREkm0GaR0wUEtDOKIERNjOKA7y5z3xmCl3 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="308861277"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="308861277"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 03:57:39 -0700
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="650076294"
Received: from mtyszka-mobl.ger.corp.intel.com (HELO
 kdrobnik-desk.toya.net.pl) ([10.213.16.14])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 03:57:37 -0700
From: Karolina Drobnik <karolina.drobnik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jul 2022 12:57:18 +0200
Message-Id: <5c77a2a12b4159415e5e448a563ab70a13a8d8cb.1656911806.git.karolina.drobnik@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1656911806.git.karolina.drobnik@intel.com>
References: <cover.1656911806.git.karolina.drobnik@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Bump GT idling delay to 2 jiffies
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
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

