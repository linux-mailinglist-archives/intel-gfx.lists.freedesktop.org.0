Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 035387173AA
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 04:22:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5BD610E45D;
	Wed, 31 May 2023 02:22:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 305 seconds by postgrey-1.36 at gabe;
 Wed, 31 May 2023 02:22:32 UTC
Received: from out199-8.us.a.mail.aliyun.com (out199-8.us.a.mail.aliyun.com
 [47.90.199.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8088810E45D
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 02:22:31 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R141e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=ay29a033018046060;
 MF=yang.lee@linux.alibaba.com; NM=1; PH=DS; RN=11; SR=0;
 TI=SMTPD_---0VjvXEdn_1685499435; 
Received: from localhost(mailfrom:yang.lee@linux.alibaba.com
 fp:SMTPD_---0VjvXEdn_1685499435) by smtp.aliyun-inc.com;
 Wed, 31 May 2023 10:17:16 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: airlied@gmail.com
Date: Wed, 31 May 2023 10:17:14 +0800
Message-Id: <20230531021714.125078-1-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH -next] drm/i915: remove unreachable code
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
Cc: intel-gfx@lists.freedesktop.org, Abaci Robot <abaci@linux.alibaba.com>,
 linux-kernel@vger.kernel.org, Yang Li <yang.lee@linux.alibaba.com>,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The code after the return will not be executed, so remove them.

Eliminate the following warning:
drivers/gpu/drm/i915/display/intel_color.c:1808 intel_color_prepare_commit() warn: ignoring unreachable code.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Closes: https://bugzilla.openanolis.cn/show_bug.cgi?id=5342
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 8966e6560516..0bfebac1e3e2 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1804,11 +1804,6 @@ void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
 
 	/* FIXME DSB has issues loading LUTs, disable it for now */
 	return;
-
-	if (!crtc_state->pre_csc_lut && !crtc_state->post_csc_lut)
-		return;
-
-	crtc_state->dsb = intel_dsb_prepare(crtc, 1024);
 }
 
 void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state)
-- 
2.20.1.7.g153144c

