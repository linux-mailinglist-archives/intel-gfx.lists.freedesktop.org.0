Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A58511D6A1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 20:02:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA3A76E0FB;
	Thu, 12 Dec 2019 19:02:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com
 [IPv6:2607:f8b0:4864:20::b2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 376CD6E0FB
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 19:02:36 +0000 (UTC)
Received: by mail-yb1-xb2d.google.com with SMTP id k17so890156ybp.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 11:02:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K9lf6aOxuRWoy+xgXpb/kbudsEPwE/LDimCLszIH/6E=;
 b=VSev1aKOFtXShVY/hTw+udpzCfEXPmmgn7xVCmau7iKCp+3i/4S6Dgo0hZMAn/GIdh
 GprBBIusF6YxZ5W6iDABZXcuJUKkg2qDnPEAssgLJ0QF4WiuT9c9hQwg12F/3BxEVEKz
 7UE/yLq35dwqO0A1tKM9lBqb+fWK+z7FSBWt3wA75gh7FsnbhzzPSBfU0uPFUyPg7Iee
 6CTDax6mfZLqi2yoO8plVNk+zVb90ZgoJQ0CbcTmgMH2j5gvle8F1GZXT/eaC+74FSHg
 8FnktFxUoD4WKtXPBSt/uM2HEQzS9UmteNPm3yM+24gP4u0E/JRtwmeCWjv0odMI/z6r
 8UZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K9lf6aOxuRWoy+xgXpb/kbudsEPwE/LDimCLszIH/6E=;
 b=icFCbwzACO25erau8vRJF8hNnYt1Nt/J5plArbhKEOIA3jCMn9pHWLvjbpYQ3QeXQ+
 bEJPf3c8KJLcSqDn2A+95pin0GiHSvzxa0wJSnC9wVXrHYZ7N0UzauoXTKIxAM3TUOeE
 IU92KVXsakNc9g/sQa21sKl/SvWkjSFnZLSMz+kgocwfqLudbs7s6DQNwGdBR13eawHL
 q7zonVjGW67lNPeFbwdwN9C+gF03t02EU05hLf3OKvK0/Dw96za9FJ8VFKqh8Tcz8PNy
 AYwS4eHgVO3tUg2JKY0WjlyQXRjYuoBauCbR2TZGg/S1YalKsi7tRzpDLYrJymRHykS2
 xpLA==
X-Gm-Message-State: APjAAAU4VYg/A/hs2KuWNgPUmJfi16XZ6dje+Z2xGuIgXniDP8f08E7h
 /zU0WjoUhibhNP+4r2Ez8tVCgA==
X-Google-Smtp-Source: APXvYqzCvgjlfayqAHLLHjWxqWHL8igJl/CVFo6uHcu33qFBkN0JLsCRgWpAn6W/s+W2cFWAWDU59A==
X-Received: by 2002:a25:cbd1:: with SMTP id b200mr5196438ybg.87.1576177355300; 
 Thu, 12 Dec 2019 11:02:35 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id l5sm2905156ywd.48.2019.12.12.11.02.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 11:02:34 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 14:02:19 -0500
Message-Id: <20191212190230.188505-2-sean@poorly.run>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
In-Reply-To: <20191212190230.188505-1-sean@poorly.run>
References: <20191212190230.188505-1-sean@poorly.run>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 01/12] drm/i915: Fix sha_text population code
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
Cc: daniel.vetter@ffwll.ch, Sean Paul <seanpaul@chromium.org>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

This patch fixes a few bugs:

1- We weren't taking into account sha_leftovers when adding multiple
   ksvs to sha_text. As such, we were or'ing the end of ksv[j - 1] with
   the beginning of ksv[j]

2- In the sha_leftovers == 2 and sha_leftovers == 3 case, bstatus was
   being placed on the wrong half of sha_text, overlapping the leftover
   ksv value

