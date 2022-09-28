Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E46A45ED1CA
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 02:22:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BD3A10E1E5;
	Wed, 28 Sep 2022 00:22:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 480AC10E1E5;
 Wed, 28 Sep 2022 00:22:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3E815AADDA;
 Wed, 28 Sep 2022 00:22:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 28 Sep 2022 00:22:20 -0000
Message-ID: <166432454025.595.6389741667447642220@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220927170006.27855-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220927170006.27855-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_Range_descriptor_stuff_=28rev3=29?=
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

Series: drm/edid: Range descriptor stuff (rev3)
URL   : https://patchwork.freedesktop.org/series/107824/
State : warning

== Summary ==

Error: dim checkpatch failed
e6dad0536fe1 drm/edid: Clarify why we only accept the "range limits only" descriptor
7f3b3473acbb drm/edid: Define more flags
-:23: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#23: FILE: drivers/gpu/drm/drm_edid.c:2987:
+	    descriptor->data.other_data.data.range.formula.cvt.flags & DRM_EDID_CVT_FLAGS_REDUCED_BLANKING)

total: 0 errors, 1 warnings, 0 checks, 90 lines checked
ccbd8109e269 drm/edid: Only parse VRR range for continuous frequency displays
97ce7b6ce933 drm/edid: Extract drm_gtf2_mode()
94cc74df93ea drm/edid: Use GTF2 for inferred modes
a034f08fa96d drm/edid: Use the correct formula for standard timings
efa9bdb56ff1 drm/edid: Unconfuse preferred timing stuff a bit
ca1a25312c24 drm/edid: Make version checks less convoluted
50c912f38e65 drm/edid: s/monitor_rage/vrr_range/


