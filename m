Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7ABD279506
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Sep 2020 01:48:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FE876ED81;
	Fri, 25 Sep 2020 23:48:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E7E5D6ED80;
 Fri, 25 Sep 2020 23:48:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE66EA882E;
 Fri, 25 Sep 2020 23:48:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Fri, 25 Sep 2020 23:48:04 -0000
Message-ID: <160107768490.10249.13904463988229220449@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200925232637.1968039-1-John.C.Harrison@Intel.com>
In-Reply-To: <20200925232637.1968039-1-John.C.Harrison@Intel.com>
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
URL   : https://patchwork.freedesktop.org/series/82113/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ea290b73bdf2 drm/i915/guc: Update to use firmware v49.0.1
-:231: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#231: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:167:
+		blob->system_info.generic_gt_sysinfo[GUC_GENERIC_GT_SYSINFO_DOORBELL_COUNT_PER_SQIDI] =

total: 0 errors, 1 warnings, 0 checks, 445 lines checked
03354ab7bdc3 drm/i915/guc: Improved reporting when GuC fails to load
aa99d1545ade drm/i915/guc: Clear pointers on free
81ce9706d11b drm/i915/uc: turn on GuC/HuC auto mode by default


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
