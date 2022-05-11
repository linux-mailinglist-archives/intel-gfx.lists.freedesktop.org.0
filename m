Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F770523DB8
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 21:41:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9D7E10E640;
	Wed, 11 May 2022 19:41:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5B13210E6ED;
 Wed, 11 May 2022 19:41:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 52585AADE0;
 Wed, 11 May 2022 19:41:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 11 May 2022 19:41:06 -0000
Message-ID: <165229806633.2699.18398385677749878636@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220511191911.2133928-1-imre.deak@intel.com>
In-Reply-To: <20220511191911.2133928-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/d12+=3A_Disable_DMC_firmware_flip_queue_handlers?=
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

Series: drm/i915/d12+: Disable DMC firmware flip queue handlers
URL   : https://patchwork.freedesktop.org/series/103888/
State : warning

== Summary ==

Error: dim checkpatch failed
c4133e6ab80d drm/i915/d12+: Disable DMC firmware flip queue handlers
-:167: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dmc_id' - possible side-effects?
#167: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:40:
+#define DMC_EVT_HTP(dmc_id, handler)	_MMIO(_PICK_EVEN(handler, \
+							 _DMC_EVT_HTP_0(dmc_id), \
+							 _DMC_EVT_HTP_1(dmc_id)))

-:197: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dmc_id' - possible side-effects?
#197: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:70:
+#define DMC_EVT_CTL(dmc_id, handler)	_MMIO(_PICK_EVEN(handler, \
+							 _DMC_EVT_CTL_0(dmc_id), \
+							 _DMC_EVT_CTL_1(dmc_id)))

total: 0 errors, 0 warnings, 2 checks, 189 lines checked


