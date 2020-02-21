Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BD2168885
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:03:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F4466F518;
	Fri, 21 Feb 2020 21:03:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C88166F516
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 21:03:31 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id a6so3316468wme.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 13:03:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Mg8MQhpDniZSvhe/KMHyobjCQHqxkcIv4ikm1JiaTho=;
 b=JBKIhx7RDMTVl/p0ySSJzAO7UPdqB7wNpCuANw7WGB8C+9vPVPyWv8d7S/wmUDvwwN
 xK+mlZ+Jq0U+uzz/93mJwZ/n+h8KSNlC2Oj0iFldv+Hg/Najbnrkc0k5I83Ley0SRWyW
 9myXxpmg4051GJF05vRJkkgBiWC+lrcrleko0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Mg8MQhpDniZSvhe/KMHyobjCQHqxkcIv4ikm1JiaTho=;
 b=LVzL5PHy6kSFVrDs2Q+zuUqac99tidk84ygn3JnF3NjKndVOvaDhSQ+yztiX/OM1CO
 26oVnJ8XJHprpa9SIv15CGpLE1YeN4KIRoBLJedr8H3/W+OUJRAldJzKPedNEp0ormBm
 2FAF/BuedIZJ65G198PQCg933dRiEVcwZD1n/FnVFJy2bw5GZCemxoLfzS4R9S21YGvP
 XUsDF4/HqtBuMz557alHloSBh3AoCAvWVph2P2frF17wY8EQAPMAzXCGHHDEFKvVMbB+
 6Jp3usLa5DLHpZxq3NVm3C18NdC4+YC2I0q35DNG1AObVuyP/0d1l++evH1Yr0yr05rt
 r0ew==
X-Gm-Message-State: APjAAAVCN75DBs0NSPm93LgC4iMdIKtfAK6j8KzpnQl0ViA5Ev7293Zb
 B6adlgaWKodVyZzW1vxJHisHmA==
X-Google-Smtp-Source: APXvYqwNtnMC1G7gQdNa0AnnrnSm7DxP9gDuPdJNrNjIFXPTzHe4w3ySgr6gfCW1jHN9tTftZRQApw==
X-Received: by 2002:a1c:9602:: with SMTP id y2mr5533717wmd.23.1582319010518;
 Fri, 21 Feb 2020 13:03:30 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm5483930wrw.36.2020.02.21.13.03.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:03:29 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Feb 2020 22:02:30 +0100
Message-Id: <20200221210319.2245170-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/51] drm/i915: Don't clear drvdata in ->release
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For two reasons:

- The driver core clears this already for us after we're unloaded in
  __device_release_driver().

- It's way too late, the drm_device ->release callback might massively
  outlive the underlying physical device, since a drm_device can't be
  kept alive by open drm_file or well really anything else userspace
  is still hanging onto. So if we clear this ourselves, we should
  clear it in the pci ->remove callback, not in the drm_device
  ->relase callback.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 759d333448e1..8b8a9c9a9b2a 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1391,9 +1391,6 @@ static void i915_driver_destroy(struct drm_i915_private *i915)
 
 	drm_dev_fini(&i915->drm);
 	kfree(i915);
-
-	/* And make sure we never chase our dangling pointer from pci_dev */
-	pci_set_drvdata(pdev, NULL);
 }
 
 /**
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
