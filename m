Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 297521265D3
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 16:33:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93A466E343;
	Thu, 19 Dec 2019 15:33:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8DC746E343;
 Thu, 19 Dec 2019 15:33:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8530DA0093;
 Thu, 19 Dec 2019 15:33:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Abdiel Janulgue" <abdiel.janulgue@linux.intel.com>
Date: Thu, 19 Dec 2019 15:33:09 -0000
Message-ID: <157676958954.26201.13581102164532676486@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191219112122.4892-1-abdiel.janulgue@linux.intel.com>
In-Reply-To: <20191219112122.4892-1-abdiel.janulgue@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?series_starting_with_=5B1/3=5D_drm/i915=3A_allow_prefaulting_di?=
 =?utf-8?q?scontiguous_objects_in_remap=5Fio=5Fmapping=28=29?=
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

Series: series starting with [1/3] drm/i915: allow prefaulting discontiguous objects in remap_io_mapping()
URL   : https://patchwork.freedesktop.org/series/71163/
State : warning

== Summary ==

$ dim sparse origin/drm-tip
Sparse version: v0.6.0
Commit: drm/i915: allow prefaulting discontiguous objects in remap_io_mapping()
+drivers/gpu/drm/i915/i915_mm.c:71:32: warning: Using plain integer as NULL pointer

Commit: drm/i915: Add lmem fault handler
-
+drivers/gpu/drm/i915/gem/i915_gem_mman.c:279:12: warning: symbol 'vm_fault_iomem' was not declared. Should it be static?

Commit: drm/i915/selftests: Add selftest for memory region PF handling
+drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:759:32:    expected void const *s
+drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:759:32:    got unsigned int [noderef] [usertype] <asn:2> *[assigned] map
+drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:759:32: warning: incorrect type in argument 1 (different address spaces)

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
