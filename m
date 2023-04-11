Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 858BA6DD7D8
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 12:25:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC81710E13E;
	Tue, 11 Apr 2023 10:25:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 301 seconds by postgrey-1.36 at gabe;
 Tue, 11 Apr 2023 10:25:48 UTC
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be
 [IPv6:2a02:1800:120:4::f00:13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 733A010E0E8
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 10:25:48 +0000 (UTC)
Received: from ramsan.of.borg ([84.195.187.55])
 by baptiste.telenet-ops.be with bizsmtp
 id jNLe2900Q1C8whw01NLef4; Tue, 11 Apr 2023 12:20:43 +0200
Received: from rox.of.borg ([192.168.97.57])
 by ramsan.of.borg with esmtp (Exim 4.95)
 (envelope-from <geert@linux-m68k.org>) id 1pmB6J-00Gaa3-Iw;
 Tue, 11 Apr 2023 12:20:38 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
 (envelope-from <geert@linux-m68k.org>) id 1pmB78-00EHKO-Ky;
 Tue, 11 Apr 2023 12:20:38 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Pan@rox.of.borg, Xinhui <Xinhui.Pan@amd.com>
Date: Tue, 11 Apr 2023 12:20:36 +0200
Message-Id: <fd7c23298f2c62db85abc9114d12059ef5e5f330.1681208396.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <50439958420f91cc97ad929437334bfb19ca4d90.1681208396.git.geert+renesas@glider.be>
References: <50439958420f91cc97ad929437334bfb19ca4d90.1681208396.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm: Spelling s/randevouz/rendez-vouz/
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
Cc: intel-gfx@lists.freedesktop.org,
 Geert Uytterhoeven <geert+renesas@glider.be>, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix a misspelling of "rendez-vouz".

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 include/drm/task_barrier.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/drm/task_barrier.h b/include/drm/task_barrier.h
index 217c1cf21c1ab7d5..59ead429acb2afb0 100644
--- a/include/drm/task_barrier.h
+++ b/include/drm/task_barrier.h
@@ -24,7 +24,7 @@
 #include <linux/atomic.h>
 
 /*
- * Reusable 2 PHASE task barrier (randevouz point) implementation for N tasks.
+ * Reusable 2 PHASE task barrier (rendez-vouz point) implementation for N tasks.
  * Based on the Little book of semaphores - https://greenteapress.com/wp/semaphores/
  */
 
-- 
2.34.1

