Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F179E3768
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 11:23:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C83E810ECC0;
	Wed,  4 Dec 2024 10:23:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jqzzAkV9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D2D610ECC0
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2024 10:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733307807; x=1764843807;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z7UQsS5TRhT/rENTB4QUNF5sepJe3D0k7zoEbcDxui4=;
 b=jqzzAkV9PSk8wbRv8KzsrdbPhf3TXRrqLzPRT8MCc0LQkxCa6MaKI1bA
 HfJy7njnav9XyTwwzxTLeulqBa/fnzCKuBx9M2VUmnadijNLm5S6IwiUm
 XBJorNuu6gM4O80f33j7qg4sPLbjB10UNvOfw/rubJTnMt0G1D78pXRA7
 ObfLAQGR3SJ+qnl+178ZESzW8agVYWs2HEbrVwtRj+OMCmsxXziBOtarH
 0HG1A8yomAz/BblYy59bDtsWmtkq38uMj7y/uDzsBcXA/QGgOq0MpE0OA
 mEDWlO2obeUFKAoHD2xJKT1Rsc9Mdr+qrBPK3fT1Aa3C45cWXVIH63jq5 A==;
X-CSE-ConnectionGUID: gjaJKts/RNmzMWIBskieGA==
X-CSE-MsgGUID: naDNmUXGRUK0Il8j7Q69pg==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44957834"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44957834"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 02:23:27 -0800
X-CSE-ConnectionGUID: nOoHxAj9SDaAFu5TgCHglw==
X-CSE-MsgGUID: 1NxsSXzlQYC/Q7s2zi5wyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93615174"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa009.jf.intel.com with ESMTP; 04 Dec 2024 02:23:26 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 2/2] drm/i915/lobf: Add debug print for LOBF
Date: Wed,  4 Dec 2024 15:33:28 +0530
Message-Id: <20241204100328.3738778-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20241204100328.3738778-1-animesh.manna@intel.com>
References: <20241204100328.3738778-1-animesh.manna@intel.com>
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

Lobf is enabled part of ALPM configuration and if has_lobf
is set to true respective bit for LOBF will be set. Add debug
print while setting the bitfield of LOBF.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 75063342a100..5fa6b36b0193 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -353,8 +353,10 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 			ALPM_CTL_EXTENDED_FAST_WAKE_TIME(intel_dp->alpm_parameters.fast_wake_lines);
 	}
 
-	if (crtc_state->has_lobf)
+	if (crtc_state->has_lobf) {
 		alpm_ctl |= ALPM_CTL_LOBF_ENABLE;
+		drm_dbg_kms(display->drm, "Link off between frames (LOBF) enabled\n");
+	}
 
 	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(intel_dp->alpm_parameters.check_entry_lines);
 
-- 
2.29.0

