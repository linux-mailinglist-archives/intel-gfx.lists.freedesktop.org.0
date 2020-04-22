Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C99481B4C92
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 20:21:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FC3F6E3EE;
	Wed, 22 Apr 2020 18:21:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5223C6E3EE;
 Wed, 22 Apr 2020 18:21:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4AE3FA47E8;
 Wed, 22 Apr 2020 18:21:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 22 Apr 2020 18:21:04 -0000
Message-ID: <158757966427.5179.1116221653289110777@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200422161917.17389-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200422161917.17389-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/6=5D_drm/i915=3A_Fix_skl+_no?=
 =?utf-8?q?n-scaled_pfit_modes?=
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

Series: series starting with [v3,1/6] drm/i915: Fix skl+ non-scaled pfit modes
URL   : https://patchwork.freedesktop.org/series/76346/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9faaa25c52d4 drm/i915: Fix skl+ non-scaled pfit modes
a744ba6aef89 drm/i915: Flatten a bunch of the pfit functions
f3c77a86b851 drm/i915: Use drm_rect to store the pfit window pos/size
7d771ff21ac6 drm/i915: s/pipe_config/crtc_state/ in pfit functions
0c5d1dc7d1cb drm/i915: Pass connector state to pfit calculations
-:167: WARNING:PREFER_FALLTHROUGH: Prefer 'fallthrough;' over fallthrough comment
#167: FILE: drivers/gpu/drm/i915/display/intel_panel.c:233:
+		/* fall through */

total: 0 errors, 1 warnings, 0 checks, 179 lines checked
422ff0ac891b drm/i915: Have pfit calculations return an error code

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
