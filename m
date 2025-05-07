Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAF6AAE462
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 17:18:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BE4010E835;
	Wed,  7 May 2025 15:18:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kMc4eV28";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D06B10E832;
 Wed,  7 May 2025 15:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746631121; x=1778167121;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ES8uVNVWm4nWNYE/+de6bmIfuZAAc6naWhYMsDWjyzE=;
 b=kMc4eV28CA5GoqN5e//6wXoq5dxihj6hz2v2Ab1DUE3Sweo8CAXUQdZG
 L1v6ig5WZaQx07QDSJ7NzKWAW5F4mfb/JN79wTRYmxfZuPkISeDFs1zWz
 c7OG2mcE3Yefq74n50YRDOZBEgYjcsQXJIjryKqZ4vZx3g325LVhh1si3
 pCKHBnJvR8a44/WGf7wz6yxKfy71UEhOPGHwFWsXk76KLMg/Q0y5/mVnP
 vYfN0H/P0deldEHo9xkA8MJxCoXIH6sPcQrT0wEBLJDC+x4YiR4+fXW8R
 zAg7PEYDjSwCebGsPj1uHOiB6Q1/5j6+DD7nUzw2UVf6ioHJhIxPe26/w w==;
X-CSE-ConnectionGUID: DrgRv9vzSzyxiqLvpM+ClA==
X-CSE-MsgGUID: LkTGmomdRyuduXz+zblufw==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="59027680"
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="59027680"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 08:18:40 -0700
X-CSE-ConnectionGUID: sDZmj4SRSoO2jwI7bRwCwA==
X-CSE-MsgGUID: WUUYVBH4SWCpC0WI6nlpsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="166913414"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 08:18:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/6] drm/i915/wm: DG2 doesn't have dram info to look up
 wm_lv_0_adjust_needed
Date: Wed,  7 May 2025 18:18:19 +0300
Message-Id: <90a5597cb552c91fd4f111eaf18e0f229785c078.1746631057.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746631057.git.jani.nikula@intel.com>
References: <cover.1746631057.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

There's no dram info on DG2 that we could use. The struct dram_info is
all zero on it, but be explicit about this.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index f5600f4b7772..817939f6d4dd 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3251,7 +3251,7 @@ adjust_wm_latency(struct intel_display *display,
 	 * any underrun. If not able to get Dimm info assume 16GB dimm
 	 * to avoid any underrun.
 	 */
-	if (dram_info->wm_lv_0_adjust_needed)
+	if (!display->platform.dg2 && dram_info->wm_lv_0_adjust_needed)
 		wm[0] += 1;
 }
 
-- 
2.39.5

