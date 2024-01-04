Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0AB8241EE
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 13:39:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69F8110E196;
	Thu,  4 Jan 2024 12:39:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B2B410E02E;
 Thu,  4 Jan 2024 12:39:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Fix_HPD_?=
 =?utf-8?q?handling_during_driver_init/shutdown?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 04 Jan 2024 12:39:19 -0000
Message-ID: <170437195952.20586.170280400916365045@5338d5abeb45>
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

Series: drm/i915: Fix HPD handling during driver init/shutdown
URL   : https://patchwork.freedesktop.org/series/128186/
State : warning

== Summary ==

Error: dim checkpatch failed
5e045c45aae9 drm/i915: Init DRM connector polled field early
2f88f00692d8 drm/i915: Keep the connector polled state disabled after storm
-:21: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#21: 
  .                                         queue_delayed_work(hotplug.hotplug_work)

total: 0 errors, 1 warnings, 0 checks, 25 lines checked
45f4a8779319 drm/i915: Move audio deinit after disabling polling
beb04ba18991 drm/i915: Disable intel HPD poll after DRM poll init/enable
db36640355e8 drm/i915: Suspend the framebuffer console during driver shutdown
f716cd1db96e drm/i915: Suspend the framebuffer console earlier during system suspend
5663169309e3 drm/i915: Prevent modesets during driver init/shutdown
7da38d9822c9 drm/i915: Disable hotplug detection works during driver init/shutdown
767ba741c78c drm/i915: Disable hotplug detection handlers during driver init/shutdown
ba74b7e084d4 drm/i915: Add intel_digital_port lock/unlock hooks
5a0e0efdf920 drm/i915: Filter out glitches on HPD lines during hotplug detection
28774cb6e7ac drm/i915/dp: Abort AUX on disconnected native DP ports
-:9: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#9: 
commit a972cd3f0eb5 ("drm/i915/tc: Abort DP AUX transfer on a disconnected TC port")

total: 0 errors, 1 warnings, 0 checks, 18 lines checked


