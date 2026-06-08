Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id l+QIKSrHJmq/kQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 15:44:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5099C656C18
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 15:44:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=foxmail.com header.s=s201512 header.b=psUWKsdT;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=foxmail.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D58AB10F3F8;
	Mon,  8 Jun 2026 13:44:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 435 seconds by postgrey-1.36 at gabe;
 Mon, 08 Jun 2026 09:20:19 UTC
Received: from out162-62-57-252.mail.qq.com (out162-62-57-252.mail.qq.com
 [162.62.57.252])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C8AC10F02C;
 Mon,  8 Jun 2026 09:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1780910415;
 bh=+fqbAYNvBbhGamEyI6RgTGYGo+FJfa7zUeW6Q86NOV8=;
 h=From:To:Cc:Subject:Date;
 b=psUWKsdTDZ6GD9X2lJNlMg8P7OxnhMcLo6W4Q0+W7jv1/QlpYT+PBjYzf+0F74Dsz
 +grCdj2edWkmVU6wjp/kR1AUcsWbLWUvgWijXq1DT14Q88lmA2SZvG+Raz1c/5zRcy
 cPBGf9wiURjKzOAneD3k7AkVIJzSy+Me8a9qdx5A=
Received: from chafi-Matebook-Ubuntu.. ([117.25.98.102])
 by newxmesmtplogicsvrszb43-0.qq.com (NewEsmtp) with SMTP
 id 32F830C7; Mon, 08 Jun 2026 17:12:47 +0800
X-QQ-mid: xmsmtpt1780909967t9w3ffs40
Message-ID: <tencent_41186F27AF2C13B660C14ED5E6E14759800A@qq.com>
X-QQ-XMAILINFO: OEqHD1PnWCNqOwCy+d3Obi9zlJvkegDosYWvNDkri1MFywdxVJZCdKfyufQj6D
 skDDJabPGMemcLZtw0pYckoBoSZi8WP7aHN5LBRm8AvhQB0x6iqad2zqIhuWEFO33c81Qqdxyl23
 626sMZ3z67sFPAaJtij3QToZaciVzv7wpqx8bO36bQeNQ2TnQBRKTpc3DFUIHnNQDWZng/4B5P+G
 X/AyqPmMWnK6LyfixxCyfWHxx2I/WlHcKhjjhcgUq6ZtpMcyUOs5PHlnvn7lTf7Qr+t+R35FLrh1
 qvWFTJS0f3DiousnC1PM/fNU6XXNwSz0IEW7CX3VMqrY7vihAuuUj3UElw5ncaeSOZWA1mbmGQU0
 4s18cr7FFX5tBi4nFw6P5vNftCl97TQhTqsAuF3gLQJ6VsGeiT9gz3cIaVtaHh8u8NNv2ZesJi3Q
 yWs42OApmvgXHGAGRYJwRwEm+hPx0iekZyYq2pnXfW6XygxrgKPjMUbI95i+s2wQIxF426TzENkx
 Nxo9SOtfmVB928GCf3XF+E47SphWD2ZWw7KfCL2jnqqyF13m4plabOOS702/fI3WVvKSvZ4SoOD8
 Jp17QRzPuUMYlkZLGnAQ1f9v08dqn1ZAsT5v+6j8u6muXQNpyC30YpuCemB/VADN5PlLmopEWzwg
 c94NvyUd7PXQVJ26w+EbqGwQomt3DUcDmzv9QUWIqF60zR8a2do0tvuh6kjD3+Kg0ZqRyyHZ4fDP
 TaDkYRhaHXHS7oVwEgU7pIOZCMgf4pJJttanY2wpF42NOl4OTm4mx+plXralSed2c5mvHVFg97R2
 ijZiNFWqCK03lJfu7ruTwiK9xXDTKqXeZ67xFoKfRX9VuwItYYUvb+1/zKjX3E01oQtdDpZ7pL6p
 nGcyLVJxf58T3ec1+oJWy+nm3kK/a1Sk11wnQB2d2VAH1xb9kcKCh1vzm0cRqAUwGOf6ml3RRDhI
 1Qv6JCWrXa9bEAYmzT3QCV1z0MLSFGpDrNDHifkDDqPVD+kncL1nYvrNsxvdAWb4tcznrQfX3uZi
 rutQTEWcLkt/L7lE0SrMD96KpxEh22GZwIRyZiQST071C3vgOd
X-QQ-XMRINFO: MPJ6Tf5t3I/ylTmHUqvI8+Wpn+Gzalws3A==
From: chafi <chafiprc@foxmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, stable@vger.kernel.org,
 Yu Zhang <chafiprc@foxmail.com>
Subject: [PATCH 1/3] drm/i915/dsi: Program TRANS_HSYNC register for dual-link
 command mode
Date: Mon,  8 Jun 2026 17:12:42 +0800
X-OQ-MSGID: <20260608091245.462464-1-chafiprc@foxmail.com>
X-Mailer: git-send-email 2.43.0
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qq.com:mid,foxmail.com:dkim,foxmail.com:email,foxmail.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5099C656C18

From: Yu Zhang <chafiprc@foxmail.com>

The TRANS_HSYNC register programming and dual-link hsync halving is
placed inside the is_vid_mode() guard, so it only runs for video mode.
Command mode dual-link DSI also needs this:

1. Without TRANS_HSYNC written, the hardware retains an inconsistent
   state, leading to errors on modeset:

   [drm] *ERROR* mismatch in hw.pipe_mode.crtc_hsync_start
   (expected 2762, found 1380)

2. The hsync_start/end are not halved for each link, so the hardware
   stores per-link values while the software expects full values.

Fix this by moving the dual-link hsync halving and TRANS_HSYNC write
outside the is_vid_mode() guard, making them unconditional for all
DSI modes.

Fixes: d1aeb5f399d9 ("drm/i915/icl: Configure DSI transcoder timings")
Cc: stable@vger.kernel.org
Signed-off-by: Yu Zhang <chafiprc@foxmail.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 951f30a64..c667d5941 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -950,7 +950,6 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 			       HACTIVE(hactive - 1) | HTOTAL(htotal - 1));
 	}
 
-	/* TRANS_HSYNC register to be programmed only for video mode */
 	if (is_vid_mode(intel_dsi)) {
 		if (intel_dsi->video_mode == NON_BURST_SYNC_PULSE) {
 			/* BSPEC: hsync size should be atleast 16 pixels */
@@ -961,18 +960,18 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 
 		if (hback_porch < 16)
 			drm_err(display->drm, "hback porch < 16 pixels\n");
+	}
 
-		if (intel_dsi->dual_link) {
-			hsync_start /= 2;
-			hsync_end /= 2;
-		}
+	if (intel_dsi->dual_link) {
+		hsync_start /= 2;
+		hsync_end /= 2;
+	}
 
-		for_each_dsi_port(port, intel_dsi->ports) {
-			dsi_trans = dsi_port_to_transcoder(port);
-			intel_de_write(display,
-				       TRANS_HSYNC(display, dsi_trans),
-				       HSYNC_START(hsync_start - 1) | HSYNC_END(hsync_end - 1));
-		}
+	for_each_dsi_port(port, intel_dsi->ports) {
+		dsi_trans = dsi_port_to_transcoder(port);
+		intel_de_write(display,
+			       TRANS_HSYNC(display, dsi_trans),
+			       HSYNC_START(hsync_start - 1) | HSYNC_END(hsync_end - 1));
 	}
 
 	/* program TRANS_VTOTAL register */
-- 
2.43.0

