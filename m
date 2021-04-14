Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6932935EB3E
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 05:08:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C610A6E435;
	Wed, 14 Apr 2021 03:08:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C8D1B6E435;
 Wed, 14 Apr 2021 03:08:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BF51AA8835;
 Wed, 14 Apr 2021 03:08:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 14 Apr 2021 03:08:54 -0000
Message-ID: <161836973475.4305.16248267434810613196@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210414022309.30898-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210414022309.30898-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_FBC_cleanups?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: FBC cleanups
URL   : https://patchwork.freedesktop.org/series/89036/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d006a5bb82f9 drm/i915: Add frontbuffer tracking tracepoints
-:58: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#58: FILE: drivers/gpu/drm/i915/i915_trace.h:483:
+	    TP_STRUCT__entry(

-:63: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#63: FILE: drivers/gpu/drm/i915/i915_trace.h:488:
+	    TP_fast_assign(

-:76: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#76: FILE: drivers/gpu/drm/i915/i915_trace.h:501:
+	    TP_STRUCT__entry(

-:81: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#81: FILE: drivers/gpu/drm/i915/i915_trace.h:506:
+	    TP_fast_assign(

total: 0 errors, 0 warnings, 4 checks, 67 lines checked
576bdb61126e drm/i915: Rewrite the FBC tiling check a bit
2f5361a510d8 drm/i915: Extract intel_fbc_update()
9ef16c7d0055 drm/i915: Clear no_fbc_reason on activate
064c4919edc5 drm/i915: Move the "recompress on activate" to a central place
761fdc25c3fe drm/i915: Nuke lots of crap from intel_fbc_state_cache
-:326: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#326: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:888:
+	    (plane_state->view.color_plane[0].y + (drm_rect_height(&plane_state->uapi.src) >> 16)) & 3) {

total: 0 errors, 1 warnings, 0 checks, 615 lines checked
86585b14aee8 drm/i915: No FBC+double wide pipe
b64f68cd1fa2 drm/i915: Pimp the FBC debugfs output


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
