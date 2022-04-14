Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D129500312
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 02:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF8CB10E537;
	Thu, 14 Apr 2022 00:38:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 81F0D10E537;
 Thu, 14 Apr 2022 00:38:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 81B78A0096;
 Thu, 14 Apr 2022 00:38:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashutosh Dixit" <ashutosh.dixit@intel.com>
Date: Thu, 14 Apr 2022 00:38:06 -0000
Message-ID: <164989668650.1346.14581138508556013854@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
In-Reply-To: <cover.1649871650.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Media_freq_factor_and_per-gt_enhancements/fixes?=
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

Series: drm/i915: Media freq factor and per-gt enhancements/fixes
URL   : https://patchwork.freedesktop.org/series/102665/
State : warning

== Summary ==

Error: dim checkpatch failed
92ac366cc868 drm/i915: Introduce has_media_ratio_mode
4b1b7f68f558 drm/i915/gt: Add media freq factor to per-gt sysfs
5d10e2533d54 drm/i915/pcode: Extend pcode functions for multiple gt's
dd2f0dcfad44 drm/i915/pcode: Add a couple of pcode helpers
ea0f5cdbabd5 drm/i915/gt: Add media RP0/RPn to per-gt sysfs
-:79: CHECK:CAMELCASE: Avoid CamelCase: <media_RPn_freq_mhz>
#79: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:719:
+static DEVICE_ATTR_RO(media_RPn_freq_mhz);

-:85: CHECK:CAMELCASE: Avoid CamelCase: <dev_attr_media_RPn_freq_mhz>
#85: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:725:
+	&dev_attr_media_RPn_freq_mhz.attr,

total: 0 errors, 0 warnings, 2 checks, 87 lines checked
7b57716e2c8b drm/i915/gt: Fix memory leaks in per-gt sysfs
128e5eedd045 drm/i915/gt: Expose per-gt RPS defaults in sysfs
687d915927bf drm/i915/gt: Expose default value for media_freq_factor in per-gt sysfs


