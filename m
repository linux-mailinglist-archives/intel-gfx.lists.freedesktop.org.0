Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95716A065B6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 21:04:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAE7C10E27B;
	Wed,  8 Jan 2025 20:04:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BM9K1YbW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F60010E27B
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 20:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736366671; x=1767902671;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jzuwRCRvQAokfIv07KFnXp1eE3vdrYMb61QP0PMXnx0=;
 b=BM9K1YbWDiqAXhee/uYQKocQiyLZcnbxU5eSxVVfVCXYlAdO6N1dv8KI
 FEHmtzkta9fioOi6YfH2OhDJTe7dEviddu4paEQ/Z1xmN9hH/5UjE4h7Z
 9QNNgcy61C4cFECb6cpKupZKjcNqQbGueSpNHbDUNIi+GEKEpwFarQdXb
 8Toa24IpyEN8aoBZRTJwn2QJ4mkRrhw+FsL+sJvz10IBOwzAdhTv5Gr2K
 t/YAXTAIJy51rz1ksHbCmx5aIVMy/GGjPNSUUZjkBoAqg46Vl2d1PoQZY
 RbemOpbaASuKFoJN9dUjHiD/DBkowZm95jeeAN7OAkL/9PMzsXNwAqI60 w==;
X-CSE-ConnectionGUID: h3iHSOjgS0GN0qpgi4NGTA==
X-CSE-MsgGUID: +XAjsNcbTdSMbYrL3FzvLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="39425847"
X-IronPort-AV: E=Sophos;i="6.12,299,1728975600"; d="scan'208";a="39425847"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 12:04:30 -0800
X-CSE-ConnectionGUID: dNZ7EHg8SaCLmuzA5jLq5w==
X-CSE-MsgGUID: ONku9o6pQFSrzmOApgxePw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,299,1728975600"; d="scan'208";a="103001553"
Received: from rvodapal-desk.iind.intel.com ([10.145.162.163])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 12:04:27 -0800
From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: balasubramani.vivekanandan@intel.com, matthew.d.roper@intel.com,
 lucas.demarchi@intel.com, gustavo.sousa@intel.com,
 clinton.a.taylor@intel.com, matthew.s.atwood@intel.com,
 dnyaneshwar.bhadane@intel.com, haridhar.kalvala@intel.com,
 shekhar.chauhan@intel.com
Subject: [PATCH v3] drm/i915/display: Don't update DBUF_TRACKER_STATE_SERVICE
Date: Thu,  9 Jan 2025 01:32:10 +0530
Message-Id: <20250108200210.1815229-1-ravi.kumar.vodapalli@intel.com>
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

The bspec only asks the driver to reprogram the DBUF_CTL's
DBUF_TRACKER_STATE_SERVICE field to 0x8 on DG2 and platforms with
display version 12. All other platforms should avoid reprogramming
this register at driver init.

Although we've been accidentally reprogramming DBUF_CTL on platforms
where the spec does not ask us to, that mistake has been harmless so
far because the value being programmed by the driver happened to
match the hardware's default settings.

So, update DBUF_TRACKER_STATE_SERVICE field to 0x8 only for
1. display version 12
2. DG2.
Other platforms unless stated should use their default value.

Bspec: 49213
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 34465d56def0..9c20459053fe 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1126,9 +1126,6 @@ static void gen12_dbuf_slices_config(struct intel_display *display)
 {
 	enum dbuf_slice slice;
 
-	if (display->platform.alderlake_p)
-		return;
-
 	for_each_dbuf_slice(display, slice)
 		intel_de_rmw(display, DBUF_CTL_S(slice),
 			     DBUF_TRACKER_STATE_SERVICE_MASK,
@@ -1681,7 +1678,7 @@ static void icl_display_core_init(struct intel_display *display,
 	/* 4. Enable CDCLK. */
 	intel_cdclk_init_hw(display);
 
-	if (DISPLAY_VER(display) >= 12)
+	if (DISPLAY_VER(display) == 12 || display->platform.dg2)
 		gen12_dbuf_slices_config(display);
 
 	/* 5. Enable DBUF. */
-- 
2.25.1

