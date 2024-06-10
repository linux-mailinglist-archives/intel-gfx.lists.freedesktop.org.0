Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CED6902945
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 21:30:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63F3910E15B;
	Mon, 10 Jun 2024 19:30:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AA4810E15B;
 Mon, 10 Jun 2024 19:29:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dp=5Fmst=3A?=
 =?utf-8?q?_Enable_link_training_fallback_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2024 19:29:59 -0000
Message-ID: <171804779963.51486.2218474543342628934@a6498e030952>
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

Series: drm/i915/dp_mst: Enable link training fallback (rev5)
URL   : https://patchwork.freedesktop.org/series/133624/
State : warning

== Summary ==

Error: dim checkpatch failed
6b81ae31508b drm/i915/dp_mst: Align TUs to avoid splitting symbols across MTPs
c0a07f914e22 drm/i915/dp: Move link train params to a substruct in intel_dp
d85a52c740a6 drm/i915/dp: Move link train fallback to intel_dp_link_training.c
-:200: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#200: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:1140:
+							      intel_dp_common_rate(intel_dp, index - 1),

total: 0 errors, 1 warnings, 0 checks, 195 lines checked
414f548e5bef drm/i915/dp: Sanitize intel_dp_get_link_train_fallback_values()
333509e268b3 drm/i915: Factor out function to modeset commit a set of pipes
974760c67ddf drm/i915/dp: Use a commit modeset for link retraining MST links
46a943f30fd4 drm/i915/dp: Recheck link state after modeset
-:273: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#273: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 256 lines checked
a1c304512548 drm/i915/dp: Reduce link params only after retrying with unchanged params
ecd17d4a6cba drm/i915/dp: Pass atomic state to link training function
dcdde6aca9cd drm/i915/dp: Send a link training modeset-retry uevent to all MST connectors
8d6db0755f31 drm/i915/dp: Use check link state work in the hotplug handler
6100ce7cb4b3 drm/i915/dp: Use check link state work in the detect handler
a748846a691a drm/i915/dp: Use check link state work in the HPD IRQ handler
d99f8ca62339 drm/i915/dp: Disable link retraining after the last fallback step
9ce30bdb9ffd drm/i915/dp_mst: Reset intel_dp->link_trained during disabling
cb090fc63de9 drm/i915/dp_mst: Enable link training fallback for MST
eb70f6a2c13b drm/i915/dp: Add debugfs entries to force the link rate/lane count
7a118d6d6c29 drm/i915/dp: Add debugfs entries to get the max link rate/lane count
95b583ac1e49 drm/i915/dp: Add debugfs entry to force link training failure
747d8ca0413f drm/i915/dp: Add debugfs entry to force link retrain
308e31e05027 drm/i915/dp: Add debugfs entry to get the link retrain disabled state


