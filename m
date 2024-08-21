Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8441C95A02E
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 16:41:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AEA410E64B;
	Wed, 21 Aug 2024 14:41:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SBwWbjUd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CF0D10E64A
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2024 14:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724251260; x=1755787260;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bOEM21YzaNOEfalltSIVJ8W8JGM8aQGIi9r7oMtAZLU=;
 b=SBwWbjUdS4WdlSmKUnLGEirFfjl2zLjbiVc1d1lnzMe2O1fVoI5nTHqO
 UjvXrY9LmkFaumAo8PCWb+0ZQcJntaOk/rwd+t8VXsZyxOHuKh8ICcN58
 fPpJO0IGmRRvyue7I4/GUP1NsUbx6Cd+mcEVt8JLctFTIeW7GEVgGtM4J
 IdVfJFkiqygb0F+tltGbVbY15dzLmKg2QqFTwb49OyoxbHibICScnRvef
 SO8i131tQ/fb+sk6+D399GH3H+9Ur0Hxa7ttwR4lZA7gqu1gijwmLAZa7
 7NgAbUrcsKNTK5ZO+HDBrlHW78AlWW1Kr99aedzjrrVSoyntpi5vJSKkg w==;
X-CSE-ConnectionGUID: A+W3riGRT9qyDU9sz8jGAA==
X-CSE-MsgGUID: ja9rf6n7QNGfL7v/BPyg/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="45140326"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="45140326"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 07:40:53 -0700
X-CSE-ConnectionGUID: +e9PyGzKRL+L6vgnindw2A==
X-CSE-MsgGUID: mPV17Xy1TAKVCPYzbd54Dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="61643876"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.24])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 07:40:52 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Yu Jiaoliang <yujiaoliang@vivo.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: [CI] drm/i915/gt: Use kmemdup_array instead of kmemdup for multiple
 allocation
Date: Wed, 21 Aug 2024 16:40:36 +0200
Message-ID: <20240821144036.343556-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

From: Yu Jiaoliang <yujiaoliang@vivo.com>

Let the kememdup_array() take care about multiplication and possible
overflows.

v2:
- Change subject
- Leave one blank line between the commit log and the tag section
- Fix code alignment issue

v3:
- Fix code alignment
- Apply the patch on a clean drm-tip

Signed-off-by: Yu Jiaoliang <yujiaoliang@vivo.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
Hi Yu,

I am resending this patch because this never reached the mailing
list and it didn't get picked up by CI. Maybe it's going through
some manual spam check so that it might take a bit of time.

You should have seen it here[*] as you can see your previous
patches.

Andi

[*] https://patchwork.freedesktop.org/project/intel-gfx/series/?ordering=-last_updated

 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index bfe6d8fc820f..baa609bdf7cb 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -111,9 +111,8 @@ static void wa_init_finish(struct i915_wa_list *wal)
 {
 	/* Trim unused entries. */
 	if (!IS_ALIGNED(wal->count, WA_LIST_CHUNK)) {
-		struct i915_wa *list = kmemdup(wal->list,
-					       wal->count * sizeof(*list),
-					       GFP_KERNEL);
+		struct i915_wa *list = kmemdup_array(wal->list, wal->count,
+						     sizeof(*list), GFP_KERNEL);
 
 		if (list) {
 			kfree(wal->list);
-- 
2.45.2

