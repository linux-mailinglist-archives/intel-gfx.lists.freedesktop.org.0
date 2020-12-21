Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E00F72DFB57
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Dec 2020 12:05:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 156656E0D6;
	Mon, 21 Dec 2020 11:05:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 523E3892EE;
 Mon, 21 Dec 2020 11:05:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 54475A8169;
 Mon, 21 Dec 2020 11:05:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
Date: Mon, 21 Dec 2020 11:05:14 -0000
Message-ID: <160854871434.420.2006249009756494702@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201221102923.616120-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20201221102923.616120-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv8=2C1/2=5D_drm/i915/display=3A_Sup?=
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

Series: series starting with [v8,1/2] drm/i915/display: Support PSR Multiple Transcoders
URL   : https://patchwork.freedesktop.org/series/85136/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b5d83e737ee4 drm/i915/display: Support PSR Multiple Transcoders
-:1712: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_dp' - possible side-effects?
#1712: FILE: drivers/gpu/drm/i915/display/intel_psr.h:21:
+#define CAN_PSR(intel_dp) (HAS_PSR(dp_to_i915(intel_dp)) && intel_dp->psr.sink_support)

total: 0 errors, 0 warnings, 1 checks, 1737 lines checked
43bb135ca11c drm/i915/display: Support Multiple Transcoders' PSR status on debugfs


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
