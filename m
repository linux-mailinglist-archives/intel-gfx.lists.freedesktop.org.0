Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 935F61F0BDE
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Jun 2020 16:20:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDD4C6E127;
	Sun,  7 Jun 2020 14:20:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6619B6E124;
 Sun,  7 Jun 2020 14:20:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5344FA00CC;
 Sun,  7 Jun 2020 14:20:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Sun, 07 Jun 2020 14:20:53 -0000
Message-ID: <159153965331.15986.12871202322506931167@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200607140102.172240-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200607140102.172240-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/psr=3A_Program_default_IO_buffer_Wake_and_Fast_Wak?=
 =?utf-8?q?e_=28rev3=29?=
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

Series: drm/i915/psr: Program default IO buffer Wake and Fast Wake (rev3)
URL   : https://patchwork.freedesktop.org/series/78019/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ffef3ca6c982 drm/i915/psr: Program default IO buffer Wake and Fast Wake
-:89: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'lines' may be better as '(lines)' to avoid precedence issues
#89: FILE: drivers/gpu/drm/i915/i915_reg.h:4526:
+#define   EDP_PSR2_IO_BUFFER_WAKE(lines)	((EDP_PSR2_IO_BUFFER_WAKE_MAX_LINES - lines) << 13)

-:92: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#92: FILE: drivers/gpu/drm/i915/i915_reg.h:4529:
+#define   TGL_EDP_PSR2_IO_BUFFER_WAKE(lines)	((lines - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES) << 13)

-:92: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'lines' may be better as '(lines)' to avoid precedence issues
#92: FILE: drivers/gpu/drm/i915/i915_reg.h:4529:
+#define   TGL_EDP_PSR2_IO_BUFFER_WAKE(lines)	((lines - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES) << 13)

-:95: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'lines' may be better as '(lines)' to avoid precedence issues
#95: FILE: drivers/gpu/drm/i915/i915_reg.h:4532:
+#define   EDP_PSR2_FAST_WAKE(lines)		((EDP_PSR2_FAST_WAKE_MAX_LINES - lines) << 11)

-:98: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'lines' may be better as '(lines)' to avoid precedence issues
#98: FILE: drivers/gpu/drm/i915/i915_reg.h:4535:
+#define   TGL_EDP_PSR2_FAST_WAKE(lines)		((lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES) << 10)

total: 0 errors, 1 warnings, 4 checks, 80 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
