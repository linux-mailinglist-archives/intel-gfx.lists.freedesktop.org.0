Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMPnL995sWk2vgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 15:19:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFDF265407
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 15:19:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0244610E26D;
	Wed, 11 Mar 2026 14:19:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LbDSQvyz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5741710E205;
 Wed, 11 Mar 2026 14:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773238749; x=1804774749;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ib3RS+wGCUmYr1i74CT5KQMZnex4G32BmgW4XToyKwQ=;
 b=LbDSQvyz1bR3wFBz6Pz9F3Z0r37bSnMQvb2dCAK0dHJRx17ouCVcJd+B
 ZHC8a6qKaiOYCOakoGZv4PjOMlCPvtzjsUT3RS+ePT/t1Xzwsh+a1romZ
 dNVgU2HIPQtVKe1UwC2h81UWrHFLa3zZ6dOMMn8DpvZTctoACenMe3MAN
 4UnM0/1zWS5Ro1uPyZrRbhIgN9GuEjIXrlllQ1U34eFkdtm+87gCURgPb
 jKgddTFlAUwtCuyV1NbUfSgLuXcMh1K2IkrYx2KZj5qmXtu7j1cQsWpep
 JyjetYstDK8fAJaN4q5JPc6J4g6U80hbUk31tRd7R/b8r9fLJ5dDjGFX6 A==;
X-CSE-ConnectionGUID: APbT/8k8Qg6kGthxn8IlbA==
X-CSE-MsgGUID: PNjFYpAeR8WnBSyLJ8ghaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="99775157"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="99775157"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 07:19:09 -0700
X-CSE-ConnectionGUID: MnDQ/+xFQ+WHTYIeRkP1wg==
X-CSE-MsgGUID: H3VDK9jsS+W6GLUe8P9aTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="216730351"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa006.fm.intel.com with ESMTP; 11 Mar 2026 07:19:08 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v3 01/24] drm/i915/lt_phy: Dump missing PLL state parameters
Date: Wed, 11 Mar 2026 14:18:42 +0000
Message-ID: <20260311141905.2526418-2-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260311141905.2526418-1-mika.kahola@intel.com>
References: <20260311141905.2526418-1-mika.kahola@intel.com>
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
X-Rspamd-Queue-Id: 7AFDF265407
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
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

Dump missing PLL structure members ssc_enabled and tbt_mode
in order to enhance debugging.

v2: Drop addr_lsb and addr_msb printouts

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index eced8493e566..f768804122c1 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -2141,7 +2141,9 @@ void intel_lt_phy_dump_hw_state(struct intel_display *display,
 {
 	int i, j;
 
-	drm_dbg_kms(display->drm, "lt_phy_pll_hw_state:\n");
+	drm_dbg_kms(display->drm, "lt_phy_pll_hw_state: ssc enabled: %d, tbt mode: %d\n",
+		    hw_state->ssc_enabled, hw_state->tbt_mode);
+
 	for (i = 0; i < 3; i++) {
 		drm_dbg_kms(display->drm, "config[%d] = 0x%.4x,\n",
 			    i, hw_state->config[i]);
-- 
2.43.0

