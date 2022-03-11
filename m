Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9924D5B9D
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 07:31:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A0AF10E03F;
	Fri, 11 Mar 2022 06:31:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A73310E03F;
 Fri, 11 Mar 2022 06:31:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 10DD9A8836;
 Fri, 11 Mar 2022 06:31:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 11 Mar 2022 06:31:25 -0000
Message-ID: <164698028503.23985.1550591140993308095@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220311061543.153611-1-matthew.d.roper@intel.com>
In-Reply-To: <20220311061543.153611-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/sseu=3A_Don=27t_ove?=
 =?utf-8?q?rallocate_subslice_storage?=
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

Series: series starting with [1/2] drm/i915/sseu: Don't overallocate subslice storage
URL   : https://patchwork.freedesktop.org/series/101268/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5c1d208e40c1 drm/i915/sseu: Don't overallocate subslice storage
-:66: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'a' - possible side-effects?
#66: FILE: drivers/gpu/drm/i915/gt/intel_sseu.h:38:
+#define MAX(a, b)			((a) > (b) ? (a) : (b))

-:66: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#66: FILE: drivers/gpu/drm/i915/gt/intel_sseu.h:38:
+#define MAX(a, b)			((a) > (b) ? (a) : (b))

total: 0 errors, 0 warnings, 2 checks, 69 lines checked
27d39ebcdbba drm/i915/xehp: Update topology dumps for Xe_HP
-:83: CHECK:LINE_SPACING: Please don't use multiple blank lines
#83: FILE: drivers/gpu/drm/i915/gt/intel_sseu.c:766:
+
+

total: 0 errors, 0 warnings, 1 checks, 118 lines checked


