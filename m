Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5225EB61A
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 02:09:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F5CF10E846;
	Tue, 27 Sep 2022 00:09:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 89CA710E872;
 Tue, 27 Sep 2022 00:09:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 81DEEAADDB;
 Tue, 27 Sep 2022 00:09:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aravind Iddamsetty" <aravind.iddamsetty@intel.com>
Date: Tue, 27 Sep 2022 00:09:01 -0000
Message-ID: <166423734149.24580.13398500861351668370@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220926184424.23772-1-aravind.iddamsetty@intel.com>
In-Reply-To: <20220926184424.23772-1-aravind.iddamsetty@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/mtl=3A_enable_local_stolen_memory_=28rev3=29?=
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

Series: drm/i915/mtl: enable local stolen memory (rev3)
URL   : https://patchwork.freedesktop.org/series/109066/
State : warning

== Summary ==

Error: dim checkpatch failed
73961edcf789 drm/i915/mtl: enable local stolen memory
-:222: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#222: FILE: drivers/gpu/drm/i915/i915_drv.h:977:
+#define HAS_BAR2_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
+				    GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))

total: 0 errors, 0 warnings, 1 checks, 183 lines checked


