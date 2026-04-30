Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NR4Cthc82lfzwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 15:44:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B878E4A3A50
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 15:44:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAD1710EAAB;
	Thu, 30 Apr 2026 13:44:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="age2/3yg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2146E10EDAE;
 Thu, 30 Apr 2026 13:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777556692; x=1809092692;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zSlahe6+z16SkCPnjpt9OWU6/GHVOzN0TbjHr+ZBVbQ=;
 b=age2/3yge0ipdZ0b8wQ+4gmVkWJI6oirJRuwtkaLzzTGZSGyWaMwbYPJ
 fdwOdNpd93UgtqNWud7cCEQNYWjLBX9Dmp2jYc/KpE9rGfKgAQkwecN0C
 EnblBj1qIn5eQlK4i1Weu6r8irbiq7Yq/ZT1ygSKMd6y9Llkq69YOBFnN
 HujMNUPCjzpEO7yOqxh/9jxFFKtsO/JIFKP79njc0Yb0bQh3+iv/5Bv3p
 6Acr+lYQCvFqFFulU0vteJEyKfoch8MI3BMOUeJCPgu2k3hGK4UcdDDJ6
 vDbeY3J60Xqw/HPqwn1KYxN8zupKt79bW0j/8tIrOO3hnMuAP8sxRmdH9 A==;
X-CSE-ConnectionGUID: BZHqqFXYS7icOFEjRWKoag==
X-CSE-MsgGUID: 1HbG3655SQ6RGL0lRtaYSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="77532397"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="77532397"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 06:44:52 -0700
X-CSE-ConnectionGUID: +tq5eZ+bTYmUVX6Zs151AQ==
X-CSE-MsgGUID: GArkgbBxRfu9v0NDb/Jphw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="236371564"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 06:44:50 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, gustavo.sousa@intel.com,
 ankit.k.nautiyal@intel.com
Subject: [PATCH v2 3/3] drm/i915/psr: Use DMC wakelock instead of DC state for
 VBI
Date: Thu, 30 Apr 2026 19:15:05 +0530
Message-ID: <20260430134505.1728443-4-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260430134505.1728443-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260430134505.1728443-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Queue-Id: B878E4A3A50
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid,gitlab.freedesktop.org:url]

Use the DMC wakelock mechanism for preventing DC entry.
platforms without wakelock support will continue to use
set_target_dc_state() to disable DC entry during active vblank.

Changes in v2:
- Use intel_dmc_wl_supported() instead of
  DISPLAY_VER check (Gustavo Sousa).

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/work_items/2296
Fixes: acfc688bc51b ("drm/i915/dmc: Reduce wakelock hold time")
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 26 +++++++++++++++---------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9acd47392192..5b48a677bf39 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -4151,16 +4151,22 @@ void intel_psr_notify_vblank_enable_disable(struct intel_display *display,
 		mutex_unlock(&intel_dp->psr.lock);
 		break;
 	}
-
-	/*
-	 * NOTE: intel_display_power_set_target_dc_state is used
-	 * only by PSR * code for DC3CO handling. DC3CO target
-	 * state is currently disabled in * PSR code. If DC3CO
-	 * is taken into use we need take that into account here
-	 * as well.
-	 */
-	intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
-						DC_STATE_EN_UPTO_DC6);
+	if (!intel_dmc_wl_supported(display)) {
+		/*
+		 * NOTE: intel_display_power_set_target_dc_state is used
+		 * only by PSR code for DC3CO handling. DC3CO target
+		 * state is currently disabled in PSR code. If DC3CO
+		 * is taken into use we need take that into account here
+		 * as well.
+		 */
+		intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
+							DC_STATE_EN_UPTO_DC6);
+	} else {
+		if (enable)
+			intel_dmc_wl_get_noreg(display);
+		else
+			intel_dmc_wl_put_noreg(display);
+	}
 }
 
 static void
-- 
2.43.0

