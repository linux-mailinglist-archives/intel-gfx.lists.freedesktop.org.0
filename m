Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E040D987C0D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 02:08:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6574810E1C8;
	Fri, 27 Sep 2024 00:08:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4329F10E1C8;
 Fri, 27 Sep 2024 00:08:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Reconcile_i915=27s_a?=
 =?utf-8?q?nd_xe=27s_display_power_mgt_sequences?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2024 00:08:26 -0000
Message-ID: <172739570626.1109329.13531597895276445723@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Reconcile i915's and xe's display power mgt sequences
URL   : https://patchwork.freedesktop.org/series/139062/
State : warning

== Summary ==

Error: dim checkpatch failed
f04353bed085 drm/i915: Remove vga and gmbus seq out of i915_restore_display
5ede27eb97ba drm/i915/display: Convert i915_suspend into i9xx_display_sr
-:44: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#44: 
new file mode 100644

-:68: CHECK:CAMELCASE: Avoid CamelCase: <saveSWF0>
#68: FILE: drivers/gpu/drm/i915/display/i9xx_display_sr.c:20:
+			i915->regfile.saveSWF0[i] = intel_de_read(i915, SWF0(i915, i));

-:69: CHECK:CAMELCASE: Avoid CamelCase: <saveSWF1>
#69: FILE: drivers/gpu/drm/i915/display/i9xx_display_sr.c:21:
+			i915->regfile.saveSWF1[i] = intel_de_read(i915, SWF1(i915, i));

-:72: CHECK:CAMELCASE: Avoid CamelCase: <saveSWF3>
#72: FILE: drivers/gpu/drm/i915/display/i9xx_display_sr.c:24:
+			i915->regfile.saveSWF3[i] = intel_de_read(i915, SWF3(i915, i));

-:120: CHECK:CAMELCASE: Avoid CamelCase: <saveDSPARB>
#120: FILE: drivers/gpu/drm/i915/display/i9xx_display_sr.c:72:
+		i915->regfile.saveDSPARB = intel_de_read(i915, DSPARB(i915));

-:123: CHECK:CAMELCASE: Avoid CamelCase: <saveGCDGMBUS>
#123: FILE: drivers/gpu/drm/i915/display/i9xx_display_sr.c:75:
+		pci_read_config_word(pdev, GCDGMBUS, &i915->regfile.saveGCDGMBUS);

total: 0 errors, 1 warnings, 5 checks, 153 lines checked
6cee66031328 drm/i915/display: Move regfile registers intel_display.restore
-:29: CHECK:CAMELCASE: Avoid CamelCase: <saveSWF0>
#29: FILE: drivers/gpu/drm/i915/display/i9xx_display_sr.c:21:
+			display->restore.saveSWF0[i] = intel_de_read(display, SWF0(i915, i));

-:30: CHECK:CAMELCASE: Avoid CamelCase: <saveSWF1>
#30: FILE: drivers/gpu/drm/i915/display/i9xx_display_sr.c:22:
+			display->restore.saveSWF1[i] = intel_de_read(display, SWF1(i915, i));

-:34: CHECK:CAMELCASE: Avoid CamelCase: <saveSWF3>
#34: FILE: drivers/gpu/drm/i915/display/i9xx_display_sr.c:25:
+			display->restore.saveSWF3[i] = intel_de_read(display, SWF3(i915, i));

-:96: CHECK:CAMELCASE: Avoid CamelCase: <saveDSPARB>
#96: FILE: drivers/gpu/drm/i915/display/i9xx_display_sr.c:75:
+		display->restore.saveDSPARB = intel_de_read(display, DSPARB(i915));

-:100: CHECK:CAMELCASE: Avoid CamelCase: <saveGCDGMBUS>
#100: FILE: drivers/gpu/drm/i915/display/i9xx_display_sr.c:78:
+		pci_read_config_word(pdev, GCDGMBUS, &display->restore.saveGCDGMBUS);

total: 0 errors, 0 warnings, 5 checks, 135 lines checked
251a42b9ffff drm/i915/display: Move shutdown sequences under display driver
e1cef3d47c2c drm/xe: At shutdown disable commit helpers instead of flushing
be9eab4a4c9c drm/xe: Use i915-display shutdown sequence directly
b8c3ae74cf20 drm/{i915, xe}/display: Move DP MST calls to display_driver
bc8397104476 drm/i915/display: Move suspend sequences to intel_display_driver
4a85d17531d8 drm/xe/display: Delay hpd_init resume
b5e047ddf021 drm/xe/display: Spin-off xe_display runtime/d3cold sequences
b0c9f94a3d9e drm/{i915,xe}: Consolidate display resume functions
2a23b1d71196 drm/i915: Remove lingering pci_save_state
d66836d2934b drm/{i915,xe}: Consolidate display suspend functions
7ba5e12da8b1 drm/i915/display: Move resume sequences to intel_display_driver
fc7debca5a57 drm/xe/display: Delay dsm handler registration
625ca89a557e drm/{i915, xe}: Move power_domains suspend/resume to display_power
679d013b241c drm/{i915, xe}: Move remaining intel_power_domains to intel_display
3bd9e583d125 drm/i915/display: Split resume_noirq calls for now
92c244819d31 drm/xe/display: Align display resume sequence with i915
ab4e84f34837 drm/xe/display: Align suspend sequence with i915
3d10483ec025 drm/{i915, xe}/display: Move dsm registration under intel_driver
a7c8cecd59c0 drm/i915/display: Move runtime pm related calls under intel_display_driver
52b35f48de2c drm/xe/display: Prepare runtime pm functions
b182d1264d8a drm/xe/display: Call intel_hpd_init on every runtime resume
2b4c50ed71d8 drm/xe/display: Move hpd_poll calls to later runtime stages
27cca9d2f364 drm/xe/display: Add missing watermark ipc update at runtime resume
af6663b3a8ef drm/xe/display: Notify opregion upon runtime suspend/resume non-d3cold
76cce5aec24b drm/xe/display: Move display runtime suspend to a later point
aae885e997b4 drm/xe/display: Kill crtc commit flush
938d2b1ce946 drm/xe/display: Add missing power display handling on non-d3cold rpm
0049445434ff drm/{i915, xe}/display: Consolidade entire runtime pm sequence


