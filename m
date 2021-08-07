Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5743E46E2
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Aug 2021 15:47:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6D3189BD4;
	Mon,  9 Aug 2021 13:47:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-m17655.qiye.163.com (mail-m17655.qiye.163.com
 [59.111.176.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9A1F6E02A;
 Sat,  7 Aug 2021 08:52:44 +0000 (UTC)
Received: from ubuntu.localdomain (unknown [36.152.145.182])
 by mail-m17655.qiye.163.com (Hmail) with ESMTPA id 25623400B8;
 Sat,  7 Aug 2021 16:52:42 +0800 (CST)
From: zhouchuangao <zhouchuangao@vivo.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Matt Roper <matthew.d.roper@intel.com>, CQ Tang <cq.tang@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: zhouchuangao <zhouchuangao@vivo.com>
Date: Sat,  7 Aug 2021 01:52:31 -0700
Message-Id: <1628326354-96951-1-git-send-email-zhouchuangao@vivo.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWRlDGR1WQ04eTxodHh5LGk
 NLVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6M0k6HSo5Hj8MISo2SRJOED0D
 SAowFDVVSlVKTUlDSElNSE1JQ0hOVTMWGhIXVQETFA4YEw4aFRwaFDsNEg0UVRgUFkVZV1kSC1lB
 WUhNVUpOSVVKT05VSkNJWVdZCAFZQUlPTkM3Bg++
X-HM-Tid: 0a7b1fd07d50da01kuws25623400b8
X-Mailman-Approved-At: Mon, 09 Aug 2021 13:47:46 +0000
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
line 13: #include "intel_region_lmem.h"

Signed-off-by: zhouchuangao <zhouchuangao@vivo.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 58a3cf7..50d11a8 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -10,7 +10,6 @@
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
 #include "gem/i915_gem_ttm.h"
-#include "intel_region_lmem.h"
 
 static int init_fake_lmem_bar(struct intel_memory_region *mem)
 {
-- 
2.7.4

