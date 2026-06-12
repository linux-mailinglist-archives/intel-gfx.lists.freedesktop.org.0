Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FjR1LhaaK2rPAAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 07:33:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABEF676C4A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 07:33:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=nucvEoI1;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0109B10E941;
	Fri, 12 Jun 2026 05:33:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F8AB10E93F;
 Fri, 12 Jun 2026 05:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781242386; x=1812778386;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9oIVnkQHNhefTsb1v/3f1vPciRLMAQ9cKD0jgER0BWs=;
 b=nucvEoI1ZNMIpmeRUXBf/q6u9VG2Tntvn6VO8Pkj1JpDlhSuCDYSVQl6
 G0HUEaCjZdpBarIvyr11vHSXNT3wLOg5xLU2AiY0jtPs6a6wv7aG4xgmq
 TMSQT4J1uQEPaJ+/e2L9Q0AnwdBiNu3KXTL3ukpmsF+fEmXJ9g9v0yENF
 xM9rALEn0lMku8NkjyYXLmyRgYqtgmGdMNskx6uC1czicq5Lfbm7KVJ+d
 QzQrHXqu24/mylTuqvQmdlKKSGBaHHtATqFPv0igZCL4Tg+6zqUYOG2aZ
 MRU8YsRlStmcIQzBHiUUfoD/4NdTOTd8ErDoUtq+xaTVXN99LaPHm+zD3 g==;
X-CSE-ConnectionGUID: RrKKnAYjQ+mSWFr22Bj1iA==
X-CSE-MsgGUID: RkQk+TMNTquORyoiq5XmzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="82075222"
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="82075222"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 22:33:06 -0700
X-CSE-ConnectionGUID: +rMSub/kQLOMUmmhouGuyA==
X-CSE-MsgGUID: e81S1Rg6QFqLlKPfbv7HgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="270762785"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.89])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 22:33:04 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/3] drm/i915/psr: Detect possible ALPM errors on Panel Replay
 as well
Date: Fri, 12 Jun 2026 08:32:48 +0300
Message-ID: <20260612053249.246878-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260612053249.246878-1-jouni.hogander@intel.com>
References: <20260612053249.246878-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8ABEF676C4A

Panel Replay is also using ALPM. Currently possible ALPM errors are
detected only when PSR2 is enabled. Detect possible ALPM errors also when
eDP Panel Replay is enabled.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 99d357bfd84b7..a848c57e4ce5d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3866,7 +3866,8 @@ static void psr_alpm_check(struct intel_dp *intel_dp)
 {
 	struct intel_psr *psr = &intel_dp->psr;
 
-	if (!psr->sel_update_enabled)
+	if ((!psr->sel_update_enabled && !intel_dp->psr.panel_replay_enabled) ||
+	    !intel_dp_is_edp(intel_dp))
 		return;
 
 	if (intel_alpm_get_error(intel_dp)) {
@@ -3980,7 +3981,6 @@ static void _psr_short_pulse(struct intel_dp *intel_dp)
 	/* clear status register */
 	drm_dp_dpcd_write_byte(&intel_dp->aux, DP_PSR_ERROR_STATUS, error_status);
 
-	psr_alpm_check(intel_dp);
 	psr_capability_changed_check(intel_dp);
 }
 
@@ -4001,6 +4001,8 @@ void intel_psr_short_pulse(struct intel_dp *intel_dp)
 	else
 		_psr_short_pulse(intel_dp);
 
+	psr_alpm_check(intel_dp);
+
 exit:
 	mutex_unlock(&intel_dp->psr.lock);
 }
-- 
2.43.0

