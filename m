Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7049C4674
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 21:19:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A5C710E0F4;
	Mon, 11 Nov 2024 20:19:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7922010E0F4;
 Mon, 11 Nov 2024 20:19:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5BCI=2C1/9=5D_drm/i915=3A_Remove_vga_and_gmbus_seq_out_of_i915?=
 =?utf-8?q?=5Frestore=5Fdisplay?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2024 20:19:02 -0000
Message-ID: <173135634249.2726703.8956971796177316008@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241111193947.128871-1-rodrigo.vivi@intel.com>
In-Reply-To: <20241111193947.128871-1-rodrigo.vivi@intel.com>
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

Series: series starting with [CI,1/9] drm/i915: Remove vga and gmbus seq out of i915_restore_display
URL   : https://patchwork.freedesktop.org/series/141182/
State : warning

== Summary ==

Error: dim checkpatch failed
72a50a57811a drm/i915: Remove vga and gmbus seq out of i915_restore_display
4b3e65a09492 drm/i915/display: Convert i915_suspend into i9xx_display_sr
-:46: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#46: 
new file mode 100644

-:70: CHECK:CAMELCASE: Avoid CamelCase: <saveSWF0>
#70: FILE: drivers/gpu/drm/i915/display/i9xx_display_sr.c:20:
+			i915->regfile.saveSWF0[i] = intel_de_read(i915, SWF0(i915, i));

-:71: CHECK:CAMELCASE: Avoid CamelCase: <saveSWF1>
#71: FILE: drivers/gpu/drm/i915/display/i9xx_display_sr.c:21:
+			i915->regfile.saveSWF1[i] = intel_de_read(i915, SWF1(i915, i));

-:74: CHECK:CAMELCASE: Avoid CamelCase: <saveSWF3>
#74: FILE: drivers/gpu/drm/i915/display/i9xx_display_sr.c:24:
+			i915->regfile.saveSWF3[i] = intel_de_read(i915, SWF3(i915, i));

-:122: CHECK:CAMELCASE: Avoid CamelCase: <saveDSPARB>
#122: FILE: drivers/gpu/drm/i915/display/i9xx_display_sr.c:72:
+		i915->regfile.saveDSPARB = intel_de_read(i915, DSPARB(i915));

-:125: CHECK:CAMELCASE: Avoid CamelCase: <saveGCDGMBUS>
#125: FILE: drivers/gpu/drm/i915/display/i9xx_display_sr.c:75:
+		pci_read_config_word(pdev, GCDGMBUS, &i915->regfile.saveGCDGMBUS);

total: 0 errors, 1 warnings, 5 checks, 153 lines checked
3834ebc9f587 drm/i915/display: Move regfile registers intel_display.restore
-:30: CHECK:CAMELCASE: Avoid CamelCase: <saveSWF0>
#30: FILE: drivers/gpu/drm/i915/display/i9xx_display_sr.c:21:
+			display->restore.saveSWF0[i] = intel_de_read(display, SWF0(i915, i));

-:31: CHECK:CAMELCASE: Avoid CamelCase: <saveSWF1>
#31: FILE: drivers/gpu/drm/i915/display/i9xx_display_sr.c:22:
+			display->restore.saveSWF1[i] = intel_de_read(display, SWF1(i915, i));

-:35: CHECK:CAMELCASE: Avoid CamelCase: <saveSWF3>
#35: FILE: drivers/gpu/drm/i915/display/i9xx_display_sr.c:25:
+			display->restore.saveSWF3[i] = intel_de_read(display, SWF3(i915, i));

-:97: CHECK:CAMELCASE: Avoid CamelCase: <saveDSPARB>
#97: FILE: drivers/gpu/drm/i915/display/i9xx_display_sr.c:75:
+		display->restore.saveDSPARB = intel_de_read(display, DSPARB(i915));

-:101: CHECK:CAMELCASE: Avoid CamelCase: <saveGCDGMBUS>
#101: FILE: drivers/gpu/drm/i915/display/i9xx_display_sr.c:78:
+		pci_read_config_word(pdev, GCDGMBUS, &display->restore.saveGCDGMBUS);

total: 0 errors, 0 warnings, 5 checks, 135 lines checked
cd1cd210b268 drm/{i915, xe}/display: Move DP MST calls to display_driver
4fb985a82aa7 drm/xe/display: Delay hpd_init resume
63f16ce00412 drm/xe/display: Delay dsm handler registration
1c3d038db923 drm/{i915, xe}: Move power_domains suspend/resume to display_power
b59b053b4cbd drm/{i915, xe}: Move remaining intel_power_domains to intel_display
11ff64254f28 drm/{i915, xe}/display: Move dsm registration under intel_driver


