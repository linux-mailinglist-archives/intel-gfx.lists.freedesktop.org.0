Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E507173DE2
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 18:04:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E1086F483;
	Fri, 28 Feb 2020 17:04:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C03946F473
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 16:19:18 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id e8so3605424wrm.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 08:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references:reply-to
 :mime-version:content-transfer-encoding;
 bh=ozlLLMLX46imgC3MpZNEVXdDMjR8/goPp5y60J/cWgs=;
 b=LweKRLZaGDimOsuZe2XxlJaBKTsOZewiGSF8WeO6UiMxT9ED/7ooRapd3YR/rL41Dp
 x+9j2toIxz4lpbmPRkciJjs9vufSZKg50yPGUVVb6CnMoyMwKLQZeaYCg2bFlzCBFm4s
 2U5I2XhCZ6HsXf1QXs2YHw5nrNKMbKFrEXafAvwecAun06CTL3iDQRsCsDAmcTDEzizt
 AEfkQJef3djcV3S4xuokfJACEkVlwVbM8v15mK20h069i+NtY4wJQgLf7I/FAyx0vOrg
 Hl1YFu6C6eB8KAhCKRlcRyPd2SgScEjjmh8HE4j+prYIeZgUD3ixeV5x3O7ThdVasfCW
 LEQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:reply-to:mime-version:content-transfer-encoding;
 bh=ozlLLMLX46imgC3MpZNEVXdDMjR8/goPp5y60J/cWgs=;
 b=ot7CO2DSO6KamKbPvJX4z6tVppF2VQ/2QemUf2P7oG/M0ahyXJNkqqpq02aGbJPePY
 jRjEqSuWNahTp3miClUrz4314lr+njv8v6sdQKCLE9EuY/TyWbJZFla42J3GIzOKw9MI
 6kDqmr44jU7AA9dokly/l9TVhAVEGY5o2ijvhx0W9GV60e78sgZdaA7W+kHqOdWW6LY1
 CbdpxX1/qD0eLALipkPDVyPuL0MjjJuHRvueOKUVseXFIDpKfSEQgLMn31Sa3i1mtPZi
 QqYDHT+fOTIj1AxV9UJWnArFbVQI0fGTYbeH+OiOEuGDhCWCM6/saifZIQoybKvDzvpN
 0m7g==
X-Gm-Message-State: APjAAAUgqvISHzJQ+Jsj2RGLFjVe3KwK0oqOO2ETDBgDG6zUppob7VA8
 jqdQpatznzqQaqHPr9MNUmhjDhnad+Q=
X-Google-Smtp-Source: APXvYqxpPn1pqbkljtkznWOP3A7GVArgWXIEkmQErv3eDXbmx5vnig6wzXRyVgEhvx+Bu6v5m+6VLw==
X-Received: by 2002:adf:f3c4:: with SMTP id g4mr5813635wrp.394.1582906757222; 
 Fri, 28 Feb 2020 08:19:17 -0800 (PST)
Received: from xyz-CELSIUS-H720.fritz.box (x4d080c20.dyn.telefonica.de.
 [77.8.12.32])
 by smtp.gmail.com with ESMTPSA id i7sm3162028wma.32.2020.02.28.08.19.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 08:19:16 -0800 (PST)
From: Oliver Barta <o.barta89@gmail.com>
X-Google-Original-From: Oliver Barta <oliver.barta@aptiv.com>
To: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Fri, 28 Feb 2020 17:18:19 +0100
Message-Id: <20200228161821.6667-1-oliver.barta@aptiv.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200226080645.7421-1-oliver.barta@aptiv.com>
References: <20200226080645.7421-1-oliver.barta@aptiv.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 28 Feb 2020 17:04:38 +0000
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915: HDCP: fix Ri prime check done
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

From: Oliver Barta <oliver.barta@aptiv.com>

The check was always succeeding even in case of a mismatch due to the
HDCP_STATUS_ENC bit being set. Make sure both bits are actually set.

Signed-off-by: Oliver Barta <oliver.barta@aptiv.com>
Fixes: 2320175feb74 ("drm/i915: Implement HDCP for HDMI")
---
[v2] Rebased patch series from master to drm-intel-next-queued branch.

 drivers/gpu/drm/i915/display/intel_hdmi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 0ac9bdfbc094..ac4276157182 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1536,7 +1536,8 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
 	intel_de_write(i915, HDCP_RPRIME(i915, cpu_transcoder, port), ri.reg);
 
 	/* Wait for Ri prime match */
-	if (wait_for(intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
+	if (wait_for((intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
+		     port)) & (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
 		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
 		DRM_ERROR("Ri' mismatch detected, link check failed (%x)\n",
 			  intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)));
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
