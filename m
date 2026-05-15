Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOs5NFvQBmqKoAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 09:50:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F8954AD30
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 09:50:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1181E10F450;
	Fri, 15 May 2026 07:50:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KPcJXt0l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3189910F44C;
 Fri, 15 May 2026 07:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778831448; x=1810367448;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/diA7HZc8Jg/ZudJPSG9JyfdwS04MMQN7aFFi5ye1VU=;
 b=KPcJXt0lcc9nptTMnbJ7NsC48zNloQADvHIPyfg4Oq7iVgm7psrnE6Bo
 CEKkWR/HLFuMBfMmzBahBrkDjjrf+sUPRwFyCdAo6FDIHqQtcGz1ePlHX
 4UxFBp4AGx4QflHP8UfRU8NzKsPGY/3hKySq86zTtvm9LPaEIh2SUc6Au
 l5ZRkcPkjNhcCZIk5JPj1oBW2exAViKhZXaHBPiHtB/0GqGHAP43rsplw
 pAX1KTQORR37zs9OomtF6gYllsoJ4pNR8/IHmGQigUnIS55DoQzYaH+MG
 KSfeVxx0K2IAi3VizYrZ20Sxdb+E9HI7QklSIGTXJDNOPAmr9yxAdsF6H w==;
X-CSE-ConnectionGUID: n/+o4ZCfQsW7h6VVwY7emQ==
X-CSE-MsgGUID: 3/E+SaksR6aUGur4K0GZkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="90480657"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="90480657"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 00:50:48 -0700
X-CSE-ConnectionGUID: qkyE2V4lTj+0RgoeIMy8uw==
X-CSE-MsgGUID: iHpxeeYgSaiCjlPz1Ajlfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="243604221"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 00:50:46 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/2] drm/i915/psr: Allow SCL=0 on platforms with always-on VRR
 TG
Date: Fri, 15 May 2026 13:06:16 +0530
Message-ID: <20260515073616.2794146-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260515073616.2794146-1-ankit.k.nautiyal@intel.com>
References: <20260515073616.2794146-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: A9F8954AD30
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

For Legacy timing generator, if there are no panel replay/sel_update or other
SRD constraints, the Set context latency (SCL) window should be at least 1.

However, for VRR timing generator the SCL window can be 0. It has other
guardband constraints, but that are checked during guardband computation.

Allow SCL to be 0 for platforms that have VRR TG always on.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5bf1d782188c..12c2e2a70bd8 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1477,7 +1477,8 @@ int _intel_psr_min_set_context_latency(const struct intel_crtc_state *crtc_state
 	 * SRD_STATUS is used by PSR1 and Panel Replay DP on LunarLake.
 	 */
 
-	if (needs_sel_update ||
+	if (intel_vrr_always_use_vrr_tg(display) ||
+	    needs_sel_update ||
 	    (DISPLAY_VER(display) >= 30 && needs_panel_replay) ||
 	    (DISPLAY_VER(display) < 30 && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)))
 		return 0;
-- 
2.45.2

