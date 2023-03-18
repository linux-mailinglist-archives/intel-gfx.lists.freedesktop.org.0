Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 782436BF6CB
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 01:10:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C69B10E449;
	Sat, 18 Mar 2023 00:10:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 779D010E447;
 Sat, 18 Mar 2023 00:10:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E0870AADD6;
 Sat, 18 Mar 2023 00:10:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Sat, 18 Mar 2023 00:10:08 -0000
Message-ID: <167909820888.6193.1075625264523653973@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230317231641.2815418-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20230317231641.2815418-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_OAM_support_for_MTL?=
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

Series: Add OAM support for MTL
URL   : https://patchwork.freedesktop.org/series/115330/
State : warning

== Summary ==

Error: dim checkpatch failed
93434691b915 drm/i915/perf: Drop wakeref on GuC RC error
c40cc05504d3 drm/i915/mtl: Synchronize i915/BIOS on C6 enabling
d194cc9f3edc drm/i915/perf: Validate OA sseu config outside switch
b3b5fcc2d234 drm/i915/perf: Group engines into respective OA groups
5836e0c6edcc drm/i915/perf: Fail modprobe if i915_perf_init fails on OOM
153f0bca1480 drm/i915/perf: Parse 64bit report header formats correctly
cc070b2eb1bf drm/i915/perf: Handle non-power-of-2 reports
79ae4cbb7ada drm/i915/perf: Add engine class instance parameters to perf
2f9c6b4a38c6 drm/i915/perf: Add support for OA media units
ec0848be5f4e drm/i915/perf: Pass i915 object to perf revision helper
08e4b2ac590f drm/i915/perf: Wa_14017512683: Disable OAM if media C6 is enabled in BIOS
-:45: CHECK:LINE_SPACING: Please don't use multiple blank lines
#45: FILE: drivers/gpu/drm/i915/i915_perf.c:4233:
+
+

total: 0 errors, 0 warnings, 1 checks, 65 lines checked


