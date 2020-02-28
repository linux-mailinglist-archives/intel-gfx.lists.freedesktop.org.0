Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3951A173DE1
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 18:04:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17AB96F481;
	Fri, 28 Feb 2020 17:04:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D7C46F473
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 16:19:19 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id j7so3523127wrp.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 08:19:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references:reply-to
 :mime-version:content-transfer-encoding;
 bh=eqseIcmu+MfcAC50KLqR6ic7UqFu7vyegYUj6axUB7o=;
 b=mr2ssORRdyNxbaLtMMuku9DopwriklOQxjxvvo92Vt921HmX8bkH3FZXzX+m7jH4un
 62v7P0VULDbSA1rj1M2ejwPdFuihXJtZHbUprX+bQnu3+GE2le8WBPAVjqtNHBCTqlTX
 SQKWf/UAKJ49DwWqkdwfd7ZpLarcZxxjzmx5o6jVjnioIwusBgMURlAKJrDETWZlCdFh
 deZd5YBgOUnnopMCWfK3/Qm1fjO6FcRJdZKbeVyiafymM4rUsIhS6uQQpQd3CSvzRwMT
 UR960RcMK6vkys2iWCRHd7juJk1LMu65EfWOVuDpOkgliIgK1RODOZjIwkNQXqDnp4uD
 2M3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:reply-to:mime-version:content-transfer-encoding;
 bh=eqseIcmu+MfcAC50KLqR6ic7UqFu7vyegYUj6axUB7o=;
 b=G3PIHhE4aR3JG3opolQv/cpzXjXtZNKE7riY+NaR6gR8cvdIb6HUvY7/a+74pudOa+
 TxTPLdb20JSd6QDEb1jc6ohCfCceYPKtj+H92TXWoNC3OKsNaL7zXMQpwpuA+9J1Uxe1
 eWFj2OzYWkfTpnR7GwuH2GayADWBxiLZtiMBeasx3FqxbE0mVciWc7iiQhGxhEr0zkpg
 hCo2DvvPrn0dXizf8p5UleVGXuVq99DbLgt0GF2FHyGQImPT777WtMVUTJnWCZqgCxHs
 wCfvwDS7sr0sb0edPYJ6xrkNMO8EQsnxtJ7Pvhs9NfWN/95JfHaWCpeAJYPeVBXqavHO
 Dd2w==
X-Gm-Message-State: APjAAAW8NHp5O2bH7pB3n7KaW9PDoXBzEkWIp14X+36eEHZThBpjhSkp
 MZhkh6u/vyiGb82y3QUIYdKPbKz4SFs=
X-Google-Smtp-Source: APXvYqzrsh+9/eG77UL8FjWhfTXn8bgOeo7iz9L8IGMHS2xWIjP69afYljsLWmO7jZGHm7beWzjVBQ==
X-Received: by 2002:a05:6000:118e:: with SMTP id
 g14mr5875827wrx.39.1582906758200; 
 Fri, 28 Feb 2020 08:19:18 -0800 (PST)
Received: from xyz-CELSIUS-H720.fritz.box (x4d080c20.dyn.telefonica.de.
 [77.8.12.32])
 by smtp.gmail.com with ESMTPSA id i7sm3162028wma.32.2020.02.28.08.19.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 08:19:17 -0800 (PST)
From: Oliver Barta <o.barta89@gmail.com>
X-Google-Original-From: Oliver Barta <oliver.barta@aptiv.com>
To: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Fri, 28 Feb 2020 17:18:20 +0100
Message-Id: <20200228161821.6667-2-oliver.barta@aptiv.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228161821.6667-1-oliver.barta@aptiv.com>
References: <20200226080645.7421-1-oliver.barta@aptiv.com>
 <20200228161821.6667-1-oliver.barta@aptiv.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 28 Feb 2020 17:04:38 +0000
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915: HDCP: fix Ri prime and R0
 checks during auth
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
Reply-To: Oliver Barta <oliver.barta@aptiv.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Ravisankar Madasamy <ravisankar.madasamy@intel.com>,
 Sean Paul <seanpaul@chromium.org>, Oliver Barta <oliver.barta@aptiv.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Oliver Barta <oliver.barta@aptiv.com>

Including HDCP_STATUS_ENC bit in the checks is pointless.
It is simply not set at this point.

Signed-off-by: Oliver Barta <oliver.barta@aptiv.com>
Fixes: ee5e5e7a5e0f ("drm/i915: Add HDCP framework + base implementation")
---
[v2] Rebased patch series from master to drm-intel-next-queued branch.

 drivers/gpu/drm/i915/display/intel_hdcp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 229b4e329864..89d035da95e7 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -705,7 +705,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 
 	/* Wait for R0 ready */
 	if (wait_for(intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
-		     (HDCP_STATUS_R0_READY | HDCP_STATUS_ENC), 1)) {
+		     HDCP_STATUS_R0_READY, 1)) {
 		DRM_ERROR("Timed out waiting for R0 ready\n");
 		return -ETIMEDOUT;
 	}
@@ -738,7 +738,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
 
 		/* Wait for Ri prime match */
 		if (!wait_for(intel_de_read(dev_priv, HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
-			      (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1))
+			      HDCP_STATUS_RI_MATCH, 1))
 			break;
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
