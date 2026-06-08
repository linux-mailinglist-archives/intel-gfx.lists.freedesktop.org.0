Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LQ3zBfBmJmrcVwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 08:53:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E76E653426
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 08:53:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=RBciAHzb;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2520610EDB6;
	Mon,  8 Jun 2026 06:53:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E2D410EDB6;
 Mon,  8 Jun 2026 06:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780901613; x=1812437613;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4EsfKOTJe5d7JDFe8kO88W/PuOH3LEH7LI6/ve9dhFE=;
 b=RBciAHzboAEdR9tcFgtt7VP8toPHPGtJ0L7J13+9NrKCHj8AuIxDZZEW
 FU0FyJnKR4hX25gSrWs78a6BWdmmZMlzvklPPTwaFZxqo6+4XoTPGo8gv
 h1+xaEBVAMRu4Y0HvxSGzgm6FThU2uzA50hGzsdbVl1a4zuxpeMg0CwB2
 A8gs839mmE3uxpsOj3Un48Qib5Xx3y0YXyAMhMpSW/vsC18BH9gxWr721
 2MWYk4/C6REu+/6H9zTgQfC0OBv31lWeELF4PK9Bear5aienn6SUBOGjo
 4EmCAMqpS22tRkZm/WzeXFjrqloPz7+nvadtw6xaHZ9iLd6ouPttvYFGw A==;
X-CSE-ConnectionGUID: mRejKt7dSS+KB723e8TdBw==
X-CSE-MsgGUID: bD3hg9KpTjalLR8UM2Y35A==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="92196156"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="92196156"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2026 23:53:32 -0700
X-CSE-ConnectionGUID: 3a9Vh5/USPGInGzqdFlURQ==
X-CSE-MsgGUID: knW8vuZVReyd4vo89uObmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="249386288"
Received: from carterle-desk.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.213])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2026 23:53:30 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/psr: Do not check display or eDP revision for DP
Date: Mon,  8 Jun 2026 09:53:17 +0300
Message-ID: <20260608065317.20845-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9E76E653426

DP Panel Replay is supported only by display version >= 14. So no need to
check display version in case of DP when checking support for SDP on prior
scanline. Also checking eDP version doesn't make sense in case of DP.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d9fcf52328eab..d93340a9d9f9e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1431,8 +1431,9 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_crtc_state
 	if ((hblank_ns - req_ns) > 100)
 		return true;
 
-	/* Not supported <13 / Wa_22012279113:adl-p */
-	if (DISPLAY_VER(display) < 14 || intel_dp->edp_dpcd[0] < DP_EDP_14b)
+	/* Not supported <14 / Wa_22012279113:adl-p */
+	if (intel_dp_is_edp(intel_dp) && (DISPLAY_VER(display) < 14 ||
+					  intel_dp->edp_dpcd[0] < DP_EDP_14b))
 		return false;
 
 	crtc_state->req_psr2_sdp_prior_scanline = true;
-- 
2.43.0

