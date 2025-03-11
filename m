Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD23A5CE54
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 19:58:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9613210E25B;
	Tue, 11 Mar 2025 18:58:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6F0410E25B;
 Tue, 11 Mar 2025 18:58:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_make_i91?=
 =?utf-8?q?5-=3Edisplay_opaque_pointer?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Mar 2025 18:58:05 -0000
Message-ID: <174171948587.21135.1668526616967517702@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <cover.1741712601.git.jani.nikula@intel.com>
In-Reply-To: <cover.1741712601.git.jani.nikula@intel.com>
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

Series: drm/i915: make i915->display opaque pointer
URL   : https://patchwork.freedesktop.org/series/146155/
State : warning

== Summary ==

Error: dim checkpatch failed
86f3f992d5c6 drm/i915/hdmi: remove inline to_i915()
5ce6ca11f746 drm/i915/hotplug: use container_of() to get struct intel_display
9c2c38c55ec5 drm/i915: convert i915 and xe display members into pointers
860a600b42c0 drm/i915: scripted conversion to i915->display pointer
-:9: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#9: 
sed -i 's/&\([a-zA-Z0-9_>.-]*\)\(dev_priv\|i915\|xe\)->display\([^.]\)/\1\2->display\3/g' $(git ls-files -- drivers/gpu/drm/i915 drivers/gpu/drm/xe)

-:2413: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#2413: FILE: drivers/gpu/drm/i915/display/intel_hotplug.c:699:
+		queue_work(dev_priv->display->hotplug.dp_wq, &dev_priv->display->hotplug.dig_port_work);

-:4105: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!dev_priv->display->hotplug.dp_wq"
#4105: FILE: drivers/gpu/drm/i915/i915_driver.c:138:
+	if (dev_priv->display->hotplug.dp_wq == NULL)

total: 0 errors, 2 warnings, 1 checks, 3987 lines checked
99c3a2833646 drm/i915: allocate struct intel_display dynamically
-:25: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*i915->display)...) over kzalloc(sizeof(struct intel_display)...)
#25: FILE: drivers/gpu/drm/i915/i915_driver.c:758:
+	i915->display = kzalloc(sizeof(struct intel_display), GFP_KERNEL);

-:52: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*xe->display)...) over kzalloc(sizeof(struct intel_display)...)
#52: FILE: drivers/gpu/drm/xe/display/xe_display.c:105:
+	xe->display = kzalloc(sizeof(struct intel_display), GFP_KERNEL);

total: 0 errors, 0 warnings, 2 checks, 34 lines checked
47b8a17052dd drm/i915: stop including display/intel_display_core.h from i915_drv.h
e96287a929be drm/xe: drop intel_display_core/device.h include from xe_device_types.h


