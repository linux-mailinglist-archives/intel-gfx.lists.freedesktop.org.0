Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD30321F6B5
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 18:08:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9970D6E2CD;
	Tue, 14 Jul 2020 16:08:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com
 [IPv6:2607:f8b0:4864:20::842])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7285A6E2B4
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 16:08:20 +0000 (UTC)
Received: by mail-qt1-x842.google.com with SMTP id e12so13181817qtr.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 09:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=V9Rb/r/RJHLHhAPnqfSs2i8TfDLZuZfi/muSKKceuW8=;
 b=JN6ECob3aQQ80IdMdPlS+O5WsuwHrrz7rUshZGQYYEfov/JJtEPo5I7TcHESJM/gIa
 gUjC5bXQWgAm7SMQTL6OTrHhqmZRo3onYNgDnsGOUxTwPuW7Z2wc7Zb6e4bqO4Sh1JQU
 N6NNkQ3ubrewSC6+a6xaQykREV6B9h+Os6Qty6Qt6Zvql0Qo4Fje4nqgKFYqLqMCV5ZP
 bnM5M0kYqTqSxt6M1Hjn47beqDj6+MrpfULP7rKYDD/ktDSe+2FLbjNWbwXY9/bhGhAw
 /8TCU2AoeeE96zqudzigBC47jQtU3oiYYvjLhXbnl7S6kxRwpR/rZc8dPlq10F8sg6/O
 rbYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=V9Rb/r/RJHLHhAPnqfSs2i8TfDLZuZfi/muSKKceuW8=;
 b=WQ6BI9cJvVawgkZs+PDB+eZ2jswBDt/4FxLq5OYIwB9MLUe+VKJnUh3B/CgPZy5lim
 eJF26P6bsGPK8/Nn9QTb9Jdy7p4kmqIPPC7Wt48hUUUX7pTqrlWOJ7MXyCK1BMmxXZek
 7yypF88kAVSuIwYlFlWbfk1I6eFYlQ/rgoIcktqcoHJBnxXDHCLqzNna+oh5ewi5SMNP
 Q9+ci4MNs7lDpd/ZSgcRG0WiCtA90j8tEh8Rhf7z/5eDfVcWo7qiITpWZdkP8iavvwvr
 kQ5gTJnJoOSmDBCVJJyDLimxcBVbEjGwtCN7zLituRLWi4CWcVq5tzz45OrNiZQRpaWs
 0Yjg==
X-Gm-Message-State: AOAM5304bI88VpnJ+kj7SsmFefGl4qXMjzRn2Xy03b0R6OkweDUG8Ynk
 4nItPRr91qh+01BRUdI8/1w76g==
X-Google-Smtp-Source: ABdhPJxRxgYerbv33HgTncbZxgnF0p5OhORHkKU7DSQ5BXRdXdmJHr9cfHuW+xjxRqL2lfIXCx8+sg==
X-Received: by 2002:ac8:24c6:: with SMTP id t6mr5574177qtt.39.1594742899490;
 Tue, 14 Jul 2020 09:08:19 -0700 (PDT)
Received: from localhost (mobile-166-177-185-80.mycingular.net.
 [166.177.185.80])
 by smtp.gmail.com with ESMTPSA id o184sm24363903qkd.41.2020.07.14.09.08.18
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 Jul 2020 09:08:18 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 12:06:27 -0400
Message-Id: <20200714160627.1269-1-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Avoid modeset when content protection
 changes
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Sean Paul <seanpaul@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Instead of doing a full modeset to enable/disable content protection,
simply go through the update_pipe flow which was introduced in the
related patch below. This avoids flashing the screen every time the user
starts viewing protected content.

Related: 634852d1f468 ("drm/i915: HDCP state handling in ddi_update_pipe")
Cc: Ramalingam C <ramalingam.c@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 89a4d294822d..839ce1715253 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2191,7 +2191,7 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
 			return;
 	}
 
-	crtc_state->mode_changed = true;
+	to_intel_crtc_state(crtc_state)->update_pipe = true;
 }
 
 /* Handles the CP_IRQ raised from the DP HDCP sink */
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
