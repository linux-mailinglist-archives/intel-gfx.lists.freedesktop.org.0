Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F9E4E9A11
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 16:47:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3644E10EAF1;
	Mon, 28 Mar 2022 14:47:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AA0D410EAF1;
 Mon, 28 Mar 2022 14:47:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A4F46AAA91;
 Mon, 28 Mar 2022 14:47:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 28 Mar 2022 14:47:23 -0000
Message-ID: <164847884364.2847.15065943806119022667@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1648458971.git.jani.nikula@intel.com>
In-Reply-To: <cover.1648458971.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_constify_EDID_parsing=2C_with_some_fixes?=
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

Series: drm/edid: constify EDID parsing, with some fixes
URL   : https://patchwork.freedesktop.org/series/101862/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6bf277e7683e drm/edid: don't modify EDID while parsing
29064813a1c5 drm/edid: fix reduced blanking support check
c3676edd8bb4 drm/edid: slightly restructure timing and non-timing descriptor structs
-:19: WARNING:BAD_SIGN_OFF: Duplicate signature
#19: 
Reported-by: kernel test robot <lkp@intel.com>

-:20: WARNING:BAD_SIGN_OFF: Duplicate signature
#20: 
Reported-by: kernel test robot <lkp@intel.com>

-:89: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around timing->data.descriptor.data.cvt[i]
#89: FILE: drivers/gpu/drm/drm_edid.c:3190:
+		cvt = &(timing->data.descriptor.data.cvt[i]);

total: 0 errors, 2 warnings, 1 checks, 101 lines checked
a750f4974472 drm/edid: pass a timing pointer to is_display_descriptor()
6162fbd4b286 drm/edid: use struct detailed_timing member access in is_rb()
069531d80950 drm/edid: use struct detailed_data_monitor_range member access in gtf2 functions
d473eb44a5b1 drm/edid: constify struct detailed_timing in lower level parsing
271e3f746308 drm/edid: constify struct detailed_timing in parsing callbacks
faeac16dc413 drm/edid: constify struct edid passed to detailed blocks
f608edfef2f9 drm/edid: constify struct edid passed around in callbacks and closure
d6ab774d4fc6 drm/edid: add more general struct edid constness in the interfaces


