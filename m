Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 125BC14EA21
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 10:34:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52C6288161;
	Fri, 31 Jan 2020 09:34:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB35F6FAD4
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 09:34:41 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id t14so7859602wmi.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 01:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1om9VHbaLA2HO3oYnW/IwfmS0msvq4o/d8ocZPKzdSI=;
 b=iWAKOwfMmkMwcET+yAsbLjxobp+8kmOi81vV02j3aUf97WaYfhYxeswEqIPpR18rDK
 UzbhJD9LVTgqVRO7uEl+Prnfm4dvfxiQkkVL/p2+L29dGh9HfBacmzefGKuwpvC1PDwH
 jefZkTwWsYR62KSmtRQIz52lzhPxSGNISKaYLMBD7NpacHkBpH9HBJABQ88BNWppxScd
 oUXjWHpEHB/C521Qkb5OJj+V7MbC4r80zcDJBzSReiERSy39hYjTMX4wp+ExaEYGqvCf
 BOB0ABQtLSXAn4jTc9Z3kb5v8spe6JaVmzuZcHWMFe3u7/GCCRRAn18Q87G6TaR6jgs7
 Cc9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1om9VHbaLA2HO3oYnW/IwfmS0msvq4o/d8ocZPKzdSI=;
 b=AuQ81v29bruXN990QFSPdmL2fMhaChhFZamtiGSyCBiYC9sc87ENKmZL/Fpk2vsRdk
 3JTLlg/T9eMQZGSq7/m3LE0K5VlWo7pxUYeY2XyJVEb3zsXGMtnvB3nZtxQM3akzzCtn
 aTy+Ynsh0Sxg+opHkffzfxr7xVmcyKwSQmjwqOviwRt+rWbUCrxiYaze21rYR/RM0rx0
 tobdI2H+FPqMmy+pEX88LgtXMPIERSe/Fe6Y1UpMyv5A0MwHPpfCiihtJuKBZ67+ZBs8
 JNZ9XYiPXgtu+sVTZGxSekt+bY80LuTOBsJRyhhHVNxubEavqqiUFql9ISkVphR+XntX
 10hg==
X-Gm-Message-State: APjAAAWiVYm0KW2RXJk0pp70aa6Cqe8v8aBF+1GtouySiiRYOgNphNAj
 xuJYI30Pq+kGZmuW4Lq8h68=
X-Google-Smtp-Source: APXvYqz0YtzXnbmOS6Wchk9YMMq3U4LFRye1xDcoWsz8rZAvIZ+117QSz7pAg+ydDePDX9g58fEpWQ==
X-Received: by 2002:a1c:988a:: with SMTP id
 a132mr10539042wme.113.1580463279449; 
 Fri, 31 Jan 2020 01:34:39 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id b67sm10365360wmc.38.2020.01.31.01.34.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 01:34:38 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Fri, 31 Jan 2020 12:34:16 +0300
Message-Id: <20200131093416.28431-6-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131093416.28431-1-wambui.karugax@gmail.com>
References: <20200131093416.28431-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/pci: conversion to drm_device
 based logging macros.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Manual conversion of instances of printk based drm logging macros to the
struct drm_device based logging macros in i915/i915_pci.c.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 741bffc22867..6413f22356ae 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -960,7 +960,8 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	if (intel_info->require_force_probe &&
 	    !force_probe(pdev->device, i915_modparams.force_probe)) {
-		DRM_INFO("Your graphics device %04x is not properly supported by the driver in this\n"
+		drm_info(&pdev_to_i915(pdev)->drm,
+			 "Your graphics device %04x is not properly supported by the driver in this\n"
 			 "kernel version. To force driver probe anyway, use i915.force_probe=%04x\n"
 			 "module parameter or CONFIG_DRM_I915_FORCE_PROBE=%04x configuration option,\n"
 			 "or (recommended) check for kernel updates.\n",
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
