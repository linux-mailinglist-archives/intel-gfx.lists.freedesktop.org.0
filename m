Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OGaCEMhhMGpOSQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:34:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC23689E19
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:34:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=DZ94sVzf;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9863910E6A6;
	Mon, 15 Jun 2026 20:34:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 337DF10E6A6;
 Mon, 15 Jun 2026 20:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781555653; x=1813091653;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=77fQ1dtXoZAs4c3CulsSQL2aVUVIj8pVBq/r71f1GQw=;
 b=DZ94sVzf1TkNCUd6+1GVqvxt69fqqEg4EcBhvcwnDn2oI6nAz6Kp1spj
 YXlznS7XotNbUkg8VCIBDI+CADAON4Ga13INg9wAbCO76xzF/KkAKub1e
 +FkwScKemU9DXKP8GXmJgT1m97hBH/K5W5CPdGWySsHza7uDIWs99AZPn
 terb8wVWwCn33+cx7OCfiJkxghEBhV7T+E2mE1Ptp1sCKaECFado2D419
 wkUVb0X5z1SqzW/YtGO7lLF3DdtWOFotkTxKvVnx2O388kYY5Rep7Llp1
 Gi3uwrgkEn05eyRsHL96s5zbsJ89ZLQBHzbLBu5FUR5oJOUMTl04i3q2T A==;
X-CSE-ConnectionGUID: +cqK+OOCRtiZ14X6kz+MjA==
X-CSE-MsgGUID: QaaoOW5KRNaxgWlwShN53g==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93694565"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="93694565"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:34:13 -0700
X-CSE-ConnectionGUID: qSL36WyJRuavzFLWERbm5A==
X-CSE-MsgGUID: lI1osJqIQpWjsliPIrwvoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="252538445"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.246])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:34:09 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v3 1/7] drm/i915/wm: clear the plane ddb_y entries on plane
 disable
Date: Mon, 15 Jun 2026 23:33:49 +0300
Message-ID: <20260615203355.218578-2-vinod.govindapillai@intel.com>
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
X-Rspamd-Queue-Id: 0DC23689E19

The UV/Y plane DDB entriess are never cleared on
sk_wm_plane_disable_noatomic() and can leave stale DDB state
for NV12 planes on pre-Gen11 devices

Fixes: d34b59d5ba41 ("drm/i915: Add skl_wm_plane_disable_noatomic()")
Assisted-by: Copilot:claude-sonnet-4.6
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 5a3677ea25b0..a4ce21d4c024 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3856,7 +3856,7 @@ void skl_wm_plane_disable_noatomic(struct intel_crtc *crtc,
 		return;
 
 	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[plane->id], 0, 0);
-	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[plane->id], 0, 0);
+	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb_y[plane->id], 0, 0);
 
 	crtc_state->wm.skl.plane_min_ddb[plane->id] = 0;
 	crtc_state->wm.skl.plane_interim_ddb[plane->id] = 0;
-- 
2.43.0

