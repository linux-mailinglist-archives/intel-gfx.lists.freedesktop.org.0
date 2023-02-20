Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D9F69D219
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 18:25:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E050E10E580;
	Mon, 20 Feb 2023 17:25:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 399 seconds by postgrey-1.36 at gabe;
 Mon, 20 Feb 2023 17:25:49 UTC
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5429210E269
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 17:25:49 +0000 (UTC)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 347683F586
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 17:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1676913547;
 bh=KsFWVKyUTisvLWEBfJHuAqZZOIzRC+wakmOYPwQrXVU=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=Oxa+2PAct1ksydDmbfXK2WZwHB5f09hZU+1SDQJ/AuMlybtzIffNxU5rTB2DtogVR
 /bByN+OjP10R1coxUayNzg5q9nZiHt4tZCmxbJviYq5smtU3bjlG5DjBdqLg98dkre
 tDoZqZJXtNOQnQDJ895Fl97ccj1plqPF8c0jtQQUFe5ZsB5NkBT+ligdcClcaY/pnb
 0zmvR3N4YWFjpTlRCrNZ2yRJovrih6+BITw+yVglauUa58i0lh8MjD1xN8h/9vgYxz
 0kUYrBg74Ad/MNFuc8A08gvAuCCCManjvGoQCNsRdDeU+ZU0KDicJAmTXC1iVKC6TK
 If7TUb8pSFvAg==
Received: by mail-ed1-f72.google.com with SMTP id
 g24-20020a056402321800b004ace77022ebso2559395eda.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 09:19:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=KsFWVKyUTisvLWEBfJHuAqZZOIzRC+wakmOYPwQrXVU=;
 b=J9w+9wy9XO7fwNJ+gGaWKGt7l1XHQG9ooLhmi30uvs4YVE+gtkxVBbXY9dglLgOaFn
 xQLoUvzkAHYF3plofthVZmSgrG90AhC1PN/E7jemWZNnpOqMor2hfiRleLRqIkKWHF1q
 SERpvXldSjzKeZ/7pfxsw2c5jgTA7wWjzIuJPIJy3CtQBC+YSCu1V9n8XQVBORt0hfIU
 iyXrGx1xzEPI563eo2If5MAf7d1gbJXWptRezYbRqQvxb+8ASz7gZKuXOBvHIO6QxTcn
 z6p5AAWpdtoNoI+AfJQ3Dcy5Cwu8zJvYOcc8e1A4zgnaO0Bmt8kCazU89HxW+I0Z05qG
 uLyA==
X-Gm-Message-State: AO0yUKXfSTEAX6Std3WSa8+9xYQDFLJF6OEED0k24FjIeosgH31Jswmp
 bBX9qs3owKXTCfzoFoLrYkA6Qx01Az9gE5gig3uwVXy0p5xo5W1w0maswNKaduuLnvn+orQRu+D
 pqnxguBngy13bfnbcpguISOaGetDsnO6BE7Ry5IhTYhuIjQ==
X-Received: by 2002:a05:6402:1151:b0:4ac:beba:dc87 with SMTP id
 g17-20020a056402115100b004acbebadc87mr1075441edw.0.1676913546122; 
 Mon, 20 Feb 2023 09:19:06 -0800 (PST)
X-Google-Smtp-Source: AK7set8Oj7a1xx8jk5ISCHq4+eehJqR5ZQt/ZuPqDE6BQzrZixfjYgaHw5I/qT7NHOl5lv7OxFJ56Q==
X-Received: by 2002:a05:6402:1151:b0:4ac:beba:dc87 with SMTP id
 g17-20020a056402115100b004acbebadc87mr1075416edw.0.1676913545790; 
 Mon, 20 Feb 2023 09:19:05 -0800 (PST)
Received: from localhost.localdomain
 (host-79-44-179-55.retail.telecomitalia.it. [79.44.179.55])
 by smtp.gmail.com with ESMTPSA id
 ee51-20020a056402293300b004aef6454d6dsm1984489edb.37.2023.02.20.09.19.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Feb 2023 09:19:05 -0800 (PST)
From: Andrea Righi <andrea.righi@canonical.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 20 Feb 2023 18:18:58 +0100
Message-Id: <20230220171858.131416-1-andrea.righi@canonical.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/sseu: fix max_subslices
 array-index-out-of-bounds access
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
Cc: intel-gfx@lists.freedesktop.org,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It seems that commit bc3c5e0809ae ("drm/i915/sseu: Don't try to store EU
mask internally in UAPI format") exposed a potential out-of-bounds
access, reported by UBSAN as following on a laptop with a gen 11 i915
card:

  UBSAN: array-index-out-of-bounds in drivers/gpu/drm/i915/gt/intel_sseu.c:65:27
  index 6 is out of range for type 'u16 [6]'
  CPU: 2 PID: 165 Comm: systemd-udevd Not tainted 6.2.0-9-generic #9-Ubuntu
  Hardware name: Dell Inc. XPS 13 9300/077Y9N, BIOS 1.11.0 03/22/2022
  Call Trace:
   <TASK>
   show_stack+0x4e/0x61
   dump_stack_lvl+0x4a/0x6f
   dump_stack+0x10/0x18
   ubsan_epilogue+0x9/0x3a
   __ubsan_handle_out_of_bounds.cold+0x42/0x47
   gen11_compute_sseu_info+0x121/0x130 [i915]
   intel_sseu_info_init+0x15d/0x2b0 [i915]
   intel_gt_init_mmio+0x23/0x40 [i915]
   i915_driver_mmio_probe+0x129/0x400 [i915]
   ? intel_gt_probe_all+0x91/0x2e0 [i915]
   i915_driver_probe+0xe1/0x3f0 [i915]
   ? drm_privacy_screen_get+0x16d/0x190 [drm]
   ? acpi_dev_found+0x64/0x80
   i915_pci_probe+0xac/0x1b0 [i915]
   ...

According to the definition of sseu_dev_info, eu_mask->hsw is limited to
a maximum of GEN_MAX_SS_PER_HSW_SLICE (6) sub-slices, but
gen11_sseu_info_init() can potentially set 8 sub-slices, in the
!IS_JSL_EHL(gt->i915) case.

Fix this by reserving up to 8 slots for max_subslices in the eu_mask
struct.

Reported-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Signed-off-by: Andrea Righi <andrea.righi@canonical.com>
---
 drivers/gpu/drm/i915/gt/intel_sseu.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h b/drivers/gpu/drm/i915/gt/intel_sseu.h
index aa87d3832d60..d7e8c374f153 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.h
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
@@ -27,7 +27,7 @@ struct drm_printer;
  * is only relevant to pre-Xe_HP platforms (Xe_HP and beyond use the
  * I915_MAX_SS_FUSE_BITS value below).
  */
-#define GEN_MAX_SS_PER_HSW_SLICE	6
+#define GEN_MAX_SS_PER_HSW_SLICE	8
 
 /*
  * Maximum number of 32-bit registers used by hardware to express the
-- 
2.38.1

