Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDAF57B81C
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 16:08:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EAD311AA72;
	Wed, 20 Jul 2022 14:07:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpbg.qq.com (biz-43-154-221-58.mail.qq.com [43.154.221.58])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE8248B8E2;
 Mon, 18 Jul 2022 13:25:53 +0000 (UTC)
X-QQ-mid: bizesmtp67t1658150513tr550luw
Received: from localhost.localdomain ( [171.223.96.21])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Mon, 18 Jul 2022 21:21:50 +0800 (CST)
X-QQ-SSF: 01000000002000E0U000C00A0000000
X-QQ-FEAT: +bXiSo2NuBd9WaWHuSP8maq7+K/rGilFjsIUzYuFnDmWeFbwKfnBWyLGSaW0c
 QzQ6SoGrFLGaTk/aAEo6aRhsijiMnWswHxW2xm6ECEjkYlSGuxOOtl4q39CpaQXQI3o2hWg
 YlTZhn+IhNbF2YCkBnHB7h8GU2/ImkgSxyYuL9EPJgOJXQy3WPIvDCbygBKmhJgUc+v8Jja
 D8MJlXlImEKhTa7tkS7L8CAJj4IJiWZjHS1T7k/BEweihd7DyntgWcqs6MmI19sd6eJOtRI
 meNjgZ1FBBrO2s/qDCLB6rNKXm0FHXMtreIbcuaJEQil7xqF2hWpe6LKbO3d+yfIhhs9RZV
 D513iq8u95mrc9V36UDPbyNQzAcJg3FWmmJI8dmN6j2xwrtW6CTPf5mOeXHF3mVfYtY3LSU
 1XWntNTeBbo=
X-QQ-GoodBg: 0
From: Jason Wang <wangborong@cdjrlc.com>
To: daniel@ffwll.ch
Date: Fri, 15 Jul 2022 13:19:53 +0800
Message-Id: <20220715051953.31424-1-wangborong@cdjrlc.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr6
X-Mailman-Approved-At: Wed, 20 Jul 2022 14:07:33 +0000
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Fix comment typo
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
Cc: Jason Wang <wangborong@cdjrlc.com>, michal.winiarski@intel.com,
 airlied@linux.ie, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 rodrigo.vivi@intel.com, zhou1615@umn.edu
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The double `wait' is duplicated in line 974, remove one.

Signed-off-by: Jason Wang <wangborong@cdjrlc.com>
---
 drivers/gpu/drm/i915/selftests/i915_request.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index c56a0c2cd2f7..ec05f578a698 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -971,7 +971,7 @@ static struct i915_vma *empty_batch(struct drm_i915_private *i915)
 	if (err)
 		goto err;
 
-	/* Force the wait wait now to avoid including it in the benchmark */
+	/* Force the wait now to avoid including it in the benchmark */
 	err = i915_vma_sync(vma);
 	if (err)
 		goto err_pin;
-- 
2.35.1

