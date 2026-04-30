Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WL9CKLFY82lfzwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 15:27:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 742F54A36C1
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 15:27:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF0E310E6BE;
	Thu, 30 Apr 2026 13:27:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lLqXlImy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C946E10E5AF;
 Thu, 30 Apr 2026 13:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777555629; x=1809091629;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cn86+/wG9q20GY40uK4gIMGTIgVyVSOLZnEWzliMBss=;
 b=lLqXlImy45nuTBeGHxNRlmki8LbFVhC+vpWl/L1wFPbwpgOEohGPlYgq
 qmb2YYhBtDXniwQTr+LRuYp1XijwlaBdDcDQcxpHAaynkFVax/lYh7Pq4
 JvxxDpgLfzIoEio9BW31MGBTvv02OmjA7ZDNC2+DBL8526TvJdTQHtQgS
 Tyk3jr+xVNwwWAIhsT4HlSWhqOGq3hdX9n37wGlmulKIKqDsQAX6bwHIk
 uaErfP0B+Lyy8hVAtAoRbFDeAGES9rpfFIpq1GlBdJjUGKDVBKGvgS2Ec
 RGHaH1Fug450WvozZzG5eSqTye16y9zEkLhJ8lCEMpkEdc+MDRmz9RRoP w==;
X-CSE-ConnectionGUID: cVh0xJ8nTPKHiW0kvSdwTQ==
X-CSE-MsgGUID: GHS/s9oiT5ytLr/6PFx+vQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78398727"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="78398727"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 06:27:09 -0700
X-CSE-ConnectionGUID: yqMJz7BEQ3ejj8w18rH3AQ==
X-CSE-MsgGUID: 8z9OsFn0Q6Wf9sYqNo4KrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="257919882"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 06:27:07 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 4/5] drm/i915/intel_sdvo: Drop call to
 intel_panel_fixed_mode() from compute_config
Date: Thu, 30 Apr 2026 18:42:19 +0530
Message-ID: <20260430131220.3891497-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260430131220.3891497-1-ankit.k.nautiyal@intel.com>
References: <20260430131220.3891497-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 742F54A36C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

Currently, in intel_sdvo_compute_config(), intel_panel_fixed_mode() is
called to get the fixed mode. However, since the call is made after
intel_panel_compute_config, that copies the selected fixed mode to the
adjusted mode, we can directly use the crtc_state->hw.adjusted_mode.

So remove the extra call to intel_panel_fixed_mode() and use adjusted
mode instead.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 7843eb13f2e3..c18e7d5e9c34 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1395,8 +1395,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 							   adjusted_mode);
 		pipe_config->sdvo_tv_clock = true;
 	} else if (IS_LVDS(intel_sdvo_connector)) {
-		const struct drm_display_mode *fixed_mode =
-			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
+		const struct drm_display_mode *fixed_mode;
 		int ret;
 
 		ret = intel_panel_compute_config(&intel_sdvo_connector->base,
@@ -1404,6 +1403,8 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 		if (ret)
 			return ret;
 
+		fixed_mode = &pipe_config->hw.adjusted_mode;
+
 		if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo,
 							     intel_sdvo_connector,
 							     fixed_mode))
-- 
2.45.2

