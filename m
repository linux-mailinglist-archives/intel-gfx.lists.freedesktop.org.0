Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1167528F5
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 18:43:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47D3310E727;
	Thu, 13 Jul 2023 16:43:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8739910E727;
 Thu, 13 Jul 2023 16:43:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7D684AADE4;
 Thu, 13 Jul 2023 16:43:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christian Brauner" <brauner@kernel.org>
Date: Thu, 13 Jul 2023 16:43:52 -0000
Message-ID: <168926663247.14984.6090726864916493580@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230713-vfs-eventfd-signal-v1-0-7fda6c5d212b@kernel.org>
In-Reply-To: <20230713-vfs-eventfd-signal-v1-0-7fda6c5d212b@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_eventfd=3A_simplify_signal_helpers?=
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

Series: eventfd: simplify signal helpers
URL   : https://patchwork.freedesktop.org/series/120668/
State : warning

== Summary ==

Error: dim checkpatch failed
aae8a1d97489 eventfd: simplify eventfd_signal()
-:436: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 32)
#436: FILE: drivers/vhost/vhost.h:251:
 		if ((vq)->error_ctx)                               \
+				eventfd_signal((vq)->error_ctx);\

total: 0 errors, 1 warnings, 0 checks, 439 lines checked
6b3c28be92b7 eventfd: simplify eventfd_signal_mask()
-:89: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#89: FILE: include/linux/eventfd.h:66:
+static inline bool eventfd_signal_mask(struct eventfd_ctx *ctx, unsigned mask)

total: 0 errors, 1 warnings, 0 checks, 79 lines checked


