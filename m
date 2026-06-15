Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Pl6oAjJeMGq4SAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:18:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA11F689BF4
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:18:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=Gnj4bBoV;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D011710E664;
	Mon, 15 Jun 2026 20:18:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1DB710E658;
 Mon, 15 Jun 2026 20:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1781554719;
 bh=GQhxUz+JN+YyJf3pXGopVoWZqYvs/Yb71b7mUuabTSk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Gnj4bBoV+j/m/rqvph+35PoobXEZ1VHwV3/DZW+YCeGY9Pu0du84ERfODkVC849Ir
 vHBWiffSgu3oytikgwe8zYD156FErYPlj5WYbuXIwFZJPPyBJ3VitPBc1ISjSRzbtv
 QufTiTSWQ5wBk+z5Ual6U0AzYMTdZUyPgXQd2kePAofpNZ3KnGkhIQM27Tfib6u61I
 3DbY9e1+NP37f/thGGFIbuj1bkWksi/DB1d27jaczbhVaD9JmmSnToykeGSPhRwqTn
 wtSkSQBPKIgfCZKTE58LlCWiwLUA5CSWRd3T+3LhkyMb84s2tIiy16N+vywrSgl7mG
 zIWDcbSBfsRcQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Maarten Lankhorst <dev@lankhorst.se>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v8 11/27] drm/i915/display: Make icl_dsi_frame_update use _fw
 too
Date: Mon, 15 Jun 2026 22:18:29 +0200
Message-ID: <20260615201846.307297-12-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260615201846.307297-1-dev@lankhorst.se>
References: <20260615201846.307297-1-dev@lankhorst.se>
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
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lists.freedesktop.org:from_smtp,lankhorst.se:dkim,lankhorst.se:email,lankhorst.se:mid,lankhorst.se:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CA11F689BF4

Don't use the dmc lock inside the vblank critical section,
not even as last call.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index a549f1fac8103..277804638f207 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -242,8 +242,8 @@ void icl_dsi_frame_update(struct intel_crtc_state *crtc_state)
 	else
 		return;
 
-	intel_de_rmw(display, DSI_CMD_FRMCTL(port), 0,
-		     DSI_FRAME_UPDATE_REQUEST);
+	intel_de_rmw_fw(display, DSI_CMD_FRMCTL(port), 0,
+			DSI_FRAME_UPDATE_REQUEST);
 }
 
 static void dsi_program_swing_and_deemphasis(struct intel_encoder *encoder)
-- 
2.53.0

