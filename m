Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB295BDE48
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 09:34:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35CCB10E0BB;
	Tue, 20 Sep 2022 07:34:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8A02310E0BB;
 Tue, 20 Sep 2022 07:33:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5BE00A0099;
 Tue, 20 Sep 2022 07:33:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aravind Iddamsetty" <aravind.iddamsetty@intel.com>
Date: Tue, 20 Sep 2022 07:33:59 -0000
Message-ID: <166365923934.1409.17606369491306019881@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220920071940.3775059-1-aravind.iddamsetty@intel.com>
In-Reply-To: <20220920071940.3775059-1-aravind.iddamsetty@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/1=5D_drm/i915/mtl=3A_enable_local?=
 =?utf-8?q?_stolen_memory?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/1] drm/i915/mtl: enable local stolen memory
URL   : https://patchwork.freedesktop.org/series/108767/
State : warning

== Summary ==

Error: dim checkpatch failed
7dfaf4034615 drm/i915/mtl: enable local stolen memory
-:231: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#231: FILE: drivers/gpu/drm/i915/i915_drv.h:976:
+#define HAS_BAR2_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
+				    GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))

total: 0 errors, 0 warnings, 1 checks, 193 lines checked


