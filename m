Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F875513FDD
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 02:57:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7390610F600;
	Fri, 29 Apr 2022 00:57:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D82F510F5FE;
 Fri, 29 Apr 2022 00:57:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D52DFA7DFC;
 Fri, 29 Apr 2022 00:57:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashutosh Dixit" <ashutosh.dixit@intel.com>
Date: Fri, 29 Apr 2022 00:57:02 -0000
Message-ID: <165119382284.1654.1941932411462474256@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1651192357.git.ashutosh.dixit@intel.com>
In-Reply-To: <cover.1651192357.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Media_freq_factor_and_per-gt_enhancements/fixes?=
 =?utf-8?q?_=28rev3=29?=
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

Series: drm/i915: Media freq factor and per-gt enhancements/fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/102665/
State : warning

== Summary ==

Error: dim checkpatch failed
81e412ac8d3c drm/i915: Introduce has_media_ratio_mode
3ae6e0c36677 drm/i915/gt: Add media freq factor to per-gt sysfs
cb59e532ad2f drm/i915/pcode: Extend pcode functions for multiple gt's
ffa939c1df2e drm/i915/gt: Convert callers to use per-gt pcode functions
eadafb081977 drm/i915/pcode: Add a couple of pcode helpers
143d0c2649d3 drm/i915/gt: Add media RP0/RPn to per-gt sysfs
-:82: CHECK:CAMELCASE: Avoid CamelCase: <media_RPn_freq_mhz>
#82: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:719:
+static DEVICE_ATTR_RO(media_RPn_freq_mhz);

-:88: CHECK:CAMELCASE: Avoid CamelCase: <dev_attr_media_RPn_freq_mhz>
#88: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:725:
+	&dev_attr_media_RPn_freq_mhz.attr,

total: 0 errors, 0 warnings, 2 checks, 80 lines checked
00e534919070 drm/i915/gt: Fix memory leaks in per-gt sysfs
d6f0646e5bbe drm/i915/gt: Expose per-gt RPS defaults in sysfs
2fcdeb9a4e8f drm/i915/gt: Expose default value for media_freq_factor in per-gt sysfs


