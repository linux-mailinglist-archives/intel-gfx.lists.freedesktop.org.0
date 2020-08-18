Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0050C248A1C
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Aug 2020 17:40:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2161E89D86;
	Tue, 18 Aug 2020 15:40:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com
 [IPv6:2607:f8b0:4864:20::841])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7585389F89
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 15:40:12 +0000 (UTC)
Received: by mail-qt1-x841.google.com with SMTP id k18so15418023qtm.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 08:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=V1y/y26hIXLqcBqxIAmvI2r8/e7KUbhWoHiepKjjzsY=;
 b=CTtSj8BVmthRjPTlz54a3kb9V3ajREGDFsmnatfS2EbtmVspovTiMoaGUSBkU61Gah
 Um8hftDpsXJGa8+ZldBccE5tnTo4N/03QlGlRCDXWhkQONs0KMtZebe/k1lz5kWFZmFz
 113joeysw8MYwUzbj9jYH1KrvrwG3q2VN21P1sKfwCqExDfFNk9nbamn4uepGxuhCyVD
 L2upLRzsxr7RzsfO37G1bTre18D55rP9Q7mb8lrHLx4grglejyh6Y+0ZSSSt8jYSq5D8
 bM/d2pGPY0kDrBhyxUbR0gb27idJfgVMAAkkjcvH3EvkRavN9ZgkbenPsY0I1tw5Tpp1
 rlyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=V1y/y26hIXLqcBqxIAmvI2r8/e7KUbhWoHiepKjjzsY=;
 b=RpHXvKPOr+VTfwa44eLuwHEIfi1oSzw82VhTuBoGYXrJSOWwmuMrWhZFg59Fvv/DKt
 MbZO7f5V8//1BznscyYSevQAnrdf2q317zGsYFZoW0ItK8rhJ35rIZ+4USWRFS72Ub6b
 ZBwjicVEtQJo+YdcnAwqUnXT2j6QKvIv29UJh6ND1gBCedxNSLF+z42i+F6ry9LRfwr/
 AdDwiz0IMw52pJv+9/I0C0DnC6B4rButW9LmsXtIG/MZ8aqLqEFjDyEHm6TiY2A80zQm
 G7KGzzkCg7yorFAva9uyB7vRSYkNnJ7Ez2T0EvB8zXhkF6AxmWRj3sIDudi6wUt0r2qg
 IKGA==
X-Gm-Message-State: AOAM531OpXD8/gspI+9Suu8kkOuW8Mvr16O6BZMxq7c70uPj6we6ky+X
 3kdVAE2qaobv8H+5lZpqRxt4Iw==
X-Google-Smtp-Source: ABdhPJzMzlqNzi5bur019T3mhgAV+5kriA7b8im3904rCJYapWvaW0WVmQ+kWekqdPnTEptV7cnQIg==
X-Received: by 2002:ac8:6d2f:: with SMTP id r15mr18724217qtu.281.1597765211670; 
 Tue, 18 Aug 2020 08:40:11 -0700 (PDT)
Received: from localhost (mobile-166-170-57-144.mycingular.net.
 [166.170.57.144])
 by smtp.gmail.com with ESMTPSA id s4sm23364270qtn.34.2020.08.18.08.40.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Aug 2020 08:40:11 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 juston.li@intel.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 anshuman.gupta@intel.com
Date: Tue, 18 Aug 2020 11:38:56 -0400
Message-Id: <20200818153910.27894-9-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200818153910.27894-1-sean@poorly.run>
References: <20200818153910.27894-1-sean@poorly.run>
Subject: [Intel-gfx] [PATCH v8 08/17] drm/i915: Clean up intel_hdcp_disable
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
Cc: David Airlie <airlied@linux.ie>, daniel.vetter@ffwll.ch,
 Sean Paul <seanpaul@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Add an out label and un-indent hdcp disable in preparation for
hdcp_mutex. No functional changes

Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20200429195502.39919-9-sean@poorly.run #v6
Link: https://patchwork.freedesktop.org/patch/msgid/20200623155907.22961-9-sean@poorly.run #v7

Changes in v7:
-Split into separate patch (Ramalingam)
Changes in v8:
-None
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index fe9377a6e4d5..4de87012659b 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2112,16 +2112,17 @@ int intel_hdcp_disable(struct intel_connector *connector)
 
 	mutex_lock(&hdcp->mutex);
 
-	if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED) {
-		intel_hdcp_update_value(connector,
-					DRM_MODE_CONTENT_PROTECTION_UNDESIRED,
-					false);
-		if (hdcp->hdcp2_encrypted)
-			ret = _intel_hdcp2_disable(connector);
-		else if (hdcp->hdcp_encrypted)
-			ret = _intel_hdcp_disable(connector);
-	}
+	if (hdcp->value == DRM_MODE_CONTENT_PROTECTION_UNDESIRED)
+		goto out;
 
+	intel_hdcp_update_value(connector,
+				DRM_MODE_CONTENT_PROTECTION_UNDESIRED, false);
+	if (hdcp->hdcp2_encrypted)
+		ret = _intel_hdcp2_disable(connector);
+	else if (hdcp->hdcp_encrypted)
+		ret = _intel_hdcp_disable(connector);
+
+out:
 	mutex_unlock(&hdcp->mutex);
 	cancel_delayed_work_sync(&hdcp->check_work);
 	return ret;
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
