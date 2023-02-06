Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E05C68B4F6
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 05:44:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7208E10E010;
	Mon,  6 Feb 2023 04:44:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 397 seconds by postgrey-1.36 at gabe;
 Mon, 06 Feb 2023 04:44:10 UTC
Received: from lechuck.jsg.id.au (jsg.id.au [193.114.144.202])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8288410E010
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Feb 2023 04:44:10 +0000 (UTC)
Received: from largo.jsg.id.au (largo.jsg.id.au [192.168.1.43])
 by lechuck.jsg.id.au (OpenSMTPD) with ESMTPS id 16c94620
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO); 
 Mon, 6 Feb 2023 15:37:28 +1100 (AEDT)
Received: from largo.jsg.id.au (localhost [127.0.0.1])
 by largo.jsg.id.au (OpenSMTPD) with ESMTP id ffc766bb;
 Mon, 6 Feb 2023 15:37:27 +1100 (AEDT)
From: Jonathan Gray <jsg@jsg.id.au>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Feb 2023 15:37:27 +1100
Message-Id: <20230206043727.46069-1-jsg@jsg.id.au>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Add another EHL pci id
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

described as "32 Execution Unit (EU) Super SKU" in:
Intel Atom x6000E Series, and Intel Pentium and Celeron N and
J Series Processors for IoT Applications
Datasheet, Volume 1
Document Number: 636112-1.6

Signed-off-by: Jonathan Gray <jsg@jsg.id.au>
---
 include/drm/i915_pciids.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 4a4c190f7698..92205054e542 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -588,6 +588,7 @@
 	INTEL_VGA_DEVICE(0x4551, info), \
 	INTEL_VGA_DEVICE(0x4555, info), \
 	INTEL_VGA_DEVICE(0x4557, info), \
+	INTEL_VGA_DEVICE(0x4570, info), \
 	INTEL_VGA_DEVICE(0x4571, info)
 
 /* JSL */
-- 
2.39.1

