Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC34B6C864B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 20:56:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06E4610EC86;
	Fri, 24 Mar 2023 19:56:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com
 [IPv6:2607:f8b0:4864:20::b2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDC6D10EC83
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 19:56:14 +0000 (UTC)
Received: by mail-yb1-xb2a.google.com with SMTP id p15so3607209ybl.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 12:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1679687774;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Exj6+hryfx7clb9QaiGo28Nm0qDVjYvxkFoG4ObE4LU=;
 b=Itk0mEBGQcSZu/lEObn1S5oL69NVwNY7kuzHdLdrH73z6L85h+jJN53bAhnCJl/neV
 rDV1PdZ+ylZcZitfLTxWPX4e/i0cq0vz82NIXpiIOAMdsNauJN889a93mCbtNmrHTn7C
 Zs3iSM8bRGHPTIs2EHxSl05UOq5kNJS9WQFPc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679687774;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Exj6+hryfx7clb9QaiGo28Nm0qDVjYvxkFoG4ObE4LU=;
 b=XYM/uCVcziBvS7ht7pTvgLTh62jlxHmAecsyE1wscFAPp2VrgpbKHl9vNBroxsDMs6
 7eqhvTxbnFaVPCoDumY9lq2c25o0rvdrohaldhoLPLW/8y503hHyu7ZDZy3L67wqpVhk
 ND/hi+KwbQnqXWQBcZITgH6LUIyNE7Zx8kh2YS0XolTq/0ACNyUEJCnKpfgsB3ozVYd1
 FlAdg8MHSpBn1BUt9YLFRtx9y4G5o6bRe2BVJhDcYC2m53iK6CXWGDgYlJoimPnMTd9G
 M3PJLj5frhAgAKpI6GKukO0lmXiDP+yNQbTsMxV/VOT2BsysqQFqyPaB6HMZzA2xZfAs
 IEbA==
X-Gm-Message-State: AAQBX9eGe2sPMttq9ofb3wzRromx7rOhmQ0BITLDglFxx/WECviC9GX/
 GMcf+Blbd6t5aYpprBhiljVZ0Q==
X-Google-Smtp-Source: AKy350bYDearu3uaqHzaZkCJUVsH07SVwD+GHpt9LS3WdsEcD37RRqivaV96uWaAorCDYdkTpZCMmQ==
X-Received: by 2002:a25:f808:0:b0:b11:b75d:fcdc with SMTP id
 u8-20020a25f808000000b00b11b75dfcdcmr3371770ybd.22.1679687774457; 
 Fri, 24 Mar 2023 12:56:14 -0700 (PDT)
Received: from localhost ([2620:0:1035:15:5509:ec45:2b32:b39f])
 by smtp.gmail.com with UTF8SMTPSA id
 198-20020a250bcf000000b00b7767ca746asm638235ybl.7.2023.03.24.12.56.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Mar 2023 12:56:14 -0700 (PDT)
From: Mark Yacoub <markyacoub@chromium.org>
X-Google-Original-From: Mark Yacoub <markyacoub@google.com>
To: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 24 Mar 2023 15:55:47 -0400
Message-Id: <20230324195555.3921170-4-markyacoub@google.com>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
In-Reply-To: <20230324195555.3921170-1-markyacoub@google.com>
References: <20230324195555.3921170-1-markyacoub@google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 03/10] drm/hdcp: Update property value on
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
Cc: Jani Nikula <jani.nikula@intel.com>, Mark Yacoub <markyacoub@chromium.org>,
 intel-gfx@lists.freedesktop.org, dianders@chromium.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 seanpaul@chromium.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 freedreno@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Update the connector's property value in 2 cases which were
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
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Signed-off-by: Mark Yacoub <markyacoub@chromium.org>

---
Changes in v2:
-None
Changes in v3:
-Fixed indentation issue identified by 0-day
Changes in v4:
-None
Changes in v5:
-None
Changes in v6:
-Rebased: modifications in drm_hdcp_helper.c instead of drm_hdcp.c
Changes in v7:
-Rebased as function name has changed.

 drivers/gpu/drm/display/drm_hdcp_helper.c | 29 +++++++++++++++--------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_hdcp_helper.c b/drivers/gpu/drm/display/drm_hdcp_helper.c
index 34baf2b97cd87..3ee1a6ae26c53 100644
--- a/drivers/gpu/drm/display/drm_hdcp_helper.c
+++ b/drivers/gpu/drm/display/drm_hdcp_helper.c
@@ -480,21 +480,30 @@ bool drm_hdcp_has_changed(struct drm_connector *connector,
 		return true;
 
 	/*
-	 * Nothing to do if content type is unchanged and one of:
-	 *  - state didn't change
-	 *  - HDCP was activated since the last commit
-	 *  - attempting to set to desired while already enabled
+	 * Content type changes require an HDCP disable/enable cycle.
 	 */
-	if (old_hdcp == new_hdcp ||
-	    (old_hdcp == DRM_MODE_CONTENT_PROTECTION_DESIRED &&
+	if (new_conn_state->hdcp_content_type !=
+	    old_conn_state->hdcp_content_type) {
+		new_conn_state->content_protection =
+			DRM_MODE_CONTENT_PROTECTION_DESIRED;
+		return true;
+	}
+
+	/*
+	 * Ignore meaningless state changes:
+ 	 *  - HDCP was activated since the last commit
+	 *  - Attempting to set to desired while already enabled
+ 	 */
+	if ((old_hdcp == DRM_MODE_CONTENT_PROTECTION_DESIRED &&
 	     new_hdcp == DRM_MODE_CONTENT_PROTECTION_ENABLED) ||
 	    (old_hdcp == DRM_MODE_CONTENT_PROTECTION_ENABLED &&
 	     new_hdcp == DRM_MODE_CONTENT_PROTECTION_DESIRED)) {
-		if (old_conn_state->hdcp_content_type ==
-		    new_conn_state->hdcp_content_type)
-			return false;
+		new_conn_state->content_protection =
+			DRM_MODE_CONTENT_PROTECTION_ENABLED;
+		return false;
 	}
 
-	return true;
+	/* Finally, if state changes, we need action */
+	return old_hdcp != new_hdcp;
 }
 EXPORT_SYMBOL(drm_hdcp_has_changed);
-- 
2.40.0.348.gf938b09366-goog

