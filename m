Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0120CC99BA9
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 02:23:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42A5210E505;
	Tue,  2 Dec 2025 01:23:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NAnhMQ0b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA39510E50B;
 Tue,  2 Dec 2025 01:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764638599; x=1796174599;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zGKfIrBE95JAinDbZV2UKWs7UiBm4UmJhcNkVJzCGVg=;
 b=NAnhMQ0bDoIgSWK+g+I2c4bJie/RnKUSx6Rdxr06SXWlLXc72+RAZRS2
 TGFX9aIEuC4f4rJ654gox1cR9OPB47Eq22f8y8dVky02nzyg2aCVKEdD4
 3lKnuYCHRzU3z1Ztz7GLaDzUkNJXOH5Hu+oh3ccYrxVajF/XZAg9U+HtD
 IMlPRDX3nj7nC9ReTrXYZv40yBiRkGIHt4XoEgJcsTNYAc434yc7krI08
 5P9gD/GpvsqlNW28v0uW9bCfZQAufOz712atlp5ILz0Q/4kYaOKUuKwrh
 BcD7LT79jI2jmX0kLg98mY6NgpnfVsRpJNvCCcc5159iPWOA6NDj+eyqi A==;
X-CSE-ConnectionGUID: ekj5BAvKSyi95nf576lvgQ==
X-CSE-MsgGUID: HrDg/sLtSyS5b/IlTPKw7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="69186553"
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="69186553"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 17:23:18 -0800
X-CSE-ConnectionGUID: 98XCbo+GS++dsTCtA+4krw==
X-CSE-MsgGUID: NxGYw3JFTDeOTl1M6A7DPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="224927920"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.125.111.179])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 17:23:18 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@Intel.com, dnyaneshware.bhdane@intel.com,
 gustavo.sousa@intel.com, jouni.hogander@intel.com,
 juha-peka.heikkila@intel.com, luciano.coelho@intel.com,
 matthew.d.roper@intel.com, ravi.kumar.vodapalli@intel.com,
 shekhar.chauhan@intel.com, vinod.govindapillai@intel.com,
 imre.deak@intel.com, jani.nikula@linux.intel.com, suraj.kandapal@intel.com,
 jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 sai.teja.pottumuttu@Intel.com, Suraj Kandpal <suraj.kandpal@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v6 6/8] drm/i915/display: Use platform check in HAS_LT_PHY()
Date: Mon,  1 Dec 2025 17:23:04 -0800
Message-ID: <20251202012306.9315-7-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251202012306.9315-1-matthew.s.atwood@intel.com>
References: <20251202012306.9315-1-matthew.s.atwood@intel.com>
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

From: Gustavo Sousa <gustavo.sousa@intel.com>

NVL uses the Lake Tahoe PHY for display output and the driver recently
added the macro HAS_LT_PHY() to allow selecting code paths specific for
that type of PHY.

While NVL uses Xe3p_LPD as display IP, the type of PHY is actually
defined at the SoC level, so use a platform check instead of display
version.

Bspec: 74199
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index b7911acd7dcd..0820968e51b5 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -42,6 +42,6 @@ void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state);
 void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
 
-#define HAS_LT_PHY(display) (DISPLAY_VER(display) >= 35)
+#define HAS_LT_PHY(display) ((display)->platform.novalake)
 
 #endif /* __INTEL_LT_PHY_H__ */
-- 
2.51.0

