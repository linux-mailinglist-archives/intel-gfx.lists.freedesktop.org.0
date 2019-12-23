Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C331297AE
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 15:47:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D03E6E03F;
	Mon, 23 Dec 2019 14:47:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 42B446E03F;
 Mon, 23 Dec 2019 14:47:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3A7B0A47DB;
 Mon, 23 Dec 2019 14:47:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 23 Dec 2019 14:47:38 -0000
Message-ID: <157711245821.16934.5904751234836763608@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191223131444.20259-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20191223131444.20259-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Enable_second_DBuf_slice_for_ICL_and_TGL_=28rev11=29?=
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

Series: Enable second DBuf slice for ICL and TGL (rev11)
URL   : https://patchwork.freedesktop.org/series/70059/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a1aa6331b13f drm/i915: Remove skl_ddl_allocation struct
d2d900d8860c drm/i915: Move dbuf slice update to proper place
b0f2bab1a82d drm/i915: Manipulate DBuf slices properly
2a5ed9f339c2 drm/i915: Correctly map DBUF slices to pipes
-:365: CHECK:LINE_SPACING: Please don't use multiple blank lines
#365: FILE: drivers/gpu/drm/i915/intel_pm.c:4252:
+
+

-:539: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#539: FILE: drivers/gpu/drm/i915/intel_pm.c:4426:
+static u8 skl_compute_dbuf_slices(const struct intel_crtc_state *crtc_state,
+				   u32 active_pipes)

total: 0 errors, 0 warnings, 2 checks, 492 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
