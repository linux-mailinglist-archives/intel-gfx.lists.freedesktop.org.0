Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA78D9E190F
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 11:19:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E40510E1C5;
	Tue,  3 Dec 2024 10:19:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1402510E9DC;
 Tue,  3 Dec 2024 10:19:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcgZm9yIGNvbXBpbGVyLmg6IHJl?=
 =?utf-8?b?ZmFjdG9yIF9faXNfY29uc3RleHByKCkgaW50byBpc19jb25zdHssX3RydWUsX2Zh?=
 =?utf-8?b?bHNlfSgp?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vincent Mailhol via B4 Relay"
 <devnull+mailhol.vincent.wanadoo.fr@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 03 Dec 2024 10:19:34 -0000
Message-ID: <173322117407.1968577.8230174613912894876@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241203-is_constexpr-refactor-v1-0-4e4cbaecc216@wanadoo.fr>
In-Reply-To: <20241203-is_constexpr-refactor-v1-0-4e4cbaecc216@wanadoo.fr>
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

Series: compiler.h: refactor __is_constexpr() into is_const{,_true,_false}()
URL   : https://patchwork.freedesktop.org/series/142040/
State : warning

== Summary ==

Error: dim checkpatch failed
65c5a73cbdd2 compiler.h: add statically_false()
25d8e6973c58 compiler.h: add is_const() as a replacement of __is_constexpr()
-:75: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#75: FILE: include/linux/compiler.h:349:
+	_Generic(0 ? (void *)(long)(x) : (char *)0, char *: 1, void *: 0)
 	                                                 ^

-:75: ERROR:SPACING: spaces required around that ':' (ctx:OxW)
#75: FILE: include/linux/compiler.h:349:
+	_Generic(0 ? (void *)(long)(x) : (char *)0, char *: 1, void *: 0)
 	                                                  ^

-:75: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#75: FILE: include/linux/compiler.h:349:
+	_Generic(0 ? (void *)(long)(x) : (char *)0, char *: 1, void *: 0)
 	                                                            ^

-:75: ERROR:SPACING: spaces required around that ':' (ctx:OxW)
#75: FILE: include/linux/compiler.h:349:
+	_Generic(0 ? (void *)(long)(x) : (char *)0, char *: 1, void *: 0)
 	                                                             ^

-:75: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#75: FILE: include/linux/compiler.h:349:
+	_Generic(0 ? (void *)(long)(x) : (char *)0, char *: 1, void *: 0)

total: 2 errors, 0 warnings, 3 checks, 47 lines checked
9181394c886a compiler.h: add is_const_true() and is_const_false()
-:61: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#61: 
[2] commit 3c8ba0d61d04 ("kernel.h: Retain constant expression output for max()/min()")

total: 0 errors, 1 warnings, 0 checks, 29 lines checked
8b2cdc22fd9b linux/bits.h: simplify GENMASK_INPUT_CHECK() by using is_const_true()
859590955aab minmax: simplify __clamp_once() by using is_const_false()
eae7d9d255a9 fortify: replace __is_constexpr() by is_const() in strlen()
2895a98c2a4b overflow: replace __is_constexpr() by is_const()
f9520db87ce7 drm/i915/reg: replace __is_const_expr() by is_const_true() or is_const()
dc6257bbdf30 coresight: etm4x: replace __is_const_expr() by is_const()
-:12: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#12: 
[1] commit 4d45bc82df66 ("coresight: etm4x: avoid build failure with unrolled loops")

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
166991fa5613 compiler.h: remove __is_constexpr()


