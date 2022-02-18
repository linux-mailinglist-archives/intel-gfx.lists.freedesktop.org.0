Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE824BB1C1
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 07:02:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22D5110ED69;
	Fri, 18 Feb 2022 06:02:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AE72710ECBC;
 Fri, 18 Feb 2022 06:02:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A9CEAA008A;
 Fri, 18 Feb 2022 06:02:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 18 Feb 2022 06:02:14 -0000
Message-ID: <164516413469.25458.3893729803273452027@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220218010328.183423-1-lucas.demarchi@intel.com>
In-Reply-To: <20220218010328.183423-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/3=5D_drm/i915=3A_Fix_for_PHY?=
 =?utf-8?q?=5FMISC=5FTC1_offset?=
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

Series: series starting with [CI,1/3] drm/i915: Fix for PHY_MISC_TC1 offset
URL   : https://patchwork.freedesktop.org/series/100373/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2bc5a2246dec drm/i915: Fix for PHY_MISC_TC1 offset
-:49: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'port' - possible side-effects?
#49: FILE: drivers/gpu/drm/i915/i915_reg.h:9360:
+#define DG2_PHY_MISC(port)	((port) == PHY_E ? _MMIO(_DG2_PHY_MISC_TC1) : \
+				 ICL_PHY_MISC(port))

total: 0 errors, 0 warnings, 1 checks, 20 lines checked
d20e83eacf5a drm/i915/dg2: Drop 38.4 MHz MPLLB tables
f128d3a75f3d drm/i915/dg2: Enable 5th port


