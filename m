Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E9753AA97
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jun 2022 17:59:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BEAC10E835;
	Wed,  1 Jun 2022 15:59:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 188A410E835;
 Wed,  1 Jun 2022 15:59:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0D8DAAADD6;
 Wed,  1 Jun 2022 15:59:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 01 Jun 2022 15:59:34 -0000
Message-ID: <165409917402.17295.3567769238818603932@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220601150725.521468-1-matthew.d.roper@intel.com>
In-Reply-To: <20220601150725.521468-1-matthew.d.roper@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/104611/
State : warning

== Summary ==

Error: dim checkpatch failed
92101c27eef9 drm/i915/xehp: Use separate sseu init function
7489d9903596 drm/i915/xehp: Drop GETPARAM lookups of I915_PARAM_[SUB]SLICE_MASK
7e1560b69810 drm/i915/sseu: Simplify gen11+ SSEU handling
529ade4a9e43 drm/i915/sseu: Don't try to store EU mask internally in UAPI format
7823e3f4a149 drm/i915/sseu: Disassociate internal subslice mask representation from uapi
-:523: ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
#523: FILE: drivers/gpu/drm/i915/gt/intel_sseu.c:844:
+void intel_sseu_print_ss_info(const char* type,

-:612: WARNING:NEW_TYPEDEFS: do not add new typedefs
#612: FILE: drivers/gpu/drm/i915/gt/intel_sseu.h:59:
+typedef union {

-:720: ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
#720: FILE: drivers/gpu/drm/i915/gt/intel_sseu.h:178:
+void intel_sseu_print_ss_info(const char* type,

total: 2 errors, 1 warnings, 0 checks, 830 lines checked
acc8c6a07c85 drm/i915/pvc: Add SSEU changes


