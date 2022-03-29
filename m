Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FBC4EA498
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 03:28:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D6AA10E1AF;
	Tue, 29 Mar 2022 01:28:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D263A10E1AF;
 Tue, 29 Mar 2022 01:28:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D02D8A77A5;
 Tue, 29 Mar 2022 01:28:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 29 Mar 2022 01:28:08 -0000
Message-ID: <164851728882.5798.4090840469067425248@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1648477901.git.jani.nikula@intel.com>
In-Reply-To: <cover.1648477901.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_constify_EDID_parsing=2C_with_fixes_=28rev2=29?=
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

Series: drm/edid: constify EDID parsing, with fixes (rev2)
URL   : https://patchwork.freedesktop.org/series/101883/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
90c13404c652 drm/edid: don't modify EDID while parsing
aa07371d6de1 drm/edid: fix reduced blanking support check
80aa0ac82762 drm/edid: pass a timing pointer to is_display_descriptor()
565a5375ecbe drm/edid: pass a timing pointer to is_detailed_timing_descriptor()
d596762603da drm/edid: use struct detailed_timing member access in is_rb()
-:39: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#39: FILE: drivers/gpu/drm/drm_edid.c:2419:
+	BUILD_BUG_ON(offsetof(typeof(*descriptor), data.other_data.data.range.formula.cvt.flags) != 15);

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
45990d6ccbe2 drm/edid: use struct detailed_timing member access in gtf2 functions
-:56: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#56: FILE: drivers/gpu/drm/drm_edid.c:2462:
+	BUILD_BUG_ON(offsetof(typeof(*descriptor), data.other_data.data.range.formula.gtf2.hfreq_start_khz) != 12);

-:58: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#58: FILE: drivers/gpu/drm/drm_edid.c:2464:
+	return descriptor ? descriptor->data.other_data.data.range.formula.gtf2.hfreq_start_khz * 2 : 0;

-:69: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#69: FILE: drivers/gpu/drm/drm_edid.c:2474:
+	BUILD_BUG_ON(offsetof(typeof(*descriptor), data.other_data.data.range.formula.gtf2.c) != 13);

-:86: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#86: FILE: drivers/gpu/drm/drm_edid.c:2486:
+	BUILD_BUG_ON(offsetof(typeof(*descriptor), data.other_data.data.range.formula.gtf2.m) != 14);

-:101: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#101: FILE: drivers/gpu/drm/drm_edid.c:2498:
+	BUILD_BUG_ON(offsetof(typeof(*descriptor), data.other_data.data.range.formula.gtf2.k) != 16);

-:114: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#114: FILE: drivers/gpu/drm/drm_edid.c:2510:
+	BUILD_BUG_ON(offsetof(typeof(*descriptor), data.other_data.data.range.formula.gtf2.j) != 17);

total: 0 errors, 6 warnings, 0 checks, 98 lines checked
ee147272c83e drm/edid: constify struct detailed_timing in lower level parsing
d64fac29e842 drm/edid: constify struct detailed_timing in parsing callbacks
358ccb5139dc drm/edid: constify struct edid passed to detailed blocks
e7f44ba3a375 drm/edid: constify struct edid passed around in callbacks and closure
0019dba7a7a7 drm/edid: add more general struct edid constness in the interfaces
239429f61305 drm/edid: split drm_add_edid_modes() to two


