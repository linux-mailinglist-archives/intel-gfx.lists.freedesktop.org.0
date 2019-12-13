Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5773B12087B
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 15:23:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4C3F6E5A3;
	Mon, 16 Dec 2019 14:23:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 301 seconds by postgrey-1.36 at gabe;
 Fri, 13 Dec 2019 10:31:34 UTC
Received: from mx.sdf.org (mx.sdf.org [205.166.94.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 653EB6E311
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 10:31:34 +0000 (UTC)
Received: from sdf.org (IDENT:coypu@faeroes.freeshell.org [205.166.94.9])
 by mx.sdf.org (8.15.2/8.14.5) with ESMTPS id xBDAQUZw004028
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256 bits) verified NO)
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 10:26:30 GMT
Received: (from coypu@localhost)
 by sdf.org (8.15.2/8.12.8/Submit) id xBDAQUMS026229
 for intel-gfx@lists.freedesktop.org; Fri, 13 Dec 2019 10:26:30 GMT
Date: Fri, 13 Dec 2019 10:26:30 +0000
From: Maya Rashish <coypu@sdf.org>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20191213102630.GA24082@SDF.ORG>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Mailman-Approved-At: Mon, 16 Dec 2019 14:23:12 +0000
Subject: [Intel-gfx] [PATCH] Correct function name in comment
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Maya Rashish <coypu@sdf.org>
---
 drivers/gpu/drm/i915/i915_cmd_parser.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 7fcdcf31dc76..a0e437aa65b7 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -235,7 +235,7 @@ static const struct drm_i915_cmd_descriptor gen7_common_cmds[] = {
 	/*
 	 * MI_BATCH_BUFFER_START requires some special handling. It's not
 	 * really a 'skip' action but it doesn't seem like it's worth adding
-	 * a new action. See i915_parse_cmds().
+	 * a new action. See intel_engine_cmd_parser().
 	 */
 	CMD(  MI_BATCH_BUFFER_START,            SMI,   !F,  0xFF,   S  ),
 };
-- 
2.21.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
