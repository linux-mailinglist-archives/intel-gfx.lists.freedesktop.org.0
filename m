Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F13E129D46C
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 22:52:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B81FD6E5D3;
	Wed, 28 Oct 2020 21:52:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C1A16E5D3;
 Wed, 28 Oct 2020 21:52:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 24677A0BA8;
 Wed, 28 Oct 2020 21:52:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 28 Oct 2020 21:52:04 -0000
Message-ID: <160392192411.21341.4663548802574154155@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201028213323.5423-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201028213323.5423-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Futher_cleanup_around_hpd_pins_and_port_identfi?=
 =?utf-8?q?ers_=28rev5=29?=
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

Series: drm/i915: Futher cleanup around hpd pins and port identfiers (rev5)
URL   : https://patchwork.freedesktop.org/series/82411/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ee08af3a4155 drm/i915: s/PORT_TC/TC_PORT_/
-:313: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tc_port' - possible side-effects?
#313: FILE: drivers/gpu/drm/i915/i915_reg.h:10330:
+#define  ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port)	(1 << ((tc_port) < TC_PORT_4 ? \
 						       (tc_port) + 12 : \
+						       (tc_port) - TC_PORT_4 + 21))

total: 0 errors, 0 warnings, 1 checks, 269 lines checked
fe19b59abf59 drm/i915: Add PORT_TCn aliases to enum port
287c7226cbc0 drm/i915: Give DDI encoders even better names
-:44: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:5186:
+				 tc_port != TC_PORT_NONE ? phy_name(phy) : tc_port - TC_PORT_1 + '1');

-:54: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#54: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:5196:
+				 tc_port != TC_PORT_NONE ? phy_name(phy) : tc_port - TC_PORT_1 + '1');

total: 0 errors, 2 warnings, 0 checks, 33 lines checked
5b31fc7d2973 drm/i915: Introduce AUX_CH_USBCn
907a6f378413 drm/i915: Pimp AUX CH names
cb0bc14e42f1 drm/i915: Use AUX_CH_USBCn for the RKL VBT AUX CH setup
00239142669f drm/i915: Parametrize BXT_DE_PORT_HP_DDI with hpd_pin
4a178195598a drm/i915: Introduce GEN8_DE_PORT_HOTPLUG()
60ce87b4b638 drm/i915: s/port/hpd_pin/ for icp+ ddi hpd bits
6d636206aba9 drm/i915: s/tc_port/hpd_pin/ in GEN11_{TC, TBT}_HOTPLUG()
8b3e20e749bc drm/i915: s/tc_port/hpd_pin/ in icp+ TC hotplug bits
15e7a4125c07 drm/i915: Relocate intel_hpd_{enabled, hotplug}_irqs()
2cecffb1a88e drm/i915: Split gen11_hpd_detection_setup() into tc vs. tbt variants
62b52af3a1fc drm/i915: Don't enable hpd detection logic from irq_postinstall()
567b2cbf4a84 drm/i915: Rename 'tmp_mask'
26e100e104d0 drm/i915: Remove the per-plaform IIR HPD masking
3059c7ee9196 drm/i915: Enable hpd logic only for ports that are present
f2def9dff59f drm/i915: Use GEN3_IRQ_INIT() to init south interrupts in icp+
bd3fd9cc28ab drm/i915: Get rid of ibx_irq_pre_postinstall()


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
