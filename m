Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9271F650F
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 11:56:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64606E8CE;
	Thu, 11 Jun 2020 09:56:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 659436E8CD;
 Thu, 11 Jun 2020 09:56:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F872A00C7;
 Thu, 11 Jun 2020 09:56:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 11 Jun 2020 09:56:50 -0000
Message-ID: <159186941038.22715.323425954490373433@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200611080140.30228-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200611080140.30228-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_drm/i915/gt=3A_Move_hsw_GT_workarounds?=
 =?utf-8?q?_from_init=5Fclock=5Fgating_to_workarounds_=28rev2=29?=
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

Series: series starting with drm/i915/gt: Move hsw GT workarounds from init_clock_gating to workarounds (rev2)
URL   : https://patchwork.freedesktop.org/series/78214/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a9a19ef20e69 drm/i915/gt: Move hsw GT workarounds from init_clock_gating to workarounds
961e1996e0a8 drm/i915/gt: Move ivb GT workarounds from init_clock_gating to workarounds
-:25: ERROR:SPACING: space required after that ',' (ctx:VxV)
#25: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:721:
+	wa_masked_en(wal,_3D_CHICKEN3, _3D_CHICKEN_SF_DISABLE_OBJEND_CULL);
 	                ^

total: 1 errors, 0 warnings, 0 checks, 153 lines checked
68e40d9f98c3 drm/i915/gt: Move vlv GT workarounds from init_clock_gating to workarounds
-:25: ERROR:SPACING: space required after that ',' (ctx:VxV)
#25: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:781:
+	wa_masked_en(wal,_3D_CHICKEN3, _3D_CHICKEN_SF_DISABLE_OBJEND_CULL);
 	                ^

total: 1 errors, 0 warnings, 0 checks, 161 lines checked
79f6193f4ff2 drm/i915/gt: Move snb GT workarounds from init_clock_gating to workarounds
3dde510c6178 drm/i915/gt: Move ilk GT workarounds from init_clock_gating to workarounds
-:24: ERROR:SPACING: space required after that ',' (ctx:VxV)
#24: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:720:
+	wa_masked_en(wal,_3D_CHICKEN2, _3D_CHICKEN2_WM_READ_PIPELINED);
 	                ^

total: 1 errors, 0 warnings, 0 checks, 42 lines checked
66c89c81b814 drm/i915/gt: Move gen4 GT workarounds from init_clock_gating to workarounds
-:47: ERROR:SPACING: space required after that ',' (ctx:VxV)
#47: FILE: drivers/gpu/drm/i915/gt/intel_workarounds.c:739:
+	wa_masked_en(wal,_3D_CHICKEN2, _3D_CHICKEN2_WM_READ_PIPELINED);
 	                ^

total: 1 errors, 0 warnings, 0 checks, 76 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
