Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C517A1082D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2025 14:52:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C594C10E134;
	Tue, 14 Jan 2025 13:52:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03C0310E308;
 Tue, 14 Jan 2025 13:52:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_drm/i915/dmc=5Fwl=3A_Tra?=
 =?utf-8?q?ck_pipe_interrupt_registers_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2025 13:52:45 -0000
Message-ID: <173686276500.3609608.5527684064441757718@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250113204306.112266-1-gustavo.sousa@intel.com>
In-Reply-To: <20250113204306.112266-1-gustavo.sousa@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/dmc_wl: Track pipe interrupt registers (rev3)
URL   : https://patchwork.freedesktop.org/series/143104/
State : warning

== Summary ==

Error: dim sparse failed
Sparse version: v0.6.2
Fast mode used, each commit won't be checked separately.
+./arch/x86/include/asm/bitops.h:116:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:116:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:147:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:147:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:149:9: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:149:9: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:153:26: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:153:26: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:155:16: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:155:16: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:155:9: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:155:9: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:173:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:173:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:175:9: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:175:9: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:179:35: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:179:35: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:181:16: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:181:16: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:181:9: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:181:9: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:185:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:185:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:187:9: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:187:9: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:191:35: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:191:35: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:194:16: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:194:16: warning: unreplaced symbol 'oldbit'
+./arch/x86/include/asm/bitops.h:194:9: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:194:9: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:236:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:236:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:238:9: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:238:9: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:243:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:243:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:245:9: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:245:9: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:66:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:66:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:92:1: warning: unreplaced symbol 'return'
+./arch/x86/include/asm/bitops.h:92:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:100:17: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:100:17: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:100:23: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:100:23: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:100:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:100:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:105:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:105:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:107:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:107:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:108:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:108:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:109:9: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:109:9: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:111:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:111:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:111:14: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:111:14: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:111:20: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:111:20: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:112:17: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:112:17: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:112:23: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:112:23: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:112:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:112:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:121:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:121:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:128:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:128:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:137:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:137:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:139:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:139:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:140:23: warning: unreplaced symbol 'break'
+./include/asm-generic/bitops/generic-non-atomic.h:140:23: warning: unreplaced symbol 'break'
+./include/asm-generic/bitops/generic-non-atomic.h:140:23: warning: unreplaced symbol 'continue'
+./include/asm-generic/bitops/generic-non-atomic.h:140:23: warning: unreplaced symbol 'continue'
+./include/asm-generic/bitops/generic-non-atomic.h:140:23: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:140:23: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:140:23: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:140:23: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:140:23: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:140:23: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:140:23: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:140:23: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:140:23: warning: unreplaced symbol '___p1'
+./include/asm-generic/bitops/generic-non-atomic.h:140:23: warning: unreplaced symbol '___p1'
+./include/asm-generic/bitops/generic-non-atomic.h:140:23: warning: unreplaced symbol '___p1'
+./include/asm-generic/bitops/generic-non-atomic.h:140:23: warning: unreplaced symbol '___p1'
+./include/asm-generic/bitops/generic-non-atomic.h:140:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:140:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:166:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:166:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:168:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:168:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:169:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:169:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:170:9: warning: unreplaced symbol 'val'
+./include/asm-generic/bitops/generic-non-atomic.h:170:9: warning: unreplaced symbol 'val'
+./include/asm-generic/bitops/generic-non-atomic.h:172:19: warning: unreplaced symbol 'val'
+./include/asm-generic/bitops/generic-non-atomic.h:172:19: warning: unreplaced symbol 'val'
+./include/asm-generic/bitops/generic-non-atomic.h:172:25: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:172:25: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:172:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:172:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:28:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:28:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:30:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:30:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:31:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:31:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:33:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:33:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:33:16: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:33:16: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:37:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:37:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:39:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:39:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:40:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:40:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:42:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:42:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:42:16: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:42:16: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:55:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:55:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:57:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:57:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:58:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:58:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:60:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:60:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:60:15: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:60:15: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:73:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:73:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:75:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:75:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:76:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:76:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:77:9: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:77:9: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:79:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:79:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:79:14: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:79:14: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:79:20: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:79:20: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:80:17: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:80:17: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:80:23: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:80:23: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:80:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:80:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:93:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:93:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/generic-non-atomic.h:95:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:95:9: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:96:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:96:9: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:97:9: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:97:9: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:99:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:99:10: warning: unreplaced symbol 'p'
+./include/asm-generic/bitops/generic-non-atomic.h:99:14: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:99:14: warning: unreplaced symbol 'old'
+./include/asm-generic/bitops/generic-non-atomic.h:99:21: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/generic-non-atomic.h:99:21: warning: unreplaced symbol 'mask'
+./include/asm-generic/bitops/instrumented-non-atomic.h:100:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:100:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:112:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:112:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:115:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:115:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:127:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:127:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:130:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:130:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:139:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:139:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:142:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:142:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:151:1: warning: too many warnings
+./include/asm-generic/bitops/instrumented-non-atomic.h:151:1: warning: too many warnings
+./include/asm-generic/bitops/instrumented-non-atomic.h:154:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:154:9: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:26:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:26:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:42:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:42:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:58:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:58:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:97:1: warning: unreplaced symbol 'return'
+./include/asm-generic/bitops/instrumented-non-atomic.h:97:1: warning: unreplaced symbol 'return'

/home/kbuild/linux/maintainer-tools/dim: line 2106: echo: write error: Broken pipe


