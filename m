Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FEA6D6DE2
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 22:19:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 030C710E7B8;
	Tue,  4 Apr 2023 20:18:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5570010E7B0
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 20:18:51 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id eh3so135449098edb.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Apr 2023 13:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680639530; x=1683231530;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WSDlWgg4ingjdHiQtrqp7fyydG+cf1eYuIpjxsoT8KE=;
 b=BZMfJkDernfSAFgiG2D1K/OJlBO0sGpNgbSqRX/wFoyu1ANUN61Asrv+zOmfVAmief
 T/99u4DDTQsofV3mKbT52gDDKT+kPNNBBGFmHmzW3alte7c+OCAecZWi8QcnLU1kTlP0
 ZXJ5HQfdKmhJtwFIx0MTaZQaTRg2Eh8sozT+4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680639530; x=1683231530;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=WSDlWgg4ingjdHiQtrqp7fyydG+cf1eYuIpjxsoT8KE=;
 b=TIY5CxZigp+u4s2Zoyu1jlIA1/i1SFUAvu9f+dg7c4pGhM4Ubv4b5X35y8NjzQBLQ4
 dAszqGXnjkOyDIh9va0b7qXKhBpm/MAgWKxVw5VVFwCXR+c4vp7FMCWVRt07ouJL/IOj
 l0wVLMEN0RVQUUyzMxVnow6ck5evp1EpbWacPiwFyIZ9B41jPwsJ7mMnLSKKhALWtzV0
 imiBSi70cwy1HAdmMZcmxINhljLtE6i5BEzt6o3uTUr8lfV1sJ9MwQSjtHTsZWJW+gTv
 6ejpSMPAEMrJo25Kf/q2Gub0SlKf7I1DXh39EY0T5l+ajcUDKULLPFoL5uGJY41hNlh3
 ABkg==
X-Gm-Message-State: AAQBX9eI4W31hUhoMzzAzXqpoLxc5rezwB/rRT+Tk3ESUJ/AyI/cYGwF
 35MjTi4nTj3xzedNLN+CnLFtiw==
X-Google-Smtp-Source: AKy350bwR7CNufOWdbV4piMo4MTC9qKIpfr0yQ4Go3etFT7ffNsUzWgAiLsXpgKelDApaaRd1+W/ZA==
X-Received: by 2002:a05:6402:4413:b0:502:92d:4f50 with SMTP id
 y19-20020a056402441300b00502092d4f50mr872075eda.1.1680639530588; 
 Tue, 04 Apr 2023 13:18:50 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 u12-20020a50c04c000000b004d8d2735251sm6367986edd.43.2023.04.04.13.18.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Apr 2023 13:18:50 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  4 Apr 2023 22:18:41 +0200
Message-Id: <20230404201842.567344-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
References: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/8] video/aperture: Only remove sysfb on the
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
 Javier Martinez Canillas <javierm@redhat.com>, stable@vger.kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of calling aperture_remove_conflicting_devices() to remove the
conflicting devices, just call to aperture_detach_devices() to detach
the device that matches the same PCI BAR / aperture range. Since the
former is just a wrapper of the latter plus a sysfb_disable() call,
and now that's done in this function but only for the primary devices.

This fixes a regression introduced by ee7a69aa38d8 ("fbdev: Disable
sysfb device registration when removing conflicting FBs"), where we
remove the sysfb when loading a driver for an unrelated pci device,
resulting in the user loosing their efifb console or similar.

Note that in practice this only is a problem with the nvidia blob,
because that's the only gpu driver people might install which does not
come with an fbdev driver of it's own. For everyone else the real gpu
driver will restore a working console.

Also note that in the referenced bug there's confusion that this same
bug also happens on amdgpu. But that was just another amdgpu specific
regression, which just happened to happen at roughly the same time and
with the same user-observable symptoms. That bug is fixed now, see
https://bugzilla.kernel.org/show_bug.cgi?id=216331#c15

Note that we should not have any such issues on non-pci multi-gpu
issues, because I could only find two such cases:
- SoC with some external panel over spi or similar. These panel
  drivers do not use drm_aperture_remove_conflicting_framebuffers(),
  so no problem.
- vga+mga, which is a direct console driver and entirely bypasses all
  this.

For the above reasons the cc: stable is just notionally, this patch
will need a backport and that's up to nvidia if they care enough.

v2:
- Explain a bit better why other multi-gpu that aren't pci shouldn't
  have any issues with making all this fully pci specific.

v3
- polish commit message (Javier)

Fixes: ee7a69aa38d8 ("fbdev: Disable sysfb device registration when removing conflicting FBs")
Tested-by: Aaron Plattner <aplattner@nvidia.com>
Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
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
index 8f1437339e49..2394c2d310f8 100644
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
 
 	if (primary) {
-- 
2.40.0

