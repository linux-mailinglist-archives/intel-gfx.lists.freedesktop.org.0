Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 113DD4CE155
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Mar 2022 01:04:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5679C10E49D;
	Sat,  5 Mar 2022 00:04:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5ADDD10E49D;
 Sat,  5 Mar 2022 00:04:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 560D3AA01E;
 Sat,  5 Mar 2022 00:04:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Sat, 05 Mar 2022 00:04:40 -0000
Message-ID: <164643868031.21680.14434814514778874358@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220304234639.3231617-1-matthew.d.roper@intel.com>
In-Reply-To: <20220304234639.3231617-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/2=5D_drm/i915/dg2=3A_Add_pre?=
 =?utf-8?q?emption_changes_for_Wa=5F14015141709?=
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

Series: series starting with [v2,1/2] drm/i915/dg2: Add preemption changes for Wa_14015141709
URL   : https://patchwork.freedesktop.org/series/101070/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1d33c55682a1 drm/i915/dg2: Add preemption changes for Wa_14015141709
-:45: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#45: FILE: drivers/gpu/drm/i915/i915_drv.h:1399:
+#define HAS_PERCTX_PREEMPT_CTRL(i915) \
+	((GRAPHICS_VER(i915) >= 9) &&  GRAPHICS_VER_FULL(i915) < IP_VER(12, 55))

total: 0 errors, 0 warnings, 1 checks, 17 lines checked
50c227eb227b drm/i915/dg2: Add debugfs to control global preemption setting


