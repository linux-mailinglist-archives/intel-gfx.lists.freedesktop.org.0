Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OA9ZGcB4rWlj3QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 08 Mar 2026 14:25:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A768230698
	for <lists+intel-gfx@lfdr.de>; Sun, 08 Mar 2026 14:25:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C5F810E231;
	Sun,  8 Mar 2026 13:25:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H1QAW7Dn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 030EF10E175;
 Sun,  8 Mar 2026 13:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772976314; x=1804512314;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p+O2dYYLBD4tD8j4Y6YNsBRPaO1EsoXdHdMkrFX4z6c=;
 b=H1QAW7DnKOXRkXSgIpo/H0bksbrFrHMVtRQDztOe+ayskNR7OGH+rXKm
 ebpulwrGV1/jtt/ehim2Or1TsnYYMwebww+Wldf2qvPfD2RRSOjTneT9T
 5JAxi6zn2tTx+InnUjRgvRd442GamWtSijwfW3dab7lHk1Z+nI0JcPSvi
 BViwJ9U+P7Qj/yWJv5Yz/YD9SdbAQN99TrOFKWlC1s7HZJFjWXNOIvnx1
 GROrz47IgF2/+r/bhI+UcRJnMplWhtSR9PBRKMvHmmDR7Bwlxq6cql+1l
 lxRtyWdPSEsQSHqVNSMVDjNG/H1KlxX2yHj49Iw/UOf69ML0p0dmLzFbm A==;
X-CSE-ConnectionGUID: zdF6yUSDTMmYvjNcWZh3xA==
X-CSE-MsgGUID: hD6c2BNZSba3toiRiOSpEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11722"; a="77871409"
X-IronPort-AV: E=Sophos;i="6.23,108,1770624000"; d="scan'208";a="77871409"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2026 06:25:14 -0700
X-CSE-ConnectionGUID: Fp48SRCkTRaqvKibJXkkRw==
X-CSE-MsgGUID: kady+aWrSBWElEH09DfkLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,108,1770624000"; d="scan'208";a="217598188"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa008.fm.intel.com with ESMTP; 08 Mar 2026 06:25:13 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [RFC v1 10/11] drm/i915/dg2: warn on V/P Override request on dg2
Date: Sun,  8 Mar 2026 14:24:45 +0100
Message-ID: <20260308132446.3320848-11-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260308132446.3320848-1-michal.grzelak@intel.com>
References: <20260308132446.3320848-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Rspamd-Queue-Id: 3A768230698
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

DG2 doesn't support vswing/preemphasis overriding. Issue a warning when
requested to do so.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 632a5fe08381..1b30c9888f95 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1804,6 +1804,10 @@ dg2_get_snps_buf_trans(struct intel_encoder *encoder,
 		       const struct intel_crtc_state *crtc_state,
 		       int *n_entries)
 {
+	drm_WARN(to_intel_display(encoder)->drm,
+		 intel_bios_encoder_overrides_vswing(encoder->devdata),
+		 "Port %s asks to override vswing/preemph tables [DG2]\n",
+		 port_name(intel_bios_encoder_port(encoder->devdata)));
 	if (intel_crtc_has_dp_encoder(crtc_state) &&
 	    intel_dp_is_uhbr(crtc_state))
 		return intel_get_buf_trans(&dg2_snps_trans_uhbr, n_entries);
-- 
2.45.2

