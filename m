Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D904533E3A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 15:50:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66A6310F6ED;
	Wed, 25 May 2022 13:50:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C3FE110F6E4;
 Wed, 25 May 2022 13:50:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BA6E1AA914;
 Wed, 25 May 2022 13:50:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashutosh Dixit" <ashutosh.dixit@intel.com>
Date: Wed, 25 May 2022 13:50:17 -0000
Message-ID: <165348661774.16574.9328865040934415878@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1653484574.git.ashutosh.dixit@intel.com>
In-Reply-To: <cover.1653484574.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Media_freq_factor_and_per-gt_enhancements/fixes?=
 =?utf-8?q?_=28rev10=29?=
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

Series: drm/i915: Media freq factor and per-gt enhancements/fixes (rev10)
URL   : https://patchwork.freedesktop.org/series/102665/
State : warning

== Summary ==

Error: dim checkpatch failed
64b997bebbd8 drm/i915/gt: Add media freq factor to per-gt sysfs
3f974c2ce37c drm/i915/pcode: Init pcode on different gt's
ef9d8107cd4d drm/i915/gt: Add media RP0/RPn to per-gt sysfs
-:83: CHECK:CAMELCASE: Avoid CamelCase: <media_RPn_freq_mhz>
#83: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:720:
+static DEVICE_ATTR_RO(media_RPn_freq_mhz);

-:89: CHECK:CAMELCASE: Avoid CamelCase: <dev_attr_media_RPn_freq_mhz>
#89: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:726:
+	&dev_attr_media_RPn_freq_mhz.attr,

total: 0 errors, 0 warnings, 2 checks, 80 lines checked
b39f303e66a5 drm/i915/gt: Fix memory leaks in per-gt sysfs


