Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E95BA52F65A
	for <lists+intel-gfx@lfdr.de>; Sat, 21 May 2022 01:46:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE67A11280D;
	Fri, 20 May 2022 23:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 05DB511280D;
 Fri, 20 May 2022 23:46:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE946A882E;
 Fri, 20 May 2022 23:46:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 20 May 2022 23:46:23 -0000
Message-ID: <165309038394.19817.14151487081724154178@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220520230408.3787166-1-matthew.d.roper@intel.com>
In-Reply-To: <20220520230408.3787166-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_SSEU_handling_updates?=
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

Series: i915: SSEU handling updates
URL   : https://patchwork.freedesktop.org/series/104244/
State : warning

== Summary ==

Error: dim checkpatch failed
715c882f826e drm/i915/xehp: Use separate sseu init function
194ba3678abd drm/i915/xehp: Drop GETPARAM lookups of I915_PARAM_[SUB]SLICE_MASK
c1bbe76c5724 drm/i915/sseu: Simplify gen11+ SSEU handling
cb927114d301 drm/i915/sseu: Don't try to store EU mask internally in UAPI format
a0263df1c5fd drm/i915/sseu: Disassociate internal subslice mask representation from uapi
-:514: ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
#514: FILE: drivers/gpu/drm/i915/gt/intel_sseu.c:846:
+void intel_sseu_print_ss_info(const char* type,

-:602: WARNING:NEW_TYPEDEFS: do not add new typedefs
#602: FILE: drivers/gpu/drm/i915/gt/intel_sseu.h:59:
+typedef union {

-:710: ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
#710: FILE: drivers/gpu/drm/i915/gt/intel_sseu.h:176:
+void intel_sseu_print_ss_info(const char* type,

total: 2 errors, 1 warnings, 0 checks, 837 lines checked
2e230636389f drm/i915/pvc: Add SSEU changes


