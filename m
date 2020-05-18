Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DBD1D7C11
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 16:59:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C7B26E41D;
	Mon, 18 May 2020 14:59:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AC9656E41D;
 Mon, 18 May 2020 14:59:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A612EA47E1;
 Mon, 18 May 2020 14:59:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 18 May 2020 14:59:37 -0000
Message-ID: <158981397766.31687.17013588657391401746@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200518122303.28083-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200518122303.28083-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_Revert_=22drm/i915=3A_Clean_?=
 =?utf-8?q?up_dbuf_debugs_during_=2Eatomic=5Fcheck=28=29=22?=
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

Series: series starting with [1/4] Revert "drm/i915: Clean up dbuf debugs during .atomic_check()"
URL   : https://patchwork.freedesktop.org/series/77358/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4de007ca5a0f Revert "drm/i915: Clean up dbuf debugs during .atomic_check()"
3358451aea83 Revert "drm/i915: Move the dbuf pre/post plane update"
77a3d0811ea1 Revert "drm/i915: Nuke skl_ddb_get_hw_state()"
0ede4a7df848 Revert "drm/i915: Introduce proper dbuf state"
-:174: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#174: FILE: drivers/gpu/drm/i915/display/intel_display.c:18260:
+	dev_priv->active_pipes = cdclk_state->active_pipes = active_pipes;

total: 0 errors, 0 warnings, 1 checks, 506 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
