Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sBOFEaV1vWmD+AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:28:21 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC76A2DD5D2
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:28:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7853510EB68;
	Fri, 20 Mar 2026 16:28:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="MCLKLO+5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A9EF10EB65;
 Fri, 20 Mar 2026 16:28:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 745FC44327;
 Fri, 20 Mar 2026 16:28:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B91BBC19425;
 Fri, 20 Mar 2026 16:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1774024098;
 bh=tuuR1AzJjOp1SuGTOCMRWi7kE/ZiZUxh7g3mvF/HamY=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=MCLKLO+5JRMtthUUxX+LLOSibil4YOX8Gv7lpNaLq4DgDaEygrusLceagJSD54nkN
 g6zsCsJEZdP/5yddh/ZbI3dNeP45RlsEVSpX/+8JLECVHgjpL9L7vlW8g0dAUec1Tw
 0jTF+FdKIBqbiS5be/IPiI+W8cYSf5b5hvnZ4zy8cWl5/xuo/k7GrHi3mmGD3C5RL3
 9s/LXz5EnE3zarZ13/HdB9SaJ7Bt5hgZZEoLFtAFAbzrgsrd+s29boJr27A1OrhMGU
 kNF9b56G5d/1rtEtWWdpmdMHBYLTHdDqq0+xdhfau6SyAdLdP11EZxmO73VXZl80Qm
 vYcZ8kX/sQXPw==
From: Maxime Ripard <mripard@kernel.org>
Date: Fri, 20 Mar 2026 17:27:25 +0100
Subject: [PATCH v2 18/20] drm/tidss: Drop call to drm_mode_config_reset at
 probe time
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-drm-mode-config-init-v2-18-c63f1134e76c@kernel.org>
References: <20260320-drm-mode-config-init-v2-0-c63f1134e76c@kernel.org>
In-Reply-To: <20260320-drm-mode-config-init-v2-0-c63f1134e76c@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
 Shuah Khan <skhan@linuxfoundation.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Jyri Sarha <jyri.sarha@iki.fi>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Simon Ser <contact@emersion.fr>, Harry Wentland <harry.wentland@amd.com>, 
 Melissa Wen <mwen@igalia.com>, Sebastian Wick <sebastian.wick@redhat.com>, 
 Alex Hung <alex.hung@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Chen-Yu Tsai <wens@kernel.org>, 
 Samuel Holland <samuel@sholland.org>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
Cc: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Daniel Stone <daniels@collabora.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1491; i=mripard@kernel.org;
 h=from:subject:message-id; bh=tuuR1AzJjOp1SuGTOCMRWi7kE/ZiZUxh7g3mvF/HamY=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDJl7S7P/m860DJO9uoVtv7vhf7e+J62aT59vOy+Z+ONZ+
 Qarv3+2dkxlYRDmZJAVU2R5IhN2enn74ioH+5U/YOawMoEMYeDiFICJ9Jgw1le7sQVl7Hsr9V5M
 aW1aWaHKuc3p21emz+nZ+2zbfFP9moiyBQnLF/ql6B79t8fTbYZtL2MNlwHruW/fUk/eiJDrLvj
 GkXdWRawpVuqDwDHmSEHTVXb/Gl5s82ibYK5otK21ZHnFri4A
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
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
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linux.intel.com,suse.de,gmail.com,ffwll.ch,lwn.net,linuxfoundation.org,oss.qualcomm.com,iki.fi,ideasonboard.com,intel.com,linaro.org,kernel.org,kwiboo.se,emersion.fr,amd.com,igalia.com,redhat.com,ursulin.net,sholland.org,raspberrypi.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[38];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: EC76A2DD5D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Now that we have drm_mode_config_create_state() to create the initial
state called as part of drm_dev_register(), we don't need to call
drm_mode_config_reset() during the driver probe.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/tidss/tidss_drv.c | 2 --
 drivers/gpu/drm/tidss/tidss_kms.c | 2 --
 2 files changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/tidss/tidss_drv.c b/drivers/gpu/drm/tidss/tidss_drv.c
index 1c8cc18bc53c3ea3c50368b9f55ab02a0a02fc77..ddd9f428c2a96557ee02040320cbe5f6f0fd6052 100644
--- a/drivers/gpu/drm/tidss/tidss_drv.c
+++ b/drivers/gpu/drm/tidss/tidss_drv.c
@@ -169,12 +169,10 @@ static int tidss_probe(struct platform_device *pdev)
 		goto err_runtime_suspend;
 	}
 
 	drm_kms_helper_poll_init(ddev);
 
-	drm_mode_config_reset(ddev);
-
 	ret = drm_dev_register(ddev, 0);
 	if (ret) {
 		dev_err(dev, "failed to register DRM device\n");
 		goto err_irq_uninstall;
 	}
diff --git a/drivers/gpu/drm/tidss/tidss_kms.c b/drivers/gpu/drm/tidss/tidss_kms.c
index 8bb93194e5ac686050c47f986b8cb6063eae22d3..b4779c09a1bfa5be7010bcd7d4f1379362996d2e 100644
--- a/drivers/gpu/drm/tidss/tidss_kms.c
+++ b/drivers/gpu/drm/tidss/tidss_kms.c
@@ -285,11 +285,9 @@ int tidss_modeset_init(struct tidss_device *tidss)
 
 	ret = drm_vblank_init(ddev, tidss->num_crtcs);
 	if (ret)
 		return ret;
 
-	drm_mode_config_reset(ddev);
-
 	dev_dbg(tidss->dev, "%s done\n", __func__);
 
 	return 0;
 }

-- 
2.53.0

