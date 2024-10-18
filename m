Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 850259A4877
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 22:49:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64D0810E99F;
	Fri, 18 Oct 2024 20:49:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i9jMbMTj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B62FA10E997;
 Fri, 18 Oct 2024 20:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729284591; x=1760820591;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nbo35c4Mhhp2vGJ5cDwDut0Pd7xCueHIaM2ahpoZbPU=;
 b=i9jMbMTjjIlDGHFjSTpwSEGcVnOuIHgPg9vLm/VRX3nP+CG5Q3059SAZ
 ajO2I++iRXGzEDc2Khy42jc0Yy6m/TiMiA0ujBvBrEmHRwWSiF2R/7SWU
 SEL44XWDFEIXrPFqREDtlisJSdfqaPUjz+HdIwZFgC2QDbNKlSKSrjWE3
 S66okI7XpixhSTztWr7Z+xtm6PY1Vw16kQ4y9WQiAqQmckM7XS/h73LyJ
 Q7INDu8YuJ7FKJzy/YjpV+HRZV+LNYo6EeIHvPUbGYusjL8jJhLUzufPS
 Iylrd7W2iBEEfYLJxP7MQ6kIgG1irWF5inAauyJvCgfhmevOy1vIbs1F6 g==;
X-CSE-ConnectionGUID: NZcV2C/BRRalYjEQv/hMFw==
X-CSE-MsgGUID: Kd3ri3Z4Trqvfj8I7XwqWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="54240187"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="54240187"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:50 -0700
X-CSE-ConnectionGUID: o9lj2TW1Q+yhQpgugzSGag==
X-CSE-MsgGUID: OzZhq2aHTK+MyC8ItRPLDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="109798946"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.145])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:48 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH 05/12] drm/i915/xe3: Underrun recovery does not exist post Xe2
Date: Fri, 18 Oct 2024 13:49:34 -0700
Message-ID: <20241018204941.73473-6-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241018204941.73473-1-matthew.s.atwood@intel.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
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

From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>

From platforms xe3 Underrun recovery does not exist

BSpec: 68849
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 01466611eebe..dad415650b40 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -861,7 +861,7 @@ static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
 	 */
 	if (IS_DG2(dev_priv))
 		tmp &= ~UNDERRUN_RECOVERY_ENABLE_DG2;
-	else if (DISPLAY_VER(dev_priv) >= 13)
+	else if (IS_DISPLAY_VER(dev_priv, IP_VER(13, 0), IP_VER(20, 0)))
 		tmp |= UNDERRUN_RECOVERY_DISABLE_ADLP;
 
 	/* Wa_14010547955:dg2 */
-- 
2.45.0

