Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B2DB342CC
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Aug 2025 16:11:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DD2610E25C;
	Mon, 25 Aug 2025 14:11:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BL+/SPnr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4380110E25C;
 Mon, 25 Aug 2025 14:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756131077; x=1787667077;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DSUzq1yCZifxIG5hKiKAtJZfq7rW44Rc8gFi2WoLuKY=;
 b=BL+/SPnrChD9sKEL2LVYs/UAzR2MBVW5bpYzHLk6O4YLC5P+FAYYlF51
 Zwu6Lo41mdtLDBnKloew5joHeHrdCmdORHALOHLtkk58B9BniJz7OjdkE
 D3zIxTPOHhx3IRkCl2DDuqGQ42MDyfEvylPQfjZktXbwQOvya+vcduOgx
 fwWSMS+9GeB2mtiFgQH65kinUiNg5rehAE/Nnm6CQ0NqLDj1irc/zZWK2
 VcdgzuoMalyQo3AR+OJtEtyi9WeO7I9C7Htj5SvClGYxSH4kl+MmmYLSd
 iu/u780BituxiFXBumLCqz0X880gMTEliAEcUCTwlqhxKVUPN6alXoy2M Q==;
X-CSE-ConnectionGUID: 5BylTRrbS5OUVnFYwd+N4A==
X-CSE-MsgGUID: K7FlYAutSDSdbvGqdtiQKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11533"; a="58270093"
X-IronPort-AV: E=Sophos;i="6.18,213,1751266800"; d="scan'208";a="58270093"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 07:11:17 -0700
X-CSE-ConnectionGUID: DxvZLo7eQUuLpi4mqA3yTg==
X-CSE-MsgGUID: kEbdkkhBRfGjs1VjPoINKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,213,1751266800"; d="scan'208";a="174585907"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 07:11:15 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH] drm/i915/vrr: Drop redundant HAS_VRR checks
Date: Mon, 25 Aug 2025 19:27:33 +0530
Message-ID: <20250825135733.3202475-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

We fill crtc_state->vrr.flipline only when HAS_VRR() returns true.
This makes HAS_VRR() check redundant in places where we are already
checking for intel_vrr_possible(), which returns true only if vrr.flipline
is set.

Drop such HAS_VRR() checks to simplify the logic.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 3eed37f271b0..b9061cbb67d5 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -652,9 +652,6 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!HAS_VRR(display))
-		return;
-
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
@@ -678,9 +675,6 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!HAS_VRR(display))
-		return;
-
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
-- 
2.45.2

