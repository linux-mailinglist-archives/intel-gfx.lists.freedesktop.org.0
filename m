Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 880457F21B4
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 00:55:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD19510E00B;
	Mon, 20 Nov 2023 23:55:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8778510E00B;
 Mon, 20 Nov 2023 23:55:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 762F0A7E03;
 Mon, 20 Nov 2023 23:55:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Date: Mon, 20 Nov 2023 23:55:17 -0000
Message-ID: <170052451745.29477.1730715044227738578@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231103201831.1037416-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20231103201831.1037416-1-andriy.shevchenko@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dsi=3A_4th_attempt_to_get_rid_of_IOSF_GPIO_=28rev5?=
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

Series: drm/i915/dsi: 4th attempt to get rid of IOSF GPIO (rev5)
URL   : https://patchwork.freedesktop.org/series/125977/
State : warning

== Summary ==

Error: dim checkpatch failed
718e25fcdd2a drm/i915/dsi: assume BXT gpio works for non-native GPIO
a6aab2794a1f drm/i915/dsi: switch mipi_exec_gpio() from dev_priv to i915
31f24aa54faf drm/i915/dsi: clarify GPIO exec sequence
a7b02c6ed548 drm/i915/dsi: rename platform specific *_exec_gpio() to *_gpio_set_value()
a762b420c899 drm/i915/dsi: bxt/icl GPIO set value do not need gpio source
b6f3e6d7b766 drm/i915/dsi: Replace while(1) with one with clear exit condition
3d8f0796f518 drm/i915/dsi: Get rid of redundant 'else'
9d795115952b drm/i915/dsi: Replace check with a (missing) MIPI sequence name
720efcc63d3c drm/i915/dsi: Remove GPIO lookup table at the end of intel_dsi_vbt_gpio_init()
63632d47d629 drm/i915/dsi: Fix wrong initial value for GPIOs in bxt_gpio_set_value()
9b3cf5328aeb drm/i915/dsi: Extract common soc_gpio_set_value() helper
-:6: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#6: 
Extract a common soc_gpio_set_value() helper that may be used by a few SoCs.

total: 0 errors, 1 warnings, 0 checks, 58 lines checked
640636fdac2b drm/i915/dsi: Replace poking of VLV GPIOs behind the driver's back
6ae716ae2962 drm/i915/dsi: Prepare soc_gpio_set_value() to distinguish GPIO communities
-:7: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#7: 
Currently soc_gpio_set_value() supports only a single indexing for GPIO pin.

total: 0 errors, 1 warnings, 0 checks, 59 lines checked
84b2cbe19cbc drm/i915/dsi: Replace poking of CHV GPIOs behind the driver's back
a89aed1900d4 drm/i915/dsi: Combine checks in mipi_exec_gpio()
1182cd3b53bd drm/i915/iosf: Drop unused APIs


