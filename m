Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB6656AC4B
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 22:00:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D38D210F15F;
	Thu,  7 Jul 2022 20:00:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 80D2910EF52;
 Thu,  7 Jul 2022 20:00:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 67AE8A00A0;
 Thu,  7 Jul 2022 20:00:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>
Date: Thu, 07 Jul 2022 20:00:03 -0000
Message-ID: <165722400339.2213.13511996284227000748@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220707193002.2859653-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20220707193002.2859653-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_i915/perf=3A_Replace_DRM=5FD?=
 =?utf-8?q?EBUG_with_driver_specific_drm=5Fdbg_call?=
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

Series: series starting with [1/2] i915/perf: Replace DRM_DEBUG with driver specific drm_dbg call
URL   : https://patchwork.freedesktop.org/series/106062/
State : warning

== Summary ==

Error: dim checkpatch failed
937235fcf86e i915/perf: Replace DRM_DEBUG with driver specific drm_dbg call
-:345: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#345: FILE: drivers/gpu/drm/i915/i915_perf.c:4163:
 	if (!oa_config) {
+		drm_dbg(&perf->i915->drm,

-:475: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email name mismatch: 'From: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>' != 'Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 426 lines checked
3a77186c82ad i915/perf: Disable OA sseu config param for gfx12.50+
-:37: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email name mismatch: 'From: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>' != 'Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 13 lines checked


