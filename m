Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C57414AAB9
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 20:50:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5568E6E983;
	Mon, 27 Jan 2020 19:50:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93D9A6E03A;
 Mon, 27 Jan 2020 19:50:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 11:29:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,371,1574150400"; d="scan'208";a="252047916"
Received: from bpaauwe-desk1.fm.intel.com ([10.105.128.11])
 by fmsmga004.fm.intel.com with ESMTP; 27 Jan 2020 11:29:02 -0800
From: Bob Paauwe <bob.j.paauwe@intel.com>
To: igt-dev@lists.freedesktop.org, intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Mon, 27 Jan 2020 11:28:59 -0800
Message-Id: <20200127192859.20029-1-bob.j.paauwe@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib/color_encoding: Fix up support for
 XYUV format
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

Add XYUV8888 to the list of DRM Formats to test.

Also fix the byte order for the format.

Signed-off-by: Bob Paauwe <bob.j.paauwe@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 lib/igt_color_encoding.c | 1 +
 lib/igt_fb.c             | 6 +++---
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/lib/igt_color_encoding.c b/lib/igt_color_encoding.c
index 7de6d5ab..a7bd2b22 100644
--- a/lib/igt_color_encoding.c
+++ b/lib/igt_color_encoding.c
@@ -160,6 +160,7 @@ static const struct color_encoding_format {
 	{ DRM_FORMAT_XVYU2101010, 1023.f, 64.f, 940.f, 64.f, 512.f, 960.f },
 	{ DRM_FORMAT_XVYU12_16161616, 65520.f, 4096.f, 60160.f, 4096.f, 32768.f, 61440.f },
 	{ DRM_FORMAT_XVYU16161616, 65535.f, 4096.f, 60160.f, 4096.f, 32768.f, 61440.f },
+	{ DRM_FORMAT_XYUV8888, 255.f, 16.f, 235.f, 16.f, 128.f, 240.f },
 };
 
 static const struct color_encoding_format *lookup_fourcc(uint32_t fourcc)
diff --git a/lib/igt_fb.c b/lib/igt_fb.c
index c81b9de8..7409e6b3 100644
--- a/lib/igt_fb.c
+++ b/lib/igt_fb.c
@@ -2634,9 +2634,9 @@ static void get_yuv_parameters(struct igt_fb *fb, struct yuv_parameters *params)
 		break;
 
 	case DRM_FORMAT_XYUV8888:
-		params->y_offset = fb->offsets[0] + 1;
-		params->u_offset = fb->offsets[0] + 2;
-		params->v_offset = fb->offsets[0] + 3;
+		params->y_offset = fb->offsets[0] + 2;
+		params->u_offset = fb->offsets[0] + 1;
+		params->v_offset = fb->offsets[0] + 0;
 		break;
 	}
 }
-- 
2.21.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
