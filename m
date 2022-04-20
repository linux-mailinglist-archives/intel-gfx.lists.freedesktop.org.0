Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FA35081D5
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 09:14:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3C3010E2F7;
	Wed, 20 Apr 2022 07:14:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A007910E2F7;
 Wed, 20 Apr 2022 07:14:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D499AAA91;
 Wed, 20 Apr 2022 07:14:04 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashutosh Dixit" <ashutosh.dixit@intel.com>
Date: Wed, 20 Apr 2022 07:14:04 -0000
Message-ID: <165043884464.24583.7478084751403224098@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1650435571.git.ashutosh.dixit@intel.com>
In-Reply-To: <cover.1650435571.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Media_freq_factor_and_per-gt_enhancements/fixes?=
 =?utf-8?q?_=28rev2=29?=
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

Series: drm/i915: Media freq factor and per-gt enhancements/fixes (rev2)
URL   : https://patchwork.freedesktop.org/series/102665/
State : warning

== Summary ==

Error: dim checkpatch failed
2993d1f47961 drm/i915: Introduce has_media_ratio_mode
bce07f6f7b01 drm/i915/gt: Add media freq factor to per-gt sysfs
98c49b8e21f0 drm/i915/pcode: Extend pcode functions for multiple gt's
f8fab08799a7 drm/i915/gt: Convert callers to user per-gt pcode functions
6bd0711a3b41 drm/i915/pcode: Add a couple of pcode helpers
c05fb6b721be drm/i915/gt: Add media RP0/RPn to per-gt sysfs
-:80: CHECK:CAMELCASE: Avoid CamelCase: <media_RPn_freq_mhz>
#80: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:719:
+static DEVICE_ATTR_RO(media_RPn_freq_mhz);

-:86: CHECK:CAMELCASE: Avoid CamelCase: <dev_attr_media_RPn_freq_mhz>
#86: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:725:
+	&dev_attr_media_RPn_freq_mhz.attr,

total: 0 errors, 0 warnings, 2 checks, 87 lines checked
5baf8f9db7ad drm/i915/gt: Fix memory leaks in per-gt sysfs
02c0e57e2478 drm/i915/gt: Expose per-gt RPS defaults in sysfs
acef7774effa drm/i915/gt: Expose default value for media_freq_factor in per-gt sysfs


