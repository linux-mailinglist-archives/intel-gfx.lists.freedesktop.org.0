Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EA58CAA2D
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:42:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDEFA10E2DA;
	Tue, 21 May 2024 08:41:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WbsBtqyq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F91E10E2A9
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716280909; x=1747816909;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/s4atWTwJImP3dXEJ09CFT60xYzIbYZtW3i5NnNCiXA=;
 b=WbsBtqyq1GyE5DbbqfuLxzuXvN06HvyOs3JVBiYDQolc7/QG5jO/D6d2
 PoBvxowvvD7IM/pYX3jq0DNMBF33Hnea6KFB1IhJk3G4GcwoDUk1xsUiO
 Ryp5L+SgVkPUl3wfzzlZ2OI9UWOO+pNfYHCkI0pBayEiGW/AMWL4P+Ixe
 OZq7BAheubCZYQkDB/ZpbDCeElC688+C7Pb+Id/JdrBeBwEZuZ/PQqoUh
 jRS33zfUsQ9LIno82qdrdR/3i4/PF101svL2VUh9uFG0lRERFVdecJIyB
 HsZhgiW6TTUwwEpVP4U5vlW4DwODB2lS6dlLUeBRvt/TGgzgkasnLBn5q w==;
X-CSE-ConnectionGUID: 0RDC+1fGTsmM+udVJozNpw==
X-CSE-MsgGUID: o6lnO9fKST6H/JUeoZbEow==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="23860347"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="23860347"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:41:49 -0700
X-CSE-ConnectionGUID: ccN1mOdFR3aaabK7dFXzPw==
X-CSE-MsgGUID: wyuuL9c4QWqiYjWVPAB5Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="37426222"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:41:47 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 3/9] drm/i915/psr: Get Early Transport status in
 intel_psr_pipe_get_config
Date: Tue, 21 May 2024 11:41:17 +0300
Message-Id: <20240521084123.1984075-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240521084123.1984075-1-jouni.hogander@intel.com>
References: <20240521084123.1984075-1-jouni.hogander@intel.com>
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

We are currently not getting Early Transport status information in
intel_psr_pipe_get_config. Fix this.

Fixes: 467e4e061c44 ("drm/i915/psr: Enable psr2 early transport as possible")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ac293d1ca447..6430e6a7ee48 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1764,6 +1764,8 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 			pipe_config->enable_psr2_sel_fetch = true;
 	}
 
+	pipe_config->enable_psr2_su_region_et = intel_dp->psr.su_region_et_enabled;
+
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		val = intel_de_read(dev_priv,
 				    TRANS_EXITLINE(dev_priv, cpu_transcoder));
-- 
2.34.1