3- In the sha_leftovers == 2 case, we need to manually terminate the
   byte stream with 0x80 since the hardware doesn't have enough room to
   add it after writing M0

The upside is that all of the "HDCP supported" HDMI repeaters I could
find on Amazon just strip HDCP anyways, so it turns out to be _really_
hard to hit any of these cases without an MST hub, which is not (yet)
supported. Oh, and the sha_leftovers == 1 case works perfectly!

Fixes: ee5e5e7a5e0f ("drm/i915: Add HDCP framework + base implementation")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Ramalingam C <ramalingam.c@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Sean Paul <seanpaul@chromium.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: <stable@vger.kernel.org> # v4.17+
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20191203173638.94919-2-sean@poorly.run #v1

Changes in v2:
-None
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 25 +++++++++++++++++------
 include/drm/drm_hdcp.h                    |  3 +++
 2 files changed, 22 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 0fdbd39f6641..eaab9008feef 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -335,8 +335,10 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 
 		/* Fill up the empty slots in sha_text and write it out */
 		sha_empty = sizeof(sha_text) - sha_leftovers;
-		for (j = 0; j < sha_empty; j++)
-			sha_text |= ksv[j] << ((sizeof(sha_text) - j - 1) * 8);
+		for (j = 0; j < sha_empty; j++) {
+			u8 off = ((sizeof(sha_text) - j - 1 - sha_leftovers) * 8);
+			sha_text |= ksv[j] << off;
+		}
 
 		ret = intel_write_sha_text(dev_priv, sha_text);
 		if (ret < 0)
@@ -426,7 +428,7 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 	} else if (sha_leftovers == 2) {
 		/* Write 32 bits of text */
 		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
-		sha_text |= bstatus[0] << 24 | bstatus[1] << 16;
+		sha_text |= bstatus[0] << 8 | bstatus[1];
 		ret = intel_write_sha_text(dev_priv, sha_text);
 		if (ret < 0)
 			return ret;
@@ -440,16 +442,27 @@ int intel_hdcp_validate_v_prime(struct intel_connector *connector,
 				return ret;
 			sha_idx += sizeof(sha_text);
 		}
+
+		/*
+		 * Terminate the SHA-1 stream by hand. For the other leftover
+		 * cases this is appended by the hardware.
+		 */
+		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
+		sha_text = DRM_HDCP_SHA1_TERMINATOR << 24;
+		ret = intel_write_sha_text(dev_priv, sha_text);
+		if (ret < 0)
+			return ret;
+		sha_idx += sizeof(sha_text);
 	} else if (sha_leftovers == 3) {
-		/* Write 32 bits of text */
+		/* Write 32 bits of text (filled from LSB) */
 		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
-		sha_text |= bstatus[0] << 24;
+		sha_text |= bstatus[0];
 		ret = intel_write_sha_text(dev_priv, sha_text);
 		if (ret < 0)
 			return ret;
 		sha_idx += sizeof(sha_text);
 
-		/* Write 8 bits of text, 24 bits of M0 */
+		/* Write 8 bits of text (filled from LSB), 24 bits of M0 */
 		I915_WRITE(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_8);
 		ret = intel_write_sha_text(dev_priv, bstatus[1]);
 		if (ret < 0)
diff --git a/include/drm/drm_hdcp.h b/include/drm/drm_hdcp.h
index 06a11202a097..20498c822204 100644
--- a/include/drm/drm_hdcp.h
+++ b/include/drm/drm_hdcp.h
@@ -29,6 +29,9 @@
 /* Slave address for the HDCP registers in the receiver */
 #define DRM_HDCP_DDC_ADDR			0x3A
 
+/* Value to use at the end of the SHA-1 bytestream used for repeaters */
+#define DRM_HDCP_SHA1_TERMINATOR		0x80
+
 /* HDCP register offsets for HDMI/DVI devices */
 #define DRM_HDCP_DDC_BKSV			0x00
 #define DRM_HDCP_DDC_RI_PRIME			0x08
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
