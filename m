Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D0B7EE39E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 16:00:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34A7910E60D;
	Thu, 16 Nov 2023 15:00:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CB4410E60D
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 15:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700146849; x=1731682849;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TgfJ9s0G/3Mp98gO77prq6pZupgTkMTYmzxBdvVjPRk=;
 b=XDdrBb0KLrTSB/RYZYNzgG5Ep7D9FXa3FR9je7rPAvsS+3UgbtEW3lD/
 Z2wfMnWqk8556b7TB1v67++sI1018AHl8VjgbXMjMbjz/34mevr9wa3mG
 d1g6CTeNbPagMLndn8q0CQdq0BllmTFRe07tONQh6SzrDRKeW9N+Sp56a
 SaVEFuDvbtteqL3ob3KyUxWkmgNvKC70ezMPmFO7N6sJ6SfPruTcZcJnG
 8L07+WbJKNGrpc9Q/fK/P3HqfFbIbeTWb1QFAi2klG5aNcG9EOQBQuGp3
 PG3dKioAdf+3jrDEcNHOpzBOGb9BC228ky/HfSRiBJGjsrsgyt718fQeN Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="422192804"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="422192804"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 07:00:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="909130995"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="909130995"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 07:00:44 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Nov 2023 20:24:47 +0530
Message-Id: <20231116145447.417855-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231107041740.3718419-2-ankit.k.nautiyal@intel.com>
References: <20231107041740.3718419-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/dp: Simplify checks for helper
 intel_dp_dsc_max_src_input_bpc
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In helper intel_dp_dsc_max_src_input_bpc it is assumed that platforms
earlier to ICL do not support DSC, and the function returns 0 for
those platforms.

Use HAS_DSC macro instead and return 0 for platforms that do not support
DSC.

v2: Updated commit message with clarification. (Jani)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5391b2a83405..30ea4820b210 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1569,13 +1569,14 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 static
 u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
 {
+	if (!HAS_DSC(i915))
+		return 0;
+
 	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
-	if (DISPLAY_VER(i915) >= 12)
-		return 12;
 	if (DISPLAY_VER(i915) == 11)
 		return 10;
 
-	return 0;
+	return 12;
 }
 
 int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
-- 
2.40.1

