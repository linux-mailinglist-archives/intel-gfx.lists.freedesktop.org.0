Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7B58D3FD2
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 22:51:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BDD711A505;
	Wed, 29 May 2024 20:51:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B97111A4E4;
 Wed, 29 May 2024 20:51:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Link_off_between_fra?=
 =?utf-8?q?mes_for_edp_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2024 20:51:17 -0000
Message-ID: <171701587763.2235474.1299241887417071080@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240529200742.1694401-1-animesh.manna@intel.com>
In-Reply-To: <20240529200742.1694401-1-animesh.manna@intel.com>
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

Series: Link off between frames for edp (rev7)
URL   : https://patchwork.freedesktop.org/series/130650/
State : warning

== Summary ==

Error: dim checkpatch failed
1da08a526d4c drm/i915/alpm: Move alpm parameters from intel_psr
-:87: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#87: FILE: drivers/gpu/drm/i915/display/intel_psr.c:951:
+		tmp = map[intel_dp->alpm_parameters.fast_wake_lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES];

total: 0 errors, 1 warnings, 0 checks, 143 lines checked
cc91edb2d0ac drm/i915/alpm: Move alpm related code to a new file
-:31: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#31: 
new file mode 100644

-:237: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#237: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:202:
+bool intel_alpm_compute_params(struct intel_dp *intel_dp,
+				      struct intel_crtc_state *crtc_state)

-:259: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#259: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:224:
+	io_wake_lines = intel_usecs_to_scanlines(

-:261: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#261: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:226:
+	fast_wake_lines = intel_usecs_to_scanlines(

-:272: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#272: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:237:
+		io_wake_lines = fast_wake_lines = max_wake_lines;

-:305: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#305: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:270:
+			       PORT_ALPM_CTL_SILENCE_PERIOD(

-:311: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#311: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:276:
+			       PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(

-:313: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#313: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:278:
+			       PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(

-:315: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#315: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:280:
+			       PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(

total: 0 errors, 1 warnings, 8 checks, 640 lines checked
a40d24d86f50 drm/display: Add missing aux less alpm wake related bits
fd1ed1e64ed3 drm/i915/alpm: Add compute config for lobf
3877ec0e4286 drm/i915/alpm: Enable lobf from source in ALPM_CTL
beeb15ac2286 drm/i915/alpm: Add debugfs for LOBF


