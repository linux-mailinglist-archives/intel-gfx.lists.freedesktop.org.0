Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1346E9C3A8C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 10:10:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E8AE10E462;
	Mon, 11 Nov 2024 09:10:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Baw1cRxq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9F7B10E462;
 Mon, 11 Nov 2024 09:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731316235; x=1762852235;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i2cgQYwCzHkJZ6li6uIrE+jvmoZmX9ru1cQv2MG7goE=;
 b=Baw1cRxqdSISVlQU9FolrNsq9YiooVQkK/r9Wrq/dc9tLnKZ3ObFE7V5
 k9k4xiRUQli5sDt6HXIV7sVblmp64fwWBqRvPzPKDLz8Yay6IJTMkErhe
 6fsfujDb/lqk/umEWXgymXKVT95fi+E5SksabZpXo55wVIIwRlPHvocIx
 l3MNsezMEV9nmJ/Mkj0p7kZebNzjnkJoBCfKnC9MxG7yu+DH+iPIp6SF7
 bSl91ZqTiNBCMktFpYWN8kFPvE1NH8IjUJcOtKlFlV6QhzGILrlXGKYzA
 yU6KAvkQvMIRARualSWh1Spt0H21odyq+yquCXZb7EN7g7q5dGQ0Pl02S w==;
X-CSE-ConnectionGUID: kR51x3VFT5yulIrCaWkiXA==
X-CSE-MsgGUID: UDCQdpjNTvSUcqlo9KrYZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35052429"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35052429"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:35 -0800
X-CSE-ConnectionGUID: sriNzN6bQS+ywDfJ0qariw==
X-CSE-MsgGUID: reHRZ0sbSHKWHVCzSFAzvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86762719"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:32 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 20/23] drm/i915/display: Disable PSR before disabling VRR
Date: Mon, 11 Nov 2024 14:42:18 +0530
Message-ID: <20241111091221.2992818-21-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
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

As per bspec 49268: Disable PSR before disabling VRR.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6d7f54804542..a62353948686 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1306,6 +1306,8 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
+	intel_psr_pre_plane_update(state, crtc);
+
 	if (intel_crtc_vrr_disabling(state, crtc)) {
 		intel_vrr_disable(old_crtc_state);
 		intel_crtc_update_active_timings(old_crtc_state, false);
@@ -1316,8 +1318,6 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 
 	intel_drrs_deactivate(old_crtc_state);
 
-	intel_psr_pre_plane_update(state, crtc);
-
 	if (hsw_ips_pre_update(state, crtc))
 		intel_crtc_wait_for_next_vblank(crtc);
 
-- 
2.45.2

