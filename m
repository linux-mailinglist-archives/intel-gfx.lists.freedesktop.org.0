Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC3D35C5C1
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 13:55:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8A5289E57;
	Mon, 12 Apr 2021 11:55:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 467436EC11;
 Fri,  9 Apr 2021 12:52:29 +0000 (UTC)
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4FGydx5wLDz1BGYF;
 Fri,  9 Apr 2021 20:50:13 +0800 (CST)
Received: from DESKTOP-EFRLNPK.china.huawei.com (10.174.176.196) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.498.0; Fri, 9 Apr 2021 20:52:16 +0800
From: Qiheng Lin <linqiheng@huawei.com>
To: <airlied@linux.ie>, <daniel@ffwll.ch>
Date: Fri, 9 Apr 2021 20:51:51 +0800
Message-ID: <20210409125151.9520-1-linqiheng@huawei.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Originating-IP: [10.174.176.196]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 12 Apr 2021 11:55:22 +0000
Subject: [Intel-gfx] [PATCH -next] drm/i915/display: remove redundant NULL
 check
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
Cc: Qiheng Lin <linqiheng@huawei.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix the following coccicheck warning:

drivers/gpu/drm/i915/display/intel_psr.c:1530:29-31: WARNING
 !A || A && B is equivalent to !A || B

Signed-off-by: Qiheng Lin <linqiheng@huawei.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 32d3d56259c2..4cec6b4d7fb9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1526,8 +1526,7 @@ void intel_psr_wait_for_idle(const struct intel_crtc_state *new_crtc_state)
 		u32 psr_status;
 
 		mutex_lock(&intel_dp->psr.lock);
-		if (!intel_dp->psr.enabled ||
-		    (intel_dp->psr.enabled && intel_dp->psr.psr2_enabled)) {
+		if (!intel_dp->psr.enabled || intel_dp->psr.psr2_enabled) {
 			mutex_unlock(&intel_dp->psr.lock);
 			continue;
 		}
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
