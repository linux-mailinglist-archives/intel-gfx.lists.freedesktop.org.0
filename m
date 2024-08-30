Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CFA965720
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 07:53:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAFF810E1C6;
	Fri, 30 Aug 2024 05:53:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22C4110E1C6;
 Fri, 30 Aug 2024 05:53:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Consolidation_of_DSS?=
 =?utf-8?q?_Control_in_Separate_Files_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2024 05:53:19 -0000
Message-ID: <172499719913.850449.12517263881594897565@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
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

Series: Consolidation of DSS Control in Separate Files (rev3)
URL   : https://patchwork.freedesktop.org/series/137789/
State : warning

== Summary ==

Error: dim checkpatch failed
6bf8c6eaf847 drm/i915/display: Move all DSS control registers to a new file
-:69: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#69: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 138 lines checked
02f6d1e91507 drm/i915/dss_regs: Use REG_* macros for the DSS ctl bits
228964eab8bd drm/i915/ddi: Move all mso related helpers to a new file
-:162: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#162: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 243 lines checked
afcac792cf13 drm/i915/dss: Move to struct intel_display
e8098456e2e9 drm/i915/icl_dsi: Avoid using intel_dsi in configure_dual_link_mode
571d50551ffd drm/i915/icl_dsi: Use intel_display in configure_dual_link_mode
6dec108dbb53 drm/i915/icl_dsi: Move helpers to configure dsi dual link to intel_dss
7a36a6e71b5b drm/i915/vdsc: Rename helper to check if the pipe supports dsc
ad177384a260 drm/i915/vdsc: Move all dss stuff in dss files
0222afd31dc7 drm/i915/dss: Use struct intel_display in dss dsc helpers
d0c5e1ff9e52 drm/i915/display: Move dss stuff in intel_dss files
-:78: CHECK:SPACING: No space is necessary after a cast
#78: FILE: drivers/gpu/drm/i915/display/intel_dss.c:231:
+	power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);

total: 0 errors, 0 warnings, 1 checks, 110 lines checked
c61eb5319a88 drm/i915/display: Rename static functions that use joiner
c1b51ea89a7b drm/i915/display: Separate out joiner stuff in a new file
-:368: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#368: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 601 lines checked
1ec8af9999cb drm/i915/display: Move intel_crtc_joined_pipe_mask to intel_joiner
-:89: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#89: FILE: drivers/gpu/drm/i915/display/intel_display.c:1681:
+						 intel_joiner_crtc_joined_pipe_mask(new_crtc_state)) {

-:98: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#98: FILE: drivers/gpu/drm/i915/display/intel_display.c:1692:
+						 intel_joiner_crtc_joined_pipe_mask(new_crtc_state)) {

-:107: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#107: FILE: drivers/gpu/drm/i915/display/intel_display.c:1711:
+						 intel_joiner_crtc_joined_pipe_mask(new_crtc_state)) {

-:116: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#116: FILE: drivers/gpu/drm/i915/display/intel_display.c:1747:
+						 intel_joiner_crtc_joined_pipe_mask(new_crtc_state)) {

-:143: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#143: FILE: drivers/gpu/drm/i915/display/intel_display.c:6628:
+						 intel_joiner_crtc_joined_pipe_mask(new_crtc_state)) {

total: 0 errors, 5 warnings, 0 checks, 216 lines checked
5ea336bbd3cc drm/i915/display: Move helpers for primary joiner to intel_joiner
0347e820d60a drm/i915/display: Move intel_crtc_is_joiner_secondary to intel_joiner
2aa81fbdb306 drm/i915/display: Move intel_crtc_joiner_secondary_pipes to intel_joiner
-:35: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#35: FILE: drivers/gpu/drm/i915/display/intel_display.c:5801:
+					 intel_joiner_crtc_joiner_secondary_pipes(primary_crtc_state)) {

-:44: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/display/intel_display.c:5855:
+					 intel_joiner_crtc_joiner_secondary_pipes(primary_crtc_state)) {

-:114: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#114: FILE: drivers/gpu/drm/i915/display/intel_modeset_setup.c:761:
+								 intel_joiner_crtc_joiner_secondary_pipes(crtc_state)) {

total: 0 errors, 3 warnings, 0 checks, 78 lines checked
2fb58cf8eb22 drm/i915/joiner: Use struct intel_display in intel_joiner_enabled_pipes
6ecf7b0ee889 drm/i915/joiner: Use struct intel_display in intel_joiner_supported_pipes


