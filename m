Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kB1SHvEzEGqqUwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 12:46:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 000BE5B2692
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 12:46:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2D2110E152;
	Fri, 22 May 2026 10:46:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="kt3c2Kmi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 629F310E152
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 May 2026 10:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1779446762;
 bh=dAtXxGCgvOtJ+hnhpgogMyJ2i2JqfHCN+p727aDxaBk=;
 h=From:To:Cc:Subject:Date:From;
 b=kt3c2KmiYh+P6x5UaxOz0he8bZ6t0atYiJORm6yUf378iSXz2929Gj6yydE2rligF
 8qcdFhu/JoWH+sCb21p4iKkqta77Pos1aXmPImVOxa7YZd3kPndHtRcwfIunZMBM+F
 kmU2kvP+Ck7+H7Keub1cOWE445KSa1bcShiPthgfESXj3wLAEzEi+YjC3J95ZBm7AP
 KXsHdH21g2z1MeInuX3OdGxv+EAqWrLzrSIcQBoTY0DJYnQMTbVNam7rVC2Yw2qQR2
 d3ORWjOkQYQ+LxN62wEq7vTf2yzxwD15i1XacyfMC6NX/iMB8A6hywwH+5uOXmkE/L
 SapScFyH0K99Q==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <dev@lankhorst.se>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH] drm/i915: Remove useless comment about MTRR.
Date: Fri, 22 May 2026 12:45:48 +0200
Message-ID: <20260522104548.980226-1-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lankhorst.se:email,lankhorst.se:mid,lankhorst.se:dkim]
X-Rspamd-Queue-Id: 000BE5B2692
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Commit 792d2b9a1259 ("drm: drop mtrr from i915"), added this comment,
drop it since it since MTRR no longer exists since 2013 and is removed
by commit 281856477cda ("drm: rip out drm_core_has_MTRR checks").

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/i915_driver.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index f06b2e8cf7d4b..0363dbd231b75 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1869,9 +1869,6 @@ static const struct drm_ioctl_desc i915_ioctls[] = {
 #define DRIVER_PATCHLEVEL	0
 
 static const struct drm_driver i915_drm_driver = {
-	/* Don't use MTRRs here; the Xserver or userspace app should
-	 * deal with them for Intel hardware.
-	 */
 	.driver_features =
 	    DRIVER_GEM |
 	    DRIVER_RENDER | DRIVER_MODESET | DRIVER_ATOMIC | DRIVER_SYNCOBJ |
-- 
2.53.0

