Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2458CFE69
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 12:53:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B0FE10E219;
	Mon, 27 May 2024 10:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60F4110E219;
 Mon, 27 May 2024 10:53:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Link_off_between_fra?=
 =?utf-8?q?mes_for_edp_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 27 May 2024 10:53:15 -0000
Message-ID: <171680719539.2211934.1188005273734905882@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240527082636.1519057-1-animesh.manna@intel.com>
In-Reply-To: <20240527082636.1519057-1-animesh.manna@intel.com>
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

Series: Link off between frames for edp (rev6)
URL   : https://patchwork.freedesktop.org/series/130650/
State : warning

== Summary ==

Error: dim checkpatch failed
c37a38167321 drm/i915/alpm: Move alpm parameters from intel_psr
-:83: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#83: FILE: drivers/gpu/drm/i915/display/intel_psr.c:958:
+		tmp = map[intel_dp->alpm_parameters.fast_wake_lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES];

total: 0 errors, 1 warnings, 0 checks, 143 lines checked
b3fb72804be7 drm/i915/alpm: Move alpm related code to a new file
-:27: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#27: 
new file mode 100644

-:233: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#233: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:202:
+bool intel_alpm_compute_params(struct intel_dp *intel_dp,
+				      struct intel_crtc_state *crtc_state)

-:255: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#255: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:224:
+	io_wake_lines = intel_usecs_to_scanlines(

-:257: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#257: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:226:
+	fast_wake_lines = intel_usecs_to_scanlines(

-:268: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#268: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:237:
+		io_wake_lines = fast_wake_lines = max_wake_lines;

-:301: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#301: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:270:
+			       PORT_ALPM_CTL_SILENCE_PERIOD(

-:307: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#307: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:276:
+			       PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(

-:309: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#309: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:278:
+			       PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(

-:311: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#311: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:280:
+			       PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(

total: 0 errors, 1 warnings, 8 checks, 640 lines checked
9da2bc7c44f2 drm/display: Add missing aux less alpm wake related bits
aaf6f54e1a5a drm/i915/alpm: Add compute config for lobf
5e8ef93b5e10 drm/i915/alpm: Enable lobf from source in ALPM_CTL
00a74f5e74cf drm/i915/alpm: Add debugfs for LOBF


