Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD7D122BC9
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 13:38:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60E346E9CA;
	Tue, 17 Dec 2019 12:38:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 90F4D6E9CA;
 Tue, 17 Dec 2019 12:38:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8C76FA00C7;
 Tue, 17 Dec 2019 12:38:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Abdiel Janulgue" <abdiel.janulgue@linux.intel.com>
Date: Tue, 17 Dec 2019 12:38:08 -0000
Message-ID: <157658628857.21846.9638874018945225205@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191217115750.11938-1-abdiel.janulgue@linux.intel.com>
In-Reply-To: <20191217115750.11938-1-abdiel.janulgue@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_=5B1/2=5D_drm/i915=3A_Add_lmem_fault_handl?=
 =?utf-8?q?er?=
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

Series: series starting with [1/2] drm/i915: Add lmem fault handler
URL   : https://patchwork.freedesktop.org/series/71051/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: drm/i915: Add lmem fault handler
-
+drivers/gpu/drm/i915/gem/i915_gem_mman.c:279:12: warning: symbol 'vm_fault_iomem' was not declared. Should it be static?

Commit: drm/i915/selftests: Add selftest for memory region PF handling
+drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:760:32:    expected void const *s
+drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:760:32:    got unsigned int [noderef] [usertype] <asn:2> *[assigned] map
+drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:760:32: warning: incorrect type in argument 1 (different address spaces)

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
