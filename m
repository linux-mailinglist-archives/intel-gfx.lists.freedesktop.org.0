Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B0852FCE4
	for <lists+intel-gfx@lfdr.de>; Sat, 21 May 2022 15:29:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85F3B10E22D;
	Sat, 21 May 2022 13:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C35A610E1D5;
 Sat, 21 May 2022 13:29:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B9B28AADD7;
 Sat, 21 May 2022 13:29:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Sat, 21 May 2022 13:29:51 -0000
Message-ID: <165313979172.6194.13309848220268109422@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220511191911.2133928-1-imre.deak@intel.com>
In-Reply-To: <20220511191911.2133928-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/d12+=3A_Disable_DMC_firmware_flip_queue_handlers_?=
 =?utf-8?b?KHJldjQp?=
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

Series: drm/i915/d12+: Disable DMC firmware flip queue handlers (rev4)
URL   : https://patchwork.freedesktop.org/series/103888/
State : warning

== Summary ==

Error: dim checkpatch failed
472d949c1fbf drm/i915/d12+: Disable DMC firmware flip queue handlers
-:170: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dmc_id' - possible side-effects?
#170: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:24:
+#define _DMC_REG_MMIO_BASE(i915, dmc_id) \
+	((dmc_id) == DMC_FW_MAIN ? __DMC_REG_MMIO_BASE : \
+				   __PIPEDMC_REG_MMIO_BASE(i915, dmc_id))

total: 0 errors, 0 warnings, 1 checks, 160 lines checked


