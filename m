Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 554EC1265CA
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 16:31:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F4346E348;
	Thu, 19 Dec 2019 15:31:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 971406E343;
 Thu, 19 Dec 2019 15:31:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8E3E2A0093;
 Thu, 19 Dec 2019 15:31:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Abdiel Janulgue" <abdiel.janulgue@linux.intel.com>
Date: Thu, 19 Dec 2019 15:31:28 -0000
Message-ID: <157676948855.26201.1895753889174102288@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191219112122.4892-1-abdiel.janulgue@linux.intel.com>
In-Reply-To: <20191219112122.4892-1-abdiel.janulgue@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915=3A_allow_prefaultin?=
 =?utf-8?q?g_discontiguous_objects_in_remap=5Fio=5Fmapping=28=29?=
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

$ dim checkpatch origin/drm-tip
7e731455025c drm/i915: allow prefaulting discontiguous objects in remap_io_mapping()
85dcfc745d2b drm/i915: Add lmem fault handler
-:136: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#136: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:728:
+       .fault = vm_fault_iomem,$

-:137: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#137: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:729:
+       .open = vm_open,$

-:138: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#138: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:730:
+       .close = vm_close,$

total: 0 errors, 3 warnings, 0 checks, 142 lines checked
decca5029fdd drm/i915/selftests: Add selftest for memory region PF handling

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
