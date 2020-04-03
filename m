Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9382319D819
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:58:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C8806EB97;
	Fri,  3 Apr 2020 13:58:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD4856EB93
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:58:39 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id g3so6352014wrx.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Lc/sgnabcKULNHN5SyY5HLhgJ7dwDqC9G556yDcKuII=;
 b=QFvWAeWHCWeMaCis2AkgD3OUyDeP9Bc+MgMkpQW65Wca1WrGU+YYKAfOFCfGZ/lEMV
 aUHiSqEAQqzcaMEwWzwlRAj/oy3HnE2R/iSnxWCYV0R5sPGo9GjfKi5mpCMkUsMF3XgA
 cF6zWCnWbMqGdXdtPfvrVwQNZ/Eiyh4GH+k/A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Lc/sgnabcKULNHN5SyY5HLhgJ7dwDqC9G556yDcKuII=;
 b=i9tP19ALCOnE9Xc6o5qp1zpKjTcSDLhqik8zEX5PgIMSVr2mWvG97iqJIjHhU6Ovhy
 apUSkNQPE3uhmFIW5LwdlszZ2KpQVGsSctTfAdrsRpzaETaCxhu7GDiXBUfiOI5AgePx
 I/pwgwx1fKt06DLlqWhwAU9twqeuNUZm7r07jUUv7okKPZ6HH8Hh8hGeIagy8H93A4b2
 5SAe76tOnB4u/JrbxodZDjHCjSo8oEulYUEnO123eKg1Ljc9Om51urVgiLyTkqyJkoB3
 B2lPDPGnba0l1rFg1AuF/YXOF9n2a8XN0Bgu3BbzY9YoBYPS+3xLcdgkLu+jGOgZlgxg
 VzhA==
X-Gm-Message-State: AGi0Pub67kEyIXe78/4YNdntfJ93p4HnmvWV2LeUWZl3JZNbZ55RphtP
 TW3VbXkBGrayCMcJU36I8Q6QQw==
X-Google-Smtp-Source: APiQypKklM6HZV0jy8+ehhTEOe8B2phhWwljtsKMapWpMraHkoHgSNlv+OBBtf1han2toy/phPynig==
X-Received: by 2002:adf:f1c4:: with SMTP id z4mr9771699wro.342.1585922318633; 
 Fri, 03 Apr 2020 06:58:38 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.58.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:58:37 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:57:47 +0200
Message-Id: <20200403135828.2542770-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/44] drm/device: Deprecate dev_private harder
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We've had lots of conversions to embeddeding, but didn't stop using
->dev_private. Which defeats the point of this.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 include/drm/drm_device.h | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/include/drm/drm_device.h b/include/drm/drm_device.h
index d39132b477dd..a55874db9dd4 100644
--- a/include/drm/drm_device.h
+++ b/include/drm/drm_device.h
@@ -88,9 +88,12 @@ struct drm_device {
 	/**
 	 * @dev_private:
 	 *
-	 * DRM driver private data. Instead of using this pointer it is
-	 * recommended that drivers use drm_dev_init() and embed struct
-	 * &drm_device in their larger per-device structure.
+	 * DRM driver private data. This is deprecated and should be left set to
+	 * NULL.
+	 *
+	 * Instead of using this pointer it is recommended that drivers use
+	 * drm_dev_init() and embed struct &drm_device in their larger
+	 * per-device structure.
 	 */
 	void *dev_private;
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
