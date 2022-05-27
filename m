Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C792955306C
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 13:06:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0189E10FFF0;
	Tue, 21 Jun 2022 11:06:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 3371 seconds by postgrey-1.36 at gabe;
 Fri, 27 May 2022 05:19:46 UTC
Received: from out162-62-57-49.mail.qq.com (out162-62-57-49.mail.qq.com
 [162.62.57.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85C0F10E3E5
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 May 2022 05:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1653628782; bh=CuP7w2dCE6pHimjY0ws2rt1ejr7l8lI90r8CGgXDpYA=;
 h=From:To:Cc:Subject:Date;
 b=CY3UKCWtTWyFcGgtwJEDtssoHl4VBQhj6gyiouGB+jU94DuboSIkClEWfiVCHyYtE
 m9TBxgYyAZpBFQksoofFVbFqyBICongyaaWUHhNh4VLE4kLCUp/1SC+ERzuaAgLb4D
 zMguX0IoPV+e98kGOyS+dfOsqy6uS0mP5GD24bi0=
Received: from localhost.localdomain ([116.128.244.169])
 by newxmesmtplogicsvrszb7.qq.com (NewEsmtp) with SMTP
 id 40C9AABA; Fri, 27 May 2022 12:16:12 +0800
X-QQ-mid: xmsmtpt1653624972tbyxv82q0
Message-ID: <tencent_43EC7B5CC4623940728A7A9B53A680AD5508@qq.com>
X-QQ-XMAILINFO: OUMxvQDaATieaT9mT7Fpoa31vXVaSfaU0WcuiJIDbhanAO+Rgki5LgKgNUZkyS
 i27NKTmQEFgads7E+zUR272/GMpAaZ++B8fddHdj9xsBZb+HNWQute8ZJU/QDXi3+Li+r8WSKF1h
 XXb0lv0wBlUPqYqRtVIdd1MCpfUfBg0g77SCpFFrRdrbUgc232mDFohn60IhUqN2jwp2vJwSn7mP
 FAomWw3GNGa86ay53OeqLhisT8awOOnbCJ4yycxBem8raydN8moXedKq/alvCeuNSQjtA6tbJ/2i
 kBlJuO1nT82fiamJ+xSC14iMQvozd4z1w/C3KvBqqeuXXFny/yLQXBLsl0fyc96L6N6pLQe6Snz6
 2vJBB0OMCGM6r+dxwax7dLPTjKkSHZIA8qWq++L45C+JVCC4oxzKFDLgrgUnV7+K5uwl4Uw+5YDb
 LQIxuKUqqhf2WuxIbqLTleAB8E63KVc6kAf94Otxfou14r8sief6Tq/srR+YKSOQhpk21vSe349v
 bq+8Qhx7cRwUuOXosFcs8pXa1QICBY/WxpoRmtdZakATbxneEXfGamEPQzxRoxXveheJNvUBUFKZ
 ia00s4FcaegsitPxS5+BlZ3BKWRzG2b/UDFQC97lUm47bgtjR3O9Rv4Vm8/xBF8LCO6TNgpJdtnU
 8CsPAU6fgCcLd5iSTQRKHwiaBnJ178sw2k6FfRos7+mqnFNPPPmCutq27bNRxoEIAPeCSHJWpcaL
 cg7F9RBAu3TEjHbgL//35aBRMz8cFcCP6cE7unw5W5n9K5i6B4OIpcisQj9OYxGZi6fpPBrOSRP7
 IScTYvHLZrSvyTGd+jhuMPpr3dokB59NIsmzz7MulgmGMvNnWD8kDIkMztFExYOqUnYFxkKNtJOb
 PJbVk1xXO1/yu0HtTVypjacVo7zQDla17E3hNzCRZ519Blk0Ci3CjQ27PPmy7hHw==
From: 1064094935@qq.com
To: Jani Nikula <jani.nikula@linux.intel.com>
Date: Fri, 27 May 2022 12:16:00 +0800
X-OQ-MSGID: <20220527041600.1204912-1-1064094935@qq.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 21 Jun 2022 11:06:26 +0000
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Fix spelling typo in comment
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 pengfuyuan <pengfuyuan@kylinos.cn>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 k2ci <kernel-bot@kylinos.cn>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: pengfuyuan <pengfuyuan@kylinos.cn>

Fix spelling typo in comment.

Reported-by: k2ci <kernel-bot@kylinos.cn>
Signed-off-by: pengfuyuan <pengfuyuan@kylinos.cn>
---
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index d6adda5bf96b..a9fb0a0fecab 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
@@ -114,7 +114,7 @@ u32 i915_gem_fence_alignment(struct drm_i915_private *i915, u32 size,
 	return i915_gem_fence_size(i915, size, tiling, stride);
 }
 
-/* Check pitch constriants for all chips & tiling formats */
+/* Check pitch constraints for all chips & tiling formats */
 static bool
 i915_tiling_ok(struct drm_i915_gem_object *obj,
 	       unsigned int tiling, unsigned int stride)
-- 
2.25.1


No virus found
		Checked by Hillstone Network AntiVirus
