Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A45533427
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 02:00:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A2A010E29E;
	Wed, 25 May 2022 00:00:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1AA7510E29E;
 Wed, 25 May 2022 00:00:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F3C70A73C7;
 Wed, 25 May 2022 00:00:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Date: Wed, 25 May 2022 00:00:26 -0000
Message-ID: <165343682699.16574.694370023568656209@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1653321034.git.ashutosh.dixit@intel.com>
In-Reply-To: <cover.1653321034.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Media_freq_factor_and_per-gt_enhancements/fixes?=
 =?utf-8?q?_=28rev9=29?=
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

Series: drm/i915: Media freq factor and per-gt enhancements/fixes (rev9)
URL   : https://patchwork.freedesktop.org/series/102665/
State : warning

== Summary ==

Error: dim checkpatch failed
63e0ab0ed664 drm/i915/gt: Add media freq factor to per-gt sysfs
2e706c2fdf7e drm/i915/pcode: Init pcode on different gt's
7fd38d4f289e drm/i915/gt: Add media RP0/RPn to per-gt sysfs
-:83: CHECK:CAMELCASE: Avoid CamelCase: <media_RPn_freq_mhz>
#83: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:720:
+static DEVICE_ATTR_RO(media_RPn_freq_mhz);

-:89: CHECK:CAMELCASE: Avoid CamelCase: <dev_attr_media_RPn_freq_mhz>
#89: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:726:
+	&dev_attr_media_RPn_freq_mhz.attr,

total: 0 errors, 0 warnings, 2 checks, 80 lines checked
e18539ed7c20 drm/i915/gt: Fix memory leaks in per-gt sysfs


