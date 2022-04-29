Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0D15155C7
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 22:37:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B8C510E7B8;
	Fri, 29 Apr 2022 20:37:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 032CE10E77F;
 Fri, 29 Apr 2022 20:37:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 019C8A7DFB;
 Fri, 29 Apr 2022 20:37:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashutosh Dixit" <ashutosh.dixit@intel.com>
Date: Fri, 29 Apr 2022 20:37:54 -0000
Message-ID: <165126467497.1649.5153958441082143736@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1651261886.git.ashutosh.dixit@intel.com>
In-Reply-To: <cover.1651261886.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Media_freq_factor_and_per-gt_enhancements/fixes?=
 =?utf-8?q?_=28rev4=29?=
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

Series: drm/i915: Media freq factor and per-gt enhancements/fixes (rev4)
URL   : https://patchwork.freedesktop.org/series/102665/
State : warning

== Summary ==

Error: dim checkpatch failed
720f593ecbb4 drm/i915: Introduce has_media_ratio_mode
3c55d72952c7 drm/i915/gt: Add media freq factor to per-gt sysfs
7d95ec03bc5c drm/i915/pcode: Extend pcode functions for multiple gt's
d4d085d5329c drm/i915/pcode: Add a couple of pcode helpers
87ee92d4c079 drm/i915/gt: Add media RP0/RPn to per-gt sysfs
-:83: CHECK:CAMELCASE: Avoid CamelCase: <media_RPn_freq_mhz>
#83: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:719:
+static DEVICE_ATTR_RO(media_RPn_freq_mhz);

-:89: CHECK:CAMELCASE: Avoid CamelCase: <dev_attr_media_RPn_freq_mhz>
#89: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:725:
+	&dev_attr_media_RPn_freq_mhz.attr,

total: 0 errors, 0 warnings, 2 checks, 80 lines checked
8ab6df0311f7 drm/i915/gt: Fix memory leaks in per-gt sysfs
e7bbfef93b31 drm/i915/gt: Expose per-gt RPS defaults in sysfs
ffca9fefe5d0 drm/i915/gt: Expose default value for media_freq_factor in per-gt sysfs


