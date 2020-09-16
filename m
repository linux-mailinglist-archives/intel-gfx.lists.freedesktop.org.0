Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A96726C6E8
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 20:09:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C08A6EA19;
	Wed, 16 Sep 2020 18:09:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F32A66EA19;
 Wed, 16 Sep 2020 18:09:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EB506A7DFB;
 Wed, 16 Sep 2020 18:09:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: John.C.Harrison@Intel.com
Date: Wed, 16 Sep 2020 18:09:49 -0000
Message-ID: <160027978993.19374.14287271369027929353@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
In-Reply-To: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/guc=3A_Update_to_GuC_v49?=
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

Series: drm/i915/guc: Update to GuC v49
URL   : https://patchwork.freedesktop.org/series/81761/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b85247eec0d5 drm/i915/guc: New GuC IDs based on engine class and instance
923da8dfc700 drm/i915/guc: Support logical engine mapping table in ADS
a0177d57bb38 drm/i915/guc: Setup private_data pointer in GuC ADS
5f423aca568b drm/i915/guc: Remove GUC_CTL_CTXINFO init param
64ae9427b7d7 drm/i915/guc: Kill guc_ads.reg_state_buffer
f93beff182b6 drm/i915/guc: ADS changes for GuC v42
bfb299260ee6 drm/i915/guc: Setup doorbells data in ADS
0ee8c9ccbc81 drm/i915/guc: Increased engine classes in ADS
-:40: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:167:
+		blob->system_info.generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_DOORBELL_COUNT_PER_SQIDI] =

total: 0 errors, 1 warnings, 0 checks, 65 lines checked
f61c746b164f drm/i915/guc: Update firmware to v49.0.1
4e7c8483904f drm/i915/guc: Improved reporting when GuC fails to load
44b2ad598451 drm/i915/guc: Clear pointers on free
ea57f0f58d2b drm/i915/uc: turn on GuC/HuC auto mode by default


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
