Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6DD295289
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 20:57:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 229846E135;
	Wed, 21 Oct 2020 18:57:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAEF66E135
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 18:56:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22768828-1500050 
 for multiple; Wed, 21 Oct 2020 19:56:51 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 19:56:49 +0100
Message-Id: <20201021185649.17759-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Unkerneldoc
 cnl_program_nearest_filter_coefs
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The block comment for cnl_program_nearest_filter_coefs() has a wonderful
diagram, but although it is marked up as kerneldoc does not use the
markup for providing the function definition.

drivers/gpu/drm/i915/display/intel_display.c:6341: warning: Function parameter or member 'dev_priv' not described in 'cnl_program_nearest_filter_coefs'
drivers/gpu/drm/i915/display/intel_display.c:6341: warning: Function parameter or member 'pipe' not described in 'cnl_program_nearest_filter_coefs'
drivers/gpu/drm/i915/display/intel_display.c:6341: warning: Function parameter or member 'id' not described in 'cnl_program_nearest_filter_coefs'
drivers/gpu/drm/i915/display/intel_display.c:6341: warning: Function parameter or member 'set' not described in 'cnl_program_nearest_filter_coefs'

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 130303e0298a..6eff9a971d0b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6299,7 +6299,7 @@ static u16 cnl_nearest_filter_coef(int t)
 	return t == 3 ? 0x0800 : 0x3000;
 }
 
-/**
+/*
  *  Theory behind setting nearest-neighbor integer scaling:
  *
  *  17 phase of 7 taps requires 119 coefficients in 60 dwords per set.
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
