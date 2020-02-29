Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEACD1760CB
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 18:13:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E04096E5AE;
	Mon,  2 Mar 2020 17:13:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 887DC6E277
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Feb 2020 10:39:59 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id a141so6035290wme.2
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Feb 2020 02:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zG+4O0cqNWcJjSWX+4phAN3v+gUMAbDbbMvnX8E23F0=;
 b=DTPtNqlZOCSmc3gLXwJevBDEHvvq/pojb5zUE8umHOppG3wNxvoVAbM0kjgGBO0MCZ
 iapXr25PGovvk5xnLv9eAqm9ha9Orrk6jL4iscA4NzvFR3HA3oVimscaAlFiEmqzPGJm
 8VJw1Bt8ySS6pQ67eYS4iP7oOIhpJoTkljBp27AFrWJ71omjps9L/VVA88hclhlKyAeA
 4sMt6aZ/8+5bKF/EiBMfwza/4kcDjZtPBLNC8MZbNYrqQsvWSXyr4irMMngOHakFlh4X
 x3lG63+3db2aaWtxtSpA05huf+ZMVille6Zkym3InDsZsWvb3hpcFKpQ13Nu3RlKoGzm
 /csg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zG+4O0cqNWcJjSWX+4phAN3v+gUMAbDbbMvnX8E23F0=;
 b=kk/h0bZ+M/7aOG3LprVNZoKvKQIQfkBWzpk+M+yqpDHtFJlUB5X+8XJ9WcgqG1JDU5
 MgwbTJ1HtCnbl3fXTdEXAjjApDfBgrkRQxt2EZaRzoayEEUBi8KCWnMXQGFkIGdXfM8U
 kneFlvB8fCNaFUme8nLHBus7MWdOQPdMKHVPa6A6BEnHCWUAwfg+0tLk6hZ7cvQ4Zkpe
 ecNrZt4NHeWLoEqFjVfyEiN6MCICUo+AzmJnN4mvhgGF91rJkJ+9IvnhdG2osqBLyQx1
 KA3eqrXNx8rTDouaepZ+yRNvfif9xlxVuInRytsMz0XGjXzaX1O4gx4emE86+3RqFAdn
 hZFQ==
X-Gm-Message-State: APjAAAU30d1HoqkatidFV+cR2LVBmkr9SLYFv0yZinVz2YYqYBqAfLZ8
 bbMpdZRLUL5p58bLCTcI+nwRXMS0iqE=
X-Google-Smtp-Source: APXvYqxcge/feTgw/0uPZo+DVqdT/YFAves9wlpuc/B7xncMoHk1llzS/Y4lqG46AORt30RH9gwSlQ==
X-Received: by 2002:a05:600c:2944:: with SMTP id
 n4mr9500183wmd.22.1582972798033; 
 Sat, 29 Feb 2020 02:39:58 -0800 (PST)
Received: from xyz-CELSIUS-H720.fritz.box (x5f741e92.dyn.telefonica.de.
 [95.116.30.146])
 by smtp.gmail.com with ESMTPSA id r28sm17462836wra.16.2020.02.29.02.39.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Feb 2020 02:39:57 -0800 (PST)
From: Oliver Barta <o.barta89@gmail.com>
X-Google-Original-From: Oliver Barta <oliver.barta@aptiv.com>
To: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Sat, 29 Feb 2020 11:39:22 +0100
Message-Id: <20200229103922.4432-1-oliver.barta@aptiv.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 02 Mar 2020 17:13:41 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: HDCP: fix Ri prime check done during
 link check
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
 Submitted before as part of patch series
 https://patchwork.freedesktop.org/series/73961/
 For some reason the versioning got messed up. 
 I marked the patch series as superseded and I'm
 starting all over. Sorry for spamming you.

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
