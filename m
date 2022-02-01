Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C434A71B0
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 14:37:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 190E310E4AE;
	Wed,  2 Feb 2022 13:37:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD51110E639
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 15:33:59 +0000 (UTC)
Received: by mail-lj1-x235.google.com with SMTP id z7so24697750ljj.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Feb 2022 07:33:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=semihalf-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KrCDskL9bdL7dUXawhqSh1CFqGiHJuuAt+4hWyOHNWM=;
 b=2QXRGcJEoq7seYUAiTpXwiHEPaDnu1rIiXYP0MLqRGFpZb6yINaN97ZeWQ5Lkj93f8
 vp7B67KSzbvpep9lZnMHU4VKC1y24owssuZwof2EPU1wiqm0C44a+ECw/wjjG+FHi74i
 LY/15RYwoOgGDpXIIEHkPO+H4xp39yyCXclbx72bAcDrmCchl3JHEWkPFV66sFXw0kZb
 JaJ4PPfhmFsYNIOFvmcXUoSGWjGfxvq5RMktrtWHE62dZ9t3PaInNs0Au5ybkfjJK4H1
 eow5oUGdOXfU5hy8lASvQB7dmFTBGJp5ByaKGiGjCKd6OGcC/2iV+ecQrN1SNij/uQ9s
 FzQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KrCDskL9bdL7dUXawhqSh1CFqGiHJuuAt+4hWyOHNWM=;
 b=av82muSVScpU9cJSI2WxoOkQ/ZQuZ8pVl2nlg4MOejpAD1WQneraxkFmUkMpV8h47I
 rcaoarm2BggxoM7b9mLUhf+4GF6PMxBF3tTd83AbTKXXbxX2qAsl0wfbYXzsUVXK5i4P
 JMBZkMVQJey/4T5nqr2WRRnma2mFmBX2sFENd9XI4VEm5X/t1a2pGAY+MrPbh1CwlSzx
 4SSlhLg6dnMGy+aAz1twbE1aaSQ4zSv99lrGQAmdLGR94+v9XA0Z4QpM+G9McgRsOS2/
 gUNiV+MwsBGPGl6Km0i/r+OfzAjBghZb3jETUGcRdpuWbfeld4XRdGLstZMTDxASONwM
 B0vQ==
X-Gm-Message-State: AOAM532q6c/mtI664PSMauggB1CnYZ2kxd82YweOD4eINciDgz++iUer
 GVsQBmnvxuLoWRYJ1GtJVa1i
X-Google-Smtp-Source: ABdhPJwS5Wqeu9ITN53NeZ95S+xGUbOpPUKhOGe6UM2hNpov5M11Ei+OurXy4f3DMkCxCgThVC6uqg==
X-Received: by 2002:a2e:9b42:: with SMTP id o2mr16927538ljj.85.1643729638064; 
 Tue, 01 Feb 2022 07:33:58 -0800 (PST)
Received: from localhost.localdomain (public-gprs370261.centertel.pl.
 [37.47.77.150])
 by smtp.gmail.com with ESMTPSA id y7sm2153092ljc.65.2022.02.01.07.33.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Feb 2022 07:33:57 -0800 (PST)
From: Lukasz Bartosik <lb@semihalf.com>
X-Google-Original-From: Lukasz Bartosik <lukasz.bartosik@semihalf.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Tue,  1 Feb 2022 16:33:54 +0100
Message-Id: <20220201153354.11971-1-lukasz.bartosik@semihalf.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 02 Feb 2022 13:37:47 +0000
Subject: [Intel-gfx] [PATCH v1] drm/i915: fix null pointer dereference
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
Cc: intel-gfx@lists.freedesktop.org, upstream@semihalf.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Łukasz Bartosik <lb@semihalf.com>

Asus chromebook CX550 crashes during boot on v5.17-rc1 kernel.
The root cause is null pointer defeference of bi_next
in tgl_get_bw_info() in drivers/gpu/drm/i915/display/intel_bw.c.

BUG: kernel NULL pointer dereference, address: 000000000000002e
PGD 0 P4D 0
Oops: 0002 [#1] PREEMPT SMP NOPTI
CPU: 0 PID: 1 Comm: swapper/0 Tainted: G     U            5.17.0-rc1
Hardware name: Google Delbin/Delbin, BIOS Google_Delbin.13672.156.3 05/14/2021
RIP: 0010:tgl_get_bw_info+0x2de/0x510
...
[    2.554467] Call Trace:
[    2.554467]  <TASK>
[    2.554467]  intel_bw_init_hw+0x14a/0x434
[    2.554467]  ? _printk+0x59/0x73
[    2.554467]  ? _dev_err+0x77/0x91
[    2.554467]  i915_driver_hw_probe+0x329/0x33e
[    2.554467]  i915_driver_probe+0x4c8/0x638
[    2.554467]  i915_pci_probe+0xf8/0x14e
[    2.554467]  ? _raw_spin_unlock_irqrestore+0x12/0x2c
[    2.554467]  pci_device_probe+0xaa/0x142
[    2.554467]  really_probe+0x13f/0x2f4
[    2.554467]  __driver_probe_device+0x9e/0xd3
[    2.554467]  driver_probe_device+0x24/0x7c
[    2.554467]  __driver_attach+0xba/0xcf
[    2.554467]  ? driver_attach+0x1f/0x1f
[    2.554467]  bus_for_each_dev+0x8c/0xc0
[    2.554467]  bus_add_driver+0x11b/0x1f7
[    2.554467]  driver_register+0x60/0xea
[    2.554467]  ? mipi_dsi_bus_init+0x16/0x16
[    2.554467]  i915_init+0x2c/0xb9
[    2.554467]  ? mipi_dsi_bus_init+0x16/0x16
[    2.554467]  do_one_initcall+0x12e/0x2b3
[    2.554467]  do_initcall_level+0xd6/0xf3
[    2.554467]  do_initcalls+0x4e/0x79
[    2.554467]  kernel_init_freeable+0xed/0x14d
[    2.554467]  ? rest_init+0xc1/0xc1
[    2.554467]  kernel_init+0x1a/0x120
[    2.554467]  ret_from_fork+0x1f/0x30
[    2.554467]  </TASK>
...
Kernel panic - not syncing: Fatal exception

Fixes: c64a9a7c05be ("drm/i915: Update memory bandwidth formulae")
Signed-off-by: Łukasz Bartosik <lb@semihalf.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 2da4aacc956b..bd0ed68b7faa 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -404,15 +404,17 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 		int clpchgroup;
 		int j;
 
-		if (i < num_groups - 1)
-			bi_next = &dev_priv->max_bw[i + 1];
-
 		clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
 
-		if (i < num_groups - 1 && clpchgroup < clperchgroup)
-			bi_next->num_planes = (ipqdepth - clpchgroup) / clpchgroup + 1;
-		else
-			bi_next->num_planes = 0;
+		if (i < num_groups - 1) {
+			bi_next = &dev_priv->max_bw[i + 1];
+
+			if (clpchgroup < clperchgroup)
+				bi_next->num_planes = (ipqdepth - clpchgroup) /
+						       clpchgroup + 1;
+			else
+				bi_next->num_planes = 0;
+		}
 
 		bi->num_qgv_points = qi.num_points;
 		bi->num_psf_gv_points = qi.num_psf_points;
-- 
2.35.0.rc2.247.g8bbb082509-goog

