Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2476899BF5
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 13:36:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDAFA113B48;
	Fri,  5 Apr 2024 11:36:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xk6ocpMj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98678113B45
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 11:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712317004; x=1743853004;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GeTmgVUPhPTAH7oSIP1ugEbK4+4MyUa2sk0sbLJDSpY=;
 b=Xk6ocpMj2eb5XMBvHyX5x32k0pijgRnj/fVSxOpbYM759WFyruDr+tsb
 ETSzFDqOEq9TQueoHGgwUeALyUVek8TpgVl+5yR/kPsS8OVF0N/dU83Jb
 rph9v/RvsSbnZ3xZaGfe4HCSJiLv1G/QwEHDotXSAMGFzWWZncSjSaf2K
 m5uNO7x3Ui5nYDTdjV6bU0fnlA/JBKWv7ZkzzCWjmVOIBaCWYqFUSyRaV
 KYL3kdA+Fhh3HvYqTRgKi1SZtszFVm6yu3TntWqPvD8YaDUTon9tGcZng
 CoIs3t770ZLGstwhf8luU57AJIk4CcmfvXG4j6Hgglvv1OOjdJ71JIF2e w==;
X-CSE-ConnectionGUID: svUJGeydSUuBGkK+azkiKA==
X-CSE-MsgGUID: jKk61bRcTTymVas2LgM4dg==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="30116540"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="30116540"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:36:44 -0700
X-CSE-ConnectionGUID: bExxPmAbSD6ghu9+0EjWOA==
X-CSE-MsgGUID: ZehAtLgySOm+C15OQcN6Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="23858749"
Received: from ctiouajx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.214.82])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:36:43 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 3/8] drm/i915/psr: Intel_psr_pause/resume needs to support
 panel replay
Date: Fri,  5 Apr 2024 14:35:57 +0300
Message-Id: <20240405113602.992714-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240405113602.992714-1-jouni.hogander@intel.com>
References: <20240405113602.992714-1-jouni.hogander@intel.com>
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

Currently intel_psr_pause and intel_psr_resume do nothing in case of panel
replay. Change them to perform pause and return also in case of panel
replay.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 10a7795cdb6f..bd99b9953274 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2104,7 +2104,7 @@ void intel_psr_pause(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct intel_psr *psr = &intel_dp->psr;
 
-	if (!CAN_PSR(intel_dp))
+	if (!CAN_PSR(intel_dp) && !CAN_PANEL_REPLAY(intel_dp))
 		return;
 
 	mutex_lock(&psr->lock);
@@ -2137,7 +2137,7 @@ void intel_psr_resume(struct intel_dp *intel_dp)
 {
 	struct intel_psr *psr = &intel_dp->psr;
 
-	if (!CAN_PSR(intel_dp))
+	if (!CAN_PSR(intel_dp) && !CAN_PANEL_REPLAY(intel_dp))
 		return;
 
 	mutex_lock(&psr->lock);
-- 
2.34.1

