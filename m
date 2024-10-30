Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BFC9B6D29
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 20:55:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FB8010E021;
	Wed, 30 Oct 2024 19:55:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UJ6lMrGo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E3AF10E021;
 Wed, 30 Oct 2024 19:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730318111; x=1761854111;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XVD7/kVecX66Y4OG32x0NuxSjAhOYaGthhh+YqxCdvE=;
 b=UJ6lMrGoCxG3WyCP4KhgLSEbLshMI14N9gdxkvyg3gLlLCkDbSX0WK38
 gohTKFQncxYFn9Pbkcl3EBAJ5+07SxHG/JKVHAVwR21NArMjhT4dAwBBe
 nMVb+U8QykwMaJijCiC9KzQMGSFn8dqrIkDDW/PjXaeqveETfaEEdCyoE
 gE2Ae0meeSzRwLH2V5/0tmK/r9/niFi+WAgoXrUhHlzd9E7c5VCUMPyT9
 ZsrxsIjd83HPN17+1pucgIBoODCNnhZQkylVIZHtPsEVygnHTZ5UivgJz
 ms3Nw9vgsNRMS3qKKwfOucAShH22kBGBHibhayvvsNW5SY1FKk1d5aARy Q==;
X-CSE-ConnectionGUID: iKzRZbrmRH2tWYX9EYK16A==
X-CSE-MsgGUID: 6FOHTMpbRXuX/d+S5kFqqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="17683117"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="17683117"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 12:55:11 -0700
X-CSE-ConnectionGUID: XmzwKVIUQQCfz8GBsa+0lg==
X-CSE-MsgGUID: fA+Gign3Sw2iGGxfxzQoIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="119880013"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 12:55:11 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v3] drm/i915/display: Fuse bit for power management disable
 removed
Date: Wed, 30 Oct 2024 12:55:07 -0700
Message-Id: <20241030195507.2753404-1-clinton.a.taylor@intel.com>
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

Starting with display version 13 the fuse bit to disable Display PM has
been removed.

v2: Bit removed starting with display version 13 (MattR)
v3: DG2 still uses this fuse bit (MattR)

BSPEC: 50075, 69464
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index a2ae07f6d1b7..7465e1715cc8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1775,8 +1775,10 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 		if (dfsm & SKL_DFSM_DISPLAY_HDCP_DISABLE)
 			display_runtime->has_hdcp = 0;
 
-		if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
-			display_runtime->fbc_mask = 0;
+		if (IS_DG2(i915) || DISPLAY_VER(i915) < 13) {
+			if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
+				display_runtime->fbc_mask = 0;
+		}
 
 		if (DISPLAY_VER(i915) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
 			display_runtime->has_dmc = 0;
-- 
2.25.1

