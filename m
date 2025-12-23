Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF650CD8F72
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 11:51:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4525F10E2D0;
	Tue, 23 Dec 2025 10:51:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HfVnjH3F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1C8310E2D1;
 Tue, 23 Dec 2025 10:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766487109; x=1798023109;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hnEc4Cr5VVhmJgseHp/wxIAmUZbj/GD5n9qEi8DuoSY=;
 b=HfVnjH3FOE5ettC+dd5qdz71TZLTuWVi8nbvWsE3YS9LZP7g4J/gKRcC
 ecFYAsH5JABTUswL2fAYvbQNIX5rtiUn9UtuNiY00Owk+1t+XbRLdPD6K
 otfYKwRocC0AzVvTNSxwaEhLfF/h+Tn7ZFpBtPkJpse8txm7lfVQV3g6w
 AwiEBVNxCtll6ESh8Ms70dxbGGQdCPr2ddNm4IUudnx/RRYhjETnA7csx
 8SIp4a/VrJ/jkOzXUI5ocpBY/Y1/H//MwKojnvaV8FC4oFWYY2Kh1abSA
 TQjFfmOjAV+qYiYUFH9tiJKbxFdu4WX5nIq+fUeQpsPWKIZF/hp/LFw06 g==;
X-CSE-ConnectionGUID: Kn/adNw7Qm6yznA6VNwRFA==
X-CSE-MsgGUID: LStUJoQ1QKaUUvpnM3WOSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="78651287"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="78651287"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:51:49 -0800
X-CSE-ConnectionGUID: BNahZ7pLTSmJQ7m1dJfhsg==
X-CSE-MsgGUID: jseGNv+bTMyWqGb41p8arQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="204806252"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.100])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 02:51:47 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v9 8/8] drm/i915/psr: Use TRANS_PUSH to trigger frame change
 event
Date: Tue, 23 Dec 2025 12:51:20 +0200
Message-ID: <20251223105120.21505-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251223105120.21505-1-jouni.hogander@intel.com>
References: <20251223105120.21505-1-jouni.hogander@intel.com>
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

Now we have everything in place for triggering PSR "frame change" event
using TRANS_PUSH: use TRANS_PUSH for LunarLake and onwards.

v3: use HAS_PSR_FRAME_CHANGE macro
v2: use AND instead of OR in intel_psr_use_trans_push

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ee70d0ceeb5b..353924f8c975 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -4569,6 +4569,7 @@ int intel_psr_min_guardband(struct intel_crtc_state *crtc_state)
 
 bool intel_psr_use_trans_push(const struct intel_crtc_state *crtc_state)
 {
-	/* TODO: Enable using trans push when everything is in place */
-	return false;
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	return HAS_PSR_FRAME_CHANGE(display) && crtc_state->has_psr;
 }
-- 
2.43.0

