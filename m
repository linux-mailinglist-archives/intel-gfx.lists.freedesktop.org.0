Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBo2NLZqDWqHxAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2026 10:03:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6C558953C
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2026 10:03:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0724310EF64;
	Wed, 20 May 2026 08:03:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yp/EdBFF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6177510EF49;
 Wed, 20 May 2026 08:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779264180; x=1810800180;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SzFOqWT0Dmf3kU1Lv01Gg/xaLQ4c1vLSupatE4RGU4I=;
 b=Yp/EdBFFY+fuPwmH3cRSkiRcUq0+lsHhYuv5OHSA1ao7VFqy/poemfW0
 MVXK3USO1/a1ds21W1GbW1/Onq4siksMpljW2IJcpfPAyLOg9eTnjQn0f
 p9BNIHY70dmTfojPJsSvVtKd6wmhDusq9Qrf7tsmJxE+JYSToBdB2/mI6
 B5YgINlKiN5sTtFr3MDCplcR+sU88fbd2WJi0Ma+1SpldyjDVmYOBs2rW
 SxO3LsOwpjYxXPev3+Nlrt3Eu3FwX2iyW3aVonsZvP6vkjEJ2Rp5SUvo9
 9oixtiTb104uPfnWMXDW/T6xAI/NrrYm45NVuINE1tI3FOFGJVHNayF8/ A==;
X-CSE-ConnectionGUID: SzAtiaTWTrSHsQNhNJUVKw==
X-CSE-MsgGUID: SzB+6DEjRemlS8n7U9pZ3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="91260575"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="91260575"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 01:03:00 -0700
X-CSE-ConnectionGUID: XDzCgwuFSuee1JgJ1WZLKg==
X-CSE-MsgGUID: rwElSZ/3RZ+K2dU/LnOuaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="263583990"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa002.fm.intel.com with ESMTP; 20 May 2026 01:02:58 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com
Subject: [CI 6/6] drm/amd/display: use plane color_mgmt_changed to track
 colorop changes
Date: Wed, 20 May 2026 13:08:27 +0530
Message-Id: <20260520073827.3395745-7-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260520073827.3395745-1-chaitanya.kumar.borah@intel.com>
References: <20260520073827.3395745-1-chaitanya.kumar.borah@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,amd.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 8B6C558953C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Melissa Wen <mwen@igalia.com>

Ensure the driver tracks changes in any colorop property of a plane
color pipeline by using the same mechanism of CRTC color management and
update plane color blocks when any colorop property changes. It fixes an
issue observed on gamescope settings for night mode which is done via
shaper/3D-LUT updates.

Reviewed-by: Harry Wentland <harry.wentland@amd.com>
Signed-off-by: Melissa Wen <mwen@igalia.com>
---
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index 3ae2f330c6b4..6be77ad25468 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -10198,7 +10198,7 @@ static void amdgpu_dm_commit_planes(struct drm_atomic_commit *state,
 			continue;
 
 		bundle->surface_updates[planes_count].surface = dc_plane;
-		if (new_pcrtc_state->color_mgmt_changed) {
+		if (new_pcrtc_state->color_mgmt_changed || new_plane_state->color_mgmt_changed) {
 			bundle->surface_updates[planes_count].gamma = &dc_plane->gamma_correction;
 			bundle->surface_updates[planes_count].in_transfer_func = &dc_plane->in_transfer_func;
 			bundle->surface_updates[planes_count].gamut_remap_matrix = &dc_plane->gamut_remap_matrix;
@@ -12040,6 +12040,10 @@ static bool should_reset_plane(struct drm_atomic_commit *state,
 	if (new_crtc_state->color_mgmt_changed)
 		return true;
 
+	/* Plane color pipeline or its colorop changes. */
+	if (new_plane_state->color_mgmt_changed)
+		return true;
+
 	/*
 	 * On zpos change, planes need to be reordered by removing and re-adding
 	 * them one by one to the dc state, in order of descending zpos.
-- 
2.25.1

