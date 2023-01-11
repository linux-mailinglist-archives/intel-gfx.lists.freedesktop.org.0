Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA19665F76
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 16:42:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A4F510E771;
	Wed, 11 Jan 2023 15:41:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD1CF10E779
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 15:41:35 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 p3-20020a05600c1d8300b003d9ee5f125bso8174310wms.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 07:41:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6J5rucn+hYvg3m1RRrffzZkT45tj6msLk6PzkRA+oVc=;
 b=UVhq2xNFtKTEbVePhTQcD+DkCgbC/RTrE0C4YZitCzyqe4S737uZqLY3u5UyA5WYdh
 DU1EQp1fcY/CsFWajQS4me7Fr87/4MjvTP/R0kLn9HFvOw1ZaYON/UzLgbPfAX349II2
 SzM9iGgw+0+m+eT166Z18NC4dIm8W4gJUqyaU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6J5rucn+hYvg3m1RRrffzZkT45tj6msLk6PzkRA+oVc=;
 b=2qtPSMP+JbxcHUvjL5Wi9Od3vRtIZhj1v7WdQIsim/4M6GqcZbguru5QhQHgXYYHT2
 Ze82JgNNNNpzUJgHwkdEqkFNuPQYB7P5hY9D2rXAXYCsCvWMjOQhxzf7BYdoqy30I6FW
 VDiP5hlDZazOx5xFVbFwR3JMChZN9AYiMxbsV0KLBEvfgX4RthY2OpHkX78ACepQ3v6n
 /y3U+dqbuSvcp6Ib6woKKXQiOMfmuUlaBbPD5nkhNIsG+PJuzPMOd6jhCyU3h7QWaz4L
 M0YOHiW04MzQ5w+BAjlBaVgVqqZ2mwFfgu/e010DayRCfBY+f9ioBzO05cR9AG/QYjm5
 +oJA==
X-Gm-Message-State: AFqh2kqof3iLTmETyisH74CLuqC2vULRDGGOXgto3v1GVFCzGUILKA23
 ww9bQzLUD62QviQzV7vTqXTni5WEyf4dKes0
X-Google-Smtp-Source: AMrXdXvBiLYhTqGktmEP4PMNp1JbLfml6xV45lGs5rGOwSwmCAckYzjJbZ16o4yMyZHtvwGJu10yJg==
X-Received: by 2002:a05:600c:3b8f:b0:3d0:480b:ac53 with SMTP id
 n15-20020a05600c3b8f00b003d0480bac53mr55362290wms.12.1673451695486; 
 Wed, 11 Jan 2023 07:41:35 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 t9-20020a05600c198900b003d9e74dd9b2sm15936149wmq.9.2023.01.11.07.41.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Jan 2023 07:41:34 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 11 Jan 2023 16:41:12 +0100
Message-Id: <20230111154112.90575-11-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230111154112.90575-1-daniel.vetter@ffwll.ch>
References: <20230111154112.90575-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/11] video/aperture: Only remove sysfb on the
 default vga pci device
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
Cc: Aaron Plattner <aplattner@nvidia.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 Javier Martinez Canillas <javierm@redhat.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This fixes a regression introduced by ee7a69aa38d8 ("fbdev: Disable
sysfb device registration when removing conflicting FBs"), where we
remove the sysfb when loading a driver for an unrelated pci device,
resulting in the user loosing their efifb console or similar.

Note that in practice this only is a problem with the nvidia blob,
because that's the only gpu driver people might install which does not
come with an fbdev driver of it's own. For everyone else the real gpu
driver will restor a working console.

Also note that in the referenced bug there's confusion that this same
bug also happens on amdgpu. But that was just another amdgpu specific
regression, which just happened to happen at roughly the same time and
with the same user-observable symptons. That bug is fixed now, see
https://bugzilla.kernel.org/show_bug.cgi?id=216331#c15

For the above reasons the cc: stable is just notionally, this patch
will need a backport and that's up to nvidia if they care enough.

References: https://bugzilla.kernel.org/show_bug.cgi?id=216303#c28
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Aaron Plattner <aplattner@nvidia.com>
Cc: Javier Martinez Canillas <javierm@redhat.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Helge Deller <deller@gmx.de>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Alex Deucher <alexander.deucher@amd.com>
Cc: <stable@vger.kernel.org> # v5.19+ (if someone else does the backport)
---
 drivers/video/aperture.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/video/aperture.c b/drivers/video/aperture.c
index ba565515480d..a1821d369bb1 100644
--- a/drivers/video/aperture.c
+++ b/drivers/video/aperture.c
@@ -321,15 +321,16 @@ int aperture_remove_conflicting_pci_devices(struct pci_dev *pdev, const char *na
 
 	primary = pdev == vga_default_device();
 
+	if (primary)
+		sysfb_disable();
+
 	for (bar = 0; bar < PCI_STD_NUM_BARS; ++bar) {
 		if (!(pci_resource_flags(pdev, bar) & IORESOURCE_MEM))
 			continue;
 
 		base = pci_resource_start(pdev, bar);
 		size = pci_resource_len(pdev, bar);
-		ret = aperture_remove_conflicting_devices(base, size, name);
-		if (ret)
-			return ret;
+		aperture_detach_devices(base, size);
 	}
 
 	if (!primary)
-- 
2.39.0

