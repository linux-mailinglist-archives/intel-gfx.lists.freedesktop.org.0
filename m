Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC31718D32
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 23:35:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94BBF10E1EB;
	Wed, 31 May 2023 21:35:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68A8510E1EB
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685568953; x=1717104953;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zSgWQD3RFg1e/HYQ5hkrg9qnSpflKaARDxF9kbBOLmk=;
 b=bk2KNyPytNS0ZCXBX/WpEswLBQw8MetmN1yFdfHWLGqCStl6YN5RFww8
 2mKm+Lz02EYSyB3OjCZIMOYMaYV1yQYswYnK02BzA1FG9Dx7XdOZyUqgT
 oWjneHpT+JUfHFOD8TUeIC6IdNys7uj25vWzsC+BSOipaaNdtaCkY3QgV
 NmhzW7MRG1Qi11oaBCijP/bB2IwmgAG9vYxNlLAtFyMqJHyTt/PVDFXaA
 4xCCuwYReiLWn2xd0QjmpbqIGqFaazy7Jh7wX8cmBUaHrYmNus1OJO9Po
 wfcFnDei0RvfedHh35OZQplgG5yJkYyiHtAR08Uu6ooZoBcU4wE6Bmsxz w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="354219046"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="354219046"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 14:35:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="740119518"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="740119518"
Received: from unknown (HELO msatwood-mobl.jf.intel.com) ([10.24.12.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 14:35:51 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 May 2023 14:35:47 -0700
Message-Id: <20230531213547.1525692-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: sync I915_PMU_MAX_GTS to I915_MAX_GT
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

Set I915_PMU_MAX_GTS to value in I915_MAX_GT, theres no reason for these
values to be different.

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index 33d80fbaab8b..aa929d8c224a 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -38,7 +38,7 @@ enum {
 	__I915_NUM_PMU_SAMPLERS
 };
 
-#define I915_PMU_MAX_GTS 2
+#define I915_PMU_MAX_GTS 4
 
 /*
  * How many different events we track in the global PMU mask.
-- 
2.40.0

