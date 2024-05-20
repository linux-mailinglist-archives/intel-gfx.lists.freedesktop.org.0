Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5908CA2BE
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 21:30:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0841410E5F6;
	Mon, 20 May 2024 19:30:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55A3A10E5F6;
 Mon, 20 May 2024 19:30:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=5Fmst=3A?=
 =?utf-8?q?_Enable_link_training_fallback_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 20 May 2024 19:30:52 -0000
Message-ID: <171623345234.2157358.17270861142676879514@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240520185822.3725844-1-imre.deak@intel.com>
In-Reply-To: <20240520185822.3725844-1-imre.deak@intel.com>
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

Series: drm/i915/dp_mst: Enable link training fallback (rev3)
URL   : https://patchwork.freedesktop.org/series/133624/
State : warning

== Summary ==

Error: dim checkpatch failed
3901134df2a3 drm/i915/dp_mst: Align TUs to avoid splitting symbols across MTPs
28d65f0e37e3 drm/i915/dp: Move link train params to a substruct in intel_dp
ff4e8e37d80a drm/i915/dp: Move link train fallback to intel_dp_link_training.c
-:196: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#196: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:1140:
+							      intel_dp_common_rate(intel_dp, index - 1),

total: 0 errors, 1 warnings, 0 checks, 195 lines checked
9b5277bae76d drm/i915/dp: Sanitize intel_dp_get_link_train_fallback_values()
2a76291f9545 drm/i915: Factor out function to modeset commit a set of pipes
7bf5284c899d drm/i915/dp: Use a commit modeset for link retraining MST links
82047795cc89 drm/i915/dp: Recheck link state after modeset
2628e40a6de7 drm/i915/dp: Reduce link params only after retrying with unchanged params
44933405fc08 drm/i915/dp: Pass atomic state to link training function
eefedc87bcc1 drm/i915/dp: Send a link training modeset-retry uevent to all MST connectors
62a79366ba9d drm/i915/dp: Use check link state work in the hotplug handler
b709e61f0cc5 drm/i915/dp: Use check link state work in the detect handler
b8bb9bccea89 drm/i915/dp: Use check link state work in the HPD IRQ handler
872973e3096d drm/i915/dp: Disable link retraining after the last fallback step
1f4c395aa4ea drm/i915/dp_mst: Reset intel_dp->link_trained during disabling
c9e59063ea28 drm/i915/dp_mst: Enable link training fallback for MST
6572f48d2ae8 drm/i915/dp: Add debugfs entries to set a target link rate/lane count
-:74: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#74: FILE: drivers/gpu/drm/i915/display/intel_dp.c:376:
+	return clamp(intel_dp->link.requested_lane_count, 1, intel_dp_max_common_lane_count(intel_dp));

total: 0 errors, 1 warnings, 0 checks, 419 lines checked
b4d9d57db44b drm/i915/dp: Add debugfs entries to get the max link rate/lane count
66d34360dd51 drm/i915/dp: Add debugfs entry to force link training failure
52bf93fe9d04 drm/i915/dp: Add debugfs entry to force link retrain
d08235d7f4ac drm/i915/dp: Add debugfs entry for link training info


