Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C461AB55023
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 15:59:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7A0F10EC5A;
	Fri, 12 Sep 2025 13:59:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SM9xUNxs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DB3410EC58;
 Fri, 12 Sep 2025 13:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757685570; x=1789221570;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=b8vcmhNrODWYWHKBEsP4uJ5DVtDr2qI2cxTuUyETglw=;
 b=SM9xUNxsVGfCGoUcDCH3MZ5PBTRN6gTm99WoW0R+ErAPypZpgK2nZTNu
 JSyvL8GtcKm9Hb7LfFeQfABZ6brO8Vb/F0aMDnLbKK+JLEKHjKvafUPG2
 6nu0eO59gtjez7TK5F5zyauJVY+BubQOBNsrMm4mRlcX9F5+CR0HP5WBA
 23tqL5Mprxutr8jDmZyrWn8evscvW1l56GXJaNatIjpIqe/1sWOg+UgaI
 MvS6HH/0vstLLi3ezpSwNw4wHW3J33htiY0Uc9MaHx4K8e/6LdWy7gN5g
 n5QScXZYmNxMOl0rbgGlZrDt4bjZO8cwoVhJ7HxG73BPdWRvWXF/JQva6 A==;
X-CSE-ConnectionGUID: n/JbviC1R666tLmzESH57A==
X-CSE-MsgGUID: WNbMFQ9PQuufGzQlZTxgbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="59966443"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="59966443"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:59:30 -0700
X-CSE-ConnectionGUID: hHtOoQBTSOCPw30yNvvYXA==
X-CSE-MsgGUID: q1hUCmekQ9aZip4Yi0s2UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="173533719"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.171])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:59:29 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH] drm/i915: Defeature DRRS on LNL+
Date: Fri, 12 Sep 2025 16:59:26 +0300
Message-ID: <20250912135926.18910-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

DRRS has been defeatured on LNL+. Adjust HAS_DOUBLE_BUFFERED_M_N()
to match.

Note that the M/N registers still appear to be double buffered under
the hood but the double buffer update point is now documented to be
just the last register write to the M/N registers, so it no longer
happens synchronously with the vblank/MSA transmission. We should
perhaps rename HAS_DOUBLE_BUFFERED_M_N() to more accurately reflect
reality, but couldn't come up with a decent name right now...

Bspec: 68917
HSD: 14016007525
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index f329f1beafef..1f091fbcd0ec 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -155,7 +155,7 @@ struct intel_display_platforms {
 #define HAS_DISPLAY(__display)		(DISPLAY_RUNTIME_INFO(__display)->pipe_mask != 0)
 #define HAS_DMC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dmc)
 #define HAS_DMC_WAKELOCK(__display)	(DISPLAY_VER(__display) >= 20)
-#define HAS_DOUBLE_BUFFERED_M_N(__display)	(DISPLAY_VER(__display) >= 9 || (__display)->platform.broadwell)
+#define HAS_DOUBLE_BUFFERED_M_N(__display)	(IS_DISPLAY_VER((__display), 9, 14) || (__display)->platform.broadwell)
 #define HAS_DOUBLE_BUFFERED_LUT(__display)	(DISPLAY_VER(__display) >= 30)
 #define HAS_DOUBLE_WIDE(__display)	(DISPLAY_VER(__display) < 4)
 #define HAS_DP20(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
-- 
2.49.1

