Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDB23DB12A
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 04:33:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2A986E22B;
	Fri, 30 Jul 2021 02:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7B3166E222;
 Fri, 30 Jul 2021 02:32:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6A77FAA01E;
 Fri, 30 Jul 2021 02:32:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Date: Fri, 30 Jul 2021 02:32:57 -0000
Message-ID: <162761237741.590.10123486342955287921@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210730020107.31415-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20210730020107.31415-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/guc/slpc=3A_Enable_GuC_based_power_management_feat?=
 =?utf-8?q?ures_=28rev3=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/guc/slpc: Enable GuC based power management features (rev3)
URL   : https://patchwork.freedesktop.org/series/93026/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
987807ad0545 drm/i915/guc/slpc: Initial definitions for SLPC
-:77: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#77: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 163 lines checked
3462b10667b7 drm/i915/guc/slpc: Gate Host RPS when SLPC is enabled
8f0084d87343 drm/i915/guc/slpc: Adding SLPC communication interfaces
-:34: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#34: 
new file mode 100644

-:271: CHECK:CAMELCASE: Avoid CamelCase: <GUC_HXG_REQUEST_MSG_n_DATAn>
#271: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h:233:
+#define HOST2GUC_PC_SLPC_REQUEST_MSG_N_EVENT_DATA_N	GUC_HXG_REQUEST_MSG_n_DATAn

total: 0 errors, 1 warnings, 1 checks, 276 lines checked
301af1616f27 drm/i915/guc/slpc: Allocate, initialize and release SLPC
6828f376f921 drm/i915/guc/slpc: Enable SLPC and add related H2G events
21e429061d72 drm/i915/guc/slpc: Remove BUG_ON in guc_submission_disable
5af7bb7f329e drm/i915/guc/slpc: Add methods to set min/max frequency
9a634e03fda4 drm/i915/guc/slpc: Add get max/min freq hooks
7af039df9a62 drm/i915/guc/slpc: Add debugfs for SLPC info
4748e68935eb drm/i915/guc/slpc: Enable ARAT timer interrupt
fb5c6103202c drm/i915/guc/slpc: Cache platform frequency limits
afa82138da4b drm/i915/guc/slpc: Sysfs hooks for SLPC
83f5699ada4c drm/i915/guc/slpc: Add SLPC selftest
-:32: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#32: 
new file mode 100644

-:49: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#49: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:13:
+int live_slpc_clamp_max(void *arg);

total: 0 errors, 2 warnings, 0 checks, 325 lines checked
9392f48d015e drm/i915/guc/rc: Setup and enable GuCRC feature
-:163: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#163: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 234 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
