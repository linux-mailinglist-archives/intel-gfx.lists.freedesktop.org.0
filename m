Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8584892A96A
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2024 21:00:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 232B510E3D9;
	Mon,  8 Jul 2024 19:00:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j2HeUD/f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F4C510E3BB
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2024 19:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720465222; x=1752001222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jFnFAP/vdchmacvbMAmizx1oxOlQGmJiada3mNcF2EU=;
 b=j2HeUD/f2slda7Z2uqTzKsvin04XqjXbW3ZSbmw1v/i7QP/k2eOJbxqC
 krCk302tjunSGC9tzWFeTY/fH9NrjvT0KWCKBxMZn5qWgJwsCq0rp5Cop
 bDJGoEKLCBuC0whh80XLh8955y+STU3Hmlee4R6+neZZEXh9rCPVms0kV
 tkFbCBjtAfNFscl8/iDl1yMseoUdKNYnq8fF8d+MRaM9ptAxK7BDbDtQZ
 7dq72D/7dEOSRE3mR4i30Mp0ob+ley8urfMQieEq3Rqpz+FlOps8lM/9D
 BklVN0NK3Ay4xBkaNSkodFv23DZjiB0OvtEj+bUM3lK1TMV4DI61wvwpD Q==;
X-CSE-ConnectionGUID: nwRoVVu/Tdax4iORZtW66Q==
X-CSE-MsgGUID: spFqQt1USPWxZ50OKWUxUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="17821051"
X-IronPort-AV: E=Sophos;i="6.09,192,1716274800"; d="scan'208";a="17821051"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 12:00:22 -0700
X-CSE-ConnectionGUID: y8eb4n3lQd2ZH75QHh6F9g==
X-CSE-MsgGUID: t8JuT6miSzWGzDosPbw8Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,192,1716274800"; d="scan'208";a="85140016"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 12:00:21 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 3/6] drm/i915/dp: Reset cached LTTPR count if number of
 LTTPRs is unsupported
Date: Mon,  8 Jul 2024 22:00:26 +0300
Message-ID: <20240708190029.271247-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240708190029.271247-1-imre.deak@intel.com>
References: <20240708190029.271247-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

After detection the cached LTTPR count can be checked to determine if
LTTPRs in non-transparent mode were detected. Reset the cached LTTPR
count if the reported number of LTTPRs is invalid to ensure the above
checks work as expected.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index d044c8e36bb3d..56b9c5cb1254d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -174,7 +174,7 @@ static int intel_dp_init_lttpr_phys(struct intel_dp *intel_dp, const u8 dpcd[DP_
 	 * still taking into account any LTTPR common lane- rate/count limits.
 	 */
 	if (lttpr_count < 0)
-		return 0;
+		goto out_reset_lttpr_count;
 
 	if (!intel_dp_set_lttpr_transparent_mode(intel_dp, false)) {
 		lt_dbg(intel_dp, DP_PHY_DPRX,
-- 
2.43.3

