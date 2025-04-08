Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 427CCA7FEC6
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 13:16:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C42E610E661;
	Tue,  8 Apr 2025 11:16:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M8KpULqH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B2C410E667;
 Tue,  8 Apr 2025 11:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744110958; x=1775646958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8d2HSKQM0SkvTkoiQWOv0tyogCqwPDHxwgHiW0yV0CE=;
 b=M8KpULqHZDu1znJOOgxqziKoDf/nefqcqKrrltJUBRBeD0UwFG0tqO4b
 URxfYbaSb1t8/rHBbojmGuMW26bXspYm3kPwlGvsMtPbEqJRdggsvuGwk
 BD+V9B4ZC91MkjyibHJEW+oy4E7Z8VEJx3EzKGzNHkZe0BvSPrCql1xBy
 2C1ltWWzy9w2VOhTRxrNta28xXqbSjyG43ATMsat0bk8JhxLKHMfeMuun
 wPxdNErNST3Z+d+v7q92scR3hvcKtexX2/gOWJFT4ovFmJ7SuPWFYJQ/f
 XqsjsfNHy4DcN2yFtnJtMDnRPliA1YtvSMqg3rB7hKyxp4UbHyMA5pG5r A==;
X-CSE-ConnectionGUID: 9m8r3tlIRS6VWTOJgovaPg==
X-CSE-MsgGUID: sS1SBmPxRgS2xEieMaZTxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45655939"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="45655939"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 04:15:58 -0700
X-CSE-ConnectionGUID: unNe2B/jRoOFWkG0qDoWpg==
X-CSE-MsgGUID: U0jt5Jo4Qeya3IEwwtm6hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="133210026"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa004.jf.intel.com with ESMTP; 08 Apr 2025 04:15:56 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, animesh.manna@intel.com
Subject: [PATCH 11/11] drm/i915: Disable updating of LUT values during vblank
Date: Tue,  8 Apr 2025 16:30:22 +0530
Message-Id: <20250408110022.1907802-12-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
References: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
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

Do not schedule vblank worker for LUT update if the registers are
double buffered

v2: Do not schedule the worker at all (Ville)

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 5b2603ef2ff7..fd6d52712462 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -418,10 +418,13 @@ int intel_crtc_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
 
 static bool intel_crtc_needs_vblank_work(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
+
 	return crtc_state->hw.active &&
 		!crtc_state->preload_luts &&
 		!intel_crtc_needs_modeset(crtc_state) &&
-		intel_crtc_needs_color_update(crtc_state) &&
+		(intel_crtc_needs_color_update(crtc_state) &&
+		 !HAS_DOUBLE_BUFFERED_LUT(display)) &&
 		!intel_color_uses_dsb(crtc_state) &&
 		!crtc_state->use_dsb;
 }
-- 
2.25.1

