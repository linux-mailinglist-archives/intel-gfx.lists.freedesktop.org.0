Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCS5GmI/F2qg9wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 21:00:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3635C5E94E7
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 21:00:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5708710E93D;
	Wed, 27 May 2026 19:00:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DMnPlacp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C427E10E928;
 Wed, 27 May 2026 19:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779908445; x=1811444445;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=bp0ZqlZBe6qyoUsuxM3UzttEB1/j0g/z3VNZFIMz/qc=;
 b=DMnPlacp9yPox26l1Hn/TdgWAiaC6eJBXUm5FzqKprqi6Jds7p9r5qhw
 EZPIzDMZpIBZ7gB2siS0a72Tf2AFzfHzW8bY5Xj1+wuRg15GymqdBGHnW
 5cB9KQczAcK0PpvVJ699JyRnDax7bu9TvaolPyvOmbCqT27tezNYL+lAo
 tMmWV1d8cHqHWRv+woINlfvcO86gzIbjSrW2pyg5aKfPj18VNy3Z6acM9
 BJKGTnEivfK2b8sgzfQ/CDEfKyVd96+U5XOKEwe4+8VqrNa7BpyooP+n7
 U46Fsfd4lS0PH984myav/KjI0O9vR3qu/In8uV7FogZNaPtd5G7NJJtvH w==;
X-CSE-ConnectionGUID: M9byXkSTQEaz+Qe3+E5rsg==
X-CSE-MsgGUID: al8ve+RhSZCONNCtUWOpdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="80602145"
X-IronPort-AV: E=Sophos;i="6.24,172,1774335600"; d="scan'208";a="80602145"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 12:00:45 -0700
X-CSE-ConnectionGUID: iAiNSbPnTDq2mCr0RUyYAQ==
X-CSE-MsgGUID: DoOtljZhSmO5m5zWDwElfw==
X-ExtLoop1: 1
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 12:00:43 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI 10/17] drm/i915/display: PSR2: Set idle_frames to 0 for DC3CO
Date: Thu, 28 May 2026 00:29:57 +0530
Message-ID: <20260527190004.118730-11-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260527190004.118730-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260527190004.118730-1-dibin.moolakadan.subrahmanian@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 3635C5E94E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Force idle_frames to 0 when DC3CO is eligible.

Changes in v2:
- Extend existing Wa_16025596647 condition
  instead of adding a new if block (Uma Shankar)

BSpec: 75253
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d4b294beecef..b4ce3d49d76e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1079,10 +1079,11 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	u32 psr_val = 0;
 	u8 idle_frames;
 
-	/* Wa_16025596647 */
-	if ((DISPLAY_VER(display) == 20 ||
-	     IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0)) &&
-	    is_dc5_dc6_blocked(intel_dp) && intel_dp->psr.pkg_c_latency_used)
+	/* DC3CO / Wa_16025596647 */
+	if (intel_dp->psr.dc3co_eligible ||
+	    ((DISPLAY_VER(display) == 20 ||
+	      IS_DISPLAY_VERx100_STEP(display, 3000, STEP_A0, STEP_B0)) &&
+	     is_dc5_dc6_blocked(intel_dp) && intel_dp->psr.pkg_c_latency_used))
 		idle_frames = 0;
 	else
 		idle_frames = psr_compute_idle_frames(intel_dp);
-- 
2.43.0

