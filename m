Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F74371FF8A
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 12:40:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCEBA10E657;
	Fri,  2 Jun 2023 10:40:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ECED10E657
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 10:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685702415; x=1717238415;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=51wTgqm+s5Rg2y3fr6wN/xeMKfkq6cAN1KYDxCfvrX8=;
 b=Mcs2ZlG80+CC16vUlG+vkoCt2RfPfOR57kaCu8pyV2mNngBqbMglauPh
 9FVnKBy8hKFBMUjrADxFybt+qHdMupqu+u6NcG+7YBxwSpoVQfTPI2BN6
 CdY5cg4jMweHdVxTm6CTVyVRGtbbje20QlNHlJrpEsMRGTS+egeE1BySD
 qvFwYEPzch9mlLTB0zx8s2mmqTTDA/UJmDNm+V61KVdCkvBcfo2zMz2ft
 dAGu9oH/0kYgL8Wc2HkQ5pNjuseHSDFgDx6JjyWDVRrGomFV1PvriNyRt
 uSQgEh3x0zJLHyAMqVUnxkN/sz7cTRmyVnVwkk6JceFcT6B2Di+dbjl6m A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="340468028"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="340468028"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 03:40:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="685278556"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="685278556"
Received: from amelillo-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.209.93])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 03:40:12 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Jun 2023 13:39:19 +0300
Message-Id: <20230602103928.1012470-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230602103928.1012470-1-jouni.hogander@intel.com>
References: <20230602103928.1012470-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 01/10] Revert "drm/i915/display: Make FBC
 check stolen at use time."
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

This reverts commit 21e4ad64271f79f821e808a3a84bc145f4c5b2cb.

As a part of clean-up we want to revert this patch and introduce required
changes as a set of patches.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 0e8e899f596b..0a9b081c18b8 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1134,13 +1134,6 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	if (!fbc)
 		return 0;
 
-#ifndef I915
-	if (!i915_gem_stolen_initialized(i915)) {
-		plane_state->no_fbc_reason = "stolen memory not initialised";
-		return 0;
-	}
-#endif
-
 	if (intel_vgpu_active(i915)) {
 		plane_state->no_fbc_reason = "VGPU active";
 		return 0;
@@ -1794,10 +1787,8 @@ void intel_fbc_init(struct drm_i915_private *i915)
 {
 	enum intel_fbc_id fbc_id;
 
-#ifdef I915
 	if (!i915_gem_stolen_initialized(i915))
 		RUNTIME_INFO(i915)->fbc_mask = 0;
-#endif
 
 	if (need_fbc_vtd_wa(i915))
 		RUNTIME_INFO(i915)->fbc_mask = 0;
-- 
2.34.1

