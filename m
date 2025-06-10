Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EA7AD2F82
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jun 2025 10:07:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6191B10E0FD;
	Tue, 10 Jun 2025 08:06:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZzvtGqCH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32DCE10E483;
 Tue, 10 Jun 2025 08:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749542818; x=1781078818;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jkbEOD/VIP3wQxgx8WQ/qXJ+WNOGG5vp2qj8509AJGY=;
 b=ZzvtGqCHXhy8hP7dVdxLPpACmKAyeORMkx/d6uUhdPjoSEsM9D1ZqGEq
 a9l5sfJCX14LX6W4N8qWLZWVYbc+vAAm6ZbzqaFXKI7JilgAO4nOv/nhy
 o6lkW2SmSIhB4HzjyQK6Xt4B4d7AyWk99B/f0m///BaV2TUYl+9YLI3ur
 iqlKfH3KUOy8i0g9q36RvmK3/pllP3jTzdOTyQ+bKl7GSEsDx4Cadq7tR
 cwhpxL1s6bjW+2CfuA+xEM3+quw2qKr+yNqP8Eku3v+fSGVPyWot8gf3A
 J4cht+POkSjZRVzErSbIGCWOUbWWZe0kNqkPm6Oh5PomdsHMTw7srlY6w w==;
X-CSE-ConnectionGUID: kDve0VfrQNGoHlq9p/T/1Q==
X-CSE-MsgGUID: /waOgptJRk6ixpc7uXqlCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="51782273"
X-IronPort-AV: E=Sophos;i="6.16,224,1744095600"; d="scan'208";a="51782273"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 01:06:57 -0700
X-CSE-ConnectionGUID: Q60CSHG/TayRsz9hIrJQIA==
X-CSE-MsgGUID: UIuSnN9yRkWOObg10WJX8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,224,1744095600"; d="scan'208";a="147272790"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa010.fm.intel.com with ESMTP; 10 Jun 2025 01:06:54 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, animesh.manna@intel.com
Subject: [PATCH] drm/i915/dsb: Disable GOSUB interrupt
Date: Tue, 10 Jun 2025 13:18:46 +0530
Message-Id: <20250610074846.2954601-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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

DSB engine generates spurious interrupts if any dword starting with 0x0c
is part of the indexed write command within a GOSUB buffer. This renders
the GOSUB interrupt unusable. Hence, disable it for now without removing
the infrastructure in case we can use it in future.

Fixes: 78f237a6a61b ("drm/i915/dsb: Add support for GOSUB interrupt")
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 1a03c0ef2054..68166c7e89e9 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -673,9 +673,6 @@ static u32 dsb_error_int_en(struct intel_display *display)
 	if (DISPLAY_VER(display) >= 14)
 		errors |= DSB_ATS_FAULT_INT_EN;
 
-	if (DISPLAY_VER(display) >= 30)
-		errors |= DSB_GOSUB_INT_EN;
-
 	return errors;
 }
 
-- 
2.25.1

