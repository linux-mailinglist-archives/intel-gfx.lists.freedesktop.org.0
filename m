Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E514EAA69
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 11:21:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2E8910E7C2;
	Tue, 29 Mar 2022 09:21:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 697AA10E4D0;
 Tue, 29 Mar 2022 09:21:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 66C5CA0099;
 Tue, 29 Mar 2022 09:21:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 29 Mar 2022 09:21:05 -0000
Message-ID: <164854566539.5797.11910447332134644401@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1648477901.git.jani.nikula@intel.com>
In-Reply-To: <cover.1648477901.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_constify_EDID_parsing=2C_with_fixes_=28rev3=29?=
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

Series: drm/edid: constify EDID parsing, with fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/101883/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
42edbd32ada4 drm/edid: don't modify EDID while parsing
837379bc0347 drm/edid: fix reduced blanking support check
b22f653dbc5e drm/edid: pass a timing pointer to is_display_descriptor()
223c5965ca6f drm/edid: pass a timing pointer to is_detailed_timing_descriptor()
f12efd84c617 drm/edid: use struct detailed_timing member access in is_rb()
-:39: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#39: FILE: drivers/gpu/drm/drm_edid.c:2419:
+	BUILD_BUG_ON(offsetof(typeof(*descriptor), data.other_data.data.range.formula.cvt.flags) != 15);

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
69216f7ba63f drm/edid: use struct detailed_timing member access in gtf2 functions
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
f53280382ddd drm/edid: constify struct detailed_timing in lower level parsing
91ea7f66dc86 drm/edid: constify struct detailed_timing in parsing callbacks
349d51d419f7 drm/edid: constify struct edid passed to detailed blocks
6f5a68ce1560 drm/edid: constify struct edid passed around in callbacks and closure
f3ec750e7bc0 drm/edid: add more general struct edid constness in the interfaces
f6e089502afb drm/edid: split drm_add_edid_modes() to two


