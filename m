Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3DC63F4A0
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 16:58:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 872C910E631;
	Thu,  1 Dec 2022 15:58:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mxct.zte.com.cn (mxct.zte.com.cn [58.251.27.85])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4A7010E52E
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 02:53:48 +0000 (UTC)
Received: from mxde.zte.com.cn (unknown [10.35.20.165])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mxct.zte.com.cn (FangMail) with ESMTPS id 4NN0yM00zqzW28
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 10:53:47 +0800 (CST)
Received: from mxus.zte.com.cn (unknown [10.207.168.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mxde.zte.com.cn (FangMail) with ESMTPS id 4NN0yH1Scxz4xD42
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 10:53:43 +0800 (CST)
Received: from mxhk.zte.com.cn (unknown [192.168.250.137])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mxus.zte.com.cn (FangMail) with ESMTPS id 4NN0yC4fPxz9tyD7
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 10:53:39 +0800 (CST)
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mxhk.zte.com.cn (FangMail) with ESMTPS id 4NN0y76GV1z8QrkZ;
 Thu,  1 Dec 2022 10:53:35 +0800 (CST)
Received: from xaxapp01.zte.com.cn ([10.88.40.50])
 by mse-fl2.zte.com.cn with SMTP id 2B12rP0R030683;
 Thu, 1 Dec 2022 10:53:25 +0800 (+08)
 (envelope-from ye.xingchen@zte.com.cn)
Received: from mapi (xaxapp01[null]) by mapi (Zmail) with MAPI id mid31;
 Thu, 1 Dec 2022 10:53:26 +0800 (CST)
Date: Thu, 1 Dec 2022 10:53:26 +0800 (CST)
X-Zmail-TransId: 2af9638817266e81791a
X-Mailer: Zmail v1.0
Message-ID: <202212011053265568903@zte.com.cn>
Mime-Version: 1.0
From: <ye.xingchen@zte.com.cn>
To: <joonas.lahtinen@linux.intel.com>
Content-Type: text/plain;
	charset="UTF-8"
X-MAIL: mse-fl2.zte.com.cn 2B12rP0R030683
X-Fangmail-Gw-Spam-Type: 0
X-FangMail-Miltered: at cgslv5.04-192.168.251.14.novalocal with ID
 63881739.000 by FangMail milter!
X-FangMail-Envelope: 1669863227/4NN0yM00zqzW28/63881739.000/10.35.20.165/[10.35.20.165]/mxde.zte.com.cn/<ye.xingchen@zte.com.cn>
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 63881739.000/4NN0yM00zqzW28
X-Mailman-Approved-At: Thu, 01 Dec 2022 15:58:17 +0000
Subject: [Intel-gfx] =?utf-8?q?=5BPATCH=5D_drm/i915=3A_use_sysfs=5Femit?=
 =?utf-8?q?=28=29_to_instead_of_scnprintf=28=29?=
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch, rodrigo.vivi@intel.com,
 airlied@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: ye xingchen <ye.xingchen@zte.com.cn>

Replace the open-code with sysfs_emit() to simplify the code.

Signed-off-by: ye xingchen <ye.xingchen@zte.com.cn>
---
 drivers/gpu/drm/i915/i915_mitigations.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_mitigations.c b/drivers/gpu/drm/i915/i915_mitigations.c
index def7302ef7fe..2b7aaaefb3a9 100644
--- a/drivers/gpu/drm/i915/i915_mitigations.c
+++ b/drivers/gpu/drm/i915/i915_mitigations.c
@@ -102,10 +102,10 @@ static int mitigations_get(char *buffer, const struct kernel_param *kp)
 	bool enable;

 	if (!local)
-		return scnprintf(buffer, PAGE_SIZE, "%s\n", "off");
+		return sysfs_emit(buffer, "%s\n", "off");

 	if (local & BIT(BITS_PER_LONG - 1)) {
-		count = scnprintf(buffer, PAGE_SIZE, "%s,", "auto");
+		count = sysfs_emit(buffer, "%s,", "auto");
 		enable = false;
 	} else {
 		enable = true;
-- 
2.25.1
