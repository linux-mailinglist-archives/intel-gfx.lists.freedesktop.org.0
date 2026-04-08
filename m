Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHU+Gs9f1mkfEwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 16:01:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DA83BD532
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 16:01:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AF2710E670;
	Wed,  8 Apr 2026 14:01:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iWXXlvoi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 215E910E670;
 Wed,  8 Apr 2026 14:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775656903; x=1807192903;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y/1pXPf8t1JdzIlxcAKOQUzTAk8VXY4AhDf/SrPfUbc=;
 b=iWXXlvoi8XDyEjZI8upSPCxKBjVXgaSD8L7y8KR7yFvz30ynM/R8Yle0
 Rb1fAcXf1wjLhSukmbAN3fSaDhMXbDVwUDj+QLtEKnkPCAF2JNpeqt6rW
 5L61PWzpYASJ8Cu/Nd4c1ThNkzQG/oArbWlUbNOUs3ImM3wvquHsjvVX3
 IJVstCV1Jd+kJVuVm+mccrJu5ODP7e1nX2jKxkNSLwt3A1lCjQL0wtvgj
 yijhlCbhQU+KRfpyVDbdo+ZVBwERTM7OULMISPlMw6ybBLJIZCelnvIAY
 fwPS3+3Cl1K10ATGNuqrpSZ9MQghWbn8ExjvhO4y1CcgHdS3Dq/WUVIyK A==;
X-CSE-ConnectionGUID: nh9lKHtRSHao4cg2M+iimA==
X-CSE-MsgGUID: AAL9NfvxQvSJR7xGQdzfgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="75811496"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="75811496"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 07:01:21 -0700
X-CSE-ConnectionGUID: +TXkyHJvTuC7OcSO4OE89g==
X-CSE-MsgGUID: pCF1PdluQai6DSUc/XVIZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228726655"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.244.251])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 07:01:19 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/7] drm/i915/psr: Improve PSR state information in crtc state
 dump
Date: Wed,  8 Apr 2026 17:00:53 +0300
Message-ID: <20260408140059.252067-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260408140059.252067-1-jouni.hogander@intel.com>
References: <20260408140059.252067-1-jouni.hogander@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RSPAMD_EMAILBL_FAIL(0.00)[jouni.hogander.intel.com:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 42DA83BD532
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

We are currenty missing some information in crtc state dump about computed
PSR state. Add this missing information.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index c85ba9a95322..41aa28f1c72c 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -244,12 +244,16 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		drm_printf(&p, "sdp split: %s\n",
 			   str_enabled_disabled(pipe_config->sdp_split_enable));
 
-		drm_printf(&p, "psr: %s, selective update: %s, panel replay: %s, selective fetch: %s\n",
+		drm_printf(&p, "psr: %s, selective update: %s, panel replay: %s, selective fetch: %s (y granularity = %d), early transport: %s, sdp prior scanline = %s, entry setup frames = %d\n",
 			   str_enabled_disabled(pipe_config->has_psr &&
 						!pipe_config->has_panel_replay),
 			   str_enabled_disabled(pipe_config->has_sel_update),
 			   str_enabled_disabled(pipe_config->has_panel_replay),
-			   str_enabled_disabled(pipe_config->enable_psr2_sel_fetch));
+			   str_enabled_disabled(pipe_config->enable_psr2_sel_fetch),
+			   pipe_config->su_y_granularity,
+			   str_enabled_disabled(pipe_config->enable_psr2_su_region_et),
+			   str_enabled_disabled(pipe_config->req_psr2_sdp_prior_scanline),
+			   pipe_config->entry_setup_frames);
 		drm_printf(&p, "minimum hblank: %d\n", pipe_config->min_hblank);
 	}
 
-- 
2.43.0

