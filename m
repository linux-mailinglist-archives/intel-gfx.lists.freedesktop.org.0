Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD2FA5D25C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 23:15:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E170E10E69B;
	Tue, 11 Mar 2025 22:15:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08DC910E69B;
 Tue, 11 Mar 2025 22:15:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?conversions_to_struct_intel=5Fdisplay_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Mar 2025 22:15:07 -0000
Message-ID: <174173130702.22155.505947369387614822@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <cover.1741715981.git.jani.nikula@intel.com>
In-Reply-To: <cover.1741715981.git.jani.nikula@intel.com>
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

Series: drm/i915/display: conversions to struct intel_display (rev2)
URL   : https://patchwork.freedesktop.org/series/144748/
State : warning

== Summary ==

Error: dim checkpatch failed
fc2a574ff265 drm/i915/color: prefer display->platform.<platform> checks
c4dad7534cae drm/i915/connector: convert intel_connector.c to struct intel_display
0a57aa3579c0 drm/i915/hotplug: convert intel_hotplug.[ch] to struct intel_display
a3234e5395ae drm/i915/hotplug: convert hotplug debugfs to struct intel_display
029255db0f20 drm/i915/hotplug: convert hotplug irq handling to intel_de_*()
23c758a65d75 drm/i915/hotplug: convert intel_hotplug_irq.[ch] to struct intel_display
3a7889c2117f drm/i915/irq: convert intel_display_irq.[ch] interfaces to struct intel_display
-:856: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#856: FILE: drivers/gpu/drm/i915/display/intel_display_irq.h:74:
+void i915_pipestat_irq_handler(struct intel_display *display, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);

-:857: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#857: FILE: drivers/gpu/drm/i915/display/intel_display_irq.h:75:
+void i965_pipestat_irq_handler(struct intel_display *display, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);

total: 0 errors, 2 warnings, 0 checks, 1501 lines checked
96c281bad56a drm/i915/irq: convert rest of intel_display_irq.[ch] to struct intel_display
cf710043edb9 drm/i915/display: rename I915_HAS_HOTPLUG() to HAS_HOTPLUG


