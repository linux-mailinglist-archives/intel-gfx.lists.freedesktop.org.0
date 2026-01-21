Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JwDAepBcGnXXAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 04:03:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A1950320
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 04:03:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DCE910E68B;
	Wed, 21 Jan 2026 03:03:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E1yWrRq8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DED910E686;
 Wed, 21 Jan 2026 03:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768964582; x=1800500582;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EuqWGTyrw+2MNh5+h4NZtQZtbkg5gau16KI+GEfLpZo=;
 b=E1yWrRq82OrdYxwlRrh8TgQZhLPKHM6Bb21NByRmzQInXqEGcMzyfrEQ
 5XxtWn2DXh4sAKZWWrg0IQUoXQ9Wuet0avR5MgeHOMKUk3OI3GFMgVtRb
 2XE/5hss4dDhM8gtHMBYjiGfC3n69CD3CZhbRqhzvKb2M1pzbvb6+gLqt
 8A+YotYLcKgq47NJSDyt+KlqvMojsOy1XNpewSjr/evUn2kmnUY141qZW
 V8hWRBigyyS3EPfRyl+yadG1DYjLsDxilG2Usj8geNe7O6fHdjs2lubDo
 7aRRbFieJTQ5j52U0niuQnTMz/g4Qy0bcAXDuS8hHR2YS1xU4auwD0wh6 w==;
X-CSE-ConnectionGUID: uuBZxeiOQ4C3gYh5SguVSQ==
X-CSE-MsgGUID: EXyWQCuYQnapIOtQkUxqMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="70278729"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="70278729"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 19:03:02 -0800
X-CSE-ConnectionGUID: j3BwPWYEQkiPlp+rwdpEKQ==
X-CSE-MsgGUID: 2u/rgMOOTUC3z9lo42OseA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="205437840"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa006.jf.intel.com with ESMTP; 20 Jan 2026 19:02:59 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH v2] drm/i915/display: Disable DMG Clock Gating
Date: Wed, 21 Jan 2026 08:32:57 +0530
Message-Id: <20260121030257.662294-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260120050033.635681-1-suraj.kandpal@intel.com>
References: <20260120050033.635681-1-suraj.kandpal@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 86A1950320
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Incorrect clock is connected to DMG registers.
Disable DMG Clock gating during display initialization.

WA: 22021451799
Bspec: 69095
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
---

v1 -> v2:
-Remove details from comment (Nemesa)
-Add details in commit message (Ville)

 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 4 ++++
 drivers/gpu/drm/i915/i915_reg.h                    | 1 +
 drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c | 1 +
 3 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index d10cbf69a5f8..7180e54af50b 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -910,6 +910,10 @@ get_encoder_power_domains(struct intel_display *display)
 
 static void intel_early_display_was(struct intel_display *display)
 {
+	/* Wa_22021451799 */
+	if (DISPLAY_VER(display) == 35)
+		intel_de_rmw(display, GEN9_CLKGATE_DIS_0, 0, DMG_GATING_DIS);
+
 	/*
 	 * Display WA #1185 WaDisableDARBFClkGating:glk,icl,ehl,tgl
 	 * Also known as Wa_14010480278.
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5bf3b4ab2baa..f928db78a3fa 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -763,6 +763,7 @@
  */
 #define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
 #define   DARBF_GATING_DIS		REG_BIT(27)
+#define   DMG_GATING_DIS		REG_BIT(21)
 #define   MTL_PIPEDMC_GATING_DIS(pipe)	REG_BIT(15 - (pipe))
 #define   PWM2_GATING_DIS		REG_BIT(14)
 #define   PWM1_GATING_DIS		REG_BIT(13)
diff --git a/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c b/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
index d95786faf181..c4c4058c8ac5 100644
--- a/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
+++ b/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
@@ -2923,6 +2923,7 @@ static void drm_test_check_reject_hdr_infoframe_bpc_10(struct kunit *test)
 						&new_conn_state->hdr_output_metadata,
 						hdr_blob->base.id,
 						sizeof(struct hdr_output_metadata), -1,
+						sizeof(struct hdr_output_metadata),
 						&replaced);
 	KUNIT_ASSERT_EQ(test, ret, 0);
 	KUNIT_ASSERT_EQ(test, replaced, true);
-- 
2.34.1

