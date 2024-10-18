Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AEF9A4872
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 22:49:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D59BD10E993;
	Fri, 18 Oct 2024 20:49:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VTMoIA3K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 478A610E992;
 Fri, 18 Oct 2024 20:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729284587; x=1760820587;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hLDukfrIdwplob1FNU3PxeYoQ1fRvXtTrRyN2LMjxBY=;
 b=VTMoIA3Ka6tCaaR4bnFZ2S9xeb3Re6dsZY/Z7Whx8H+Wj9cxI9e0n84F
 HklnKz71xoU99CfVVmmtB/GqB3Ja32+zTQZcgRruZRIpE3rppwTJ6TZjx
 MLrdt9RRW9D0+hZ36P9doszjF0vmbOitpkkw0N+bU9tE6BdJQll9rT7hk
 lcmtwunoqHLCxuAUCLsk0iAeTUJztieiWZKhZ4/qybXAY/i8W9FTed+cX
 uc5dqs1AQ1Pe/nam5YSzj8YjxriTF2C8l30slipt6lgDIUHKAVE9NqGBU
 Z3lAxnRDNwMUr5GQRi7SGQBg3oJv6wZJwGzWrP7cpmiXZYi89sb4qQ9n4 A==;
X-CSE-ConnectionGUID: fB4bHO2ZQjSbCOUXy7ZXvQ==
X-CSE-MsgGUID: 8TMwdOmDRTO8GVOyodlNZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="54240175"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="54240175"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:47 -0700
X-CSE-ConnectionGUID: qPvF9dT3SLmmpjJj205n9g==
X-CSE-MsgGUID: 7PeE4tLlSQOLu+EhhQeVsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="109798929"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.145])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:47 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH 02/12] drm/i915/ptl: Define IS_PANTHERLAKE macro
Date: Fri, 18 Oct 2024 13:49:31 -0700
Message-ID: <20241018204941.73473-3-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241018204941.73473-1-matthew.s.atwood@intel.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
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

From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Common display code requires IS_PANTHERLAKE macro.
Define the macro and set 0 as PTL is no longer support for i915.

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a66e5bb078cf..ca1ab5931e28 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -538,6 +538,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
  */
 #define IS_LUNARLAKE(i915) (0 && i915)
 #define IS_BATTLEMAGE(i915)  (0 && i915)
+#define IS_PANTHERLAKE(i915) (0 && i915)
 
 #define IS_ARROWLAKE(i915) \
 	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL)
-- 
2.45.0

