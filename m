Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E6485F79D
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 12:58:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E58F910E90F;
	Thu, 22 Feb 2024 11:57:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qka10g38";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41ED310E91C
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 11:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708603077; x=1740139077;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nyBRHlS26vO3x41jG8O5LeAABVnHXYEBxCkP9f2NBXs=;
 b=Qka10g38/Prbidn77PLo0Uvi6apqZoGwq0pP5EnRZ8NyUXZ6qrDYNWxI
 T8TWTjIWz0vrctAXISuaUY3IMg+79xiCUQh7C0pcgBkysv2CPRMFKDNlX
 RgCixtPlzG+aJZ2VBZhHuiFxWdGEcRcL1cIwAXstUTjmq04Dx1up7mkro
 bIVfEWZMbiN9OxsJdgFGVAwMHy1NCQEBM+oG2wQHafLGdJJrScORUc10P
 /zmPlSJG/wNLjuHB8i2dkG7m3XPhsv3RnQBrFafxni6w/YN9MH/BpsGcO
 4TBvtDhvYYG7IDLDaQ8WKBmFwKxrLaJWlLwRgCmbNAo5K6sXe+vcJfLt/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2972967"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="2972967"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 03:57:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5840058"
Received: from alaakso-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.43.250])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 03:57:56 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 5/5] drm/i915/display: Increase number of fast wake
 precharge pulses
Date: Thu, 22 Feb 2024 13:57:28 +0200
Message-Id: <20240222115728.3371478-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240222115728.3371478-1-jouni.hogander@intel.com>
References: <20240222115728.3371478-1-jouni.hogander@intel.com>
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

Increasing number of fast wake sync pulses seem to fix problems with
certain PSR panels. This should be ok for other panels as well as the eDP
specification allows 10...16 precharge pulses and we are still within that
range.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9739
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 7a5cfd77d43b..6e8ccaed0f9a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -145,7 +145,7 @@ static int intel_dp_aux_sync_len(void)
 
 u8 intel_dp_aux_fw_sync_len(void)
 {
-	u8 precharge = 10; /* 10-16 */
+	u8 precharge = 12; /* 10-16 */
 	u8 preamble = 8;
 
 	return precharge + preamble;
-- 
2.34.1

