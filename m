Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CF+VDdRc82lfzwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 15:44:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 073E94A3A40
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 15:44:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 578BC10EA20;
	Thu, 30 Apr 2026 13:44:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IHKPFZMU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53B8A10E190;
 Thu, 30 Apr 2026 13:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777556688; x=1809092688;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N30Niq+GNiubFtSK+b61sEikeqy017BfDQkgdBdGOXk=;
 b=IHKPFZMUYM/oD403Snj1lZEN6LGAy0KgKb9krqXRbINxl7g82iRoMRKC
 t5026xpMH4fOS8t8FlZgU4yOoy5+gHfdb83yZQ67xF+l6sqb+Hvax04rF
 n6vx+SfYQRnnhwjH+UxSJemZEysqgAkDnWI9RnfLNb+VBH03GnCBBKIfM
 OHuQq3AwrirFl9Vpg0/fEm0TkhQGsRyLTUh5ThiAV1Jfg7Yg9B1TKIbmN
 MjoYbRG/192OwMv0ZiWp1zya018ZtpW9cdWCza+8B8DMMV0qC8RhbGhxF
 hth6RxJCbgXs+eh3W3ktmO8a1wyXTRfglsvp8/1ZSCx3MTEP0Y9PAt95C A==;
X-CSE-ConnectionGUID: UYYvShiURrmrW+GG3r9UFQ==
X-CSE-MsgGUID: iIN/Z4yFSIepuazI3lxlqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="77532391"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="77532391"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 06:44:48 -0700
X-CSE-ConnectionGUID: hNKHYuDvSFuDm4emeRDeWQ==
X-CSE-MsgGUID: 5FoxaZQ7SleQP9bs9dhz2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="236371553"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 06:44:47 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, gustavo.sousa@intel.com,
 ankit.k.nautiyal@intel.com
Subject: [PATCH v2 1/3] drm/i915/psr: Unify DC state handling for PSR and
 Panel Replay on VBI enable
Date: Thu, 30 Apr 2026 19:15:03 +0530
Message-ID: <20260430134505.1728443-2-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Queue-Id: 073E94A3A40
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

Unify the intel_psr_notify_vblank_enable_disable() path so that
DC state is disabled for both PSR and Panel Replay when vblank is
enabled, and restored when vblank is disabled.
VBI (vblank interrupt) enable is a PSR exit condition for both PSR1
and PSR2. This is safe because once vblank is enabled, PSR will exit
anyway, so the system will not be staying in deep DC states like DC6.

Bspec: 49274, 68934
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 63c19958a9e3..9acd47392192 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -4143,16 +4143,13 @@ void intel_psr_notify_vblank_enable_disable(struct intel_display *display,
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 		mutex_lock(&intel_dp->psr.lock);
-		if (intel_dp->psr.panel_replay_enabled) {
-			mutex_unlock(&intel_dp->psr.lock);
-			break;
-		}
-
-		if (intel_dp->psr.enabled && intel_dp->psr.pkg_c_latency_used)
+		if (intel_dp->psr.enabled &&
+		    intel_dp->psr.pkg_c_latency_used &&
+		    !intel_dp->psr.panel_replay_enabled)
 			intel_psr_apply_underrun_on_idle_wa_locked(intel_dp);
 
 		mutex_unlock(&intel_dp->psr.lock);
-		return;
+		break;
 	}
 
 	/*
-- 
2.43.0

