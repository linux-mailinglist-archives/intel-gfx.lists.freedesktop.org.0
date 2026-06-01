Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uM/vLdSpHWq+cwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 17:48:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2338E62208C
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 17:48:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F9B4113503;
	Mon,  1 Jun 2026 15:48:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UP3gV2oT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96D26113502;
 Mon,  1 Jun 2026 15:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780328912; x=1811864912;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SQh7sXOPVdj+pPEtWedU2AHf2Rnr4Ia8BUW2YzFFf0Q=;
 b=UP3gV2oTrHiahO4WdMd9ilnDtOXcbgbnn24tvvvOpMFrlxivnjiBAU8F
 nVvcp0y1t1VY3Jd1yYSo327ndR7AudRvFjBANfYbYK/nUyeZAE8gz1/z0
 BqoeWc6O5GH1JBmf9IcUx6aFZPSB3GoXscSOtSk0Qd1aR3q0O65m0MDcw
 jg373zpB990oWSgCLqaTABLiJUphgUVvs0LSxzjzP/IczLOaWXDb4Wqn8
 ypjXaSRaRx+UXsNZtN8aORf5EqdEc6L0+O1AVfY41fjmzJDJTLjRhFlPY
 1RM+gRq8hqMY4ULXPGWaCh3jdF7IflahuB0pto8neudCDx15NlKNUhClo w==;
X-CSE-ConnectionGUID: vg8a91YjTwC6aUYOYS58zA==
X-CSE-MsgGUID: KnAcgiTYSzOABz1eeVliCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="92203223"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="92203223"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 08:48:31 -0700
X-CSE-ConnectionGUID: l0TFflbASoy6UdMKKN+Qtw==
X-CSE-MsgGUID: 1zEccxe3S/KCbfhzkVG3Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="247889843"
Received: from nex-dev-jx.fm.intel.com ([10.105.128.1])
 by orviesa004.jf.intel.com with ESMTP; 01 Jun 2026 08:48:32 -0700
From: James Xiong <james.xiong@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, gustavo.sousa@intel.com,
 ville.syrjala@linux.intel.com, James Xiong <james.xiong@intel.com>
Subject: [PATCH v4] drm/i915/dmc: wait for firmware load before enabling pipe
 DMC
Date: Mon,  1 Jun 2026 08:47:43 -0700
Message-Id: <20260601154743.1127698-1-james.xiong@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[james.xiong@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 2338E62208C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

During driver probe, DMC firmware is loaded asynchronously via a
workqueue. There is a race between parse_dmc_fw() setting the payload
pointer (making has_dmc_id_fw() return true) and intel_dmc_load_program()
writing the firmware to hardware registers. If the probe thread calls
intel_dmc_enable_pipe() -> assert_dmc_loaded() in this window via
intel_modeset_setup_hw_state(), it sees parsed payload but stale HW
registers, triggering a ~20% intermittent WARNING on ADL-N warm boot.

Fix by calling intel_dmc_wait_fw_load() unconditionally in
intel_modeset_setup_hw_state() before iterating CRTCs. This ensures the
async firmware load has completed before any code path that depends on
DMC HW state. The now-redundant wait in intel_flipq_init() (which runs
later during probe) is removed.

v2: Fix by calling intel_dmc_wait_fw_load() in
    intel_modeset_setup_hw_state() before iterating the CRTCs (Gustavo
    Sousa).

v3: Move intel_dmc_wait_fw_load() into intel_dmc_enable_pipe() itself
    so the function is self-contained (Jani Nikula, Gustavo Sousa).

v4: Move back to intel_modeset_setup_hw_state() as a single
    unconditional call before the CRTC loop, remove the redundant call
    from intel_flipq_init() (Ville Syrjälä).

Fixes: 3af2ff0840be ("drm/i915: Enable a PIPEDMC whenever its corresponding pipe is enabled")
Signed-off-by: James Xiong <james.xiong@intel.com>
---
 drivers/gpu/drm/i915/display/intel_flipq.c         | 2 --
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 6 ++++++
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_flipq.c b/drivers/gpu/drm/i915/display/intel_flipq.c
index bf278f60bba7..a258ed128741 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.c
+++ b/drivers/gpu/drm/i915/display/intel_flipq.c
@@ -130,8 +130,6 @@ void intel_flipq_init(struct intel_display *display)
 {
 	struct intel_crtc *crtc;
 
-	intel_dmc_wait_fw_load(display);
-
 	for_each_intel_crtc(display, crtc)
 		intel_flipq_crtc_init(crtc);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index e8730b5baf2a..2f776c41f6b5 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -959,6 +959,12 @@ void intel_modeset_setup_hw_state(struct intel_display *display,
 
 	intel_cmtg_sanitize(display);
 
+	/*
+	 * Wait for DMC firmware load to complete so that
+	 * intel_dmc_enable_pipe() below sees initialized HW registers.
+	 */
+	intel_dmc_wait_fw_load(display);
+
 	/*
 	 * intel_sanitize_plane_mapping() may need to do vblank
 	 * waits, so we need vblank interrupts restored beforehand.
-- 
2.34.1

