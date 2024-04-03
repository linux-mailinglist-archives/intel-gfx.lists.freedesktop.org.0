Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E107F896E1E
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:23:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A815112A2A;
	Wed,  3 Apr 2024 11:23:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ibjU1RlD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3391112A28;
 Wed,  3 Apr 2024 11:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712143413; x=1743679413;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FSXs20PJBJyOLgqakwjPbhb+TaNU4Tq3YC8JVaxUI0A=;
 b=ibjU1RlDXj6ga8HbO+lkbrvv+XWm6rzUB2psVwIsla2O0LTF2xS4nRLB
 /WuqJeo6zStRy+rUyK5Z04KC6OwbWuSOF/Ruq6GgkfAMA902JpdWf+WJB
 sdk33TCwid6zlq5tvZrA3lcd1rfqlFigTcZC6XjVq4+TApf3iS/PMaK2x
 XJ9U++8qcUN7Z1fBWjX6gSmRbG9tLOHasGjRCjgwSU62TxlCTFjhMydp4
 1TWMDu95CghEVpa7Ge2NXrh4bYuaUg5qwa2vNxhDlVPK2bvWjnLlh+S7O
 JQwlgOUxRXWgQTWfUip/Tym50tpAt6taiUuDnNoXS/SVw/Got1G0NLBJX Q==;
X-CSE-ConnectionGUID: ZUqxXn2fQgiIK0PGW2Xlng==
X-CSE-MsgGUID: P53NNWHJQTSHzwuMzufgTg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24824155"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24824155"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:33 -0700
X-CSE-ConnectionGUID: tn0s3VilQuKBwcVEiRkQOQ==
X-CSE-MsgGUID: ls596PRQRWGJ/TDYy+PT+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18358564"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:31 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v2 21/25] drm/i915/xe2hpd: Set maximum DP rate to UHBR13.5
Date: Wed,  3 Apr 2024 16:52:49 +0530
Message-Id: <20240403112253.1432390-22-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
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

Max supported speed by xe2hpd is UHBR13.5. Limit the max DP source rate
to it.

Bspec: 67066

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b393ddbb7b35..d9d37f4971dd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -466,6 +466,9 @@ static int mtl_max_source_rate(struct intel_dp *intel_dp)
 	if (intel_encoder_is_c10phy(encoder))
 		return 810000;
 
+	if (DISPLAY_VER_FULL(to_i915(encoder->base.dev)) == IP_VER(14, 1))
+		return 1350000;
+
 	return 2000000;
 }
 
-- 
2.25.1

