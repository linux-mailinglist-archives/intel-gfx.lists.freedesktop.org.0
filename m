Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B56D35A4F61
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 16:36:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40C1B10F32C;
	Mon, 29 Aug 2022 14:36:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B6E0410F32C;
 Mon, 29 Aug 2022 14:36:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AE515AADD2;
 Mon, 29 Aug 2022 14:36:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 29 Aug 2022 14:36:13 -0000
Message-ID: <166178377368.11949.1362066467361124732@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220826213501.31490-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220826213501.31490-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_Range_descriptor_stuff_=28rev2=29?=
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

Series: drm/edid: Range descriptor stuff (rev2)
URL   : https://patchwork.freedesktop.org/series/107824/
State : warning

== Summary ==

Error: dim checkpatch failed
8832b89186e8 drm/edid: Handle EDID 1.4 range descriptor h/vfreq offsets
c2a4eb80d064 drm/edid: Clarify why we only accept the "range limits only" descriptor
92673ded77d7 drm/edid: s/monitor_rage/vrr_range/
d47c52e9df8f drm/edid: Define more flags
-:23: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#23: FILE: drivers/gpu/drm/drm_edid.c:2987:
+	    descriptor->data.other_data.data.range.formula.cvt.flags & DRM_EDID_CVT_FLAGS_REDUCED_BLANKING)

total: 0 errors, 1 warnings, 0 checks, 90 lines checked
d31b088f72c7 drm/edid: Only parse VRR range for continuous frequency displays
44fa3e3e3bc4 drm/edid: Extract drm_gtf2_mode()
7ef21d39de4e drm/edid: Use GTF2 for inferred modes
e3004178b3e6 drm/edid: Use the correct formula for standard timings
dc47d7350b3d drm/edid: Unconfuse preferred timing stuff a bit
282c8dbe500f drm/edid: Make version checks less convoluted
d26fd258ed68 drm/i915: Infer vrefresh range for eDP if the EDID omits it


