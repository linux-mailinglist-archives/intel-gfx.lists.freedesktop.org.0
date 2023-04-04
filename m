Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D45066D6DD8
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 22:18:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A52E10E7A7;
	Tue,  4 Apr 2023 20:18:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2BB410E7A7
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 20:18:47 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id h8so135530698ede.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Apr 2023 13:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680639526; x=1683231526;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5MZa0e2p52RHNNaMAn/2wj3W9qMp65gnnoyA0NTZCP4=;
 b=CoSPQJt42ro+4a4YP2wPk5oP0t8kFcASyg1i/RD+KQU8wn7S5u5k0ytH2+LT/sZgSB
 U/X+GErEZKjoTADfg6UYvPHBT3pqFkkNUjhwY+4nmqaVhvmwQNwdEx2fynay/AnEYona
 B34z7CsvPnzjORTxWLJflzMCHj3jBdxWxDH5A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680639526; x=1683231526;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5MZa0e2p52RHNNaMAn/2wj3W9qMp65gnnoyA0NTZCP4=;
 b=glEKpgcC2cGtyhUUOO4CfH0244l8kJnBeaIpJqehy6AfdFRyEyP3GtqcklEP3JpRdN
 n+/Zs+vAm8CRjWMy0Wt67amMM7kgCDwmgVm6xzurXzYQHIPvKQdh8BeBRIE/tMQwzbqG
 DEJqyLx7wVqOyJNRIJ8u7IMWbhqKelVmBlzd4BEzkeh14ckW9FgCWNyimCfirFwJfKaM
 4obu+WdRJe4dS6PwTpHveKT1HmhNadw6cvMAcokpp2v7Ebry3wtbzF3w7plDfwQcuC8i
 ndsHgWJ+XdUhxjRJhtxknxCdv327JVqZsccmMFtSlr46+iOfGtbw9DYTMj4/LS4KEbPC
 QpYQ==
X-Gm-Message-State: AAQBX9elLgxAlDLaAlHyvGq2yAmr7ofoGmO4V4prRKpIuAGPVA+ga0rc
 Cc7JOFI0wG1VI45Yk1bj6/Y8JQ==
X-Google-Smtp-Source: AKy350ZnfPw4c6pAaVa/xwHrgaYlcXeWJKqvkS29UkrwIQFXMDl77h/Os+FjIxNOo2HVYEVXwpmHUg==
X-Received: by 2002:a05:6402:268e:b0:502:ffd:74a1 with SMTP id
 w14-20020a056402268e00b005020ffd74a1mr41884edd.2.1680639526318; 
 Tue, 04 Apr 2023 13:18:46 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 u12-20020a50c04c000000b004d8d2735251sm6367986edd.43.2023.04.04.13.18.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Apr 2023 13:18:45 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  4 Apr 2023 22:18:36 +0200
Message-Id: <20230404201842.567344-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
References: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/8] video/aperture: use generic code to figure
 out the vga default device
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
 Thomas Zimmermann <tzimmermann@suse.de>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since vgaarb has been promoted to be a core piece of the pci subsystem
we don't have to open code random guesses anymore, we actually know
this in a platform agnostic way, and there's no need for an x86
specific hack. See also 1d38fe6ee6a8 ("PCI/VGA: Move vgaarb to
drivers/pci")

This should not result in any functional change, and the non-x86
multi-gpu pci systems are probably rare enough to not matter (I don't
know of any tbh). But it's a nice cleanup, so let's do it.

There's been a few questions on previous iterations on dri-devel and
irc:

- fb_is_primary_device() seems to be yet another implementation of
  this theme, and at least on x86 it checks for both
  vga_default_device OR rom shadowing. There shouldn't ever be a case
  where rom shadowing gives any additional hints about the boot vga
  device, but if there is then the default vga selection in vgaarb
  should probably be fixed. And not special-case checks replicated all
  over.

- Thomas also brought up that on most !x86 systems
  fb_is_primary_device() returns 0, except on sparc/parisc. But these
  2 special cases are about platform specific devices and not pci, so
  shouldn't have any interactions.

- Furthermore fb_is_primary_device() is a bit a red herring since it's
  only used to select the right fbdev driver for fbcon, and not for
  the fw handover dance which the aperture helpers handle. At least
  for x86 we might want to look into unifying them, but that's a
  separate thing.

v2: Extend commit message trying to summarize various discussions.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Javier Martinez Canillas <javierm@redhat.com>
Cc: Helge Deller <deller@gmx.de>
Cc: linux-fbdev@vger.kernel.org
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-pci@vger.kernel.org
---
 drivers/video/aperture.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/video/aperture.c b/drivers/video/aperture.c
index b009468ffdff..8835d3bc39bf 100644
--- a/drivers/video/aperture.c
+++ b/drivers/video/aperture.c
@@ -324,13 +324,11 @@ EXPORT_SYMBOL(aperture_remove_conflicting_devices);
  */
 int aperture_remove_conflicting_pci_devices(struct pci_dev *pdev, const char *name)
 {
-	bool primary = false;
+	bool primary;
 	resource_size_t base, size;
 	int bar, ret;
 
-#ifdef CONFIG_X86
-	primary = pdev->resource[PCI_ROM_RESOURCE].flags & IORESOURCE_ROM_SHADOW;
-#endif
+	primary = pdev == vga_default_device();
 
 	for (bar = 0; bar < PCI_STD_NUM_BARS; ++bar) {
 		if (!(pci_resource_flags(pdev, bar) & IORESOURCE_MEM))
-- 
2.40.0

