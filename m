Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B51E1704AB
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 17:44:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1047D6EAE4;
	Wed, 26 Feb 2020 16:44:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B3CF6E141
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 08:07:31 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id q9so1852837wmj.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 00:07:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:reply-to:mime-version
 :content-transfer-encoding;
 bh=eWNe5H5elDplr9dzRmr+X+FDgyg6zJaEW0r6NO3ufz4=;
 b=UkyTfy4pzaeXVg/bTBo0d358BZhrHAfT1WrClwCW4qlcQB6lYA3LMazWhUNwwnBKK2
 uTInHH2xO9sdbe7ahXV9krWJbdQdbsS2Y80lBlKe0dlXzfYNvGED7HxIMGGVTA0ip6pT
 neLWuFFtycbzFg7Nxzsfx/Kf0K27IpTnj5ib7g+ZfSU5mfo+WXDbtW2PiHX1PvCr4EGc
 AJJhxiYR7dgw1FYyg2Y/NaAVl+JScD5LmjAoC+30UtyTkOd5XYZQyzwoVa4wdjc2EeCt
 JpP2KrZOBM9G9J/V/Vz4finTc7a4L60LgyXJDpMfu9vZoM+6o+VXhpuOI5boAOZqGzI7
 NbyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
 :mime-version:content-transfer-encoding;
 bh=eWNe5H5elDplr9dzRmr+X+FDgyg6zJaEW0r6NO3ufz4=;
 b=JjhRvQ/0DyZ3lzKyI/1gf82xgATuoo0owoGCTPirS7kc6CtfL60P2aIHVcn/A3tE/N
 O6iK6rXMwPH5oWCECPNjvDd0Ifxe3ckcErx0HxgiJ5Rb3YHwpiMmAA3PuHe9gPKXj1j7
 kEm5eybn1k9PM2RRVdyzPbQnFNAZmJs6lVHuDXRYQApRkq+zRfLsE/JUIvcNjX4hyz9h
 Bqt9Tu7LH/9LlfDuH3MCjXbtJnqZtxWfdB/tnSwWhh/ilUJf7xoI0igqcNAQDw6wtJ/x
 1yTSDDa2vJkAxsisblDaHULaEJdqxooykSadJMyAxRbJ/Q0Pd4ia89yZOtTR9mL/fKfu
 c7Lw==
X-Gm-Message-State: APjAAAUJl0FjJMf+c7FV8BbizxZ0w0Kpx5wSiTst+nnvplOU5WKmB0HQ
 1yh4TS+RmDVNKCldxC4wMMyIiRGC8n8=
X-Google-Smtp-Source: APXvYqwb+p5rEO1k0ooEN4qo53ZEenm7JO9aJM8dtxWDyYL0UNpZVdGjnTiadXKEcCmVi0BoXbbS3A==
X-Received: by 2002:a7b:cf12:: with SMTP id l18mr4153309wmg.66.1582704449670; 
 Wed, 26 Feb 2020 00:07:29 -0800 (PST)
Received: from xyz-CELSIUS-H720.fritz.box (x4d001122.dyn.telefonica.de.
 [77.0.17.34])
 by smtp.gmail.com with ESMTPSA id t3sm2147494wrx.38.2020.02.26.00.07.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 00:07:29 -0800 (PST)
From: Oliver Barta <o.barta89@gmail.com>
X-Google-Original-From: Oliver Barta <oliver.barta@aptiv.com>
To: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Wed, 26 Feb 2020 09:06:43 +0100
Message-Id: <20200226080645.7421-1-oliver.barta@aptiv.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 26 Feb 2020 16:44:12 +0000
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: HDCP: fix Ri prime check done
 during link check
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

The check was always succeeding even in case of a mismatch
due to the HDCP_STATUS_ENC bit being set. Make sure both
bits are actually set.

Signed-off-by: Oliver Barta <oliver.barta@aptiv.com>
Fixes: 2320175feb74 ("drm/i915: Implement HDCP for HDMI")
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 93ac0f296852..14912daad7ff 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1526,7 +1526,8 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
 	I915_WRITE(HDCP_RPRIME(dev_priv, cpu_transcoder, port), ri.reg);
 
 	/* Wait for Ri prime match */
-	if (wait_for(I915_READ(HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
+	if (wait_for((I915_READ(HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
+		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
 		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
 		DRM_ERROR("Ri' mismatch detected, link check failed (%x)\n",
 			  I915_READ(HDCP_STATUS(dev_priv, cpu_transcoder,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
