Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2700B592FA5
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Aug 2022 15:18:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DC4BBAF21;
	Mon, 15 Aug 2022 13:18:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bg5.exmail.qq.com (bg4.exmail.qq.com [43.154.221.58])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7450B45F8;
 Thu, 11 Aug 2022 15:40:55 +0000 (UTC)
X-QQ-mid: bizesmtp84t1660232445tagimrxj
Received: from localhost.localdomain ( [110.188.55.240])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Thu, 11 Aug 2022 23:40:38 +0800 (CST)
X-QQ-SSF: 0100000000200080H000B00A0000000
X-QQ-FEAT: CR3LFp2JE4k+qoMOMkngQMFfaswYNNllHQQVEKKmAclLFKgIFdLtvLu3tIlt1
 swnJmVUFjT65gS14WkrxESJiYdzgD0WBRbkbZIw6fD3fMgFoPIeRY9kY9VQGULZ49sVcLKn
 H4dCXS8CVx/djqhj08RJDrZ3nCRPWkKidfKce7P0IvzBfCbeaMTPhLxq9h1oWZxCHlAWBVe
 Y3aJ4OiNN8od0hgN17aby6xXDTdJDgK1gsBhLYPypfjn74p3iSEC37Uvv6dLMxKFwxm6G8/
 w8X/ejb/u/wpnq+8C1qeYiCI9BkXdv6fSpcmQcwuDga02/mXdM4wfZDZwq/hlnOW/pt6O/2
 X/XBaEdM7cKPIo8L+LUY3ZS0gsxwFp4NeDDE5rm0XO6hGEa0jtlK6X81ilo2ln421RVnk5x
X-QQ-GoodBg: 0
From: min tang <tangmin@cdjrlc.com>
To: airlied@linux.ie,
	daniel@ffwll.ch
Date: Thu, 11 Aug 2022 23:40:27 +0800
Message-Id: <20220811154027.13255-1-tangmin@cdjrlc.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr6
X-Mailman-Approved-At: Mon, 15 Aug 2022 13:18:11 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: Fix comment typo
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
Cc: min tang <tangmin@cdjrlc.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The double `for' is duplicated in line 2537, remove one.

Signed-off-by: min tang <tangmin@cdjrlc.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9ccb67eec1bd..617a33e4bbb6 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2534,7 +2534,7 @@
  * HDMI/DP bits are g4x+
  *
  * WARNING: Bspec for hpd status bits on gen4 seems to be completely confused.
- * Please check the detailed lore in the commit message for for experimental
+ * Please check the detailed lore in the commit message for experimental
  * evidence.
  */
 /* Bspec says GM45 should match G4X/VLV/CHV, but reality disagrees */
-- 
2.17.1

