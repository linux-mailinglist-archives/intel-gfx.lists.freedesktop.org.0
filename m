Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1422B18879C
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 15:38:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCF506E1F4;
	Tue, 17 Mar 2020 14:37:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 638646E1F4;
 Tue, 17 Mar 2020 14:37:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5CB9CA0099;
 Tue, 17 Mar 2020 14:37:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Tue, 17 Mar 2020 14:37:58 -0000
Message-ID: <158445587835.5177.16508799196906413468@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200317132222.2638719-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200317132222.2638719-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv8=2C1/3=5D_drm/i915/perf=3A_remove_genera?=
 =?utf-8?q?ted_code?=
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

Series: series starting with [v8,1/3] drm/i915/perf: remove generated code
URL   : https://patchwork.freedesktop.org/series/74773/
State : failure

== Summary ==

Applying: drm/i915/perf: remove generated code
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/Makefile
M	drivers/gpu/drm/i915/i915_perf.c
M	drivers/gpu/drm/i915/i915_perf_types.h
A	drivers/gpu/drm/i915/oa/i915_oa_bdw.c
A	drivers/gpu/drm/i915/oa/i915_oa_bdw.h
A	drivers/gpu/drm/i915/oa/i915_oa_bxt.c
A	drivers/gpu/drm/i915/oa/i915_oa_bxt.h
A	drivers/gpu/drm/i915/oa/i915_oa_cflgt2.c
A	drivers/gpu/drm/i915/oa/i915_oa_cflgt2.h
A	drivers/gpu/drm/i915/oa/i915_oa_cflgt3.c
A	drivers/gpu/drm/i915/oa/i915_oa_cflgt3.h
A	drivers/gpu/drm/i915/oa/i915_oa_chv.c
A	drivers/gpu/drm/i915/oa/i915_oa_chv.h
A	drivers/gpu/drm/i915/oa/i915_oa_cnl.c
A	drivers/gpu/drm/i915/oa/i915_oa_cnl.h
A	drivers/gpu/drm/i915/oa/i915_oa_glk.c
A	drivers/gpu/drm/i915/oa/i915_oa_glk.h
A	drivers/gpu/drm/i915/oa/i915_oa_hsw.c
A	drivers/gpu/drm/i915/oa/i915_oa_hsw.h
A	drivers/gpu/drm/i915/oa/i915_oa_icl.c
A	drivers/gpu/drm/i915/oa/i915_oa_icl.h
A	drivers/gpu/drm/i915/oa/i915_oa_kblgt2.c
A	drivers/gpu/drm/i915/oa/i915_oa_kblgt2.h
A	drivers/gpu/drm/i915/oa/i915_oa_kblgt3.c
A	drivers/gpu/drm/i915/oa/i915_oa_kblgt3.h
A	drivers/gpu/drm/i915/oa/i915_oa_sklgt2.c
A	drivers/gpu/drm/i915/oa/i915_oa_sklgt2.h
A	drivers/gpu/drm/i915/oa/i915_oa_sklgt3.c
A	drivers/gpu/drm/i915/oa/i915_oa_sklgt3.h
A	drivers/gpu/drm/i915/oa/i915_oa_sklgt4.c
A	drivers/gpu/drm/i915/oa/i915_oa_sklgt4.h
A	drivers/gpu/drm/i915/oa/i915_oa_tgl.c
A	drivers/gpu/drm/i915/oa/i915_oa_tgl.h
M	drivers/gpu/drm/i915/selftests/i915_perf.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_perf_types.h
Auto-merging drivers/gpu/drm/i915/i915_perf.c
warning: inexact rename detection was skipped due to too many files.
warning: you may want to set your merge.renamelimit variable to at least 67257 and retry the command.
No changes -- Patch already applied.
Applying: drm/i915/perf: remove redundant power configuration register override
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/i915_perf.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_perf.c
No changes -- Patch already applied.
Applying: drm/i915/perf: introduce global sseu pinning
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gem/i915_gem_context.c
M	drivers/gpu/drm/i915/gem/i915_gem_context.h
M	drivers/gpu/drm/i915/gt/intel_sseu.c
M	drivers/gpu/drm/i915/i915_perf.c
M	drivers/gpu/drm/i915/i915_perf_types.h
M	include/uapi/drm/i915_drm.h
Falling back to patching base and 3-way merge...
No changes -- Patch already applied.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
