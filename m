Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA4E2157F3
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 15:04:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9077899B5;
	Mon,  6 Jul 2020 13:04:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 304 seconds by postgrey-1.36 at gabe;
 Fri, 03 Jul 2020 12:55:57 UTC
Received: from smtp.asem.it (smtp.asem.it [151.1.184.197])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 735DF6EB81
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jul 2020 12:55:57 +0000 (UTC)
Received: from webmail.asem.it by asem.it (smtp.asem.it)
 (SecurityGateway 6.5.2) with ESMTP id SG000359509.MSG 
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Jul 2020 14:50:49 +0200S
Received: from ASAS044.asem.intra (172.16.16.44) by ASAS044.asem.intra
 (172.16.16.44) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 3 Jul
 2020 14:50:47 +0200
Received: from flavio-x.asem.intra (172.16.17.208) by ASAS044.asem.intra
 (172.16.16.44) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Fri, 3 Jul 2020 14:50:47 +0200
From: Flavio Suligoi <f.suligoi@asem.it>
To: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 3 Jul 2020 14:50:46 +0200
Message-ID: <20200703125046.8395-1-f.suligoi@asem.it>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-SGHeloLookup-Result: pass smtp.helo=webmail.asem.it (ip=172.16.16.44)
X-SGSPF-Result: none (smtp.asem.it)
X-SGOP-RefID: str=0001.0A090201.5EFF29A8.003D, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0 (_st=1 _vt=0 _iwf=0)
X-Mailman-Approved-At: Mon, 06 Jul 2020 13:04:07 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: Fix spelling mistake in i915_reg.h
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
Cc: intel-gfx@lists.freedesktop.org, Flavio Suligoi <f.suligoi@asem.it>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix typo: "TRIGER" --> "TRIGGER"

The two misplelled macros:

1) OAREPORTTRIG1_EDGE_LEVEL_TRIGER_SELECT_MASK
2) OAREPORTTRIG5_EDGE_LEVEL_TRIGER_SELECT_MASK

are not used in any other sources of the kernel,
so this change can be consider only a local change
for the i915_reg.h file.

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
---
 drivers/gpu/drm/i915/i915_reg.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9d6536afc94b..c2153364724a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -868,7 +868,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 #define OAREPORTTRIG1 _MMIO(0x2740)
 #define OAREPORTTRIG1_THRESHOLD_MASK 0xffff
-#define OAREPORTTRIG1_EDGE_LEVEL_TRIGER_SELECT_MASK 0xffff0000 /* 0=level */
+#define OAREPORTTRIG1_EDGE_LEVEL_TRIGGER_SELECT_MASK 0xffff0000 /* 0=level */
 
 #define OAREPORTTRIG2 _MMIO(0x2744)
 #define OAREPORTTRIG2_INVERT_A_0  (1 << 0)
@@ -921,7 +921,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 #define OAREPORTTRIG5 _MMIO(0x2750)
 #define OAREPORTTRIG5_THRESHOLD_MASK 0xffff
-#define OAREPORTTRIG5_EDGE_LEVEL_TRIGER_SELECT_MASK 0xffff0000 /* 0=level */
+#define OAREPORTTRIG5_EDGE_LEVEL_TRIGGER_SELECT_MASK 0xffff0000 /* 0=level */
 
 #define OAREPORTTRIG6 _MMIO(0x2754)
 #define OAREPORTTRIG6_INVERT_A_0  (1 << 0)
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
