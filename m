Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 159B65A2A19
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 16:55:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1A0410E96F;
	Fri, 26 Aug 2022 14:55:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 01FB610E483;
 Fri, 26 Aug 2022 14:55:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ED535A0099;
 Fri, 26 Aug 2022 14:55:24 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Fri, 26 Aug 2022 14:55:24 -0000
Message-ID: <166152572493.30042.2454945280166799539@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220826141929.189681-1-andrzej.hajda@intel.com>
In-Reply-To: <20220826141929.189681-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm/i915/display=3A_stop_HPD_workers_before_display_driver_unre?=
 =?utf-8?q?gister_=28rev15=29?=
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

Series: drm/i915/display: stop HPD workers before display driver unregister (rev15)
URL   : https://patchwork.freedesktop.org/series/105557/
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
+./arch/x86/include/asm/bitops.h:223:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:225:9: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:66:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:92:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:104:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:106:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:107:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:108:9: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:110:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:110:14: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:110:20: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:111:17: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:111:23: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:111:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:120:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:127:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:152:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:154:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:155:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:156:9: warning: unreplaced symbol 'val'
+./include/asm-generic/bitops/generic-non-atomic.h:158:19: warning: unreplaced symbol 'val'
+./include/asm-generic/bitops/generic-non-atomic.h:158:25: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:158:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:27:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:29:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:30:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:32:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:32:16: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:36:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:38:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:39:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:41:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:41:16: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:54:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:56:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:57:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:59:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:59:15: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:72:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:74:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:75:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:76:9: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:78:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:78:14: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:78:20: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:79:17: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:79:23: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:79:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:92:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:94:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:95:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:96:9: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:98:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:98:14: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:98:21: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:99:17: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:99:23: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:99:9: warning: unreplaced symbol 'return'
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


