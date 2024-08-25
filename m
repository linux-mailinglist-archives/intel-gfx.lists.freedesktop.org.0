Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB7A95E334
	for <lists+intel-gfx@lfdr.de>; Sun, 25 Aug 2024 14:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0688010E077;
	Sun, 25 Aug 2024 12:10:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QmWp+jd0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27ED610E0B8
 for <intel-gfx@lists.freedesktop.org>; Sun, 25 Aug 2024 12:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724587802; x=1756123802;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C/W4kP9qo9btX7ijLYVHQgPlNEJ+BNegrxi/IW1GBoA=;
 b=QmWp+jd0GIYySSJqHKcVOfoElhugJyBeHN2IiYkSoRfdzgJr+Oz4wnXP
 uIQ6XtjGkkKugOoapH90nZGyhNYujydYYKUtY+wueGef5Nn2nVmGOC8Ah
 OACZcoj1VtfSvMUWY2SpjBxPg94rqXqxQZAhRU4EP+vbOwFewx+Blejjj
 FC2RK05rTVRf470pfm26XtrqWk0PY1/M8Q8Q3mFb45+vMKgff9K/2NaPk
 B9vRBhgQl4PhwRqrstmRzrv7muvUvSI43MhIQDVKXWOjHneIeby9eR0v4
 o9uN4YMKV3qqjWhc8T3rczI7dtMQXI6TU4qVf+ROAqbS7rsZxkGCxDvOJ g==;
X-CSE-ConnectionGUID: XL4zPcDfRBWaIajRkMMQDA==
X-CSE-MsgGUID: YX/ODOR/QQiYS7UwtGLTiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11173"; a="45532463"
X-IronPort-AV: E=Sophos;i="6.10,175,1719903600"; d="scan'208";a="45532463"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2024 05:10:02 -0700
X-CSE-ConnectionGUID: UqeP4jgSR6udrAEGRT/dKQ==
X-CSE-MsgGUID: BIRVRfJdRli3G4+8GtxAJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,175,1719903600"; d="scan'208";a="66951362"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmviesa004.fm.intel.com with ESMTP; 25 Aug 2024 05:10:00 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [v2] drm/i915/gt: Whitelist COMMON_SLICE_CHICKEN1 for UMD access.
Date: Sun, 25 Aug 2024 17:41:56 +0530
Message-Id: <20240825121156.2498810-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240823101009.2093667-1-dnyaneshwar.bhadane@intel.com>
References: <20240823101009.2093667-1-dnyaneshwar.bhadane@intel.com>
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

As part of the recommended tuning setting, whitelist COMMON_SLICE_CHICKEN1
for MTL/ARL and DG2.

The UMD will selectively enable or disable specific bits of the
register based on the type of workload and its requirements.

v2: Remove the KMD par of enabling specific bits(Matt R)

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index bfe6d8fc820f..6aefbbcdd269 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2072,7 +2072,7 @@ static void dg2_whitelist_build(struct intel_engine_cs *engine)
 	case RENDER_CLASS:
 		/* Required by recommended tuning setting (not a workaround) */
 		whitelist_mcr_reg(w, XEHP_COMMON_SLICE_CHICKEN3);
-
+		whitelist_reg(w, GEN7_COMMON_SLICE_CHICKEN1);
 		break;
 	default:
 		break;
@@ -2087,7 +2087,7 @@ static void xelpg_whitelist_build(struct intel_engine_cs *engine)
 	case RENDER_CLASS:
 		/* Required by recommended tuning setting (not a workaround) */
 		whitelist_mcr_reg(w, XEHP_COMMON_SLICE_CHICKEN3);
-
+		whitelist_reg(w, GEN7_COMMON_SLICE_CHICKEN1);
 		break;
 	default:
 		break;
-- 
2.34.1

