Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A96D778300
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 23:58:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3BE710E5B4;
	Thu, 10 Aug 2023 21:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6715D10E503
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 21:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691704689; x=1723240689;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S4CUectUMAkQJyXZR1kX6g2PT1HJkLU7d2xWaClEjXU=;
 b=TS1h6ckH8EZODHasFixZ0vGN3pVPfeunkn3nU9WQfKsFW/CeKk84X2iv
 si779Y9RyF95LJByE5R0309pvCwBuQ6+Tr0P7EoMmNiiYiJgS1B3woZfz
 /3hC/eVIQtVaWIVJww4JHNmMrS17Exa0vnEk48LiRCUWnD/QKUr6Oftr9
 ir1b+XtuJ/NzQPKJbxYFjXHosZZqDDa0340I1ReuE5YabPulm9yC/pc6D
 vFYjWbn0M5qykKVnhdkAurugh0/9pgsZ8ZlB9okX1UVxhG30elxOkkXFV
 dZsOR+TqQuW1pv9O4bHx6jbIwx/gIWSa3/B4tUi1+/7Q+kaMd1NpGqew6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="369004790"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="369004790"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 14:58:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="875905555"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 14:58:12 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Aug 2023 14:57:53 -0700
Message-ID: <20230810215750.3609161-13-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230810215750.3609161-11-matthew.d.roper@intel.com>
References: <20230810215750.3609161-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/9] drm/i915/xelpmp: Don't assume
 workarounds extend to future platforms
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The currently implemented Xe_LPM+ workarounds are specific to media
version 13.00.  When new IP versions show up in the future, they'll need
their own workaround lists.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 3ae0dbd39eaa..3108ad1d6207 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1818,10 +1818,10 @@ gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
 	gt_tuning_settings(gt, wal);
 
 	if (gt->type == GT_MEDIA) {
-		if (MEDIA_VER(i915) >= 13)
+		if (MEDIA_VER_FULL(i915) == IP_VER(13, 0))
 			xelpmp_gt_workarounds_init(gt, wal);
 		else
-			MISSING_CASE(MEDIA_VER(i915));
+			MISSING_CASE(MEDIA_VER_FULL(i915));
 
 		return;
 	}
-- 
2.41.0

