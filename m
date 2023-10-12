Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9567C6653
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 09:22:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4963710E06E;
	Thu, 12 Oct 2023 07:22:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D459210E423
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 07:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697095333; x=1728631333;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dRjfnynpDVkg8z9zzMkel30UR7zGGgmrF8s35IDv1bI=;
 b=e9SLdtbdMmyAGfd+JHvPzqDka+XTXlYA47lkx5vSf6q0YnZDoESvpH+c
 PmaXiHCaPxHtVVGJ/FuFtklG048lrf4V7pD/8HRxD0BIo/zgElNs0foOr
 TlgGghpNj59ZlSXTvjsYBtc0otdwCGwAolQDOFqw+PRI8xMwbOViwZemu
 IoyLkRsKSz4H3h/L7O3/Y8uHKoUvj2J+ZAZpdFhGS1+wUuF/+yNomjQT+
 8cpSWpFLDrR0VBhx40+waGdi1+zZWm4s43IPnzXX9QiSXTwqe1JuAAfBz
 cYdIGnDkO7EMa9U9Kd5cip9zqMrsK8PWwZyH/4w1MbNuxSDkTgp0mTCVz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="471109096"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="471109096"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 00:22:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="897976723"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="897976723"
Received: from sidorovd-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.58.103])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 00:20:25 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 10:21:57 +0300
Message-Id: <20231012072158.4115795-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231012072158.4115795-1-jouni.hogander@intel.com>
References: <20231012072158.4115795-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display: Move releasing gem object
 away from fb tracking
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

As a preparation for Xe we want to remove all i915_gem_object details away
from frontbuffer tacking code. Due to this move releasing gem object
reference to i915_gem_object_set_frontbuffer.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_frontbuffer.c       | 2 --
 drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h | 1 +
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index ec46716b2f49..2ea37c0414a9 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -265,8 +265,6 @@ static void frontbuffer_release(struct kref *ref)
 	spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
 
 	i915_active_fini(&front->write);
-
-	i915_gem_object_put(obj);
 	kfree_rcu(front, rcu);
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
index e5e870b6f186..9fbf14867a2a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
@@ -89,6 +89,7 @@ i915_gem_object_set_frontbuffer(struct drm_i915_gem_object *obj,
 
 	if (!front) {
 		RCU_INIT_POINTER(obj->frontbuffer, NULL);
+		drm_gem_object_put(intel_bo_to_drm_bo(obj));
 	} else if (rcu_access_pointer(obj->frontbuffer)) {
 		cur = rcu_dereference_protected(obj->frontbuffer, true);
 		kref_get(&cur->ref);
-- 
2.34.1

