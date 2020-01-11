Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B74E1383F8
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Jan 2020 00:18:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C339E6E49C;
	Sat, 11 Jan 2020 23:18:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A99BD6E49C;
 Sat, 11 Jan 2020 23:18:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0487A0118;
 Sat, 11 Jan 2020 23:18:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Sat, 11 Jan 2020 23:18:45 -0000
Message-ID: <157878472563.16373.13560531312427541734@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200111231114.59208-1-michal.wajdeczko@intel.com>
In-Reply-To: <20200111231114.59208-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Misc_GuC_CT_improvements?=
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

Series: Misc GuC CT improvements
URL   : https://patchwork.freedesktop.org/series/71927/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fcb6ad56e500 drm/i915/guc: Simpler CT message size calculation
3de4fca5641b drm/i915/guc: Introduce CT_ERROR
e65db0f0de6a drm/i915/guc: Update CTB helpers to use CT_ERROR
-:82: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#82: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:251:
+	err = ct_register_buffer(ct, base + PAGE_SIZE/4 * CTB_RECV,
 	                                             ^

-:90: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#90: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:256:
+	err = ct_register_buffer(ct, base + PAGE_SIZE/4 * CTB_SEND,
 	                                             ^

total: 0 errors, 0 warnings, 2 checks, 98 lines checked
78fc81508a2a drm/i915/guc: Use correct name for last CT fence

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
