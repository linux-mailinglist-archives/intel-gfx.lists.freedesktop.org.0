Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3D04C0875
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 03:33:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F69E10E432;
	Wed, 23 Feb 2022 02:33:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D96F610E432;
 Wed, 23 Feb 2022 02:33:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5E00A00A0;
 Wed, 23 Feb 2022 02:33:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael Cheng" <michael.cheng@intel.com>
Date: Wed, 23 Feb 2022 02:33:01 -0000
Message-ID: <164558358185.25286.16251618895982489474@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220222172649.331661-1-michael.cheng@intel.com>
In-Reply-To: <20220222172649.331661-1-michael.cheng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Move_=23define_wbvind=5Fon=5Fall=5Fcpus_=28rev4=29?=
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

Series: Move #define wbvind_on_all_cpus (rev4)
URL   : https://patchwork.freedesktop.org/series/99991/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6e4fd482bfcd drm_cache: Add logic for wbvind_on_all_cpus
-:13: WARNING:BAD_SIGN_OFF: Duplicate signature
#13: 
Reported-by: kernel test robot <lkp@intel.com>

-:14: WARNING:BAD_SIGN_OFF: Duplicate signature
#14: 
Reported-by: kernel test robot <lkp@intel.com>

-:37: WARNING:INCLUDE_LINUX: Use #include <linux/smp.h> instead of <asm/smp.h>
#37: FILE: include/drm/drm_cache.h:37:
+#include <asm/smp.h>

total: 0 errors, 3 warnings, 0 checks, 20 lines checked
919d613ba305 drm/i915/gem: Remove logic for wbinvd_on_all_cpus
3de274fe25b2 drm/i915/: Add drm_cache.h


