Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F72A1D475
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 11:29:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A473910E2EF;
	Mon, 27 Jan 2025 10:29:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cj37KbhB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C56DA10E2EB;
 Mon, 27 Jan 2025 10:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737973747; x=1769509747;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UlrkBSafkNP+62mUr00oaZA+gnup6R4IojzNixdgb2A=;
 b=cj37KbhBjcGN8taf9n2MuFywOJngOFQq5OxOqSNY6OLXm/ZeBHF64MXM
 sUIQPSMNudCpVwM2/LO9i5f3eEl2KtsaFoktXNuKIEhe0oFp5CY3vqLW+
 zYP5op8+3h35kXkaM9r3zcw0aHN4T/rfYw2W+JA79G9oSB0v7xUhcuEFf
 DicEhoqbLKd/Rb/h4LxPhty/ZfD2afoTOKY8eyiAT3RyKVYaZg58bEN1G
 +tpqIY73KfBhF+ytNmauct8nWdxZ4IlGrczQdJkRZ6maoLH0QMdAM/inC
 vYNS78uBOT9EgWlSVFvzUX+mRNZHFGucVpzZyt4Xn+HFbMo/Qv18t5Qxw A==;
X-CSE-ConnectionGUID: yWTtW4IGTsukWM81Zl9QTA==
X-CSE-MsgGUID: u++C8hfjSumhOV19E2gwxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="38529852"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="38529852"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 02:29:06 -0800
X-CSE-ConnectionGUID: 3lwrTnfyRwiYUJ9/owFIeA==
X-CSE-MsgGUID: 4zPVgOJ0TdWeeQXwbhLdhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108837799"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.95])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 02:29:05 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, ville.syrjala@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 01/12] drm/i915/psr: Use PSR2_MAN_TRK_CTL CFF bit only to
 send full update
Date: Mon, 27 Jan 2025 12:28:35 +0200
Message-ID: <20250127102846.1237560-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250127102846.1237560-1-jouni.hogander@intel.com>
References: <20250127102846.1237560-1-jouni.hogander@intel.com>
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

We are preparing for a change where only frontbuffer flush will use
single full frame bit of a new register (SFF_CTL) available on LunarLake
onwards.

It shouldn't be necessary to have SFF bit set if CFF bit is set in
PSR2_MAN_TRK_CTL -> removing setting it on all platforms as there is not
reason to have it different on older platforms.

v2: commit message improved

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2bdb6c9c22835..b4b795c1c43da 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2395,7 +2395,6 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 	val |= man_trk_ctl_partial_frame_bit_get(display);
 
 	if (full_update) {
-		val |= man_trk_ctl_single_full_frame_bit_get(display);
 		val |= man_trk_ctl_continuos_full_frame(display);
 		goto exit;
 	}
-- 
2.43.0

