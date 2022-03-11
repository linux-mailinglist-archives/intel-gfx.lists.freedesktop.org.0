Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEE24D6A03
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Mar 2022 00:05:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81E5610E8A6;
	Fri, 11 Mar 2022 23:05:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5DDF610E8C6;
 Fri, 11 Mar 2022 23:05:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5E066A0BCB;
 Fri, 11 Mar 2022 23:05:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 11 Mar 2022 23:05:13 -0000
Message-ID: <164703991338.23984.17643860756470975283@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220311225459.385515-1-matthew.d.roper@intel.com>
In-Reply-To: <20220311225459.385515-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/2=5D_drm/i915/sseu=3A_Don=27?=
 =?utf-8?q?t_overallocate_subslice_storage?=
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

Series: series starting with [v2,1/2] drm/i915/sseu: Don't overallocate subslice storage
URL   : https://patchwork.freedesktop.org/series/101305/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0bb362f30a14 drm/i915/sseu: Don't overallocate subslice storage
-:73: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'a' - possible side-effects?
#73: FILE: drivers/gpu/drm/i915/gt/intel_sseu.h:38:
+#define SSEU_MAX(a, b)			((a) > (b) ? (a) : (b))

-:73: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#73: FILE: drivers/gpu/drm/i915/gt/intel_sseu.h:38:
+#define SSEU_MAX(a, b)			((a) > (b) ? (a) : (b))

total: 0 errors, 0 warnings, 2 checks, 69 lines checked
1ccf9d7178f9 drm/i915/xehp: Update topology dumps for Xe_HP


