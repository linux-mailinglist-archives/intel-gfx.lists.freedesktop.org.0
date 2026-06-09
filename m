Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jdUeIiUBKGo67AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:03:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5552C65FCAD
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:03:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=YvHpNet+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4D4710E2D0;
	Tue,  9 Jun 2026 12:03:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 399AB10E2D4;
 Tue,  9 Jun 2026 12:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781006627; x=1812542627;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=e5kOjyvgGszz9epJA1l/gtvuVj7bTJNC8HR8M04Rccc=;
 b=YvHpNet+ZhCFtYv2qUXAbQcHjs5YBKn5swbErAwJB4t1AWREhqDkG/P6
 jE6SgEqdTnu6gKUpLR7iFXMzwaTba1OiJb1EebnrWYByheL1IcrRY/hCx
 EMXBTNXalFyMERmls8XDkr+7BNFSRkYW0Q66QpoNXacrmCtpEC9Hhh1sN
 Yf+PNNmE4det0rC8HQm7tVT9ntkf26PjL9sGOE7eT0PPsJ+hU+Kdpp2r4
 Khld9GiQy+dWrtj9IwBRPTSasYvyD4QTaHkDoUCMhD3AmKqpWzqG0NdRR
 zv2ULMkp7uCyGLnFsg2wr4sKDj3JzVucL8Xm/3ixTwL31G5NSjMr/QLGl A==;
X-CSE-ConnectionGUID: CuGi7yaiQfaJai5ufQ1wYw==
X-CSE-MsgGUID: ueyYeqSFQ3WYuap0/LqkUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="99340317"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="99340317"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:03:47 -0700
X-CSE-ConnectionGUID: FX6tRNaxQ3SIX7JX6te1vQ==
X-CSE-MsgGUID: GbzAphEFQKKpL5ioHnuqcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="244988249"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 05:03:46 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v3 05/36] drm/i915/display: Skip DP_MIN_HBLANK_CTL programming
 for CMTG transcoders
Date: Tue,  9 Jun 2026 17:32:19 +0530
Message-ID: <20260609120250.867750-6-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260609120250.867750-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260609120250.867750-1-dibin.moolakadan.subrahmanian@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5552C65FCAD

From: Animesh Manna <animesh.manna@intel.com>

DP_MIN_HBLANK_CTL is a CPU transcoder register and must not be written
for the CMTG transcoders. Skip the programming when the target
transcoder is TRANSCODER_CMTG0 or TRANSCODER_CMTG1.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0c454ea0f87f..e0593c2c0fc2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2761,7 +2761,9 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 			       VACTIVE(crtc_vdisplay - 1) |
 			       VTOTAL(crtc_vtotal - 1));
 
-	if (DISPLAY_VER(display) >= 30) {
+	if (DISPLAY_VER(display) >= 30 &&
+	    transcoder != TRANSCODER_CMTG0 &&
+	    transcoder != TRANSCODER_CMTG1) {
 		/*
 		 * Address issues for resolutions with high refresh rate that
 		 * have small Hblank, specifically where Hblank is smaller than
-- 
2.43.0

