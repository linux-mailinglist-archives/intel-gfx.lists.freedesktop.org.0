Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E8AA2766B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 16:49:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE6D410E6A3;
	Tue,  4 Feb 2025 15:49:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LmNX11ZT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EEBF10E6A3;
 Tue,  4 Feb 2025 15:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738684174; x=1770220174;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aEQ5RKTqZfnTzsEV4qipgcgMgE+JYcQGwuP5Twkf8Bs=;
 b=LmNX11ZTR9ZQN51uC7iDLcWqOUXvguvzbyH7PvUXa+/gtdLlhr2ZWPWC
 tgC4p1Msu9eSjzON21JQrqh5U8yCTYzvPua3iZf+Wu/yqHsVd7GSLp1SV
 MjELqCfE1K0Fnl5ALfY6ui1LDbJ7CNQLLE8xPJb9ti3FmUxOH+WnSMxuo
 09EJD1sLndT9aIYHstjxaQlzONhD2PZXx7cZQfnr5MDkiRRdq3beEqNox
 Fs2ZFknGwI9APdx7NLN8SaL1RTag7dK+a4vf7rf2x+XhVAaYummDhq3xT
 F4b4VClBznhFEVy6KM8VLk7Q7s/wUK1ihFH8GqlR9yJHxztXhT368j4GK g==;
X-CSE-ConnectionGUID: 9545Hf4rQxKax8iJWYoQ4A==
X-CSE-MsgGUID: whgOLevAST2GnJGrWGy4JA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="49869643"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="49869643"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 07:49:33 -0800
X-CSE-ConnectionGUID: jVRJOgVkSa6nGx35FIprRA==
X-CSE-MsgGUID: qkg2yFjpS7yWLgSLXcGVMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111480465"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 07:49:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH] drm/i915/dp: Fix potential infinite loop in 128b/132b SST
Date: Tue,  4 Feb 2025 17:49:25 +0200
Message-Id: <20250204154925.3001781-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Passing 0 as the step only works when there are other reasons to break
out of the BPP loop in intel_dp_mtp_tu_compute_config(). Otherwise, an
infinite loop might occur. Fix it by explicitly checking for 0 step.

Fixes: ef0a0757bbea ("drm/i915/dp: compute config for 128b/132b SST w/o DSC")
Reported-by: Imre Deak <imre.deak@intel.com>
Closes: https://lore.kernel.org/r/Z6I0knh2Kt5T0JrT@ideak-desk.fi.intel.com
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Note: This needs a backport with (!step) for -rc1.
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 95abc6ea85eb..1587be5cd0a7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -353,6 +353,10 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 
 			break;
 		}
+
+		/* Allow using zero step to indicate one try */
+		if (!bpp_step_x16)
+			break;
 	}
 
 	if (slots < 0) {
-- 
2.39.5

