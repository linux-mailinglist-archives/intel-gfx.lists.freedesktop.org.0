Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 324DB8A4FFB
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 14:58:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9064110E571;
	Mon, 15 Apr 2024 12:58:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD06C10E315;
 Mon, 15 Apr 2024 12:58:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Link_off_between_fra?=
 =?utf-8?q?mes_for_edp_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Apr 2024 12:58:13 -0000
Message-ID: <171318589383.1404431.6794346145993258579@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240412155243.2891996-1-animesh.manna@intel.com>
In-Reply-To: <20240412155243.2891996-1-animesh.manna@intel.com>
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

Series: Link off between frames for edp (rev2)
URL   : https://patchwork.freedesktop.org/series/130650/
State : warning

== Summary ==

Error: dim checkpatch failed
3237e68ff67b drm/i915/alpm: Move alpm parameters from intel_psr
aaf1cb340d64 drm/i915/alpm: Move alpm related code to a new file
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:24: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#24: 
new file mode 100644

-:251: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#251: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:223:
+	io_wake_lines = intel_usecs_to_scanlines(

-:253: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#253: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:225:
+	fast_wake_lines = intel_usecs_to_scanlines(

-:264: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#264: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:236:
+		io_wake_lines = fast_wake_lines = max_wake_lines;

-:296: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#296: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:268:
+			       PORT_ALPM_CTL_SILENCE_PERIOD(

-:301: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#301: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:273:
+			       PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(

-:303: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#303: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:275:
+			       PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(

-:305: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#305: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:277:
+			       PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(

-:309: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#309: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:281:
+			   ALPM_CTL_EXTENDED_FAST_WAKE_TIME(intel_dp->alpm_parameters.fast_wake_lines);

total: 0 errors, 2 warnings, 7 checks, 627 lines checked
86d04a0536b2 drm/display: Add missing aux less alpm wake related bits
afa8b9ada2d6 drm/i915/alpm: Add compute config for lobf
88a647045907 drm/i915/alpm: Enable lobf from source in ALPM_CTL
2130607c083a drm/i915/alpm: Add debugfs for LOBF


