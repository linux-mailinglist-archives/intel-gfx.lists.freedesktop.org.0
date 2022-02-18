Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4DE4BC2BF
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Feb 2022 00:05:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CCFC10F09B;
	Fri, 18 Feb 2022 23:05:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3DBE010F09A;
 Fri, 18 Feb 2022 23:05:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3B7CEAADD6;
 Fri, 18 Feb 2022 23:05:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael Cheng" <michael.cheng@intel.com>
Date: Fri, 18 Feb 2022 23:05:33 -0000
Message-ID: <164522553322.25459.7933793221116319680@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220217202644.122937-1-michael.cheng@intel.com>
In-Reply-To: <20220217202644.122937-1-michael.cheng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Move_=23define_wbvind=5Fon=5Fall=5Fcpus_=28rev3=29?=
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

Series: Move #define wbvind_on_all_cpus (rev3)
URL   : https://patchwork.freedesktop.org/series/99991/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8c5741d746ef drm_cache: Add logic for wbvind_on_all_cpus
-:34: WARNING:INCLUDE_LINUX: Use #include <linux/smp.h> instead of <asm/smp.h>
#34: FILE: include/drm/drm_cache.h:37:
+#include <asm/smp.h>

total: 0 errors, 1 warnings, 0 checks, 20 lines checked
ca2aac49253c drm/i915/gem: Remove logic for wbinvd_on_all_cpus
b80161c6c202 drm/i915/: Add drm_cache.h


