Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 671FC7E0B05
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 23:22:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3EF110EAE7;
	Fri,  3 Nov 2023 22:22:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E4E6310EAE7;
 Fri,  3 Nov 2023 22:22:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DDCCBAADED;
 Fri,  3 Nov 2023 22:22:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Date: Fri, 03 Nov 2023 22:22:40 -0000
Message-ID: <169905016087.29105.8701011422299030370@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231103201831.1037416-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20231103201831.1037416-1-andriy.shevchenko@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dsi=3A_4th_attempt_to_get_rid_of_IOSF_GPIO?=
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

Series: drm/i915/dsi: 4th attempt to get rid of IOSF GPIO
URL   : https://patchwork.freedesktop.org/series/125977/
State : warning

== Summary ==

Error: dim checkpatch failed
cf6ba57516da drm/i915/dsi: assume BXT gpio works for non-native GPIO
481d4ce37fe4 drm/i915/dsi: switch mipi_exec_gpio() from dev_priv to i915
b80582bcf739 drm/i915/dsi: clarify GPIO exec sequence
54a9044c6b7d drm/i915/dsi: rename platform specific *_exec_gpio() to *_gpio_set_value()
d3cef67d2948 drm/i915/dsi: bxt/icl GPIO set value do not need gpio source
312e37a9127d drm/i915/dsi: Replace while(1) with one with clear exit condition
427e3034b75e drm/i915/dsi: Get rid of redundant 'else'
5af3f32b334f drm/i915/dsi: Replace check with a (missing) MIPI sequence name
02afcfea30ea drm/i915/dsi: Remove GPIO lookup table at the end of intel_dsi_vbt_gpio_init()
bf81f18f5ffd drm/i915/dsi: Fix wrong initial value for GPIOs in bxt_gpio_set_value()
aa88caa8c7f5 drm/i915/dsi: Extract common soc_gpio_set_value() helper
-:6: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#6: 
Extract a common soc_gpio_set_value() helper that may be used by a few SoCs.

total: 0 errors, 1 warnings, 0 checks, 58 lines checked
30ced6d15ea3 drm/i915/dsi: Replace poking of VLV GPIOs behind the driver's back
66a96cfbc330 drm/i915/dsi: Prepare soc_gpio_set_value() to distinguish GPIO communities
-:7: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#7: 
Currently soc_gpio_set_value() supports only a single indexing for GPIO pin.

total: 0 errors, 1 warnings, 0 checks, 59 lines checked
5484103c5d64 drm/i915/dsi: Replace poking of CHV GPIOs behind the driver's back
a4d061726bbd drm/i915/dsi: Combine checks in mipi_exec_gpio()
49380e2b55f6 drm/i915/iosf: Drop unused APIs


