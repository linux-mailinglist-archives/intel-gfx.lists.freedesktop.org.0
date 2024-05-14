Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 042C38C5BBC
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 21:39:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE7FF10E0A2;
	Tue, 14 May 2024 19:39:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2438310E0A2;
 Tue, 14 May 2024 19:39:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=5Fmst=3A?=
 =?utf-8?q?_Enable_link_training_fallback?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 14 May 2024 19:39:54 -0000
Message-ID: <171571559414.2116304.250950505698544109@8e613ede5ea5>
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

Series: drm/i915/dp_mst: Enable link training fallback
URL   : https://patchwork.freedesktop.org/series/133624/
State : warning

== Summary ==

Error: dim checkpatch failed
8b753f20ffcb drm/i915/dp_mst: Align TUs to avoid splitting symbols across MTPs
df53d2f9ed23 drm/i915/dp: Move link train params to a substruct in intel_dp
af6f82f691bf drm/i915/dp: Move link train fallback to intel_dp_link_training.c
-:196: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#196: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:1140:
+							      intel_dp_common_rate(intel_dp, index - 1),

total: 0 errors, 1 warnings, 0 checks, 195 lines checked
47ac90793a65 drm/i915/dp: Sanitize intel_dp_get_link_train_fallback_values()
8a8bea2bef9b drm/i915: Factor out function to modeset commit a set of pipes
9bc09f40d51d drm/i915/dp: Use a commit modeset for link retraining MST links
2f10c5267fb8 drm/i915/dp: Recheck link state after modeset
a9fd5ca41602 drm/i915/dp: Reduce link params only after retrying with unchanged params
24e33713eb85 drm/i915/dp: Remove the modeset retry event's dependece on atomic state
8d7713bbd251 drm/i915/dp: Send a link training modeset-retry uevent to all MST connectors
2b05c381a9ab drm/i915/dp: Use check link state work in the hotplug handler
8697144018cd drm/i915/dp: Use check link state work in the detect handler
eeae186e9a9b drm/i915/dp: Use check link state work in the HPD IRQ handler
71a06058721b drm/i915/dp: Disable link retraining after the last fallback step
11c572eba629 drm/i915/dp_mst: Reset intel_dp->link_trained during disabling
0cc0e5177431 drm/i915/dp_mst: Enable link training fallback for MST
119d38d3cb2b drm/i915/dp: Add debugfs entries to set a target link rate/lane count
0acb770df7be drm/i915/dp: Add debugfs entry to force link training failure
d93252aacfd5 drm/i915/dp: Add debugfs entry to force link retrain
f1eb11df807e drm/i915/dp: Add debugfs entry for link training info


