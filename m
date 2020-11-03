Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 199062A5030
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 20:34:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12EC66E5BD;
	Tue,  3 Nov 2020 19:34:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C0D176E5BD;
 Tue,  3 Nov 2020 19:34:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B82C6A47E9;
 Tue,  3 Nov 2020 19:34:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Tue, 03 Nov 2020 19:34:30 -0000
Message-ID: <160443207072.25741.17879168649675329469@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201103191838.192386-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20201103191838.192386-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/2=5D_drm/i915/display=3A_Sup?=
 =?utf-8?q?port_PSR_Multiple_Transcoders?=
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

Series: series starting with [v2,1/2] drm/i915/display: Support PSR Multiple Transcoders
URL   : https://patchwork.freedesktop.org/series/83446/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0a126bd8ea31 drm/i915/display: Support PSR Multiple Transcoders
-:1565: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#1565: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1704:
+		if (encoder->type == INTEL_OUTPUT_EDP && CAN_PSR(intel_dp)) {
+

-:1760: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_dp' - possible side-effects?
#1760: FILE: drivers/gpu/drm/i915/display/intel_psr.h:21:
+#define CAN_PSR(intel_dp) (HAS_PSR(dp_to_i915(intel_dp)) && intel_dp->psr.sink_support)

total: 0 errors, 0 warnings, 2 checks, 1800 lines checked
546b794ed5a7 drm/i915/display: Support Multiple Transcoders' PSR status on debugfs


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
