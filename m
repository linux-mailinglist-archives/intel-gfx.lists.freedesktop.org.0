Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7FB87360F
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 13:07:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0C221130F4;
	Wed,  6 Mar 2024 12:07:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56C7C1130EF;
 Wed,  6 Mar 2024 12:07:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Use_drm?=
 =?utf-8?q?=5Fprinter_more_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 06 Mar 2024 12:07:47 -0000
Message-ID: <170972686735.561237.6706893435871322373@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: Use drm_printer more (rev6)
URL   : https://patchwork.freedesktop.org/series/129956/
State : warning

== Summary ==

Error: dim checkpatch failed
d386f64d74bf drm/i915: Indicate which pipe failed the fastset check overall
9418dec47256 drm/i915: Include CRTC info in infoframe mismatch prints
610acdb962f9 drm/i915: Include CRTC info in VSC SDP mismatch prints
036c89d2b780 drm/i915: Convert pipe_config_infoframe_mismatch() to drm_printer
73e731ad3544 drm/i915: Convert pipe_config_buffer_mismatch() to drm_printer
61bb8b39c48b drm/i915: Convert intel_dpll_dump_hw_state() to drm_printer
0b185c49af95 drm/i915: Use drm_printer more extensively in intel_crtc_state_dump()
a87b95456efb drm/i915: Convert the remaining state dump to drm_printer
-:128: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#128: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:139:
+		   plane_state->hw.rotation, plane_state->scaler_id, plane_state->hw.scaling_filter);

total: 0 errors, 1 warnings, 0 checks, 236 lines checked
ff1c73a385d5 drm/i915: Skip intel_crtc_state_dump() if debugs aren't enabled
6afad346c142 drm/i915: Relocate pipe_config_mismatch()
034e8573b06b drm/i915: Reuse pipe_config_mismatch() more
e3bcb0019463 drm/i915: Create the printer only once in intel_pipe_config_compare()


