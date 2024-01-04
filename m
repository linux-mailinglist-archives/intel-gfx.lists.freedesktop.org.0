Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAEF6824310
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 14:50:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36F9B10E47F;
	Thu,  4 Jan 2024 13:50:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4697B10E47A;
 Thu,  4 Jan 2024 13:50:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Fix_HPD_?=
 =?utf-8?q?handling_during_driver_init/shutdown_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 04 Jan 2024 13:50:21 -0000
Message-ID: <170437622128.20586.6371846213231382455@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240104083008.2715733-1-imre.deak@intel.com>
In-Reply-To: <20240104083008.2715733-1-imre.deak@intel.com>
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

Series: drm/i915: Fix HPD handling during driver init/shutdown (rev2)
URL   : https://patchwork.freedesktop.org/series/128186/
State : warning

== Summary ==

Error: dim checkpatch failed
a61040ad6018 drm/i915: Init DRM connector polled field early
eecdb602c0e0 drm/i915: Keep the connector polled state disabled after storm
-:21: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#21: 
  .                                         queue_delayed_work(hotplug.hotplug_work)

total: 0 errors, 1 warnings, 0 checks, 25 lines checked
7530dc5e8c50 drm/i915: Move audio deinit after disabling polling
2a1fe7237bfe drm/i915: Disable intel HPD poll after DRM poll init/enable
817dba5e3908 drm/i915: Suspend the framebuffer console during driver shutdown
8779ec50e0d1 drm/i915: Suspend the framebuffer console earlier during system suspend
5c5d7c78a886 drm/i915: Prevent modesets during driver init/shutdown
1264868d7b4f drm/i915: Disable hotplug detection works during driver init/shutdown
3a7e425ecb8f drm/i915: Disable hotplug detection handlers during driver init/shutdown
efc9433d6a58 drm/i915: Add intel_digital_port lock/unlock hooks
4fc8a6c836c5 drm/i915: Filter out glitches on HPD lines during hotplug detection
4d9694fee7ce drm/i915/dp: Abort AUX on disconnected native DP ports
-:9: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#9: 
commit a972cd3f0eb5 ("drm/i915/tc: Abort DP AUX transfer on a disconnected TC port")

total: 0 errors, 1 warnings, 0 checks, 18 lines checked


