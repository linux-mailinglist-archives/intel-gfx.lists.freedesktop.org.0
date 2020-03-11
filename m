Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAB8181200
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 08:33:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6899B6E454;
	Wed, 11 Mar 2020 07:33:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E912B6E444
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 07:33:00 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 7BF0DAED6;
 Wed, 11 Mar 2020 07:32:59 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Wed, 11 Mar 2020 08:32:56 +0100
Message-Id: <20200311073256.6535-1-tiwai@suse.de>
X-Mailer: git-send-email 2.16.4
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Use scnprintf() for avoiding
 potential buffer overflow
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
Cc: intel-gfx@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since snprintf() returns the would-be-output size instead of the
actual output size, the succeeding calls may go beyond the given
buffer limit.  Fix it by replacing with scnprintf().

Signed-off-by: Takashi Iwai <tiwai@suse.de>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 53ac3f00909a..418547bfe03b 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1381,13 +1381,13 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 			char hdr[160];
 			int len;
 
-			len = snprintf(hdr, sizeof(hdr),
+			len = scnprintf(hdr, sizeof(hdr),
 				       "\t\tActive[%d]: ",
 				       (int)(port - execlists->active));
 			if (!i915_request_signaled(rq)) {
 				struct intel_timeline *tl = get_timeline(rq);
 
-				len += snprintf(hdr + len, sizeof(hdr) - len,
+				len += scnprintf(hdr + len, sizeof(hdr) - len,
 						"ring:{start:%08x, hwsp:%08x, seqno:%08x, runtime:%llums}, ",
 						i915_ggtt_offset(rq->ring->vma),
 						tl ? tl->hwsp_offset : 0,
@@ -1398,7 +1398,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 				if (tl)
 					intel_timeline_put(tl);
 			}
-			snprintf(hdr + len, sizeof(hdr) - len, "rq: ");
+			scnprintf(hdr + len, sizeof(hdr) - len, "rq: ");
 			print_request(m, rq, hdr);
 		}
 		for (port = execlists->pending; (rq = *port); port++) {
-- 
2.16.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
