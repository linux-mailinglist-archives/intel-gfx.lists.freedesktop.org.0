Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5526192656D
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2024 17:59:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E25D10E928;
	Wed,  3 Jul 2024 15:59:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eVjizxDB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A561710E926
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2024 15:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720022371; x=1751558371;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pN1VnzTfh2Gp1qlYUOrxb1EdoWIL8ZmV1gzqpj7prbo=;
 b=eVjizxDBqN1yeqgy3itSrc3enBgqz5ZVYiLXBVolNeQY3unG8Ayxws4H
 cJNTWMWPtC1xzR1jxqBJwNJ6uoTg6piDjQH17Vj1nPWGojCwcDSntSNV6
 QIt3jlxshCM4kvrExNUn+QJRXtQqnxqO1g3AbRjK6q154aKi3EDGn0yE9
 MqfcVpQNfUIIRzrMygWJVsE/BIWXk5iv5N1PdlBrV1M+kEJJJmsZ+HaDk
 xJzq5bkw90W+TSfVKxqd/z5TD29s3nP9h+A+HKh/OI+Vf4Y8HiVxPHYvn
 E17h09Ol2Bo4hHeDGCtDtLvdYifPatcH8Ja8Y/kqQ3WfdQQXoVXptMdNf A==;
X-CSE-ConnectionGUID: e5KAkAueT7O/tkozT6hnKQ==
X-CSE-MsgGUID: +0Jsmzu+TG2pr3TthNnhFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="17131769"
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="17131769"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 08:59:30 -0700
X-CSE-ConnectionGUID: fhfpP8QJRDq4IiOoB0TBtQ==
X-CSE-MsgGUID: T/FBkVuFTFqlx4iE0ceRpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="46964118"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 08:59:29 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/5] drm/i915/dp: Keep cached LTTPR mode up-to-date
Date: Wed,  3 Jul 2024 18:59:35 +0300
Message-ID: <20240703155937.1674856-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240703155937.1674856-1-imre.deak@intel.com>
References: <20240703155937.1674856-1-imre.deak@intel.com>
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

Nothing depends on the cached LTTPR mode, however for consistency keep
it up-to-date with the value programmed to the DPCD register.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index df9b35491fc44..31089f1b316d2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -114,7 +114,13 @@ intel_dp_set_lttpr_transparent_mode(struct intel_dp *intel_dp, bool enable)
 	u8 val = enable ? DP_PHY_REPEATER_MODE_TRANSPARENT :
 			  DP_PHY_REPEATER_MODE_NON_TRANSPARENT;
 
-	return drm_dp_dpcd_write(&intel_dp->aux, DP_PHY_REPEATER_MODE, &val, 1) == 1;
+	if (drm_dp_dpcd_write(&intel_dp->aux, DP_PHY_REPEATER_MODE, &val, 1) != 1)
+		return false;
+
+	intel_dp->lttpr_common_caps[DP_PHY_REPEATER_MODE -
+				    DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV] = val;
+
+	return true;
 }
 
 static bool intel_dp_lttpr_transparent_mode_enabled(struct intel_dp *intel_dp)
-- 
2.43.3

