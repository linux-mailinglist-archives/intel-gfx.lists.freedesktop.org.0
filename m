Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE124364C9
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 16:52:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C6956E43F;
	Thu, 21 Oct 2021 14:52:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 81F686E3F7;
 Thu, 21 Oct 2021 14:52:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7A061AA917;
 Thu, 21 Oct 2021 14:52:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Oct 2021 14:52:06 -0000
Message-ID: <163482792649.20177.15829310129841019589@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211021125332.2455288-1-matthew.auld@intel.com>
In-Reply-To: <20211021125332.2455288-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/dmabuf=3A_fix_broke?=
 =?utf-8?q?n_build?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/2] drm/i915/dmabuf: fix broken build
URL   : https://patchwork.freedesktop.org/series/96125/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
68c88f65e7ba drm/i915/dmabuf: fix broken build
-:25: WARNING:INCLUDE_LINUX: Use #include <linux/smp.h> instead of <asm/smp.h>
#25: FILE: drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c:16:
+#include <asm/smp.h>

total: 0 errors, 1 warnings, 0 checks, 13 lines checked
57f4f8cece5b drm/i915/dmabuf: drop the flush on discrete


