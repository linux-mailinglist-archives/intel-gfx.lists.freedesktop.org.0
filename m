Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJJuB0jeAmoMyQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 10:01:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 838F351C520
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 10:01:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDC1610E253;
	Tue, 12 May 2026 08:00:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SuJ9knS1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0307010E253;
 Tue, 12 May 2026 08:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778572860; x=1810108860;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SFTXHFvij5OKNxncm480e2ddzzaIBbJwNYiRRMRi1mM=;
 b=SuJ9knS1y8yfyCJiTD6I+fznzN5ZlV8WRQ3Ku7GCYn1wws0qjj8q4PHO
 MLIg86bVYS6yZL3eKMLi2EgMvKG8KJV87N6hjqyvVrjSYLRqQBRAEGu52
 EzmiXCyj1HeXiAvkPS/4ioSkCTzi0knsz+7m6du8gfdUNLX2T+WlsjH0y
 RA97SwLdki53c0o22jw0dvWOVvDnK5UIvsD2qVa5yCsqv2qwQW0IAGtOm
 KG3EE8xiKGqZHXcGGotsdUolUVWq7QRC2xDuibm0qVAGTukNRCF0Ia4VB
 HwayqSj37UAzPEJ0AI3KScGpMpjXFxChGqOWKjNBzqJ02KBSSe3TXqoae A==;
X-CSE-ConnectionGUID: UOCjKribQAuajDS4d2dGbA==
X-CSE-MsgGUID: jcuuneg4QEOXUzpw7CE30A==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79655328"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="79655328"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 01:00:59 -0700
X-CSE-ConnectionGUID: 13BM5ongRiG0UkKCyQXZhw==
X-CSE-MsgGUID: BDO7LJdPSbK1hDt3674bNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="261452505"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.207])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 01:00:57 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH] drm/i915/display: Handle odd position for planar formats in
 selective fetch
Date: Tue, 12 May 2026 11:00:22 +0300
Message-ID: <20260512080022.2527094-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
X-Rspamd-Queue-Id: 838F351C520
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:query timed out];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RSPAMD_EMAILBL_FAIL(0.00)[vidya.srinivas.intel.com:query timed out,jouni.hogander.intel.com:query timed out];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

Since Lunarlake there is no restriction planar planes has to be even
positions. Due to this we may end up having odd offset for UV-plane in
selective fetch configuration. Add handling for this case into selective
fetch configuration.

Bspec: 68927
Suggested-by: Vidya Srinivas <vidya.srinivas@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index ef431dd32e74..ad4bfff6903d 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1532,7 +1532,7 @@ static void icl_plane_update_sel_fetch_noarm(struct intel_dsb *dsb,
 	if (!color_plane)
 		y = plane_state->view.color_plane[color_plane].y + clip->y1;
 	else
-		y = plane_state->view.color_plane[color_plane].y + clip->y1 / 2;
+		y = plane_state->view.color_plane[color_plane].y + DIV_ROUND_UP(clip->y1, 2);
 
 	val = y << 16 | x;
 
-- 
2.43.0

