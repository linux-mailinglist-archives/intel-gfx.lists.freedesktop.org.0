Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0E5531D38
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 23:00:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D44F11120B3;
	Mon, 23 May 2022 21:00:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 269F41120AE;
 Mon, 23 May 2022 21:00:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1E6B4AADD4;
 Mon, 23 May 2022 21:00:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Mon, 23 May 2022 21:00:49 -0000
Message-ID: <165333964909.9282.15528988048910777794@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220520230408.3787166-1-matthew.d.roper@intel.com>
In-Reply-To: <20220520230408.3787166-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_SSEU_handling_updates_=28rev2=29?=
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

Series: i915: SSEU handling updates (rev2)
URL   : https://patchwork.freedesktop.org/series/104244/
State : warning

== Summary ==

Error: dim checkpatch failed
65fb3ea005ad drm/i915/xehp: Use separate sseu init function
0299a3bc6a24 drm/i915/xehp: Drop GETPARAM lookups of I915_PARAM_[SUB]SLICE_MASK
07be465e9bf5 drm/i915/sseu: Simplify gen11+ SSEU handling
a779fdef7481 drm/i915/sseu: Don't try to store EU mask internally in UAPI format
6fc4ea291341 drm/i915/sseu: Disassociate internal subslice mask representation from uapi
-:522: ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
#522: FILE: drivers/gpu/drm/i915/gt/intel_sseu.c:846:
+void intel_sseu_print_ss_info(const char* type,

-:610: WARNING:NEW_TYPEDEFS: do not add new typedefs
#610: FILE: drivers/gpu/drm/i915/gt/intel_sseu.h:59:
+typedef union {

-:715: ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
#715: FILE: drivers/gpu/drm/i915/gt/intel_sseu.h:175:
+void intel_sseu_print_ss_info(const char* type,

total: 2 errors, 1 warnings, 0 checks, 834 lines checked
fcd7226e193b drm/i915/pvc: Add SSEU changes


