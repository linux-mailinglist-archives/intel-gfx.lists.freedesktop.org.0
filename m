Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF36285078
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 19:07:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D04176E4D7;
	Tue,  6 Oct 2020 17:07:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 827936E4D2;
 Tue,  6 Oct 2020 17:07:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 73004A0099;
 Tue,  6 Oct 2020 17:07:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 06 Oct 2020 17:07:45 -0000
Message-ID: <160200406544.18759.4783400526455639024@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Futher_cleanup_around_hpd_pins_and_port_identfi?=
 =?utf-8?q?ers_=28rev3=29?=
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

Series: drm/i915: Futher cleanup around hpd pins and port identfiers (rev3)
URL   : https://patchwork.freedesktop.org/series/82411/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ac8d5caeb9e4 drm/i915: Sort the mess around ICP TC hotplugs regs
c825eca75000 drm/i915: s/PORT_TC/TC_PORT_TC/
-:310: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tc_port' - possible side-effects?
#310: FILE: drivers/gpu/drm/i915/i915_reg.h:10286:
+#define  ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port)	(1 << ((tc_port) < TC_PORT_TC4 ? \
 						       (tc_port) + 12 : \
+						       (tc_port) - TC_PORT_TC4 + 21))

total: 0 errors, 0 warnings, 1 checks, 269 lines checked
febabec5fc30 drm/i915: Add PORT_TCn aliases to enum port
0fd1b45546eb drm/i915: Give DDI encoders even better names
-:43: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:5183:
+				 tc_port != TC_PORT_NONE ? phy_name(phy) : tc_port - TC_PORT_TC1 + '1');

-:53: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#53: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:5193:
+				 tc_port != TC_PORT_NONE ? phy_name(phy) : tc_port - TC_PORT_TC1 + '1');

total: 0 errors, 2 warnings, 0 checks, 33 lines checked
944768cafe11 drm/i915: Introduce AUX_CH_USBCn
79ead29c1550 drm/i915: Pimp AUX CH names
b5d260d99ea5 drm/i915: Use AUX_CH_USBCn for the RKL VBT AUX CH setup
609d459a8656 drm/i915: Parametrize BXT_DE_PORT_HP_DDI with hpd_pin
504b3a46f276 drm/i915: Introduce GEN8_DE_PORT_HOTPLUG()
a0f5f533ef42 drm/i915: s/port/hpd_pin/ for icp+ ddi hpd bits
e280cadea053 drm/i915: s/tc_port/hpd_pin/ in GEN11_{TC, TBT}_HOTPLUG()
58484246fe9e drm/i915: s/tc_port/hpd_pin/ in icp+ TC hotplug bits
2cf3a3a5de78 drm/i915: Relocate intel_hpd_{enabled, hotplug}_irqs()
2f1980b7acec drm/i915: Split gen11_hpd_detection_setup() into tc vs. tbt variants
913dadb8c216 drm/i915: Don't enable hpd detection logic from irq_postinstall()
e17684d1f041 drm/i915: Rename 'tmp_mask'
ff428055fb0d drm/i915: Remove the per-plaform IIR HPD masking
-:68: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#68: FILE: drivers/gpu/drm/i915/i915_reg.h:8325:
+#define SDE_TC_MASK_ICP			(SDE_TC_HOTPLUG_ICP(HPD_PORT_TC6) | \
 					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC5) | \
 					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC4) | \
 					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC3) | \

total: 1 errors, 0 warnings, 0 checks, 47 lines checked
6dc728777193 drm/i915: Enable hpd logic only for ports that are present
54780a93e89d drm/i915: Use GEN3_IRQ_INIT() to init south interrupts in icp+
d239f4c5ab84 drm/i915: Get rid of ibx_irq_pre_postinstall()


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
