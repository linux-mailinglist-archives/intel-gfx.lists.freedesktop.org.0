Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8028923469D
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 15:09:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B73D06EA93;
	Fri, 31 Jul 2020 13:09:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 12E236EA93;
 Fri, 31 Jul 2020 13:09:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0DAD8A0138;
 Fri, 31 Jul 2020 13:09:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Oleksandr Andrushchenko" <andr2000@gmail.com>
Date: Fri, 31 Jul 2020 13:09:51 -0000
Message-ID: <159620099105.10471.3104383849210549868@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200731125109.18666-1-andr2000@gmail.com>
In-Reply-To: <20200731125109.18666-1-andr2000@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fixes_and_improvements_for_Xen_pvdrm?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Fixes and improvements for Xen pvdrm
URL   : https://patchwork.freedesktop.org/series/80141/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7d48f149439c xen/gntdev: Fix dmabuf import with non-zero sgt offset
-:10: WARNING:UNKNOWN_COMMIT_ID: Unknown commit id '37ccb44d0b00', maybe rebased or not pulled?
#10: 
Fixes: 37ccb44d0b00 ("xen/gntdev: Implement dma-buf import functionality")

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
c9e3448681cf drm/xen-front: Fix misused IS_ERR_OR_NULL checks
-:14: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#14: 
   133  struct drm_gem_object *xen_drm_front_gem_create(struct drm_device *dev,

total: 0 errors, 1 warnings, 0 checks, 50 lines checked
3efddbd31e3b drm/xen-front: Add YUYV to supported formats
e17f2c5fcaec xen: Sync up with the canonical protocol definition in Xen
-:108: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#108: FILE: include/xen/interface/io/displif.h:522:
+	uint32_t data_ofs;

-:150: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#150: FILE: include/xen/interface/io/displif.h:782:
+	uint32_t buffer_sz;

-:186: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#186: FILE: include/xen/interface/io/displif.h:833:
+	uint32_t edid_sz;

-:207: WARNING:TABSTOP: Statements should start on a tabstop
#207: FILE: include/xen/interface/io/displif.h:899:
+	    struct xendispl_get_edid_resp get_edid;

-:208: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#208: FILE: include/xen/interface/io/displif.h:900:
+	    uint8_t reserved1[56];

total: 0 errors, 1 warnings, 4 checks, 157 lines checked
62e66d848083 drm/xen-front: Pass dumb buffer data offset to the backend
b9a322b906d6 drm/xen-front: Add support for EDID based configuration
-:253: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#253: FILE: drivers/gpu/drm/xen/xen_drm_front_cfg.h:39:
+int xen_drm_front_cfg_tail(struct xen_drm_front_info *front_info,
+						   struct xen_drm_front_cfg *cfg);

-:256: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#256: FILE: drivers/gpu/drm/xen/xen_drm_front_cfg.h:42:
+void xen_drm_front_cfg_free(struct xen_drm_front_info *front_info,
+							struct xen_drm_front_cfg *cfg);

total: 0 errors, 0 warnings, 2 checks, 293 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
