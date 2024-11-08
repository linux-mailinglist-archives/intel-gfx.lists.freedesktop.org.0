Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1419C22B2
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 18:08:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2DF210EA1F;
	Fri,  8 Nov 2024 17:08:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAAC410EA25;
 Fri,  8 Nov 2024 17:08:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Potentia?=
 =?utf-8?q?l_boot_oops_fix_and_some_cleanups_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 08 Nov 2024 17:08:05 -0000
Message-ID: <173108568575.1428661.7219914308144521822@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: Potential boot oops fix and some cleanups (rev3)
URL   : https://patchwork.freedesktop.org/series/141059/
State : warning

== Summary ==

Error: dim checkpatch failed
34f5e0cf0a95 drm/i915: Grab intel_display from the encoder to avoid potential oopsies
d1f1df718e56 drm/i915/crt: Split long line
28f43e26d9cb drm/i915/crt: Drop the unused ADPA_DPMS bit definitions
68d9a66beaf6 drm/i915/crt: Use REG_BIT() & co.
72560a0466ed drm/i915/crt: Clean up ADPA_HOTPLUG_BITS definitions
1c4fe7b8ea0e drm/i915/crt: Extract intel_crt_regs.h
-:28: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#28: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 127 lines checked
f74f63e90387 drm/i915/crt: s/pipe_config/crtc_state/
bf577be71adb drm/i915/crt: Drop pointless drm_device variables
efff6b90fb02 drm/i915/crt: Rename some variables
a97847a570bb drm/i915/crt: Nuke unused crt->connector


