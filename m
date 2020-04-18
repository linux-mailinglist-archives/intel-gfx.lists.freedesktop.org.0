Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E92C01AE8D8
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Apr 2020 02:01:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 382BD890B8;
	Sat, 18 Apr 2020 00:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3172D6EC50;
 Sat, 18 Apr 2020 00:01:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2A7CBA47DA;
 Sat, 18 Apr 2020 00:01:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sat, 18 Apr 2020 00:01:19 -0000
Message-ID: <158716807914.422.10677084243505582769@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417152734.464-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200417152734.464-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_Flatten_intel=5F?=
 =?utf-8?b?ZHBfY2hlY2tfbXN0X3N0YXR1cygpIGEgYml0?=
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

Series: series starting with [1/2] drm/i915: Flatten intel_dp_check_mst_status() a bit
URL   : https://patchwork.freedesktop.org/series/76105/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d7fc81461f35 drm/i915: Flatten intel_dp_check_mst_status() a bit
-:117: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#117: FILE: drivers/gpu/drm/i915/display/intel_dp.c:5669:
+						 DP_SINK_COUNT_ESI+1,
 						                  ^

total: 0 errors, 0 warnings, 1 checks, 101 lines checked
bdd0a32afab1 drm/i915: Push MST link retraining to the hotplug work
-:219: WARNING:LONG_LINE: line over 100 characters
#219: FILE: drivers/gpu/drm/i915/display/intel_dp.c:5830:
+							      intel_crtc_pch_transcoder(crtc), false);

-:241: WARNING:LONG_LINE: line over 100 characters
#241: FILE: drivers/gpu/drm/i915/display/intel_dp.c:5846:
+							      intel_crtc_pch_transcoder(crtc), true);

total: 0 errors, 2 warnings, 0 checks, 230 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
