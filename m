Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 844746E72C8
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 07:56:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 883C910E0C0;
	Wed, 19 Apr 2023 05:56:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E975B10E21F
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 05:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681883760; x=1713419760;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4Z0XcxyotYDc11C+fTrgouJdy2thC6kp5Y235e07vDY=;
 b=VGz7TRpXlBw9kxMUNhtpeYCeh59Gbg/unf+Z3dntkHJ+GTgjoanFXOCN
 tlO61mEqOmGbIhTzbqDwCukEHbHe2bVAtVygssqlpFxFUs/9V4Kx1o2hc
 1ogRTelGIHQZDVsBciVgdBhRI4mUVwTkayuwMDPb/Iyr7kMTL2dZ1oNpd
 wUWd4P42xBDx7K5tO55q5igi56NCUrYUVyK0XUp91nkyd8M9ayro1ri09
 G6cBL+DyznRTTPGUhka/1tx2w2bcjygbEPzA7hCUokIQYy6wJIYH/dNEH
 j1fbcX4iklJtePJj1BtYh3gxPZHYa9RkthF+UdtHbv4ea6jKmwwXtb8lE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="347216195"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="347216195"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 22:56:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="693910491"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="693910491"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by fmsmga007.fm.intel.com with ESMTP; 18 Apr 2023 22:55:59 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Apr 2023 11:30:34 +0530
Message-Id: <20230419060036.3422635-2-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230419060036.3422635-1-tejas.upadhyay@intel.com>
References: <20230419060036.3422635-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Consider multi-gt instead of
 to_gt()
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

In order to enable complete multi-GT, use the GT
reference obtained directly from the engine, rather
than relying on the to_gt(), which only provides a
reference to the primary GT.

Problem appear when it runs on platform like MTL
where different set of engines are possible on
different GTs.

Cc: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_user.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
index cd4f1b126f75..dcedff41a825 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -117,7 +117,7 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
 			disabled |= (I915_SCHEDULER_CAP_ENABLED |
 				     I915_SCHEDULER_CAP_PRIORITY);
 
-		if (intel_uc_uses_guc_submission(&to_gt(i915)->uc))
+		if (intel_uc_uses_guc_submission(&engine->gt->uc))
 			enabled |= I915_SCHEDULER_CAP_STATIC_PRIORITY_MAP;
 
 		for (i = 0; i < ARRAY_SIZE(map); i++) {
-- 
2.25.1

