Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4B5ILLZpxWl1+AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 18:15:34 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8329333900F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 18:15:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D443910EA9B;
	Thu, 26 Mar 2026 17:15:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f7CknvAV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78F4510E2BC;
 Thu, 26 Mar 2026 17:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774545331; x=1806081331;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YHRyWoZxkpnIdoOEZqrnZzkj2XIBQTVU5uLy5wVffFg=;
 b=f7CknvAVhaZmlCNT6ucU3ltRKqHtg++gO/eDaYxzkzTEbd5NcLe5zS9J
 x86WSL6uGvpNR58QdCK/jLICOQY1K1nhBWLipLjAJ/Y5ttkHVeu8gfsUu
 cxan7CFU3nyzEnFL+Ku2rfPft/zX+tpaMBx2OdHNmN4a6tcUyFNIkID8n
 Is7Ere/wqP8CNAleJPBbjJnqNFUTMVyQNcFj1pmzvqILXEWnRowqceMvz
 J5Xr0nrkFeh+R9Pif0lS3PC9i/M+PZtOoU6jc//65jPYJ86O+koL5SvaV
 fx1ZDtFvoh2tlaM3jnIEYujtFvsSfXc6A8aJKknUcnKg5YHKZjKKlV6JG w==;
X-CSE-ConnectionGUID: ccKad0K/TO6ZZxXLi7piZw==
X-CSE-MsgGUID: HKeIuFfnR9W5wb7j1gxw7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75630578"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="75630578"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 10:15:31 -0700
X-CSE-ConnectionGUID: wdYy9ccARSe4c82nYo8FBw==
X-CSE-MsgGUID: 178Hy782RLKxmesQS/uWoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="262975571"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 10:15:29 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com,
 suresh.kumar.kurmi@intel.com
Subject: [PATCH 09/19] drm/i915/display: Remove unused PSR dc3co_exitline field
Date: Thu, 26 Mar 2026 22:45:47 +0530
Message-ID: <20260326171557.2065632-10-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 8329333900F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Remove dc3co_exitline from struct intel_psr as it is unused.
Keep dc3co_exit_delay for use in subsequent patches.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 -
 drivers/gpu/drm/i915/display/intel_psr.c           | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6c7f5bbbc821..60366087038f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1789,7 +1789,6 @@ struct intel_psr {
 	bool source_panel_replay_support;
 	bool sink_panel_replay_support;
 	bool panel_replay_enabled;
-	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
 	u8 entry_setup_frames;
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 29900576e117..40adbd1c8ddc 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2050,7 +2050,6 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	/* DC5/DC6 requires at least 6 idle frames */
 	val = usecs_to_jiffies(intel_get_frame_time_us(crtc_state) * 6);
 	intel_dp->psr.dc3co_exit_delay = val;
-	intel_dp->psr.dc3co_exitline = crtc_state->dc3co_exitline;
 	intel_dp->psr.psr2_sel_fetch_enabled = crtc_state->enable_psr2_sel_fetch;
 	intel_dp->psr.su_region_et_enabled = crtc_state->enable_psr2_su_region_et;
 	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
-- 
2.43.0

