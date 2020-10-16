Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B45E2908BB
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 17:44:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52DF66EE1D;
	Fri, 16 Oct 2020 15:44:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 300 seconds by postgrey-1.36 at gabe;
 Fri, 16 Oct 2020 15:24:24 UTC
Received: from manul.sfritsch.de (manul.sfritsch.de
 [IPv6:2a01:4f8:172:195f:112::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1A02898C6
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Oct 2020 15:24:24 +0000 (UTC)
From: Stefan Fritsch <sf@sfritsch.de>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 17:23:40 +0200
Message-Id: <20201016152340.15906-1-sf@sfritsch.de>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 16 Oct 2020 15:44:12 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: Rate limit 'Fault errors' message
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
Cc: Stefan Fritsch <sf@sfritsch.de>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If linux is running as a guest and the host is doing igd pass-through
with VT-d enabled, this message is logged dozens of times per second.

Cc: stable@vger.kernel.org
Signed-off-by: Stefan Fritsch <sf@sfritsch.de>
---

The i915 driver should also detect VT-d in this case, but that is a
different issue.  I have sent a separate mail with subject 'Detecting
Vt-d when running as guest os'.


 drivers/gpu/drm/i915/i915_irq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 759f523c6a6b..29096634e697 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2337,7 +2337,7 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 
 		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
 		if (fault_errors)
-			drm_err(&dev_priv->drm,
+			drm_err_ratelimited(&dev_priv->drm,
 				"Fault errors on pipe %c: 0x%08x\n",
 				pipe_name(pipe),
 				fault_errors);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
