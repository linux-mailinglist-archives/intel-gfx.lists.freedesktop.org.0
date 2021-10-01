Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2575E41F0B9
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 17:12:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F31B89DFE;
	Fri,  1 Oct 2021 15:12:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com
 [IPv6:2607:f8b0:4864:20::f2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 774076EE25
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 15:12:04 +0000 (UTC)
Received: by mail-qv1-xf2a.google.com with SMTP id x8so5763113qvp.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 Oct 2021 08:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QkSIzwpsbN7CtmyGD5++TJfzN7uXSqDEHMKyvevJub8=;
 b=c/UWU7xW9g5yINhQOIU/U9/R2QCEqk2FIHdvziFdZQynaFuzOwkAaYNo8YZHjZVnHI
 IR5fRkadWwPnxukS+TOPWrsYqFVnJd5U8PMvzRSFERvGnCBV+Jf6qEQmiaJNyh4W8Ktn
 pTho53QUnsNcwCihXQiYBANdjs/HCo6auAkIr8Fta1EiS3rUxo3dUmDDBW/G5S2p1B2E
 7c0OPbHhrQBG2wbMSlfc3+du8jWWawNGsGBV78sIMesoE15XQNEoEAPdwB4C5L0mtnRH
 HFVfKq69rDzB6UwLDOBNEa7/CX+Oc+x5A491P0PyMbkngO87mQSn3VXFSSQLHQ18sGAW
 5W4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QkSIzwpsbN7CtmyGD5++TJfzN7uXSqDEHMKyvevJub8=;
 b=3HSM7jc3yQynbzUlgBsscTnyHKO+aEDWgURJK5kevphZQMPQdSF6l37mRH0DnMjyJP
 8m0xT6MtbJlb8U/5FNO0f4VrPdI4XC9ZC6JccA8Se2wWfS91J8iI/jgNvBjH86kHrHt3
 GGIMg9jXK9jHk4TPZ0M/EdSTPFRkiB/ZdnIW9RZLrdrSJ34bfxRcu9D0jxnK1AI9uy1A
 Dm57A+/Eq4A9gGhA63qOutlrclx2MGRjGF9RLn/RfWYLHCvlQ2d+ogKuqAgFinqe0oLw
 RBs5qVFaTyLaB0Swo2osfdgh4DYG+y1x0X+HDLkd35TGeSxqpGrYIRb/p+mAQ+wEYT9s
 /7hg==
X-Gm-Message-State: AOAM5325SDh7UA9lWPibDd1CHtfub4CdMaeZi8t/aFScZs4h8/gJVhxT
 QRWd4MJc3xPLPrUC1MpNS+kX0Q==
X-Google-Smtp-Source: ABdhPJxyCs175nsr2GZgn4IwlbDh0TRUTaN6o0yTmvY1BUti+Jcyp+tNs9pRaFLG535tB05u/H7SpA==
X-Received: by 2002:a0c:b38a:: with SMTP id t10mr9418427qve.42.1633101121950; 
 Fri, 01 Oct 2021 08:12:01 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id x125sm3200528qkd.8.2021.10.01.08.12.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 Oct 2021 08:12:01 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Cc: swboyd@chromium.org, jani.nikula@linux.intel.com,
 Sean Paul <seanpaul@chromium.org>, Jani Nikula <jani.nikula@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Fri,  1 Oct 2021 11:11:32 -0400
Message-Id: <20211001151145.55916-4-sean@poorly.run>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20211001151145.55916-1-sean@poorly.run>
References: <20211001151145.55916-1-sean@poorly.run>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 03/14] drm/hdcp: Update property value on
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
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-4-sean@poorly.run #v1
Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-4-sean@poorly.run #v2

Changes in v2:
-None
Changes in v3:
-Fixed indentation issue identified by 0-day
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

