Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9761E8D2A
	for <lists+intel-gfx@lfdr.de>; Sat, 30 May 2020 04:19:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1968C6E996;
	Sat, 30 May 2020 02:19:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7451E6E996
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 May 2020 02:19:01 +0000 (UTC)
Received: from [114.245.33.20] (helo=localhost.localdomain)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <aaron.ma@canonical.com>)
 id 1jer5P-0007gk-6C; Sat, 30 May 2020 02:18:59 +0000
From: Aaron Ma <aaron.ma@canonical.com>
To: aaron.ma@canonical.com,
	intel-gfx@lists.freedesktop.org
Date: Sat, 30 May 2020 10:18:50 +0800
Message-Id: <20200530021850.37348-1-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel] sna/uxa: add drm modes for
 no-GTF pannels
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

EDID1.4 replaced GTF Bit with Continuous or Non-Continuous Frequency
Display.

SNA still check this bit as GTF support, only defined modes in EDID
will be set.

Correct the GTF support check, then add more modes.

Note, gtf_supported must be included in xserver.
https://gitlab.freedesktop.org/xorg/xserver/-/merge_requests/421

BugLink: https://gitlab.freedesktop.org/drm/intel/issues/313

Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
 src/sna/sna_display.c   | 2 +-
 src/uxa/intel_display.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/src/sna/sna_display.c b/src/sna/sna_display.c
index 874292bc..16ecd353 100644
--- a/src/sna/sna_display.c
+++ b/src/sna/sna_display.c
@@ -4325,7 +4325,7 @@ sna_output_add_default_modes(xf86OutputPtr output, DisplayModePtr modes)
 	int max_x = 0, max_y = 0, max_clock = 0;
 	float max_vrefresh = 0.0;
 
-	if (mon && GTF_SUPPORTED(mon->features.msc))
+	if (mon && gtf_supported(mon))
 		return modes;
 
 	for (m = modes; m; m = m->next) {
diff --git a/src/uxa/intel_display.c b/src/uxa/intel_display.c
index ba4b8d87..2490db84 100644
--- a/src/uxa/intel_display.c
+++ b/src/uxa/intel_display.c
@@ -915,7 +915,7 @@ intel_output_panel_edid(xf86OutputPtr output, DisplayModePtr modes)
 {
 	xf86MonPtr mon = output->MonInfo;
 
-	if (!mon || !GTF_SUPPORTED(mon->features.msc)) {
+	if (!mon || !gtf_supported(mon)) {
 		DisplayModePtr i, m, p = NULL;
 		int max_x = 0, max_y = 0;
 		float max_vrefresh = 0.0;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
