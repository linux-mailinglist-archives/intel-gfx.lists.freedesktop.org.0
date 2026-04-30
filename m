Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHCdDqxY82lfzwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 15:27:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E26B24A36AC
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 15:27:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30B4810E5A7;
	Thu, 30 Apr 2026 13:27:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y774D3Px";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E623E10E278;
 Thu, 30 Apr 2026 13:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777555623; x=1809091623;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pZj+HQv+aD6Puyc8yyPSIC37eiWqzLClmq/pmZJjjsA=;
 b=Y774D3PxEa4nL5lCK0yQhdF3IQOefu7aH9z0y2TBEVo0jy/YSZqGKwks
 wfkLxiHqo/FEiib0UR6xs9GGUnaUOt7In5WYFIPUyyavm1nxZ2O69zYmW
 Gu0sHXRRQnTiBP5ZX3AfgnbXGXKvKtRu0nXU72QDkJjMk9BtLwsxbNK7E
 xIT4vr5G+/UwPSRvvKwxgHUGCir1gbs4tSExXfpv9mhc6PvnYJdT+vlCK
 FLhWnfpKLa/NW2nMSTGZ9KnVbqGGVxSeDJbvk88PGvdq1c4g8wu/JoM6k
 mzrJjL4HGzJ3JNbBD+9v6Z992qbUoC1ZtqB0Aco/bIuIz9D6FqpVtjNj3 Q==;
X-CSE-ConnectionGUID: iTBpDdFISkSfxzjj78o47g==
X-CSE-MsgGUID: DFFdlR+uQUCOhDE9fT9drg==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78398722"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="78398722"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 06:27:03 -0700
X-CSE-ConnectionGUID: GWwogtmNS2WTGvsmZEI8/w==
X-CSE-MsgGUID: zc+FZFtbR2yDF1MnqbYviQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="257919865"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 06:27:01 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/5] drm/i915/intel_sdvo: Check fixed_mode->clock against
 max_dotclock in mode_valid
Date: Thu, 30 Apr 2026 18:42:16 +0530
Message-ID: <20260430131220.3891497-2-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: E26B24A36AC
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

For LVDS SDVO, mode validation checks the requested mode against the
pipe max dotclock, but does not validate the selected fixed mode clock.

After intel_panel_mode_valid(), get the fixed mode and validate its
clock against the max dotclock.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 2e1af9e869de..e7aaa5b203fd 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1967,10 +1967,16 @@ intel_sdvo_mode_valid(struct drm_connector *connector,
 
 	if (IS_LVDS(intel_sdvo_connector)) {
 		enum drm_mode_status status;
+		const struct drm_display_mode *fixed_mode;
 
 		status = intel_panel_mode_valid(&intel_sdvo_connector->base, mode);
 		if (status != MODE_OK)
 			return status;
+
+		fixed_mode = intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
+
+		if (fixed_mode && fixed_mode->clock > max_dotclk)
+			return MODE_CLOCK_HIGH;
 	}
 
 	return MODE_OK;
-- 
2.45.2

