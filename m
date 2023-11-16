Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E0E7EE0C8
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 13:39:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CD6410E280;
	Thu, 16 Nov 2023 12:39:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 87E9B10E280;
 Thu, 16 Nov 2023 12:39:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 81C69AADF1;
 Thu, 16 Nov 2023 12:39:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Date: Thu, 16 Nov 2023 12:39:07 -0000
Message-ID: <170013834749.3093.7698705338542797088@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231103201831.1037416-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20231103201831.1037416-1-andriy.shevchenko@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dsi=3A_4th_attempt_to_get_rid_of_IOSF_GPIO_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915/dsi: 4th attempt to get rid of IOSF GPIO (rev2)
URL   : https://patchwork.freedesktop.org/series/125977/
State : warning

== Summary ==

Error: dim checkpatch failed
585aceddae24 drm/i915/dsi: assume BXT gpio works for non-native GPIO
0491ae016322 drm/i915/dsi: switch mipi_exec_gpio() from dev_priv to i915
1ccc0b7f1dd4 drm/i915/dsi: clarify GPIO exec sequence
341947fdbe5e drm/i915/dsi: rename platform specific *_exec_gpio() to *_gpio_set_value()
db1262dbd6af drm/i915/dsi: bxt/icl GPIO set value do not need gpio source
d33f3eb47d6d drm/i915/dsi: Replace while(1) with one with clear exit condition
097d9253b98e drm/i915/dsi: Get rid of redundant 'else'
cca9caf84fd6 drm/i915/dsi: Replace check with a (missing) MIPI sequence name
ade7c1e74668 drm/i915/dsi: Remove GPIO lookup table at the end of intel_dsi_vbt_gpio_init()
afd644675571 drm/i915/dsi: Fix wrong initial value for GPIOs in bxt_gpio_set_value()
4ef4185927d2 drm/i915/dsi: Extract common soc_gpio_set_value() helper
-:6: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#6: 
Extract a common soc_gpio_set_value() helper that may be used by a few SoCs.

total: 0 errors, 1 warnings, 0 checks, 58 lines checked
6a7015a6f16b drm/i915/dsi: Replace poking of VLV GPIOs behind the driver's back
bb115405c875 drm/i915/dsi: Prepare soc_gpio_set_value() to distinguish GPIO communities
-:7: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#7: 
Currently soc_gpio_set_value() supports only a single indexing for GPIO pin.

total: 0 errors, 1 warnings, 0 checks, 59 lines checked
2cba7ec1f8ca drm/i915/dsi: Replace poking of CHV GPIOs behind the driver's back
be79538d8d4a drm/i915/dsi: Combine checks in mipi_exec_gpio()
164335fa97c2 drm/i915/iosf: Drop unused APIs


