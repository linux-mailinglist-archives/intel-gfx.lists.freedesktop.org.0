Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B09944D705
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Nov 2021 14:12:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ADA86EA39;
	Thu, 11 Nov 2021 13:12:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D9A8C6EA39;
 Thu, 11 Nov 2021 13:12:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 801A3A7E03;
 Thu, 11 Nov 2021 13:12:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Thu, 11 Nov 2021 13:12:01 -0000
Message-ID: <163663632152.5313.6902825616862997691@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211111124208.3550952-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20211111124208.3550952-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/gt=3A_Hold_RPM_wakelock_during_PXP_suspend_=28rev2=29?=
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

Series: drm/i915/gt: Hold RPM wakelock during PXP suspend (rev2)
URL   : https://patchwork.freedesktop.org/series/96658/
State : failure

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/gt/intel_gt_pm.o
drivers/gpu/drm/i915/gt/intel_gt_pm.c: In function ‘intel_gt_suspend_prepare’:
drivers/gpu/drm/i915/gt/intel_gt_pm.c:306:2: error: too few arguments to function ‘intel_pxp_suspend_prepare’
  intel_pxp_suspend_prepare(&gt->pxp);
  ^~~~~~~~~~~~~~~~~~~~~~~~~
In file included from drivers/gpu/drm/i915/gt/intel_gt_pm.c:21:
./drivers/gpu/drm/i915/pxp/intel_pxp_pm.h:17:20: note: declared here
 static inline void intel_pxp_suspend_prepare(struct intel_pxp *pxp, bool runtime)
                    ^~~~~~~~~~~~~~~~~~~~~~~~~
scripts/Makefile.build:277: recipe for target 'drivers/gpu/drm/i915/gt/intel_gt_pm.o' failed
make[4]: *** [drivers/gpu/drm/i915/gt/intel_gt_pm.o] Error 1
scripts/Makefile.build:540: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:540: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:540: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1868: recipe for target 'drivers' failed
make: *** [drivers] Error 2


