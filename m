Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FE37F54DB
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 00:33:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4576A10E6BA;
	Wed, 22 Nov 2023 23:33:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 58A7210E6BA;
 Wed, 22 Nov 2023 23:33:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 534A5A47E9;
 Wed, 22 Nov 2023 23:33:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christian Brauner" <brauner@kernel.org>
Date: Wed, 22 Nov 2023 23:33:30 -0000
Message-ID: <170069601033.4728.8903057649411636085@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231122-vfs-eventfd-signal-v2-0-bd549b14ce0c@kernel.org>
In-Reply-To: <20231122-vfs-eventfd-signal-v2-0-bd549b14ce0c@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_eventfd=3A_simplify_signal_helpers_=28rev2=29?=
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

Series: eventfd: simplify signal helpers (rev2)
URL   : https://patchwork.freedesktop.org/series/120668/
State : warning

== Summary ==

Error: dim checkpatch failed
e92bae5ad94b i915: make inject_virtual_interrupt() void
bfcd18e1f64a eventfd: simplify eventfd_signal()
-:465: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 32)
#465: FILE: drivers/vhost/vhost.h:251:
 		if ((vq)->error_ctx)                               \
+				eventfd_signal((vq)->error_ctx);\

total: 0 errors, 1 warnings, 0 checks, 471 lines checked
f60980b7c2ce eventfd: simplify eventfd_signal_mask()
-:66: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#66: FILE: include/linux/eventfd.h:66:
+static inline int eventfd_signal_mask(struct eventfd_ctx *ctx, unsigned mask)

total: 0 errors, 1 warnings, 0 checks, 60 lines checked
e27025df3d70 eventfd: make eventfd_signal{_mask}() void
-:98: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#98: FILE: include/linux/eventfd.h:60:
+static inline void eventfd_signal_mask(struct eventfd_ctx *ctx, unsigned mask)

total: 0 errors, 1 warnings, 0 checks, 96 lines checked


