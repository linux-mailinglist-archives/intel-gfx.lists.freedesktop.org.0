Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B909C9B5924
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 02:30:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8172010E3D9;
	Wed, 30 Oct 2024 01:30:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C0E710E3D9;
 Wed, 30 Oct 2024 01:30:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/cdclk=3A_De?=
 =?utf-8?q?clutter_CDCLK_code?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Oct 2024 01:30:34 -0000
Message-ID: <173025183436.1362390.5633095799042788650@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915/cdclk: Declutter CDCLK code
URL   : https://patchwork.freedesktop.org/series/140697/
State : warning

== Summary ==

Error: dim checkpatch failed
692ab31effb0 drm/i915: Introduce HAS_DOUBLE_WIDE()
522cd55cd86a drm/i915/cdclk: Extract intel_cdclk_guardband() and intel_cdclk_ppc()
8949892ee2f3 drm/i915/cdclk: Extract hsw_ips_min_cdclk()
-:16: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#16: 
+ min_cdclk = max(DIV_ROUND_UP(crtc_state->pixel_rate * 100, 95), min_cdclk)

-:75: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#75: FILE: drivers/gpu/drm/i915/display/hsw_ips.h:45:
 }
+static inline int hsw_ips_min_cdclk(const struct intel_crtc_state *crtc_state)

total: 0 errors, 1 warnings, 1 checks, 58 lines checked
e165ed1ea5e7 drm/i915/cdclk: Extract intel_audio_min_cdclk()
fa4557f213c3 drm/i915/cdclk: Factor out has_audio check in intel_audio_min_cdclk()
719bee927307 drm/i915/cdclk: Extract vlv_dsi_min_cdclk()
-:125: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#125: FILE: drivers/gpu/drm/i915/display/vlv_dsi.h:31:
 }
+static inline int vlv_dsi_min_cdclk(const struct intel_crtc_state *crtc_state)

total: 0 errors, 0 warnings, 1 checks, 99 lines checked
1495c1655317 drm/i915/cdclk: Factor out INTEL_OUTPUT_DSI check in vlv_dsi_min_cdclk()
9d86712de002 drm/i915/cdclk: Suck the compression_enable check into intel_vdsc_min_cdclk()
d291d73974ad drm/i915/cdclk: Drop pointles max_t() usage in intel_vdsc_min_cdclk()
d8f04e168c73 drm/i915/cdclk: Relocate intel_vdsc_min_cdclk()
ab0b9c40d96f drm/i915/cdclk: Unify cdclk max() parameter order


