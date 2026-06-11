Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KayhCPxoKmq4owMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 09:51:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C3666F945
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 09:51:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=csfuSMLL;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8198710ED70;
	Thu, 11 Jun 2026 07:51:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E771910ED70;
 Thu, 11 Jun 2026 07:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781164279; x=1812700279;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5mNs99XpEzgpq7VpfWhTJlQqEtUMUBFM2m8SkSM2qZQ=;
 b=csfuSMLLzfz3ELRYu3mMmDCzB5fe4ZHrCI9BdM0RiCrhw8+CYOEQv2l5
 deGO9/+KZ98ZO6a9uHPt8aJ+uIIYVG4VoHjPkM5S2u/i8Aj42gMYKed0r
 58ZpQOGPHeQrJ3jp3O2K3C/vx7L5pTtnhk859WOuFdAqKF2l3FbzAuz1e
 AD1CJHsGWRDIGTmqlcorZ/NVd/E1u42uvkqNQipZDsNPml6Ap0qnIyWPz
 kboZy2CPUUJeiuCfbtJS8A7/ACZ38KkMlVCk4BX+RqVyb4DCsT7XlpW+n
 wL3fx9BwaiSjwu38IrB7hUUzqw2XZBx9ibkg7r5ynE58sWbX4VbdShTFV A==;
X-CSE-ConnectionGUID: Y9b0Uw/TTvOFDpJF0wj1ZA==
X-CSE-MsgGUID: 8KNuSQnXQj2T10WUfJRVvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="93078766"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="93078766"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 00:51:19 -0700
X-CSE-ConnectionGUID: gJqgC/SkQqifDYkNDH0o2g==
X-CSE-MsgGUID: HXu7vjacRYCdBrZEKHXqNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="251503378"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 00:51:16 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 jani.nikula@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v4 12/12] drm/i915/display: Dump DIP Transmission lines
Date: Thu, 11 Jun 2026 13:03:14 +0530
Message-ID: <20260611073316.1439306-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260611073316.1439306-1-ankit.k.nautiyal@intel.com>
References: <20260611073316.1439306-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Action: no action
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
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E4C3666F945

Add DIP transmission lines to the CRTC state dump.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 4493483f10a9..20d71b1c0509 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -251,6 +251,15 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 			   str_enabled_disabled(pipe_config->has_panel_replay),
 			   str_enabled_disabled(pipe_config->enable_psr2_sel_fetch));
 		drm_printf(&p, "minimum hblank: %d\n", pipe_config->min_hblank);
+
+		drm_printf(&p, "DIP Transmission Lines: EMP/AS SDP: %u\n",
+			   pipe_config->dip.emp_as_sdp_tl);
+		drm_printf(&p, "DIP Transmission Lines: Common Base SDP: %u, GMP SDP: %u, PPS SDP: %u, VSC SDP: %u, VSC_EXT SDP: %u\n",
+			   pipe_config->dip.cmn_sdp_tl,
+			   pipe_config->dip.gmp_sdp_tl,
+			   pipe_config->dip.pps_sdp_tl,
+			   pipe_config->dip.vsc_sdp_tl,
+			   pipe_config->dip.vsc_ext_sdp_tl);
 	}
 
 	drm_printf(&p, "audio: %i, infoframes: %i, infoframes enabled: 0x%x\n",
-- 
2.45.2

