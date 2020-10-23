Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B732E297288
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 17:39:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C931F6F8A9;
	Fri, 23 Oct 2020 15:39:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6E0556F8A6;
 Fri, 23 Oct 2020 15:39:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 66A92A8831;
 Fri, 23 Oct 2020 15:39:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 23 Oct 2020 15:39:48 -0000
Message-ID: <160346758839.1407.12834008663395086487@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Futher_cleanup_around_hpd_pins_and_port_identfi?=
 =?utf-8?q?ers_=28rev4=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Futher cleanup around hpd pins and port identfiers (rev4)
URL   : https://patchwork.freedesktop.org/series/82411/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
477637bc8e28 drm/i915: s/PORT_TC/TC_PORT_/
-:313: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tc_port' - possible side-effects?
#313: FILE: drivers/gpu/drm/i915/i915_reg.h:10318:
+#define  ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port)	(1 << ((tc_port) < TC_PORT_4 ? \
 						       (tc_port) + 12 : \
+						       (tc_port) - TC_PORT_4 + 21))

total: 0 errors, 0 warnings, 1 checks, 269 lines checked
23b37640a408 drm/i915: Add PORT_TCn aliases to enum port
30dc6119360c drm/i915: Give DDI encoders even better names
-:44: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:5177:
+				 tc_port != TC_PORT_NONE ? phy_name(phy) : tc_port - TC_PORT_1 + '1');

-:54: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#54: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:5187:
+				 tc_port != TC_PORT_NONE ? phy_name(phy) : tc_port - TC_PORT_1 + '1');

total: 0 errors, 2 warnings, 0 checks, 33 lines checked
7a4e10ddcf5c drm/i915: Introduce AUX_CH_USBCn
b47a0d1c69ad drm/i915: Pimp AUX CH names
4baf80bbf14f drm/i915: Use AUX_CH_USBCn for the RKL VBT AUX CH setup
e35d8538c985 drm/i915: Parametrize BXT_DE_PORT_HP_DDI with hpd_pin
58b8d2bd5fc4 drm/i915: Introduce GEN8_DE_PORT_HOTPLUG()
1686173cf0ce drm/i915: s/port/hpd_pin/ for icp+ ddi hpd bits
9fd957b4f19b drm/i915: s/tc_port/hpd_pin/ in GEN11_{TC, TBT}_HOTPLUG()
7f72a54b085a drm/i915: s/tc_port/hpd_pin/ in icp+ TC hotplug bits
d6c5f3bf0f23 drm/i915: Relocate intel_hpd_{enabled, hotplug}_irqs()
d06518d8d0b5 drm/i915: Split gen11_hpd_detection_setup() into tc vs. tbt variants
f36dbae0ea38 drm/i915: Don't enable hpd detection logic from irq_postinstall()
21d78326f417 drm/i915: Rename 'tmp_mask'
4364c2eaf6c4 drm/i915: Remove the per-plaform IIR HPD masking
-:68: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#68: FILE: drivers/gpu/drm/i915/i915_reg.h:8357:
+#define SDE_TC_MASK_ICP			(SDE_TC_HOTPLUG_ICP(HPD_PORT_TC6) | \
 					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC5) | \
 					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC4) | \
 					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC3) | \

total: 1 errors, 0 warnings, 0 checks, 47 lines checked
f2a3021982b7 drm/i915: Enable hpd logic only for ports that are present
6acc0868abc8 drm/i915: Use GEN3_IRQ_INIT() to init south interrupts in icp+
c0d3fbb554ac drm/i915: Get rid of ibx_irq_pre_postinstall()


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
