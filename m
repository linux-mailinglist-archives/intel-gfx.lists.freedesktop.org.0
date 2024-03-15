Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA04D87C98E
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Mar 2024 09:02:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EE9610FF99;
	Fri, 15 Mar 2024 08:02:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jCfUa1Uy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B891F10FF99
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Mar 2024 08:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710489769; x=1742025769;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bwppbcJZKrhztvdQ71EU5MgmqmTK2RSuijcF410i6C8=;
 b=jCfUa1UyTI/0C8h9NsFR/v6gIpAsMNFfYqR6kfvEpo7YlG6GbCbAAFWJ
 S9nODpU+rUKkK9j3aHd1WdWAHSwftn3e6e/uR8LnxkMn+arKuY70z4xrl
 ktaAt/Dmk/Lwoog840DGrGq8aE3jAc0PCjDp7qbPHPuClGR/T7LscQXeM
 2t8PkmB3796SqQYlAoPJT9ptIopZuCqyyziKtZo+t4cJ6mwDLEd187xYE
 InMvZmbVFJPZBzl59UuK/0OL9t2Prj2I4N+SFUl1/h+zRgMhmuikX75B2
 vZx/GfpbaQ71avpqmlbBHpRUkdhm4bsZJQCox/bqtupVdSTEfDoAjP7Fv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="5553564"
X-IronPort-AV: E=Sophos;i="6.07,127,1708416000"; 
   d="scan'208";a="5553564"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2024 01:02:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,127,1708416000"; d="scan'208";a="43485557"
Received: from kwimmer-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.209.233])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2024 01:02:46 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 5/5] drm/i915/psr: Do not write ALPM configuration for PSR1
 or DP2.0 Panel Replay
Date: Fri, 15 Mar 2024 10:02:22 +0200
Message-Id: <20240315080222.72838-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240315080222.72838-1-jouni.hogander@intel.com>
References: <20240315080222.72838-1-jouni.hogander@intel.com>
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

No need to write ALPM configuration for DP2.0 Panel Replay or PSR1.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 05b30dc63b3d..5d83a51eda44 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1723,7 +1723,8 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
 	struct intel_psr *psr = &intel_dp->psr;
 	u32 alpm_ctl;
 
-	if (DISPLAY_VER(dev_priv) < 20)
+	if (DISPLAY_VER(dev_priv) < 20 || (!intel_dp->psr.psr2_enabled &&
+					   !intel_dp_is_edp(intel_dp)))
 		return;
 
 	/*
-- 
2.34.1

