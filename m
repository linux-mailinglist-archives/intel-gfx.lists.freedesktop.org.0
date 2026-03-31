Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yCcOOdITzGkvOAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:34:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 981BB3700A5
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:34:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2D7410EB99;
	Tue, 31 Mar 2026 18:34:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OMWikOoY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 025FC10EB35;
 Tue, 31 Mar 2026 18:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774982085; x=1806518085;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hMpxGLN87MMAwkFV1szuVgR5+a3InkO6ukfILv8RzUU=;
 b=OMWikOoYrQEUUwCZM+/H4M3hkEsXNU6w+zNJYkPcMdrM9VlW7x1WPM4N
 KZi/W1D8y8NIcjRI5ONHAlhhr5t+03f8cWmjc4YusPWJD3FNHkiUnRXFW
 updzo6YSH7y/1G5SWr1yatpzH8mCXocd3bfwlfY23QjVtjobUWLTQkWye
 Rh8njPDLd1sQuU5HrMIIWZk4g9m8w5nob//ivlShU9F6JUfDsqRCogBHV
 sRiGYe3TcZuhGEbVgkz/ON5zpVpLf6GBUTafC0XXlUcauNsKCNbbE1APH
 kifm55RFxB9Lb+9uyiVi5/d2HJ65gVf5PfvfeoyocHU+vLskFTnA60Eng w==;
X-CSE-ConnectionGUID: WOUMgcvhRrqjfNOEdL2/+Q==
X-CSE-MsgGUID: 3P+q+ZdxR8molmdVRB+AOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="86705195"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="86705195"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 11:34:45 -0700
X-CSE-ConnectionGUID: UGJ3m4JVQ/e70p5wtkGIeQ==
X-CSE-MsgGUID: Ryb7FA+PQuyWI3ZOUvyB+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="256944517"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP; 31 Mar 2026 11:34:44 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 12/16] drm/i915/buf_trans: compute LT's VS/PE Override index
Date: Tue, 31 Mar 2026 20:33:28 +0200
Message-ID: <20260331183332.1773886-13-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260331183332.1773886-1-michal.grzelak@intel.com>
References: <20260331183332.1773886-1-michal.grzelak@intel.com>
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
	NEURAL_HAM(-0.00)[-0.989];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 981BB3700A5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add support for VS/PE Override on LT. Basing on the mode & CRTC type
found, compute the most appropriate index. Assume default index as 0.

Add FIXME & warning when EDP is requested to be overridden.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 31 +++++++++++++++++--
 1 file changed, 29 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 06c2869d3e7a..e94b1eb84e58 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1786,6 +1786,25 @@ xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14, n_entries);
 }
 
+static enum lt_vswing_preemph_index
+_compute_index_lt(const struct intel_crtc_state *crtc_state)
+{
+        if (intel_crtc_has_dp_encoder(crtc_state) && intel_dp_is_uhbr(crtc_state)) {
+                return XE3P_VS_PE_DP21;
+        } else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
+                 /* FIXME need to check correct parsing & table index should
+                 * this ever trigger.
+                 */
+                drm_WARN(to_intel_display(crtc_state)->drm, 1,
+                         "Ask to override EDP's vswing/preemph tables\n");
+                return XE3P_VS_PE_EDP;
+        } else {
+                return XE3P_VS_PE_DP14;
+        }
+
+        return (enum lt_vswing_preemph_index) 0;
+}
+
 static union ddi_vswing_preemph_index
 vswing_preemph_compute_index(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state)
@@ -1793,8 +1812,12 @@ vswing_preemph_compute_index(struct intel_encoder *encoder,
 	struct intel_display *display = to_intel_display(encoder);
 	union ddi_vswing_preemph_index index;
 
-	drm_dbg_kms(display->drm, "using default VS/PE Override index");
-	index = (union ddi_vswing_preemph_index) 0;
+	if (HAS_LT_PHY(display)) {
+		index.lt = _compute_index_lt(crtc_state);
+	} else {
+		drm_dbg_kms(display->drm, "using default VS/PE Override index");
+		index = (union ddi_vswing_preemph_index) 0;
+	}
 
 	return index;
 }
@@ -1803,6 +1826,10 @@ static int
 vswing_preemph_cast_index(struct intel_display *display,
 			   union ddi_vswing_preemph_index index)
 {
+	if (HAS_LT_PHY(display)) {
+		return index.lt;
+	}
+
 	return 0;
 }
 
-- 
2.45.2

