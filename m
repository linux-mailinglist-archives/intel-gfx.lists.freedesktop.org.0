Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4FF2DB19B
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 17:37:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A63A89A5D;
	Tue, 15 Dec 2020 16:37:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC0D289364
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 22:19:38 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id n205so20677607ybf.20
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 14:19:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=sender:date:message-id:mime-version:subject:from:to:cc;
 bh=RldiyYXjka/FiwduiFMtMIrPjIyoQKbNEWvsoEBZHvk=;
 b=GRd6Rj1SXxAr09AVLRW0KyFYv3sr0znM0jrtjuOY9D5ICeP4twfDcJtVEDyOvRZeQd
 /SeIGNpQWjFJAfL2modHZ6NGAWjgJUxhFGof4/Ik8RE1vf+TFi4cYGO1uWzPK0qADL4F
 Fko/cM73eCEtyLgDs444VcRyrTVqgoj1sBZihDfCOEqofo4FsS+sZ90cpo4mU6FCMa/b
 /fxlcbR2be9Z77LSz7RYN9Ymc8NipJd88KmRrS/Af10x9oOze5K01OgTEou9b7cx6x3+
 pWXZs/wG5VG9Lhy0CVARuc9ueHJBgIRWHT6MiE6wFa50lC3hpXMvz5PFy7SIYnF1+TAx
 yR3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
 :to:cc;
 bh=RldiyYXjka/FiwduiFMtMIrPjIyoQKbNEWvsoEBZHvk=;
 b=rTiYctuevmNAJ4/QLiQuy8Q5+rPDMm0TnfDaxEmG6qVkoAzVTzc7e9mmVIeq6j+bZH
 zypbZ1NueOB5twGeIek8KT/8nwz0Mh+KbJbo6Fj1fTTtTcsw6HonWZZUCuCoAIsbdFtK
 2FoGABtw8M00oXfq+ypgGM0y6VtNNZivlkVklx+deX+WdiMm+RMDYTkKKC3Lh4Mkvpzm
 d2xwq7HfQe3UqBr4+sOH+WkLKDvaJs2W2EZZfRz061xgjl6w0fMjBFU97M5BF2nd6vcf
 JVrbcBMks+wJFpKKBv1OztCUo9PhG7CQaBquitE3rqrrTZp3pvt5XMYeiDTP7mpwTkL+
 svCA==
X-Gm-Message-State: AOAM532iQoss5v3ShgoyKLbAxM704a98ylHW0ezfjgZzmGRjaWKf23Q8
 DUBTxuDJLHRgDwUiy4b3wOdKDP69H3Y20Y1ecw1q3Uu2s/Bp855NX3wxphJLLkkAOeelorimUcJ
 YdqKE+ZBVbEahLt7ah+zbcTyGBwPsl4DavLx47bdBT+Nmlv+bE5RQ0xHaZuwzfeiGTPiXnzOLph
 s0edo=
X-Google-Smtp-Source: ABdhPJypnEr2jS+NvxGlzh4dgA/V3gpAyW3qv8YOW/Nll7x7zR8ZPHZA/8Eja2Krmg38MD1rBTGxi7h9YOZGKQ==
X-Received: from andrescj-cros-specialist.c.googlers.com
 ([fda3:e722:ac3:10:7f:e700:c0a8:181])
 (user=andrescj job=sendgmr) by 2002:a25:1987:: with SMTP id
 129mr39321449ybz.188.1607984377981; Mon, 14 Dec 2020 14:19:37 -0800 (PST)
Date: Mon, 14 Dec 2020 22:19:34 +0000
Message-Id: <20201214221934.2478240-1-andrescj@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.684.gfbc64c5ab5-goog
From: Andres Calderon Jaramillo <andrescj@google.com>
To: intel-gfx@lists.freedesktop.org
X-Mailman-Approved-At: Tue, 15 Dec 2020 16:37:12 +0000
Subject: [Intel-gfx] [PATCH] drm/i915/display: Prevent double YUV range
 correction on HDR planes
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
Cc: Andres Calderon Jaramillo <andrescj@chromium.org>, seanpaul@chromium.org,
 sushma.venkatesh.reddy@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Andres Calderon Jaramillo <andrescj@chromium.org>

Prevent the ICL HDR plane pipeline from performing YUV color range
correction twice when the input is in limited range.

Before this patch the following could happen: user space gives us a YUV
buffer in limited range; per the pipeline in [1], the plane would first
go through a "YUV Range correct" stage that expands the range; the plane
would then go through the "Input CSC" stage which would also expand the
range because icl_program_input_csc() would use a matrix and an offset
that assume limited-range input; this would ultimately cause dark and
light colors to appear darker and lighter than they should respectively.

This is an issue because if a buffer switches between being scanned out
and being composited with the GPU, the user will see a color difference.
If this switching happens quickly and frequently, the user will perceive
this as a flickering.

[1] https://01.org/sites/default/files/documentation/intel-gfx-prm-osrc-icllp-vol12-displayengine_0.pdf#page=281

Signed-off-by: Andres Calderon Jaramillo <andrescj@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_display.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 761be8deaa9b..aeea344b06ad 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4811,6 +4811,13 @@ u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
 			plane_color_ctl |= PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
 	} else if (fb->format->is_yuv) {
 		plane_color_ctl |= PLANE_COLOR_INPUT_CSC_ENABLE;
+
+		/*
+		 * Disable the YUV range correction stage because the input CSC
+		 * stage already takes care of range conversion by using separate
+		 * matrices and offsets depending on the color range.
+		 */
+		plane_color_ctl |= PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
 	}
 
 	return plane_color_ctl;
-- 
2.29.2.684.gfbc64c5ab5-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
