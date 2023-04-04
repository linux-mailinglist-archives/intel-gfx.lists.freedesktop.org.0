Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 119616D6DDE
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 22:19:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 906FE10E7B0;
	Tue,  4 Apr 2023 20:18:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4C0610E7AB
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 20:18:50 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id
 a640c23a62f3a-947a47eb908so44362066b.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Apr 2023 13:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680639529;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=P7Gi8G1VUorZoIZDj+iJ92IT0NVP7YboSA23fVwmATo=;
 b=L552dHOkF6Xy5iuZZvT28YOuAtrMLX81LxyAiivOZjrx/e3Ugm2KMPYbIaeYsOSy1a
 ckaIoGANVUXrAeHeJ59Yq3uqzRSX/LYIls3ZeywDSyScdjFY1vSgNtIwO34OHEbGg73a
 lkQn4aXwTcvcGlOGzmwUcjsj6GzEBXgzdCLiA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680639529;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=P7Gi8G1VUorZoIZDj+iJ92IT0NVP7YboSA23fVwmATo=;
 b=LZIVPmTAA80jyjq2s7vI3lMMc2b0QdomDr5b80P14FmLGKcpO4RfDXhn7aheqvEdol
 3Kui6FrTWLDH0d04jtEgt8lNbJ275IWmR67HVzjdDkF5trScFCvtlHSsxmxbZPNWWKKL
 lQyEg/T/VVOolJT6LzmA9CPUMkhfDGoNXonwOwfacMtUOxC6zdlDLVO+71PK+dJI9EtB
 aYJjXpSNql52/4dEHMaNmoc1nmcK2E1dlfUOlj0GlI3tLQxFMxivpkRfo/iXHHxCMjY+
 Ga7FFwoiqnLTOOG+NJf71HRDLnYyKE83mFv90f6y3VQIx312eIR2ijdrEAI+6Nixvl4u
 46hg==
X-Gm-Message-State: AAQBX9dYlQUY9gpGma90mw7pj+YI54IjVAdQtj//FJLXGHdDKe5iGKs3
 /sqnUnqCvLb3MCXZsg4E5XbqSA==
X-Google-Smtp-Source: AKy350ZHS/3r5fFZTfViwIUpuYr8fY0T32JqfCkIgwS6Z1YwWZwwZuk6OZrUbyl2/1N3hx+jsomE0w==
X-Received: by 2002:a05:6402:268e:b0:502:616b:cbd5 with SMTP id
 w14-20020a056402268e00b00502616bcbd5mr648558edd.2.1680639528946; 
 Tue, 04 Apr 2023 13:18:48 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 u12-20020a50c04c000000b004d8d2735251sm6367986edd.43.2023.04.04.13.18.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Apr 2023 13:18:48 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  4 Apr 2023 22:18:39 +0200
Message-Id: <20230404201842.567344-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
References: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/8] video/aperture: Move vga handling to pci
 function
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
Cc: linux-fbdev@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A few reasons for this:

- It's really the only one where this matters. I tried looking around,
  and I didn't find any non-pci vga-compatible controllers for x86
  (since that's the only platform where we had this until a few
  patches ago), where a driver participating in the aperture claim
  dance would interfere.

- I also don't expect that any future bus anytime soon will
  not just look like pci towards the OS, that's been the case for like
  25+ years by now for practically everything (even non non-x86).

- Also it's a bit funny if we have one part of the vga removal in the
  pci function, and the other in the generic one.

v2: Rebase.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Javier Martinez Canillas <javierm@redhat.com>
Cc: Helge Deller <deller@gmx.de>
Cc: linux-fbdev@vger.kernel.org
---
 drivers/video/aperture.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/video/aperture.c b/drivers/video/aperture.c
index 552cffdb827b..ec9387d94049 100644
--- a/drivers/video/aperture.c
+++ b/drivers/video/aperture.c
@@ -298,14 +298,6 @@ int aperture_remove_conflicting_devices(resource_size_t base, resource_size_t si
 
 	aperture_detach_devices(base, size);
 
-	/*
-	 * If this is the primary adapter, there could be a VGA device
-	 * that consumes the VGA framebuffer I/O range. Remove this device
-	 * as well.
-	 */
-	if (primary)
-		aperture_detach_devices(VGA_FB_PHYS_BASE, VGA_FB_PHYS_SIZE);
-
 	return 0;
 }
 EXPORT_SYMBOL(aperture_remove_conflicting_devices);
@@ -342,6 +334,13 @@ int aperture_remove_conflicting_pci_devices(struct pci_dev *pdev, const char *na
 	}
 
 	if (primary) {
+		/*
+		 * If this is the primary adapter, there could be a VGA device
+		 * that consumes the VGA framebuffer I/O range. Remove this
+		 * device as well.
+		 */
+		aperture_detach_devices(VGA_FB_PHYS_BASE, VGA_FB_PHYS_SIZE);
+
 		/*
 		 * WARNING: Apparently we must kick fbdev drivers before vgacon,
 		 * otherwise the vga fbdev driver falls over.
-- 
2.40.0

