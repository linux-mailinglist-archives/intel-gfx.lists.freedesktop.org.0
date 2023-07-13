Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3F1752A48
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 20:25:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 185C810E771;
	Thu, 13 Jul 2023 18:25:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 64AF610E765;
 Thu, 13 Jul 2023 18:25:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 27974AADD5;
 Thu, 13 Jul 2023 18:25:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Thu, 13 Jul 2023 18:25:34 -0000
Message-ID: <168927273413.14982.11085480776136481363@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230713150142.12700-1-nirmoy.das@intel.com>
In-Reply-To: <20230713150142.12700-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_=5B1/2=5D_drm/i915/gt=3A_Do_not_use_stolen?=
 =?utf-8?q?_on_MTL?=
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

Series: series starting with [1/2] drm/i915/gt: Do not use stolen on MTL
URL   : https://patchwork.freedesktop.org/series/120683/
State : warning

== Summary ==

Error: dim sparse failed
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
+./arch/x86/include/asm/bitops.h:117:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:148:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:150:9: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:154:26: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:156:16: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:156:9: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:174:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:176:9: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:180:35: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:182:16: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:182:9: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:186:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:188:9: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:192:35: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:195:16: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:195:9: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:237:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:239:9: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:66:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:92:1: warning: unreplaced symbol 'return'
+drivers/gpu/drm/i915/gt/intel_gt.h:112:16: warning: trying to copy expression type 31
+./drivers/gpu/drm/i915/intel_uncore.h:346:1: warning: trying to copy expression type 31
+./drivers/gpu/drm/i915/intel_uncore.h:351:1: warning: trying to copy expression type 31
+./include/asm-generic/bitops/generic-non-atomic.h:100:17: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:100:23: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:100:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:105:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:107:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:108:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:109:9: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:111:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:111:14: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:111:20: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:112:17: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:112:23: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:112:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:121:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:128:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:166:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:168:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:169:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:170:9: warning: unreplaced symbol 'val'
+./include/asm-generic/bitops/generic-non-atomic.h:172:19: warning: unreplaced symbol 'val'
+./include/asm-generic/bitops/generic-non-atomic.h:172:25: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:172:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:28:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:30:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:31:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:33:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:33:16: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:37:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:39:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:40:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:42:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:42:16: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:55:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:57:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:58:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:60:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:60:15: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:73:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:75:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:76:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:77:9: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:79:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:79:14: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:79:20: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:80:17: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:80:23: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:80:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:93:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:95:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:96:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:97:9: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:99:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:99:14: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:99:21: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/instrumented-non-atomic.h:100:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:112:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:115:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:127:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:130:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:139:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:142:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:26:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:42:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:58:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:97:1: warning: unreplaced symbol 'return'


