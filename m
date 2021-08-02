Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B4B3DD6C4
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Aug 2021 15:17:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80DF36E0D7;
	Mon,  2 Aug 2021 13:17:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 505 seconds by postgrey-1.36 at gabe;
 Mon, 02 Aug 2021 07:16:56 UTC
Received: from mail-m17655.qiye.163.com (mail-m17655.qiye.163.com
 [59.111.176.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99B406E429;
 Mon,  2 Aug 2021 07:16:56 +0000 (UTC)
Received: from ubuntu.localdomain (unknown [36.152.145.182])
 by mail-m17655.qiye.163.com (Hmail) with ESMTPA id 94D5440157;
 Mon,  2 Aug 2021 15:08:26 +0800 (CST)
From: zhouchuangao <zhouchuangao@vivo.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 zhouchuangao <zhouchuangao@vivo.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Date: Mon,  2 Aug 2021 00:07:07 -0700
Message-Id: <1627888031-56048-1-git-send-email-zhouchuangao@vivo.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWUJOTk5WGh9LQ08dSx9DSk
 MaVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MDY6ETo6LD9OLTMdDCsIMSpR
 CjwKCQFVSlVKTUlMQ0NDSktMQ0JNVTMWGhIXVQETFA4YEw4aFRwaFDsNEg0UVRgUFkVZV1kSC1lB
 WUhNVUpOSVVKT05VSkNJWVdZCAFZQUlPTU83Bg++
X-HM-Tid: 0a7b05b13dc6da01kuws94d5440157
X-Mailman-Approved-At: Mon, 02 Aug 2021 13:17:20 +0000
Subject: [Intel-gfx] [PATCH] gpu/drm/i915: Remove duplicated include of
 intel_region_lmem.h
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

Duplicate include header file "intel_region_lmem.h"
line 8: #include "intel_region_lmem.h"
line 12: #include "intel_region_lmem.h"

Signed-off-by: zhouchuangao <zhouchuangao@vivo.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index f7366b0..119eeec 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -9,7 +9,6 @@
 #include "intel_region_ttm.h"
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
-#include "intel_region_lmem.h"
 
 static int init_fake_lmem_bar(struct intel_memory_region *mem)
 {
-- 
2.7.4

