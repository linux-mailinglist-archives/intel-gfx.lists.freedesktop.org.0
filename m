Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 392DC394AA1
	for <lists+intel-gfx@lfdr.de>; Sat, 29 May 2021 07:43:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0CD56E512;
	Sat, 29 May 2021 05:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 77CB16E512;
 Sat, 29 May 2021 05:43:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 614BDAADD4;
 Sat, 29 May 2021 05:43:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "William Tseng" <william.tseng@intel.com>
Date: Sat, 29 May 2021 05:43:46 -0000
Message-ID: <162226702638.20274.7125667457796206798@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210529050255.17405-1-william.tseng@intel.com>
In-Reply-To: <20210529050255.17405-1-william.tseng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Reading_DPRX_caps_in_LTTPR_transparent_mode_aft?=
 =?utf-8?q?er_LTTPR_detection_=28rev2=29?=
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

Series: drm/i915: Reading DPRX caps in LTTPR transparent mode after LTTPR detection (rev2)
URL   : https://patchwork.freedesktop.org/series/90752/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4716d8575853 drm/i915: Reading DPRX caps in LTTPR transparent mode after LTTPR detection
-:98: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#98: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:196:
+		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
+		"Switching to LTTPR non-transparent LT mode failed, fall-back to transparent mode\n");

total: 0 errors, 0 warnings, 1 checks, 68 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
