Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4327F8B7E91
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:31:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99AE7112D83;
	Tue, 30 Apr 2024 17:31:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ACLsh1lg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD3EA112D7A;
 Tue, 30 Apr 2024 17:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714498221; x=1746034221;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r1sklwSj48CNNRxPiIAqoKjo7MaVp0gz+dElCYGXxnE=;
 b=ACLsh1lg6A8Y66Ugu802rUgvkJ9AniTeyro4fbN+kN3geMemuPWLOQIV
 i4mn9tf2XE5aPgrILk7+kBxz7XnnNVL863MI3dK82DYWN/mFxx7nF3ogY
 2sYp2Kf+l8yAn+BecvG3nFcmbLKkxzscc/w8kLsbDt8dx3JjybKZqFy7N
 GXKuh6/afy74UciKS5D4+eXxTanbqwa4s6eLaguh803STVVsXic6Qs5Gn
 rgO45bOku0rDnaqdUegZ/rx35u1AE0/dJoTvgNYRWRhgEK7ztFi+swI1F
 PrkLozC313i0Zv/k1Isw9pkKUoCFkrL3/eCIZ7FDFZEu5Fe1GAcLA6ujC g==;
X-CSE-ConnectionGUID: Xjw3MIWBTc6cDo4QVHLTQg==
X-CSE-MsgGUID: U5oNP7nWQ+WgnP7wFo70qg==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="27742002"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="27742002"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:21 -0700
X-CSE-ConnectionGUID: LTOuyirKQuSRxxSAmksKWw==
X-CSE-MsgGUID: KlZswUupTte14HxdqkgJMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26617855"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:21 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: [PATCH v3 15/19] drm/i915/xe2hpd: Set maximum DP rate to UHBR13.5
Date: Tue, 30 Apr 2024 10:28:46 -0700
Message-Id: <20240430172850.1881525-16-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
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

From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Max supported speed by xe2hpd is UHBR13.5. Limit the max DP source rate
to it.

Bspec: 67066
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e05e25cd4a94..486361eb0070 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -477,6 +477,9 @@ static int mtl_max_source_rate(struct intel_dp *intel_dp)
 	if (intel_encoder_is_c10phy(encoder))
 		return 810000;
 
+	if (DISPLAY_VER_FULL(to_i915(encoder->base.dev)) == IP_VER(14, 1))
+		return 1350000;
+
 	return 2000000;
 }
 
-- 
2.34.1

