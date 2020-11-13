Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9242B1CA6
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 14:56:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EC436E3D6;
	Fri, 13 Nov 2020 13:56:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E211B6E3D6;
 Fri, 13 Nov 2020 13:56:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22983919-1500050 
 for multiple; Fri, 13 Nov 2020 13:56:18 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 13:56:18 +0000
Message-Id: <20201113135618.1235497-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] tools/intel_gpu_top: Show the active
 device
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Include the active device name on the update screen.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tools/intel_gpu_top.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 298defa4e..c16e80502 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1027,7 +1027,8 @@ static bool print_groups(struct cnt_group **groups)
 }
 
 static int
-print_header(struct engines *engines, double t,
+print_header(const struct igt_device_card *card,
+	     struct engines *engines, double t,
 	     int lines, int con_w, int con_h, bool *consumed)
 {
 	struct pmu_counter fake_pmu = {
@@ -1106,14 +1107,15 @@ print_header(struct engines *engines, double t,
 		printf("\033[H\033[J");
 
 		if (lines++ < con_h) {
+			printf("intel-gpu-top: %s - ", card->card);
 			if (!engines->discrete)
-				printf("intel-gpu-top - %s/%s MHz;  %s%% RC6; %s %s; %s irqs/s\n",
+				printf("%s/%s MHz;  %s%% RC6; %s %s; %s irqs/s\n",
 					freq_items[1].buf, freq_items[0].buf,
 					rc6_items[0].buf, power_items[0].buf,
 					engines->rapl_unit,
 					irq_items[0].buf);
 			else
-				printf("intel-gpu-top - %s/%s MHz;  %s%% RC6; %s irqs/s\n",
+				printf("%s/%s MHz;  %s%% RC6; %s irqs/s\n",
 					freq_items[1].buf, freq_items[0].buf,
 					rc6_items[0].buf, irq_items[0].buf);
 		}
@@ -1457,7 +1459,8 @@ int main(int argc, char **argv)
 			break;
 
 		while (!consumed) {
-			lines = print_header(engines, t, lines, con_w, con_h,
+			lines = print_header(&card, engines,
+					     t, lines, con_w, con_h,
 					     &consumed);
 
 			if (engines->imc_fd)
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
