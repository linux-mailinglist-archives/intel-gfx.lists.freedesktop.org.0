Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2FC522133
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 18:28:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A68FF10FA43;
	Tue, 10 May 2022 16:28:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1EE5910FA43;
 Tue, 10 May 2022 16:28:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 17354A73C9;
 Tue, 10 May 2022 16:28:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Tue, 10 May 2022 16:28:08 -0000
Message-ID: <165220008807.26422.10040135518799647851@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220510140447.80200-1-andi.shyti@linux.intel.com>
In-Reply-To: <20220510140447.80200-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_Fix_use_of_static_in_macro_mismatch?=
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

Series: drm/i915/gt: Fix use of static in macro mismatch
URL   : https://patchwork.freedesktop.org/series/103806/
State : warning

== Summary ==

Error: dim checkpatch failed
443b7d161fd5 drm/i915/gt: Fix use of static in macro mismatch
-:27: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#27: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:460:
+	static struct device_attribute dev_attr_gt_##_name = __ATTR(gt_##_name, _mode, _show, _store); \

-:28: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#28: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:461:
+	static struct device_attribute dev_attr_rps_##_name = __ATTR(rps_##_name, _mode, _show, _store)

-:49: CHECK:CAMELCASE: Avoid CamelCase: <RPn_freq_mhz>
#49: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:474:
+INTEL_GT_RPS_SYSFS_ATTR_RO(RPn_freq_mhz);

total: 0 errors, 2 warnings, 1 checks, 33 lines checked


