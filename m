Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85321700FE2
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 22:44:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7482410E2B6;
	Fri, 12 May 2023 20:44:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C42B10E03E;
 Fri, 12 May 2023 20:44:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 354A6AADE4;
 Fri, 12 May 2023 20:44:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 12 May 2023 20:44:09 -0000
Message-ID: <168392424918.26100.2813262249368535252@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230512110444.1448231-1-jani.nikula@intel.com>
In-Reply-To: <20230512110444.1448231-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915/dpll=3A_drop_a_usel?=
 =?utf-8?b?ZXNzIEk5MTVfU1RBVEVfV0FSTl9PTigpIChyZXYyKQ==?=
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

Series: series starting with [1/4] drm/i915/dpll: drop a useless I915_STATE_WARN_ON() (rev2)
URL   : https://patchwork.freedesktop.org/series/117685/
State : warning

== Summary ==

Error: dim checkpatch failed
c7e4ac68951f drm/i915/dpll: drop a useless I915_STATE_WARN_ON()
828667e88c08 drm/i915/crtc: replace I915_STATE_WARN_ON() with I915_STATE_WARN()
4f60e04a5946 drm/i915/display: remove I915_STATE_WARN_ON()
b8924587748c drm/i915/display: add i915 parameter to I915_STATE_WARN()
-:180: WARNING:LONG_LINE: line length of 146 exceeds 100 columns
#180: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:1197:
+			(intel_de_read(dev_priv, UTIL_PIN_CTL) & (UTIL_PIN_ENABLE | UTIL_PIN_MODE_MASK)) == (UTIL_PIN_ENABLE | UTIL_PIN_MODE_PWM),

-:502: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#502: FILE: drivers/gpu/drm/i915/display/intel_pch_display.c:90:
+			intel_lvds_port_enabled(dev_priv, PCH_LVDS, &port_pipe) && port_pipe == pipe,

total: 0 errors, 2 warnings, 0 checks, 467 lines checked


