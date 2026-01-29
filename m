Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFzGGJiYe2nOGAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:27:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E42B2DB8
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:27:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDDA610E8B6;
	Thu, 29 Jan 2026 17:27:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TmvkxiTx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68F8410E8A3;
 Thu, 29 Jan 2026 17:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769707670; x=1801243670;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AqaRnquji9DKg2cv0KwZF82vvj8XZtY3gDDTcYzJojM=;
 b=TmvkxiTx3zw0ledc6I1LAyPUy12/E5HKAgKbGlS1oGLgwtfOruMZl3ea
 8LNYkqFXKNG/9yGTUmd19hJytO9xodRGegwcCCz/qJ56Qwj3BEKAgognF
 raG9B7fF8hlUqbGwTFHBHR19a6MFkRkRfE7BN1IuCweoiNnfz+Q/XWqjs
 obFysMocCvJPKyRETmoCrXMaYRzn66uK2Di71eqK/OoqQnExwqruXGnsR
 X8rxqNUlP1OP+5lH2owrfFmxmZExDc8YPLF5Es0gtIi6VnfAnHI3bkfW0
 m7b83l4cT2mnYBLEoborJjofsEwSqkr6QJyWCvKIOVkuLpdUlCLIcJP6P Q==;
X-CSE-ConnectionGUID: MrdVTiQHSuC1QkxaTtD7dA==
X-CSE-MsgGUID: g9JFzACTQMyL9jcBJO4BtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="70926826"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="70926826"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:27:50 -0800
X-CSE-ConnectionGUID: BtFNik3TQNa2NUUyaAsTag==
X-CSE-MsgGUID: tz9lboJ+SLOsXTHDfLohkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="239360898"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:27:48 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 03/16] drm/i915/dp: Extract helper to get the hdisplay limit
Date: Thu, 29 Jan 2026 22:41:41 +0530
Message-ID: <20260129171154.3898077-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260129171154.3898077-1-ankit.k.nautiyal@intel.com>
References: <20260129171154.3898077-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 37E42B2DB8
X-Rspamd-Action: no action

Separate out function to get the hdisplay limit for a given platform.

v2: Rename the helper to intel_dp_max_hdisplay_per_pipe(). (Imre)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c0a8ffac6312..4c3a1b6d0015 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1371,6 +1371,12 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	return MODE_OK;
 }
 
+static
+int intel_dp_max_hdisplay_per_pipe(struct intel_display *display)
+{
+	return DISPLAY_VER(display) >= 30 ? 6144 : 5120;
+}
+
 static
 bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
 			   struct intel_connector *connector,
@@ -1378,17 +1384,14 @@ bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
 			   int num_joined_pipes)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	int hdisplay_limit;
 
 	if (!intel_dp_has_joiner(intel_dp))
 		return false;
 
 	num_joined_pipes /= 2;
 
-	hdisplay_limit = DISPLAY_VER(display) >= 30 ? 6144 : 5120;
-
 	return clock > num_joined_pipes * display->cdclk.max_dotclk_freq ||
-	       hdisplay > num_joined_pipes * hdisplay_limit;
+	       hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display);
 }
 
 int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
-- 
2.45.2

