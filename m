Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD6E4FC603
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 22:48:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19ADB10E1F4;
	Mon, 11 Apr 2022 20:47:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2d.google.com (mail-qv1-xf2d.google.com
 [IPv6:2607:f8b0:4864:20::f2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 010EA10F5C5
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Apr 2022 20:47:55 +0000 (UTC)
Received: by mail-qv1-xf2d.google.com with SMTP id b17so14578447qvf.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Apr 2022 13:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eZTFgk2PlOb2uX5DBLkodsIU99rGYqliJsfWbZUnqrI=;
 b=feOSLuohBZPid21skzUboSH9MUJO3gzoRRROo05qdqfQmiia/8S9eRrtRtif8w7MYo
 p/bmtN7Yd/xypOYREnKt4rj48ZAqgGGINF6wV3LW5URZAbw4VUWS2PJ4mvlhgWY45Na6
 3bZugjsS+6zE4AKwiz8RcXaB8jLdKNF53kMedejl4y6KuqR16nNNESeHmgMGhuJDl+Hf
 IUrAYtDtn2LvPvCwOf39cHHo/6b6oWFkx5HNZ6TSLIMlC/j8qZ0fNwa9MG6XjtgpU+0/
 mPkQe0xOOFWiQJQTTBL4z/daHOgGZ/95QmOMUuJFeO2fidd3ia4TgxBrK0JpgTZQCs8s
 XAGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eZTFgk2PlOb2uX5DBLkodsIU99rGYqliJsfWbZUnqrI=;
 b=McmA8T+ibPjG1FAWOh1Vke7YXSaUM5Ry+ZSP8+cx7y/wqlppYbZ7xOh+fTfh16noMs
 xl3Tgmfbr1by7ZsYKQFho/VvTR67Km102XVblN+pfVzrAwIvb6+bMUQ6tANUmqY+gtgi
 mfHYdsVGHReYem6d+xUcoOUjg7d+IAl8vhBduG/occx0srXUfhfw/DBZ7kGUPyCoVIzQ
 9gu4BSGNLpWamC7fgQvgfMOwoa0+tuCU9xLUJ1s1KkCZG87c8YK3DZKF7UsH22AfW893
 kXajdLwPPXUMPglOF4muU6Vsvom5zeZBQpBIJmJikr0x08rDuhrcyjNf9/RlEIF8i+mg
 05nQ==
X-Gm-Message-State: AOAM531YKmJDa8GwBZH58OZltRkrER2r7NRzN3QC2FYF1+j9I+eJfGSP
 zngr1f0OlrhaODMhGyTisVgi9w==
X-Google-Smtp-Source: ABdhPJyJqqU9Utf/ym7pO8+eXG3CRvVhOBx+aDqhfrPobdZzfUtHf7vSW4trtdvw2W+FtAIdMe03mw==
X-Received: by 2002:ad4:5968:0:b0:444:1749:a6f4 with SMTP id
 eq8-20020ad45968000000b004441749a6f4mr951719qvb.43.1649710075136; 
 Mon, 11 Apr 2022 13:47:55 -0700 (PDT)
Received: from localhost (115.25.199.35.bc.googleusercontent.com.
 [35.199.25.115]) by smtp.gmail.com with ESMTPSA id
 r19-20020a05620a299300b0069c39a56b19sm577319qkp.129.2022.04.11.13.47.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 13:47:54 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, jani.nikula@intel.com,
 intel-gfx@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 rodrigo.vivi@intel.com
Date: Mon, 11 Apr 2022 20:47:32 +0000
Message-Id: <20220411204741.1074308-4-sean@poorly.run>
X-Mailer: git-send-email 2.35.1.1178.g4f1659d476-goog
In-Reply-To: <20220411204741.1074308-1-sean@poorly.run>
References: <20220411204741.1074308-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 03/10] drm/hdcp: Update property value on
 content type and user changes
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
Cc: David Airlie <airlied@linux.ie>, markyacoub@chromium.org,
 abhinavk@codeaurora.org, swboyd@chromium.org,
 Sean Paul <seanpaul@chromium.org>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, bjorn.andersson@linaro.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

This patch updates the connector's property value in 2 cases which were
previously missed:

1- Content type changes. The value should revert back to DESIRED from
   ENABLED in case the driver must re-authenticate the link due to the
   new content type.

2- Userspace sets value to DESIRED while ENABLED. In this case, the
   value should be reset immediately to ENABLED since the link is
   actively being encrypted.

To accommodate these changes, I've split up the conditionals to make
things a bit more clear (as much as one can with this mess of state).

Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Abhinav Kumar <abhinavk@codeaurora.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-4-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-4-sean@poorly.run #v2
Link: https://patchwork.freedesktop.org/patch/msgid/20211001151145.55916-4-sean@poorly.run #v3
Link: https://patchwork.freedesktop.org/patch/msgid/20211105030434.2828845-4-sean@poorly.run #v4

Changes in v2:
-None
Changes in v3:
-Fixed indentation issue identified by 0-day
Changes in v4:
-None
Changes in v5:
-None
---
 drivers/gpu/drm/drm_hdcp.c | 26 +++++++++++++++++---------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/drm_hdcp.c b/drivers/gpu/drm/drm_hdcp.c
index dd8fa91c51d6..8c851d40cd45 100644
--- a/drivers/gpu/drm/drm_hdcp.c
+++ b/drivers/gpu/drm/drm_hdcp.c
@@ -487,21 +487,29 @@ bool drm_hdcp_atomic_check(struct drm_connector *connector,
 		return true;
 
 	/*
-	 * Nothing to do if content type is unchanged and one of:
-	 *  - state didn't change
+	 * Content type changes require an HDCP disable/enable cycle.
+	 */
+	if (new_conn_state->hdcp_content_type != old_conn_state->hdcp_content_type) {
+		new_conn_state->content_protection =
+			DRM_MODE_CONTENT_PROTECTION_DESIRED;
+		return true;
+	}
+
+	/*
+	 * Ignore meaningless state changes:
 	 *  - HDCP was activated since the last commit
-	 *  - attempting to set to desired while already enabled
+	 *  - Attempting to set to desired while already enabled
 	 */
-	if (old_hdcp == new_hdcp ||
-	    (old_hdcp == DRM_MODE_CONTENT_PROTECTION_DESIRED &&
+	if ((old_hdcp == DRM_MODE_CONTENT_PROTECTION_DESIRED &&
 	     new_hdcp == DRM_MODE_CONTENT_PROTECTION_ENABLED) ||
 	    (old_hdcp == DRM_MODE_CONTENT_PROTECTION_ENABLED &&
 	     new_hdcp == DRM_MODE_CONTENT_PROTECTION_DESIRED)) {
-		if (old_conn_state->hdcp_content_type ==
-				new_conn_state->hdcp_content_type)
-			return false;
+		new_conn_state->content_protection =
+			DRM_MODE_CONTENT_PROTECTION_ENABLED;
+		return false;
 	}
 
-	return true;
+	/* Finally, if state changes, we need action */
+	return old_hdcp != new_hdcp;
 }
 EXPORT_SYMBOL(drm_hdcp_atomic_check);
-- 
Sean Paul, Software Engineer, Google / Chromium OS

