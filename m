Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5567554F8B2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 15:58:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6D91112172;
	Fri, 17 Jun 2022 13:58:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B45E4112172;
 Fri, 17 Jun 2022 13:58:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A9567AADD7;
 Fri, 17 Jun 2022 13:58:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 17 Jun 2022 13:58:08 -0000
Message-ID: <165547428863.20134.16047902792192008801@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220617094817.3466584-1-jani.nikula@intel.com>
In-Reply-To: <20220617094817.3466584-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/display=3A_split_ou?=
 =?utf-8?q?t_hw_state_readout_and_sanitize?=
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

Series: series starting with [1/2] drm/i915/display: split out hw state readout and sanitize
URL   : https://patchwork.freedesktop.org/series/105281/
State : warning

== Summary ==

Error: dim checkpatch failed
4bf73e0fb102 drm/i915/display: split out hw state readout and sanitize
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:289: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#289: FILE: drivers/gpu/drm/i915/display/intel_display.c:7532:
+			intel_modeset_get_crtc_power_domains(new_crtc_state, &put_domains[crtc->pipe]);

-:928: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#928: 
new file mode 100644

-:1410: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#1410: FILE: drivers/gpu/drm/i915/display/intel_modeset_setup.c:478:
+								 intel_crtc_bigjoiner_slave_pipes(crtc_state)) {

-:1413: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1413: FILE: drivers/gpu/drm/i915/display/intel_modeset_setup.c:481:
+					slave_crtc_state = to_intel_crtc_state(slave_crtc->base.state);

total: 0 errors, 4 warnings, 0 checks, 1627 lines checked
918eac730201 drm/i915/display: convert modeset setup to struct drm_i915_private *i915


