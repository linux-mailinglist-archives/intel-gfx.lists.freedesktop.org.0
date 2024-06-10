Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FD69027EB
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 19:43:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D94B710E462;
	Mon, 10 Jun 2024 17:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E5C410E452;
 Mon, 10 Jun 2024 17:43:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=5Fmst=3A?=
 =?utf-8?q?_Enable_link_training_fallback_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2024 17:43:32 -0000
Message-ID: <171804141238.32787.2278469224580821446@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240610164933.2947366-1-imre.deak@intel.com>
In-Reply-To: <20240610164933.2947366-1-imre.deak@intel.com>
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

Series: drm/i915/dp_mst: Enable link training fallback (rev4)
URL   : https://patchwork.freedesktop.org/series/133624/
State : warning

== Summary ==

Error: dim checkpatch failed
b20509cd82df drm/i915/dp_mst: Align TUs to avoid splitting symbols across MTPs
6ec52f74625f drm/i915/dp: Move link train params to a substruct in intel_dp
26b1ff93c6b8 drm/i915/dp: Move link train fallback to intel_dp_link_training.c
-:200: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#200: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:1140:
+							      intel_dp_common_rate(intel_dp, index - 1),

total: 0 errors, 1 warnings, 0 checks, 195 lines checked
bf419787a868 drm/i915/dp: Sanitize intel_dp_get_link_train_fallback_values()
a245073843af drm/i915: Factor out function to modeset commit a set of pipes
37bb3aa4e458 drm/i915/dp: Use a commit modeset for link retraining MST links
daa30b7daaab drm/i915/dp: Recheck link state after modeset
-:272: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#272: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 256 lines checked
a1e9f4897e22 drm/i915/dp: Reduce link params only after retrying with unchanged params
251b84fe5b1b drm/i915/dp: Pass atomic state to link training function
bd1782197958 drm/i915/dp: Send a link training modeset-retry uevent to all MST connectors
ebcc72ea9153 drm/i915/dp: Use check link state work in the hotplug handler
c58ca54c9ff5 drm/i915/dp: Use check link state work in the detect handler
a96a40b3f5e7 drm/i915/dp: Use check link state work in the HPD IRQ handler
56492706117c drm/i915/dp: Disable link retraining after the last fallback step
b2a32d7d67d0 drm/i915/dp_mst: Reset intel_dp->link_trained during disabling
251e95b962d6 drm/i915/dp_mst: Enable link training fallback for MST
9f742699a790 drm/i915/dp: Add debugfs entries to force the link rate/lane count
2f8a4c163e90 drm/i915/dp: Add debugfs entries to get the max link rate/lane count
31c706b71a56 drm/i915/dp: Add debugfs entry to force link training failure
8fbbf51385bb drm/i915/dp: Add debugfs entry to force link retrain
71ddeb63e174 drm/i915/dp: Add debugfs entry to get the link retrain disabled state


