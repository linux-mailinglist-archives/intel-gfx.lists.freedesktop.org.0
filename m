Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xFnWFSrHJmq+kQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 15:44:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 848F1656C15
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 15:44:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=foxmail.com header.s=s201512 header.b=PzWSBM9a;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=foxmail.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A46910F3F3;
	Mon,  8 Jun 2026 13:44:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out162-62-57-49.mail.qq.com (out162-62-57-49.mail.qq.com
 [162.62.57.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 455ED10F02C;
 Mon,  8 Jun 2026 09:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1780910417;
 bh=Zk1OdM/FO04pIv727zNRuWZ1i1r0L3Cf7ZaDQS1VgWA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=PzWSBM9alNqXMoa2mM71LqLO153CwfbsVMcI0DEtnZe8dsXV1+HyYDjZaldxTmIGi
 dD5QNS1nZ3gVMqwW6J4qk9ZZGNzp6d2tO5cPikLbD3GFlpt61iGZ1BYEpMXYtNZQKD
 RbYCbHLi/aS4J1WvV5/J78xav7Re6DbLtwSITSB0=
Received: from chafi-Matebook-Ubuntu.. ([117.25.98.102])
 by newxmesmtplogicsvrszb43-0.qq.com (NewEsmtp) with SMTP
 id 32F830C7; Mon, 08 Jun 2026 17:12:47 +0800
X-QQ-mid: xmsmtpt1780909978t83o855lm
Message-ID: <tencent_AEC2C2C7582DD97B19BFA51196A256151F05@qq.com>
X-QQ-XMAILINFO: N1MQIlrHEcYy/L89GIYSaW/e9aFe/SJF0uC3bXmon5vt/U7LMi+32NnruVI7rS
 KguiKs5agSU/BSXlNnpt5SKG2wmzDlD6o+xeAtnERJmcUWvCCL/OHsCCEIVIB6+QAIyN9mCVpKmg
 ySA6IyaXMmXsalXWYryIoBMbg7vWQlK7XiYG6eEG8HBNK+oPzYCADVeCc/uJKfLrXPbNT+AuhwCp
 eVKmXU89LvhPxAsgZdgvPoCfLZUwKbJLsApqdpq9AW4grP2XdzmmYU1Bg3TjgbOp/FyWPaZNP4Ar
 EvuoXS1IB+t9ze07rifiT8lr5l6KRSTISC6DVFWom0wF6uB7Atapf8BmAJ7jVfLEa1U1ppz8uCzp
 zOVIwBJLCeYafF5jNvOfG/WvDDxBab9ELsMziPbx3MwzSPWper5ONHYlDAujigFXDCrIbjLRwWGX
 H4CfIuP5LHTaPYpKrh9MJYNWLVvDbZvqKLyems4IW6HJUPC1G/6U51TUVHqOVZ5YhHPErr2Q2y1r
 RjpW6gqhW8mVBBvoBp1+F543cJ2Pn8xPNQRc8Xy8wwMmQse+fish1CxoU5XdWpvIp/GxBzSFSdY4
 gHiENFpT8NBBS7rQortD24PeJyQWIeGEdL4W9FwAjK+tCzOB9tT35NsQOvl6uY8h1KLYC2b3nqn3
 IfyDVmKKM+6geJy1ITDO1WLD/j/u8IG0o8oMAoRWtsTGHCNhP26rcqoCaaJLM7Swa7Il0QnVmm5V
 6DNOSJE20cLQ7iyy512sPdDrsOMP3m0uwCKv1IWDx2yM2vf6kOMw/xDKR1cMaBKiK/24ZdlYPpj/
 E22JlHuri4neDlDRNcP1OCw1RiP0dte5c7aONRyJ3vg3YCZor9vkFPyJ9UqufWtQVmZUyZlWh6AV
 vTNS+/X1nKmaZq8c5mDlWqkF8MWu0sPzf5U7NcjFlhLZYLHhcKotuRZNox+JHKBkHISGhY1dERBw
 0C4nwxTuJ63WTJ56g14YSYTkoTHoq4+LRUQREE4UcJ55/Yph+poWg3/iHdt1exHXApVpfbEFSi/5
 yot/aS5Jr0BmO4gQUf34QTh4ythxgzjpmy+wNJAg==
X-QQ-XMRINFO: NI4Ajvh11aEjEMj13RCX7UuhPEoou2bs1g==
From: chafi <chafiprc@foxmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, stable@vger.kernel.org,
 Yu Zhang <chafiprc@foxmail.com>
Subject: [PATCH 2/3] drm/i915/dsi: Fix hsync readout for dual-link command mode
Date: Mon,  8 Jun 2026 17:12:43 +0800
X-OQ-MSGID: <20260608091245.462464-2-chafiprc@foxmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260608091245.462464-1-chafiprc@foxmail.com>
References: <20260608091245.462464-1-chafiprc@foxmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 08 Jun 2026 13:44:06 +0000
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[foxmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[foxmail.com:s=s201512];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chafiprc@foxmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[foxmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,foxmail.com];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[foxmail.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,qq.com:mid,foxmail.com:dkim,foxmail.com:email,foxmail.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 848F1656C15

From: Yu Zhang <chafiprc@foxmail.com>

gen11_dsi_get_timings() only doubles hsync_start/end for dual-link
DSI in video mode. For command mode dual-link, the hardware stores
per-link values (e.g. hsync_start=1380 instead of 2762), but the
readout does not compensate, causing:

  [drm] *ERROR* hw.pipe_mode.crtc_hsync_start (expected 2762, found 1380)

Fix this by applying the dual-link hsync doubling unconditionally,
matching the SET side where hsync is now halved for all modes.

Fixes: d1aeb5f399d9 ("drm/i915/icl: Configure DSI transcoder timings")
Cc: stable@vger.kernel.org
Signed-off-by: Yu Zhang <chafiprc@foxmail.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index c667d5941..f579cba28 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1527,11 +1527,9 @@ static void gen11_dsi_get_timings(struct intel_encoder *encoder,
 	adjusted_mode->crtc_hblank_start = adjusted_mode->crtc_hdisplay;
 	adjusted_mode->crtc_hblank_end = adjusted_mode->crtc_htotal;
 
-	if (intel_dsi->operation_mode == INTEL_DSI_VIDEO_MODE) {
-		if (intel_dsi->dual_link) {
-			adjusted_mode->crtc_hsync_start *= 2;
-			adjusted_mode->crtc_hsync_end *= 2;
-		}
+	if (intel_dsi->dual_link) {
+		adjusted_mode->crtc_hsync_start *= 2;
+		adjusted_mode->crtc_hsync_end *= 2;
 	}
 	adjusted_mode->crtc_vblank_start = adjusted_mode->crtc_vdisplay;
 	adjusted_mode->crtc_vblank_end = adjusted_mode->crtc_vtotal;
-- 
2.43.0

