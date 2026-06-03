Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qULBGO1EIGqKzgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 17:14:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B6663903B
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 17:14:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=nMkiVTAv;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B855810FFBC;
	Wed,  3 Jun 2026 15:14:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2728A10FFB9;
 Wed,  3 Jun 2026 15:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780499690; x=1812035690;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gs2j8ZFMot/SKndpVzl7+cseXo5lEoribOytq9vEJDA=;
 b=nMkiVTAvV6iDajnhZK1WkxC08PpSCmCWHjzFy9x6RPPQi0ZAVRQD3RjA
 EkbBVXMxTOUYDNynhZhdybs2q2YSdJAf8SxeAAlcmOZ6WoTiSufBpN1WM
 /qltaOe9BoyQgBm/AXgZT6ey/C1YgGRYgKBVAREELzs210PXujPcmB1w8
 xkE3Chr/ijmZBMD2o1v6oYV00Uh1EWWg93N9kRJjiKFmN0HeiKaiuFgsZ
 VdhyjrUq1Dt36lrMzFRRI1lVoaCsXcY82Yj0aP8633y1XCpfAhOK1e7qt
 chBqy5Ymh9Dg6BFLEg1pdyzZVrgBWkgwhufX7XVemY4+Z7QX8/6Q9SkGl Q==;
X-CSE-ConnectionGUID: 7knEuDMjS5OrlD0vEuzC7A==
X-CSE-MsgGUID: Sk7OwdFjRUS/d/LKtAtYWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11806"; a="98886406"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="98886406"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 08:14:50 -0700
X-CSE-ConnectionGUID: eAsflOtsSbaVmCCrdEjfow==
X-CSE-MsgGUID: SaDLbUPXQmqRzMeH0wPoPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="243425729"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.189])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 08:14:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/8] drm/i915/color: clean up variables in
 xelpd_program_plane_post_csc_lut()
Date: Wed,  3 Jun 2026 18:14:29 +0300
Message-ID: <5b4ee3400084d8ccec77b81c8cbbd294394fcbc9.1780499355.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780499355.git.jani.nikula@intel.com>
References: <cover.1780499355.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 31B6663903B

Use plain int for counting. Initialize lut_size at declaration. Remove
extra u32 v and just use lut_val.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 73ab879915c3..cf910baa69f3 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -4020,7 +4020,8 @@ xelpd_program_plane_post_csc_lut(struct intel_dsb *dsb,
 	enum pipe pipe = to_intel_plane(state->plane)->pipe;
 	enum plane_id plane = to_intel_plane(state->plane)->id;
 	const struct drm_color_lut32 *post_csc_lut = plane_state->hw.gamma_lut->data;
-	u32 i, lut_size, lut_val;
+	int i, lut_size = 32;
+	u32 lut_val;
 
 	if (icl_is_hdr_plane(display, plane)) {
 		intel_de_write_dsb(display, dsb, PLANE_POST_CSC_GAMC_INDEX_ENH(pipe, plane, 0),
@@ -4029,7 +4030,6 @@ xelpd_program_plane_post_csc_lut(struct intel_dsb *dsb,
 		intel_de_write_dsb(display, dsb, PLANE_POST_CSC_GAMC_SEG0_INDEX_ENH(pipe, plane, 0),
 				   PLANE_PAL_PREC_AUTO_INCREMENT);
 		if (post_csc_lut) {
-			lut_size = 32;
 			for (i = 0; i < lut_size; i++) {
 				lut_val = drm_color_lut32_extract(post_csc_lut[i].green, 24);
 
@@ -4046,12 +4046,12 @@ xelpd_program_plane_post_csc_lut(struct intel_dsb *dsb,
 			} while (i++ < 34);
 		} else {
 			/*TODO: Add for segment 0 */
-			lut_size = 32;
 			for (i = 0; i < lut_size; i++) {
-				u32 v = (i * ((1 << 24) - 1)) / (lut_size - 1);
+				lut_val = (i * ((1 << 24) - 1)) / (lut_size - 1);
 
 				intel_de_write_dsb(display, dsb,
-						   PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0), v);
+						   PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),
+						   lut_val);
 			}
 
 			do {
-- 
2.47.3

