Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFxjAVQV8mljnwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 16:27:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83262495B56
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 16:27:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFA5010E3CD;
	Wed, 29 Apr 2026 14:27:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jq9umxaN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6FC610E3C5;
 Wed, 29 Apr 2026 14:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777472844; x=1809008844;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=w+YQvJc2UUceVGKhepIUfzYWfqn72vKNDzNzS0OvZJA=;
 b=jq9umxaNn7dCLeJmh5EuAYOg3Ezi1JEHXf/8AtL4omOaUAsDCEJ3iYWU
 zioRp89EEy97VknM/oik7OzKAmVTghUKUbmRuFgrA/hrN/8ZlcOZydZza
 xFKznYyvjxhzsoSSARau9qsR+HjKFzv094Yo25VsUo0tlhv1z042uCv99
 5VIk27Ux6KONNpD6aMnrBdUuxQZckI5KOX6GrpebqyRo6eXynsMyDGaBo
 lSTXip/1LUHIUnMng01VHaBmgrQ0T3Ag7yQj9R7N9VDt/DKV9cI2HOV3h
 gtIVwxGsRUsA1aIDK4EpWAvQg5cmNhPgc36V+/TzRRchmVP7PLvHh3+G5 A==;
X-CSE-ConnectionGUID: ae6OTAJOTcCbsAI+z5yW6w==
X-CSE-MsgGUID: sAd4B9ijSoC8yRpAcPy0rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="82008040"
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="82008040"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 07:27:23 -0700
X-CSE-ConnectionGUID: EwRxqO0JRoeCuhsLlns3TA==
X-CSE-MsgGUID: KGXb7tJsRyior66ftZ7pJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,206,1770624000"; d="scan'208";a="257608791"
Received: from lstrano-mobl6.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.233])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 07:27:21 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 29 Apr 2026 11:26:56 -0300
Subject: [PATCH] drm/i915/dmc_wl: Remove macro HAS_DMC_WAKELOCK()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260429-drop-has_dmc_wakelock-v1-1-62cb6fab1da0@intel.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MTQqAIBBA4avIrBPSfu0qESE61VBpKFQQ3T1p+
 S3eeyBiIIzQsQcCnhTJuwSRMTCLdjNysskgc1nnpVTcBn/wRcfR7ma89IqbNytHVSgrRNW2uoH
 UHgEnuv9vP7zvByfDzeFnAAAA
X-Change-ID: 20260429-drop-has_dmc_wakelock-e939d11588a7
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.15-dev
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
X-Rspamd-Queue-Id: 83262495B56
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]

The macro HAS_DMC_WAKELOCK() is currently only used inside
intel_dmc_wl.c and doesn't need to be exposed to the rest of the driver.
Furthermore, there is a distinction between the display IP having
support for the feature and the driver actually using it, so using
HAS_DMC_WAKELOCK() outside of intel_dmc_wl.c would potentially be wrong
anyway.

Let's drop that macro.  If other part of the driver needs to check if
the driver is using the DMC wakelock feature, we would need actually to
expose the function __intel_dmc_wl_supported().

Since HAS_DMC_WAKELOCK() was kind of self-documenting in the sense that
it tells us what display IPs have support for the feature and we are now
dropping it, let's also take this opportunity to add a documentation
note on the subject.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 -
 drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 9 ++++++++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 074e3ba8fb77..12e5a522a299 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -162,7 +162,6 @@ struct intel_display_platforms {
 #define HAS_DDI(__display)		(DISPLAY_INFO(__display)->has_ddi)
 #define HAS_DISPLAY(__display)		(DISPLAY_RUNTIME_INFO(__display)->pipe_mask != 0)
 #define HAS_DMC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dmc)
-#define HAS_DMC_WAKELOCK(__display)	(DISPLAY_VER(__display) >= 20)
 #define HAS_DOUBLE_BUFFERED_M_N(__display)	(IS_DISPLAY_VER((__display), 9, 14) || (__display)->platform.broadwell)
 #define HAS_DOUBLE_BUFFERED_LUT(__display)	(DISPLAY_VER(__display) >= 30)
 #define HAS_DOUBLE_WIDE(__display)	(DISPLAY_VER(__display) < 4)
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index ddf1a1f1ebc3..7769860e17ea 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -39,6 +39,13 @@
  * current implementation, we only need one wakelock, so only
  * DMC_WAKELOCK1_CTL is used.  The other definitions are here for
  * potential future use.
+ *
+ * This is available starting with Xe2_LPD (display version 20) as an
+ * experimental feature and on Xe3_LPD (display version 30) as the
+ * first display release with official support.  That means that we
+ * only enable the feature by default on the latter and using it on
+ * the former requires explicitly using the enable_dmc_wl module
+ * parameter.
  */
 
 /*
@@ -286,7 +293,7 @@ static void intel_dmc_wl_sanitize_param(struct intel_display *display)
 {
 	const char *desc;
 
-	if (!HAS_DMC_WAKELOCK(display)) {
+	if (DISPLAY_VER(display) < 20) {
 		display->params.enable_dmc_wl = ENABLE_DMC_WL_DISABLED;
 	} else if (display->params.enable_dmc_wl < 0) {
 		if (DISPLAY_VER(display) >= 30)

---
base-commit: 9ee30ac229d686465b572e6404250178b28b616b
change-id: 20260429-drop-has_dmc_wakelock-e939d11588a7

Best regards,
--  
Gustavo Sousa <gustavo.sousa@intel.com>

