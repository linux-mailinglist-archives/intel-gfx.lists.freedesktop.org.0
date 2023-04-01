Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDDF6D2DB2
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Apr 2023 04:26:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6C2310F376;
	Sat,  1 Apr 2023 02:26:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5DE6310E23E;
 Sat,  1 Apr 2023 02:26:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0446A7DFF;
 Sat,  1 Apr 2023 02:26:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Date: Sat, 01 Apr 2023 02:26:13 -0000
Message-ID: <168031597382.8634.15543550340801643980@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230401020049.3843873-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20230401020049.3843873-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915/guc/slpc=3A_Provide_sysfs_for_efficient_freq?=
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

Series: i915/guc/slpc: Provide sysfs for efficient freq
URL   : https://patchwork.freedesktop.org/series/115975/
State : warning

== Summary ==

Error: dim checkpatch failed
e3bff4466926 i915/guc/slpc: Provide sysfs for efficient freq
-:26: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#26: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:455:
+static ssize_t slpc_ignore_eff_freq_show(struct kobject *kobj,
+				     struct kobj_attribute *attr,

-:42: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#42: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:471:
+	uint32_t val;

total: 0 errors, 0 warnings, 2 checks, 152 lines checked


