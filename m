Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 581397F581F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 07:23:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FD0210E0CE;
	Thu, 23 Nov 2023 06:23:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2FE5D10E0CE;
 Thu, 23 Nov 2023 06:23:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 28252A02F0;
 Thu, 23 Nov 2023 06:23:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shekhar Chauhan" <shekhar.chauhan@intel.com>
Date: Thu, 23 Nov 2023 06:23:04 -0000
Message-ID: <170072058416.8135.10625581205314362042@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231123051430.3348945-1-shekhar.chauhan@intel.com>
In-Reply-To: <20231123051430.3348945-1-shekhar.chauhan@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/mtl=3A_Fix_Wa=5F22016670082_=28rev2=29?=
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

Series: drm/i915/mtl: Fix Wa_22016670082 (rev2)
URL   : https://patchwork.freedesktop.org/series/126740/
State : warning

== Summary ==

Error: dim checkpatch failed
b98bcc2e0bf1 drm/i915/mtl: Fix Wa_22016670082
-:25: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#25: FILE: drivers/gpu/drm/i915/gt/intel_gt_regs.h:538:
+#define GEN12_GT_SQCNT1 ^I^I^IMCR_REG(0x8718)$

total: 0 errors, 1 warnings, 0 checks, 21 lines checked


