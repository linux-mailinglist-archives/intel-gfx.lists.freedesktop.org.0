Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sRM8DDbUUGqJ5gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 13:15:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF50273A080
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 13:15:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=ivu0UtjB;
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A77510F86A;
	Fri, 10 Jul 2026 11:15:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D30310F86F;
 Fri, 10 Jul 2026 11:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783682097;
 bh=VKp7JmQs37vESgep6V4fNy1EmKEJw2SoLGZk9/klYr0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ivu0UtjBH9IB2TxJ72iNOoAGBRrGPMOFngB1wXnWFi51OSpv+4qQcXDFRNYvMRvRh
 1wRZcE/cwo9oe8PBzdn4WRV/pKQ91s1FsdK2SHCmdZs6FIZFhuE4zLo5pPaSp35ZVQ
 JxdGQ8642+bXnuzX+5C++fkV8DG2DHS9VgJKZTPnWJwWUtGRZ3lFA1uo5k5ogRoHc5
 DW82gB/tQlhzszp23IfO2SwAlSD//Sj7ybXuX2lQv0IvrtmpczmFu9WdzoIveK3yzG
 w0WOvj2TdFfids11gjf4iZ9taBBHi7DYFpT+UnnT4otiEG+mW8po59NLnuBuN4nJio
 vko/CLdLzVb9g==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v2 03/11] drm/i915: Throw away the BIOS fb if has the wrong
 depth/bpp
Date: Fri, 10 Jul 2026 13:15:30 +0200
Message-ID: <20260710111539.1274555-4-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260710111539.1274555-1-dev@lankhorst.se>
References: <20260710111539.1274555-1-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:from_mime,lankhorst.se:email,lankhorst.se:mid,lankhorst.se:dkim];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CF50273A080

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Respect the user's choice of depth/bpp for the fbdev framebuffer
and throw out the fb we inherited from the BIOS if it doesn't
match.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Link: https://patch.msgid.link/20260511214122.8468-4-ville.syrjala@linux.intel.com
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index bc267776106e8..db0e36dd8722f 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -268,6 +268,8 @@ static bool bios_fb_ok(const struct intel_framebuffer *fb,
 	struct intel_display *display = to_intel_display(fb->base.dev);
 	int width = fb->base.width;
 	int height = fb->base.height;
+	int depth = fb->base.format->depth;
+	int bpp = fb->base.format->cpp[0] * 8;
 
 	if (sizes->fb_width > width || sizes->fb_height > height) {
 		drm_dbg_kms(display->drm,
@@ -276,6 +278,13 @@ static bool bios_fb_ok(const struct intel_framebuffer *fb,
 		return false;
 	}
 
+	if (sizes->surface_depth != depth || sizes->surface_bpp != bpp) {
+		drm_dbg_kms(display->drm,
+			    "BIOS fb using wrong depth/bpp (%d/%d), we require (%d/%d), releasing it\n",
+			    depth, bpp, sizes->surface_depth, sizes->surface_bpp);
+		return false;
+	}
+
 	return true;
 }
 
-- 
2.53.0

