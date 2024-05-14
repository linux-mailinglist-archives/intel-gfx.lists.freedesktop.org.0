Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 703D18C5C8D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 23:00:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1F6410EB57;
	Tue, 14 May 2024 20:59:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8534610EB52;
 Tue, 14 May 2024 20:59:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=5Fmst=3A?=
 =?utf-8?q?_Enable_link_training_fallback_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 14 May 2024 20:59:56 -0000
Message-ID: <171572039651.2116355.13262095075861791042@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240514191418.2863344-1-imre.deak@intel.com>
In-Reply-To: <20240514191418.2863344-1-imre.deak@intel.com>
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

Series: drm/i915/dp_mst: Enable link training fallback (rev2)
URL   : https://patchwork.freedesktop.org/series/133624/
State : warning

== Summary ==

Error: dim checkpatch failed
3a1b500eaeee drm/i915/dp_mst: Align TUs to avoid splitting symbols across MTPs
8a2e9d5cdccc drm/i915/dp: Move link train params to a substruct in intel_dp
d30eecbc17f8 drm/i915/dp: Move link train fallback to intel_dp_link_training.c
-:196: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#196: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:1140:
+							      intel_dp_common_rate(intel_dp, index - 1),

total: 0 errors, 1 warnings, 0 checks, 195 lines checked
95c69163c1eb drm/i915/dp: Sanitize intel_dp_get_link_train_fallback_values()
c8f2a0f9c12a drm/i915: Factor out function to modeset commit a set of pipes
b4e82cab6ba7 drm/i915/dp: Use a commit modeset for link retraining MST links
4cdf4dab8099 drm/i915/dp: Recheck link state after modeset
45a7f34f0214 drm/i915/dp: Reduce link params only after retrying with unchanged params
ea9b1f5320a8 drm/i915/dp: Remove the modeset retry event's dependece on atomic state
19b9d48b60e3 drm/i915/dp: Send a link training modeset-retry uevent to all MST connectors
7b3291712079 drm/i915/dp: Use check link state work in the hotplug handler
0bb3540c26a0 drm/i915/dp: Use check link state work in the detect handler
aaac25a93c79 drm/i915/dp: Use check link state work in the HPD IRQ handler
81bd2e194dad drm/i915/dp: Disable link retraining after the last fallback step
e18f0eefda14 drm/i915/dp_mst: Reset intel_dp->link_trained during disabling
7a984a17f21b drm/i915/dp_mst: Enable link training fallback for MST
0dedbd51b7b6 drm/i915/dp: Add debugfs entries to set a target link rate/lane count
b06b77a5b50d drm/i915/dp: Add debugfs entry to force link training failure
16ba03d918ed drm/i915/dp: Add debugfs entry to force link retrain
d5078322a7ac drm/i915/dp: Add debugfs entry for link training info


