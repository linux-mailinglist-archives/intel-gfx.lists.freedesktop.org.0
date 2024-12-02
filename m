Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DFB9DFB9D
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 09:06:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8165E10E644;
	Mon,  2 Dec 2024 08:06:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TnriXRAv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BA1010E644
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2024 08:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733126772; x=1764662772;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u+2MUsp3YkZcNp1UpgOv52VR/TEa3Gos6SdHtpMM4Ug=;
 b=TnriXRAvlGVlGieTD6KeEgXotbqTOFDTktdh1gMOgo10/JmmMyiZOiZC
 tTx2+EK84AajX9fdwGT9RSPQyhLND0ZWVzwO47d/tCtYDXY0zDlxd733E
 LQHZBqyEyrVPqT4wx0pODheemCPB25Kxq2+LWTj8+7+PtDEyNHYNo4doR
 21nr5HqqLEfwbASAJzEfEPfViZ4G/aeCIVRBfJ6HB7CYohUSP24S0qjJX
 w+rSMjXDeaqzKwNuRmHMkCOWcQVOos/ovQSX+RWNxvDEEib3eH1Bi5prR
 70Ethn/k4H/y6TtzFyDR+mvr9EibIrnXN38mXeDytwHhV5FZJBEEdhugD Q==;
X-CSE-ConnectionGUID: +0a68U1/RN2Mvt3VKpY0Vg==
X-CSE-MsgGUID: lTrVYkQpT+2rvzvq4M6y5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="50694391"
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="50694391"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 00:06:11 -0800
X-CSE-ConnectionGUID: rbsuhpXbQ46XsHDzFklj6A==
X-CSE-MsgGUID: Lxpj/QddSNKVFNHnNpj/1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="93212339"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa008.fm.intel.com with ESMTP; 02 Dec 2024 00:06:10 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH 2/2] drm/i915/lobf: Add debug print for LOBF
Date: Mon,  2 Dec 2024 13:16:14 +0530
Message-Id: <20241202074615.3601692-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20241202074615.3601692-1-animesh.manna@intel.com>
References: <20241202074615.3601692-1-animesh.manna@intel.com>
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
index 45865a8d1dd2..fd77fcbd81aa 100644
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

