Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBSAGGcaGGoBdQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 12:35:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A395F0A76
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 12:35:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F65010EFBC;
	Thu, 28 May 2026 10:35:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RgKAvHZa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B1ED10EFC1;
 Thu, 28 May 2026 10:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779964516; x=1811500516;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4u9gfrmpkqntKYqQwrTsJGKOLcJR9u8G8+H1VqGRYsw=;
 b=RgKAvHZa+Feo2qdrRUARyyjzcHKIeYFU6FhbxG6TGBk6q5OLQsCWqjtG
 u7iUkgb+D2vc5TyVO2tiGMfwJqITuFDrahE8NSQmXTfT31yPW1APA6nZO
 AAQigygUxW/yeCYfAKbl2nRjd8BiPRWJF9yxOZFjZzsuxYQTKCPM2KYXa
 yRQG8eqS6YjDfrVkWNlFHJ+VAOdxJJ5M/of7irt1yoKMA3m7S0XyWxX9s
 iUXN95YMqP8GCA5Rf8+DbrDtEyIzmTbjiN+khy+kqYlvZomCBtTod4Zw9
 DjLuEsacdZYp2bgy5PDN9twJ/jeZfAw6AfyF3TRjmpDFzB02fXDAe94YH A==;
X-CSE-ConnectionGUID: kjFaiKu1RdOBWopJd+Kj6w==
X-CSE-MsgGUID: a1KiJH9OTVi9F9rUJe87DQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="98221234"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="98221234"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 03:35:16 -0700
X-CSE-ConnectionGUID: r2JoprWmSY2KW93k1PJgPA==
X-CSE-MsgGUID: AiUW2Rs2SmCnSN/4xz+1aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="241682353"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.166])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 03:35:15 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 03/11] drm/i915/bw: Initialize num_planes sensibly for the
 first plane group in TGL+
Date: Thu, 28 May 2026 13:34:50 +0300
Message-ID: <20260528103458.18069-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
References: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim,linux.intel.com:mid]
X-Rspamd-Queue-Id: E5A395F0A76
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The way the TGL+ bw algorithm works is that 'num_planes'
is really a maximum number of allowed planes (whereas in
the ICL version it was more of a minimum), and the
assumption is that the first plane group (max[0]) can be
used with any number of planes (tgl_max_bw_index() always
returns 0 at the end).

To make things a bit less weird let's just set the first
plane group's num_planes to some big number to indicate it
has no real limit on the number of planes.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 887628144864..4b5db4ca7773 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -629,6 +629,8 @@ static int tgl_get_bw_info(struct intel_display *display,
 	 */
 	clperchgroup = 4 * (8 / num_channels) * qi.deinterleave;
 
+	display->bw.max[0].num_planes = U8_MAX;
+
 	for (i = 0; i < num_groups; i++) {
 		struct intel_bw_info *bi = &display->bw.max[i];
 		struct intel_bw_info *bi_next;
@@ -701,10 +703,10 @@ static void dg2_get_bw_info(struct intel_display *display)
 {
 	int i;
 
+	display->bw.max[0].num_planes = U8_MAX;
 	display->bw.max[0].deratedbw[0] = display->platform.dg2_g11 ? 38000 : 50000;
 
 	/* Bandwidth does not depend on # of planes; set all groups the same */
-	display->bw.max[0].num_planes = 1;
 	display->bw.max[0].num_qgv_points = 1;
 	for (i = 1; i < ARRAY_SIZE(display->bw.max); i++)
 		display->bw.max[i] = display->bw.max[0];
@@ -731,6 +733,8 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
 	peakbw = tgl_peakbw(num_channels, qi.channel_width, icl_sagv_max_dclk(&qi));
 	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
 
+	display->bw.max[0].num_planes = U8_MAX;
+
 	for (i = 0; i < qi.num_points; i++) {
 		const struct intel_qgv_point *sp = &qi.points[i];
 		int bw = tgl_peakbw(num_channels, qi.channel_width, sp->dclk);
@@ -745,7 +749,6 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
 	}
 
 	/* Bandwidth does not depend on # of planes; set all groups the same */
-	display->bw.max[0].num_planes = 1;
 	display->bw.max[0].num_qgv_points = qi.num_points;
 	for (i = 1; i < ARRAY_SIZE(display->bw.max); i++)
 		display->bw.max[i] = display->bw.max[0];
@@ -808,7 +811,7 @@ static unsigned int tgl_max_bw_index(struct intel_display *display,
 			return i;
 	}
 
-	return 0;
+	return UINT_MAX;
 }
 
 static unsigned int adl_psf_bw(struct intel_display *display,
-- 
2.53.0

