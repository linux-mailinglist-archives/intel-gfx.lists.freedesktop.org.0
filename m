Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3273B57B837
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 16:09:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28B6B14A2E8;
	Wed, 20 Jul 2022 14:09:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 495 seconds by postgrey-1.36 at gabe;
 Sat, 16 Jul 2022 13:10:28 UTC
Received: from smtpbg.qq.com (biz-43-154-221-58.mail.qq.com [43.154.221.58])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02AF110E00D;
 Sat, 16 Jul 2022 13:10:28 +0000 (UTC)
X-QQ-mid: bizesmtp85t1657976518tiba5dfa
Received: from localhost.localdomain ( [182.132.179.58])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Sat, 16 Jul 2022 21:01:54 +0800 (CST)
X-QQ-SSF: 01000000002000E0U000B00A0000000
X-QQ-FEAT: ALw5QuVtm4W6g00JOOK8BZrhQ8/YnIxpxoxTCkyqD1twqMvTwDXPkyk/LihOZ
 75YbWFndLq03UAzR2Gt4RP5uSMGPhMjZh0jrRoQ/4Itq6WBv3Wk8ia6H7M36vsWZy4Sprps
 ejmd09KZeNc7USdZubNra1M3WhrHjMB69R0VF/vv5PZC+JUwPFYYo63zg5v4+kPYLzHtHdB
 bWNmKxuNfRmxFezRGvYDIAQI+9KU3Vh8cAYyIZCzkGaVkIvqF9knjMH9EeYpTf2B62rdesx
 lM0fMtEcNt3nIuvgAiKn3jWoIh4OVAKBvpuBStAmp3IYj/Wcbg0kiSQKJjtJWEPn4lNkgAS
 7pQ5Q7ERRICE8xVbnv6L5NtsGFlP3UAQWBxiM+tU0zuJQEAZ69WMAj5yiwYOw==
X-QQ-GoodBg: 0
From: Jason Wang <wangborong@cdjrlc.com>
To: daniel@ffwll.ch
Date: Sun, 17 Jul 2022 02:44:39 +0800
Message-Id: <20220716184439.72056-1-wangborong@cdjrlc.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr6
X-Mailman-Approved-At: Wed, 20 Jul 2022 14:07:33 +0000
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Remove unneeded semicolon
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
Cc: dri-devel@lists.freedesktop.org, thomas.hellstrom@linux.intel.com,
 airlied@linux.ie, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, matthew.auld@intel.com,
 Jason Wang <wangborong@cdjrlc.com>, rodrigo.vivi@intel.com,
 dan.carpenter@oracle.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The semicolon after the `}' in line 648 is unneeded.

Signed-off-by: Jason Wang <wangborong@cdjrlc.com>
---
 drivers/gpu/drm/i915/gt/intel_migrate.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index 2c35324b5f68..a69b244f14d0 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -645,7 +645,7 @@ static int scatter_list_length(struct scatterlist *sg)
 	while (sg && sg_dma_len(sg)) {
 		len += sg_dma_len(sg);
 		sg = sg_next(sg);
-	};
+	}
 
 	return len;
 }
-- 
2.35.1

