Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2605EA0F2
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 12:43:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04DC010E2CE;
	Mon, 26 Sep 2022 10:43:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 366 seconds by postgrey-1.36 at gabe;
 Thu, 22 Sep 2022 08:42:22 UTC
Received: from ssh248.corpemail.net (ssh248.corpemail.net [210.51.61.248])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBA9610E3D4;
 Thu, 22 Sep 2022 08:42:22 +0000 (UTC)
Received: from ([60.208.111.195])
 by ssh248.corpemail.net ((D)) with ASMTP (SSL) id RJH00008;
 Thu, 22 Sep 2022 16:36:08 +0800
Received: from localhost.localdomain (10.200.104.97) by
 jtjnmail201607.home.langchao.com (10.100.2.7) with Microsoft SMTP Server id
 15.1.2507.12; Thu, 22 Sep 2022 16:36:09 +0800
From: Bo Liu <liubo03@inspur.com>
To: <jani.nikula@linux.intel.com>, <joonas.lahtinen@linux.intel.com>,
 <rodrigo.vivi@intel.com>, <tvrtko.ursulin@linux.intel.com>,
 <airlied@linux.ie>, <daniel@ffwll.ch>
Date: Thu, 22 Sep 2022 04:36:01 -0400
Message-ID: <20220922083601.3236-1-liubo03@inspur.com>
X-Mailer: git-send-email 2.18.2
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.200.104.97]
tUid: 2022922163608248abfaae967940ac91c8a7deabfe4fb
X-Abuse-Reports-To: service@corp-email.com
Abuse-Reports-To: service@corp-email.com
X-Complaints-To: service@corp-email.com
X-Report-Abuse-To: service@corp-email.com
X-Mailman-Approved-At: Mon, 26 Sep 2022 10:40:33 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: Fix double word in comments
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
Cc: intel-gfx@lists.freedesktop.org, Bo Liu <liubo03@inspur.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove the repeated word "not" in comments.

Signed-off-by: Bo Liu <liubo03@inspur.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 4ace026b29bd..a5cb253f6dc5 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -646,7 +646,7 @@ static unsigned int intel_bw_crtc_num_active_planes(const struct intel_crtc_stat
 {
 	/*
 	 * We assume cursors are small enough
-	 * to not not cause bandwidth problems.
+	 * to not cause bandwidth problems.
 	 */
 	return hweight8(crtc_state->active_planes & ~BIT(PLANE_CURSOR));
 }
@@ -661,7 +661,7 @@ static unsigned int intel_bw_crtc_data_rate(const struct intel_crtc_state *crtc_
 	for_each_plane_id_on_crtc(crtc, plane_id) {
 		/*
 		 * We assume cursors are small enough
-		 * to not not cause bandwidth problems.
+		 * to not cause bandwidth problems.
 		 */
 		if (plane_id == PLANE_CURSOR)
 			continue;
-- 
2.27.0

