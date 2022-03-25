Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0904E7410
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 14:19:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 486BE10E8E4;
	Fri, 25 Mar 2022 13:19:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 30D7B10E8E4;
 Fri, 25 Mar 2022 13:19:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2DC32A0099;
 Fri, 25 Mar 2022 13:19:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 25 Mar 2022 13:19:52 -0000
Message-ID: <164821439215.24040.12964762674016065235@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1648210803.git.jani.nikula@intel.com>
In-Reply-To: <cover.1648210803.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_constify_EDID_parsing?=
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

Series: drm/edid: constify EDID parsing
URL   : https://patchwork.freedesktop.org/series/101787/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c7362ef166c6 drm/edid: don't modify EDID while parsing
4d7e2d1d7ed8 drm/edid: pass a timing pointer to is_display_descriptor()
a720ca2b81fe drm/edid: use struct detailed_timing member access in is_rb()
1c90ada3dd1d drm/edid: use struct detailed_timing member access in gtf2 functions
-:55: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#55: FILE: drivers/gpu/drm/drm_edid.c:2457:
+	BUILD_BUG_ON(offsetof(typeof(*timing), data.other_data.data.range.formula.gtf2.hfreq_start_khz) != 12);

total: 0 errors, 1 warnings, 0 checks, 98 lines checked
047632ecfcb0 drm/edid: constify struct detailed_timing in lower level parsing
520891b2ea1e drm/edid: constify struct detailed_timing in parsing callbacks
0699bb9a3bd8 drm/edid: constify struct edid passed to detailed blocks
8962d0ea725c drm/edid: constify struct edid passed around in callbacks and closure
f4c384d459bc drm/edid: add more general struct edid constness in the interfaces


