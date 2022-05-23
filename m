Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5AF53154F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 19:35:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEC3E10FE39;
	Mon, 23 May 2022 17:35:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5818510FE39;
 Mon, 23 May 2022 17:35:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4EFC7A77A5;
 Mon, 23 May 2022 17:35:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashutosh Dixit" <ashutosh.dixit@intel.com>
Date: Mon, 23 May 2022 17:35:15 -0000
Message-ID: <165332731528.9282.6138005351600697242@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1653321034.git.ashutosh.dixit@intel.com>
In-Reply-To: <cover.1653321034.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Media_freq_factor_and_per-gt_enhancements/fixes?=
 =?utf-8?q?_=28rev7=29?=
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

Series: drm/i915: Media freq factor and per-gt enhancements/fixes (rev7)
URL   : https://patchwork.freedesktop.org/series/102665/
State : warning

== Summary ==

Error: dim checkpatch failed
9e468bd7db66 drm/i915/gt: Add media freq factor to per-gt sysfs
10b8fc18842f drm/i915/pcode: Init pcode on different gt's
e0f712fb7eab drm/i915/gt: Add media RP0/RPn to per-gt sysfs
-:83: CHECK:CAMELCASE: Avoid CamelCase: <media_RPn_freq_mhz>
#83: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:720:
+static DEVICE_ATTR_RO(media_RPn_freq_mhz);

-:89: CHECK:CAMELCASE: Avoid CamelCase: <dev_attr_media_RPn_freq_mhz>
#89: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:726:
+	&dev_attr_media_RPn_freq_mhz.attr,

total: 0 errors, 0 warnings, 2 checks, 80 lines checked
fc74c8104e52 drm/i915/gt: Fix memory leaks in per-gt sysfs


