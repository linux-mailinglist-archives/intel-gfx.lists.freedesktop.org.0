Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DD24EA34B
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 00:51:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D175C10E145;
	Mon, 28 Mar 2022 22:51:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5428A10E0A3;
 Mon, 28 Mar 2022 22:51:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5188EA66C8;
 Mon, 28 Mar 2022 22:51:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Mon, 28 Mar 2022 22:51:49 -0000
Message-ID: <164850790930.2847.8416164673016305823@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220328153445.2578957-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220328153445.2578957-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dmc=3A_Add_DMC=5FEVT=5FHTP_and_DMC=5FEVT=5FCTL_pro?=
 =?utf-8?q?gramming?=
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

Series: drm/i915/dmc: Add DMC_EVT_HTP and DMC_EVT_CTL programming
URL   : https://patchwork.freedesktop.org/series/101891/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b4b5cbd62645 drm/i915/dmc: Add DMC_EVT_HTP and DMC_EVT_CTL programming
-:44: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:1118:
+			intel_de_write(dev_priv, PIPEDMC_EVT_CTL_OFFSET(dmc->dmc_info[id].start_mmioaddr, i),

-:45: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#45: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:1119:
+			intel_de_write(dev_priv, PIPEDMC_EVT_CTL_OFFSET(dmc->dmc_info[id].start_mmioaddr, i),
+			DMC_EVT_CTL_VAL);

-:46: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:1120:
+			intel_de_write(dev_priv, PIPEDMC_EVT_HTP_OFFSET(dmc->dmc_info[id].start_mmioaddr, i),

-:47: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#47: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:1121:
+			intel_de_write(dev_priv, PIPEDMC_EVT_HTP_OFFSET(dmc->dmc_info[id].start_mmioaddr, i),
+			DMC_EVT_HTP_VAL);

-:78: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'addr' may be better as '(addr)' to avoid precedence issues
#78: FILE: drivers/gpu/drm/i915/i915_reg.h:5535:
+#define PIPEDMC_EVT_HTP_OFFSET(addr, i)		_MMIO(addr + PIPEDMC_EVT_HTP_BASE + (i * 4))

-:78: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i' may be better as '(i)' to avoid precedence issues
#78: FILE: drivers/gpu/drm/i915/i915_reg.h:5535:
+#define PIPEDMC_EVT_HTP_OFFSET(addr, i)		_MMIO(addr + PIPEDMC_EVT_HTP_BASE + (i * 4))

-:79: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'addr' may be better as '(addr)' to avoid precedence issues
#79: FILE: drivers/gpu/drm/i915/i915_reg.h:5536:
+#define PIPEDMC_EVT_CTL_OFFSET(addr, i)		_MMIO(addr + PIPEDMC_EVT_CTL_BASE + (i * 4))

-:79: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i' may be better as '(i)' to avoid precedence issues
#79: FILE: drivers/gpu/drm/i915/i915_reg.h:5536:
+#define PIPEDMC_EVT_CTL_OFFSET(addr, i)		_MMIO(addr + PIPEDMC_EVT_CTL_BASE + (i * 4))

total: 0 errors, 2 warnings, 6 checks, 57 lines checked


