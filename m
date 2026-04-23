Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOPFE4TS6Wm9kgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 10:04:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF2B44E48B
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 10:04:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B485C10EFCB;
	Thu, 23 Apr 2026 08:04:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nPB2ifE1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3E1010EF84;
 Thu, 23 Apr 2026 08:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776931451; x=1808467451;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NGB8mAk9q0y/pyF/C7gkF5P0KNt5swVw6YE4olrbGuE=;
 b=nPB2ifE1jpEJA6IgMENGCNToPS4/OeVDZOmNdup/vG9wIZun2vpSrl8+
 XO4gEkZ3ZO7d9GJt6+FijDLIGhiFSyAtSk4aK60XpVTJnZw9phJEThaOl
 KBItykNOOnnvjmx6l3QWJYVQwwDh4WzKsJ3lSpVhof7sEUAELWCG30hrR
 wXhdIM2L8krVrTh/sIYiCtF9PwathHFrX6/+H0yH55fQtH1X88rnAfk0D
 ZxrQYdOMSH8jbkoZKYcXdF0hGC3fZ01LDljIElALNs9WdrTj6HILTxIk2
 eszxlpL7G4trM0NGBw1e8YtxvOlZvf3kP7Zj9OUoWbSK4i/2NiqM7+IOG w==;
X-CSE-ConnectionGUID: KSHx2hRrTZSzbXggQWnNeQ==
X-CSE-MsgGUID: A9ryNTepQLedZyhZa9OeTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="88975823"
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="88975823"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 01:04:11 -0700
X-CSE-ConnectionGUID: RTM70nrzS8OON5GtUi5QPg==
X-CSE-MsgGUID: 8KZQFotUS0Sb3Sy7Nh0FsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="256070853"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa001.fm.intel.com with ESMTP; 23 Apr 2026 01:04:09 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, swati2.sharma@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/dp: Change drm_err to drm_dbg_kms
Date: Thu, 23 Apr 2026 13:33:55 +0530
Message-Id: <20260423080355.2744117-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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
X-Spamd-Result: default: False [0.29 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MAILSPIKE_FAIL(0.00)[131.252.210.177:query timed out];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: CAF2B44E48B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Change the drm_err to drm_dbg_kms when we fail to read the FEC
capability. This is mainly because this is called from intel_dp_detect.
Which ends up in race more frequently in case of MST scenarios,
when we are disabling streams but the downstream Dock still sends
signals which causes intel_dp_detect to be invoked which has DPCD
reads. These pass until the Transcoder and DPLL go down causing
AUX to go down too. At this point AUX Timeouts are expected and not
an issue. But this drm_err gets flagged in CI causing noise even
for passing scenarios.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 35b8fb5740aa..8631df908b07 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4564,7 +4564,7 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 
 	if (drm_dp_dpcd_readb(connector->dp.dsc_decompression_aux, DP_FEC_CAPABILITY,
 			      &connector->dp.fec_capability) < 0) {
-		drm_err(display->drm, "Failed to read FEC DPCD register\n");
+		drm_dbg_kms(display->drm, "Could not read FEC DPCD register\n");
 		return;
 	}
 
-- 
2.34.1

