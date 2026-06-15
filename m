Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BoeyJ81hMGpQSQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:34:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3604C689E21
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:34:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ektcRj8i;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAF2A10E6A8;
	Mon, 15 Jun 2026 20:34:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A39210E6AD;
 Mon, 15 Jun 2026 20:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781555659; x=1813091659;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rgh8990NXQhY5lWkk67xGajGYrleD1bIomItQkysPjc=;
 b=ektcRj8id0VdwQvNl8uNbGyURsJAQ3PyM4/m4doIavjk0w/dji/kRenn
 QVrFgizL1miHpw7ehIiADL//gebq5c4+YTX/V3BLf86STpRVhHHaJt//r
 z2KK/tzWyaQ/ATJAD6p5GzrNelgdFPOhEx7PrHkDNhDtw0UTg/6pgnqzQ
 PCg/LiTE09wUege2uconEW8fbr0lvSdjnz5CbQ767fS+sYOmVnWIBiodZ
 JO16cDtuVqR3SJem0ZNg3BdJUfUwfOnDHiS5uN2KQuawNlOzUcEDxixye
 uXgaBRfTXSOchxHWPQXvFZG7vVphTaWRJf//OYJs3jppl5OOlG6RQyDz4 g==;
X-CSE-ConnectionGUID: SFuOHEkcRVe1Krsiv1IQbg==
X-CSE-MsgGUID: K12KlBkxR2qJBr9YGBTmdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93694576"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="93694576"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:34:18 -0700
X-CSE-ConnectionGUID: kYHyRWhkQuKTLpuUym31YQ==
X-CSE-MsgGUID: ZxzBjJ8/TLOuZuiCrPTC8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="252538490"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.246])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:34:16 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v3 3/7] drm/i915/display: sagv pre/post plane calls to check
 pmdemand support
Date: Mon, 15 Jun 2026 23:33:51 +0300
Message-ID: <20260615203355.218578-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260615203355.218578-1-vinod.govindapillai@intel.com>
References: <20260615203355.218578-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3604C689E21

For pmdemand cases, no need to even calculate the masks based
on the qgv points index. Though the current logic avoids setting
the registers based on the pmdemand support, some qgv point masks
are compared in vain and do nothing. So leave early if pmdemand
is supported.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index a4ce21d4c024..ec1bfe46edef 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -275,6 +275,9 @@ void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
 	if (!intel_has_sagv(display))
 		return;
 
+	if (HAS_PMDEMAND(display))
+		return;
+
 	if (DISPLAY_VER(display) >= 11)
 		icl_sagv_pre_plane_update(state);
 	else
@@ -295,6 +298,9 @@ void intel_sagv_post_plane_update(struct intel_atomic_state *state)
 	if (!intel_has_sagv(display))
 		return;
 
+	if (HAS_PMDEMAND(display))
+		return;
+
 	if (DISPLAY_VER(display) >= 11)
 		icl_sagv_post_plane_update(state);
 	else
-- 
2.43.0

