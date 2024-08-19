Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CC89566D9
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2024 11:26:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD56910E0C2;
	Mon, 19 Aug 2024 09:26:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I9WRd+XC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35E0810E0C2
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2024 09:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724059570; x=1755595570;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Fzjk7Jjs7XOwmLbZVvNEIn7zgRe1KTIv2+QwVHkm9vg=;
 b=I9WRd+XC0D1De0MATr9/ye0V0HqCCClK4sMSgKmOb/3X2zGdRQvnlqT4
 7M8/966N1Y6noTdiDmmBeCDgGAx8VA2DMVfhdN592Ix+MLDJDvFrxwcHB
 hyAKPNEb6bawv7zFkrfpUqEXaADMFmG2hVOP3UKD3aTMo9DuMeVLiu2+7
 EAad4VOG63kD86eZp+x5Z90+Y9KRkj8T4lLKb3w2V7v82KFZkV9fTzdJq
 OGp8cMiDKrs4kTGwiKtNmXv/doFNygvH/vliyySo80RaLNsrmyK6RANRa
 GXpysl4u4z1I3DpAjiDTxsGg/ISlaL5+sp2Vx853sMu0C8Uso3ceOXkW/ A==;
X-CSE-ConnectionGUID: 8y9dqW6cTvy2D2oHKvhWEg==
X-CSE-MsgGUID: QgO1ynv/Rl2qaiaIh02dxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11168"; a="32868236"
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="32868236"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 02:26:09 -0700
X-CSE-ConnectionGUID: SpSQ3SPVRHCkT3cBE20zCQ==
X-CSE-MsgGUID: w8jDlNspRCWrzJKKtLeTZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="60153443"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.114])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 02:26:07 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/psr: Prevent Panel Replay if CRC calculation is
 enabled
Date: Mon, 19 Aug 2024 12:25:49 +0300
Message-Id: <20240819092549.1298233-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
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

Similarly as for PSR2 CRC calculation seems to timeout when Panel Replay is
enabled. Fix this by falling back to PSR if CRC calculation is enabled.

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2266
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9cb1cdaaeefa7..572dcdf77453c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1586,6 +1586,12 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 	if (!alpm_config_valid(intel_dp, crtc_state, true))
 		return false;
 
+	if (crtc_state->crc_enabled) {
+		drm_dbg_kms(&i915->drm,
+			    "Panel Replay not enabled because it would inhibit pipe CRC calculation\n");
+		return false;
+	}
+
 	return true;
 }
 
-- 
2.34.1

