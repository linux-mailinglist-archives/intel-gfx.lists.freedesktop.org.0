Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KA+FG85C72kE/gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 13:04:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C95471747
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 13:04:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77EA510E6BC;
	Mon, 27 Apr 2026 11:04:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WHt7QsAJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C2CF10E6B8;
 Mon, 27 Apr 2026 11:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777287882; x=1808823882;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jg5xsKGyG0LeLYQIN7HCXzGzLUmQ8RkvNVzl4SDaq4U=;
 b=WHt7QsAJhJwYQn+ikt+JiPpkt17tCoaH4Z9cyx8EL76bfg20DmEfv0sn
 SyggFn5FapdkTPUCrLxtpa+fPPB8BsIVVhXYiWcclOTl8L0Tx+b9lFgYe
 Mwb1T9Bg/mIQvXGOe5760wWn1vRROO2iMa08AlbGbxpm2JIDDB1aQW8Sp
 +YwoP+KMgef42uks9urcsFXWeev0ae3+rAZBhxA9ERQUN7rqdvfky29S7
 BZBgJS3eaMiU5VCe4UUfpWXtx9LmBKENzLiIfE+KppLSKqqjcv3QuueS2
 UElmX1YIWLv+ZuM1kLTBI3l4HFb7ZPWHTm3iXRcjONmRkcVk52QWdzh3r A==;
X-CSE-ConnectionGUID: hhxPZMzCQrWmIW/6GnL9Bw==
X-CSE-MsgGUID: sxhw3C+gTI6loqZMr154+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="78189049"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="78189049"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 04:04:42 -0700
X-CSE-ConnectionGUID: 8Kf8wI7bR8GaZ46QEi/DLw==
X-CSE-MsgGUID: GNlXAhfURnaKovM/u7qcEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; d="scan'208";a="256921683"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.244.53])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 04:04:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/6] drm/{i915,
 xe}: move xe_display_flush_cleanup_work() to i915 display
Date: Mon, 27 Apr 2026 14:04:27 +0300
Message-ID: <7f9fb5d6fab29683b8ae4577dab6031d3aefc90c.1777287836.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1777287836.git.jani.nikula@intel.com>
References: <cover.1777287836.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 02C95471747
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.347];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

xe_display_flush_cleanup_work() is a bit of an oddball function in xe
display code. There shouldn't be anything this specific or xe
specific. While I'm not sure what the correct refactor for the function
should be, move it to shared display code for starters, next to the
eerily similar but slightly different intel_has_pending_fb_unpin() that
is only called from i915 core.

The main goal here is to unblock some refactors on
for_each_intel_crtc().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 21 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 drivers/gpu/drm/xe/display/xe_display.c      | 27 +++-----------------
 3 files changed, 25 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 674a4ece6d0f..311565dcc3b1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -737,6 +737,27 @@ bool intel_has_pending_fb_unpin(struct intel_display *display)
 	return false;
 }
 
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
index 1e76a455d7c4..b535c6ddca7a 100644
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
index 0747044f7c2a..a5637543fd30 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -257,27 +257,6 @@ static bool suspend_to_idle(void)
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
@@ -291,7 +270,7 @@ static void xe_display_enable_d3cold(struct xe_device *xe)
 	 */
 	intel_power_domains_disable(display);
 
-	xe_display_flush_cleanup_work(xe);
+	intel_display_flush_cleanup_work(display);
 
 	intel_opregion_suspend(display, PCI_D3cold);
 
@@ -346,7 +325,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
 		intel_display_driver_suspend(display);
 	}
 
-	xe_display_flush_cleanup_work(xe);
+	intel_display_flush_cleanup_work(display);
 
 	intel_encoder_block_all_hpds(display);
 
@@ -378,7 +357,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 		intel_display_driver_suspend(display);
 	}
 
-	xe_display_flush_cleanup_work(xe);
+	intel_display_flush_cleanup_work(display);
 	intel_dp_mst_suspend(display);
 	intel_encoder_block_all_hpds(display);
 	intel_hpd_cancel_work(display);
-- 
2.47.3

