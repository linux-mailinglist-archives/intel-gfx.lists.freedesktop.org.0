Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGWwCB8tFGpYKgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 13:06:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5E35C99E0
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 13:06:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58ABE10E1CF;
	Mon, 25 May 2026 11:06:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TRhuz+SV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAC7D10E1CF;
 Mon, 25 May 2026 11:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779707164; x=1811243164;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PiYm7mXLz3VMJkydH9bIEZA3c6puYmn0M14yTwOb8ac=;
 b=TRhuz+SViRYiNsupAL3RfPDiqgo4iLCltyR969MAFfH3INr8r5irzhEG
 WfhVAH/K9HEThG1glhjDmAS6dPoRcjoWikronLjK68p2S8Qw496cqs/VY
 E6FS94YWyLV0BEz0lGmJtbUQnkdFFdGofB0GAeqOphR0KJ+Mv1kE7qkzX
 HmqVBtj59oBR3PnMeeEHzOa5MS2CELDK++pjGhFpW8mf8dw84V59om727
 h98qjp0M4P2o//0ex/HFi9/n3D08xchEIJW1zEFLVBaK9lK0rn8q0VIjb
 xtJB3djAzpJBaPBVyC2+RxLSZ1MNUTuRhXWWjavgnNtiYuOpKqM1X0mRC Q==;
X-CSE-ConnectionGUID: 4xvTJEG8SIuPy4/ALsEgFw==
X-CSE-MsgGUID: igNqLTPYQ+uL1HWhPbZ9Qw==
X-IronPort-AV: E=McAfee;i="6800,10657,11796"; a="80380559"
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="80380559"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 04:06:03 -0700
X-CSE-ConnectionGUID: y2hFgaJgSiq+Uts3K0kttQ==
X-CSE-MsgGUID: JiBwHQluSIK5yZFuWzevsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="237384334"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.216])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 04:06:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH v2] drm/{i915,
 xe}: move xe_display_flush_cleanup_work() to i915 display
Date: Mon, 25 May 2026 14:05:53 +0300
Message-ID: <20260525110553.651208-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <7aecde385b66dbf7d0e61759528c6cd643581a3d.1778659089.git.jani.nikula@intel.com>
References: <7aecde385b66dbf7d0e61759528c6cd643581a3d.1778659089.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.983];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 7B5E35C99E0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

xe_display_flush_cleanup_work() is a bit of an oddball function in xe
display code. There shouldn't be anything this specific or xe
specific. While I'm not sure what the correct refactor for the function
should be, move it to shared display code for starters, next to the
eerily similar but slightly different intel_has_pending_fb_unpin() that
is only called from i915 core.

The main goal here is to unblock some refactors on
for_each_intel_crtc().

v2: Add FIXME comment (Ville)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 drivers/gpu/drm/xe/display/xe_display.c      | 27 +++-----------------
 3 files changed, 26 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6c8935f69db1..a6cee0f81358 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -737,6 +737,28 @@ bool intel_has_pending_fb_unpin(struct intel_display *display)
 	return false;
 }
 
+/* FIXME: All callers need to be audited and unified between i915 and xe */
+void intel_display_flush_cleanup_work(struct intel_display *display)
+{
+	struct intel_crtc *crtc;
+
+	for_each_intel_crtc(display->drm, crtc) {
+		struct drm_crtc_commit *commit;
+
+		spin_lock(&crtc->base.commit_lock);
+		commit = list_first_entry_or_null(&crtc->base.commit_list,
+						  struct drm_crtc_commit, commit_entry);
+		if (commit)
+			drm_crtc_commit_get(commit);
+		spin_unlock(&crtc->base.commit_lock);
+
+		if (commit) {
+			wait_for_completion(&commit->cleanup_done);
+			drm_crtc_commit_put(commit);
+		}
+	}
+}
+
 /*
  * Finds the encoder associated with the given CRTC. This can only be
  * used when we know that the CRTC isn't feeding multiple encoders!
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 45a90d2fe6ec..72f33113a5a3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -402,6 +402,7 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state);
 void i830_enable_pipe(struct intel_display *display, enum pipe pipe);
 void i830_disable_pipe(struct intel_display *display, enum pipe pipe);
 bool intel_has_pending_fb_unpin(struct intel_display *display);
+void intel_display_flush_cleanup_work(struct intel_display *display);
 void intel_encoder_destroy(struct drm_encoder *encoder);
 struct drm_display_mode *
 intel_encoder_current_mode(struct intel_encoder *encoder);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 8d08da60336d..a5066de3d789 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -244,27 +244,6 @@ static bool suspend_to_idle(void)
 	return false;
 }
 
-static void xe_display_flush_cleanup_work(struct xe_device *xe)
-{
-	struct intel_crtc *crtc;
-
-	for_each_intel_crtc(&xe->drm, crtc) {
-		struct drm_crtc_commit *commit;
-
-		spin_lock(&crtc->base.commit_lock);
-		commit = list_first_entry_or_null(&crtc->base.commit_list,
-						  struct drm_crtc_commit, commit_entry);
-		if (commit)
-			drm_crtc_commit_get(commit);
-		spin_unlock(&crtc->base.commit_lock);
-
-		if (commit) {
-			wait_for_completion(&commit->cleanup_done);
-			drm_crtc_commit_put(commit);
-		}
-	}
-}
-
 static void xe_display_enable_d3cold(struct xe_device *xe)
 {
 	struct intel_display *display = xe->display;
@@ -278,7 +257,7 @@ static void xe_display_enable_d3cold(struct xe_device *xe)
 	 */
 	intel_power_domains_disable(display);
 
-	xe_display_flush_cleanup_work(xe);
+	intel_display_flush_cleanup_work(display);
 
 	intel_opregion_suspend(display, PCI_D3cold);
 
@@ -333,7 +312,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
 		intel_display_driver_suspend(display);
 	}
 
-	xe_display_flush_cleanup_work(xe);
+	intel_display_flush_cleanup_work(display);
 
 	intel_encoder_block_all_hpds(display);
 
@@ -365,7 +344,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 		intel_display_driver_suspend(display);
 	}
 
-	xe_display_flush_cleanup_work(xe);
+	intel_display_flush_cleanup_work(display);
 	intel_dp_mst_suspend(display);
 	intel_encoder_block_all_hpds(display);
 	intel_hpd_cancel_work(display);
-- 
2.47.3

