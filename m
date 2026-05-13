Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGn+N0EvBGo/FAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 09:58:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B90A152F359
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 09:58:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 056AB10ED41;
	Wed, 13 May 2026 07:58:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KEW7nuJq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAF7E10ED40;
 Wed, 13 May 2026 07:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778659134; x=1810195134;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cFmnIaTFT7jzyqgHpONbiexBDjrada2t8gP9aYQlOnM=;
 b=KEW7nuJqC9kyvNkuv5/0fvtrX2ywkEi/OqDV79ZTVT405qElhsHxP3kW
 7yOpqK6XN+xtKHJWLiKTklnP5zeWj2QQeZ4SNKFRtNVPxBPTgW28lhv5c
 iOwA92uA4h1Z+Q3Hf8SlZzOrr5C4jyjbhIobPndtRKMc2oTJlU50EMbv1
 HOse5nzRqhtsgBPggX0xF7RPdPl1arWRDpZv6tjtvgKIQXPbP2PIxdwDa
 HtXG+BhFW7y2iy5+JMUq0zqAgmNY5QufH2aJ/DY6L5SZZbnKZRc7LzQkA
 lTMzGdnxCZTkrjDbRgND014EJYGr84YDTRZU3n+6nAVWXx3e5L8ae9buK g==;
X-CSE-ConnectionGUID: 2srXX4D9R1+NEV+0hzzXpw==
X-CSE-MsgGUID: uhIvtHyvS92NVBOonL9kdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="90159443"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="90159443"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 00:58:54 -0700
X-CSE-ConnectionGUID: IuLyJUWzSra3MuZnyopLnw==
X-CSE-MsgGUID: UPDGKsE5Q528mWIqJQ8qfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="242970657"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.61])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 00:58:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 2/6] drm/i915/display: switch from drm_for_each_crtc() to
 for_each_intel_crtc()
Date: Wed, 13 May 2026 10:58:36 +0300
Message-ID: <8ee4320cd15bc35a8b40676faae6db4b33eb50eb.1778659089.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1778659089.git.jani.nikula@intel.com>
References: <cover.1778659089.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: B90A152F359
X-Rspamd-Server: lfdr
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
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

intel_has_pending_fb_unpin() has the last direct user of
drm_for_each_crtc() in i915. Switch to for_each_intel_crtc() to ensure
pipe order iteration in all cases.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 50feca52b962..682a0514ec81 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -714,22 +714,22 @@ static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
 
 bool intel_has_pending_fb_unpin(struct intel_display *display)
 {
-	struct drm_crtc *crtc;
+	struct intel_crtc *crtc;
 	bool cleanup_done;
 
-	drm_for_each_crtc(crtc, display->drm) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct drm_crtc_commit *commit;
-		spin_lock(&crtc->commit_lock);
-		commit = list_first_entry_or_null(&crtc->commit_list,
+		spin_lock(&crtc->base.commit_lock);
+		commit = list_first_entry_or_null(&crtc->base.commit_list,
 						  struct drm_crtc_commit, commit_entry);
 		cleanup_done = commit ?
 			try_wait_for_completion(&commit->cleanup_done) : true;
-		spin_unlock(&crtc->commit_lock);
+		spin_unlock(&crtc->base.commit_lock);
 
 		if (cleanup_done)
 			continue;
 
-		intel_crtc_wait_for_next_vblank(to_intel_crtc(crtc));
+		intel_crtc_wait_for_next_vblank(crtc);
 
 		return true;
 	}
-- 
2.47.3

