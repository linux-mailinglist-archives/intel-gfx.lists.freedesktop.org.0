Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E837DF6AA
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 16:42:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D13E10E90B;
	Thu,  2 Nov 2023 15:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EC1710E907
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 15:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698939771; x=1730475771;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oAVgd4AElbtGIPJ9LCde8uV97y78erCttsYyCYvoapQ=;
 b=DYn6eIkHUrOV/yEO9Src5dcSi22vey7bPQu7+oVHbYX0XECJocoKVm+7
 HINFI0ucyJ2unqlcyB4ZkXPC73hLdu++2iX4GBtfotA3vxJKIzl2rhDuX
 O7/ya5oizrB9622rhvVHkkNxjrJCzfCnpDuih2osB2lVfn7TY7a4cKQ5O
 q5J9gr8inijUi4ttUd8/PR+pRk48Fk6V4ptyPwJZZ9iyPnXGKfjgABPqa
 KCqjX0FwDhFBG5P0zdnLUVIzAH/MwmlvsjMBrhuaL64So58Y5nZulqkEG
 nhHtRDVhhTinIFkACDBUOtuw41qbhe1dYZcLTPLCwBTuQz7ZmDGak7xcr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="368087349"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="368087349"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:42:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="878294680"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="878294680"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:42:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 17:42:27 +0200
Message-Id: <8f1060d968c6683c3dd2cafbb69cee86f2981544.1698939671.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1698939671.git.jani.nikula@intel.com>
References: <cover.1698939671.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/pmu: convert one more
 container_of() to event_to_pmu()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use the helpers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index ef4b907a799b..21ef76a11ed7 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -832,9 +832,7 @@ static void i915_pmu_event_start(struct perf_event *event, int flags)
 
 static void i915_pmu_event_stop(struct perf_event *event, int flags)
 {
-	struct drm_i915_private *i915 =
-		container_of(event->pmu, typeof(*i915), pmu.base);
-	struct i915_pmu *pmu = &i915->pmu;
+	struct i915_pmu *pmu = event_to_pmu(event);
 
 	if (pmu->closed)
 		goto out;
-- 
2.39.2

