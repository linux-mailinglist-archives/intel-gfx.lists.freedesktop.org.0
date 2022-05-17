Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2371452AB17
	for <lists+intel-gfx@lfdr.de>; Tue, 17 May 2022 20:44:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FF8410E429;
	Tue, 17 May 2022 18:44:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1DDB910E429;
 Tue, 17 May 2022 18:44:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16A73AADD8;
 Tue, 17 May 2022 18:44:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 17 May 2022 18:44:08 -0000
Message-ID: <165281304806.31031.18136629128727953540@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220517032005.2694737-1-matthew.d.roper@intel.com>
In-Reply-To: <20220517032005.2694737-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_SSEU_handling_updates_=28rev4=29?=
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

Series: i915: SSEU handling updates (rev4)
URL   : https://patchwork.freedesktop.org/series/103244/
State : warning

== Summary ==

Error: dim checkpatch failed
887126b08a62 drm/i915/xehp: Use separate sseu init function
913cf54798d2 drm/i915/xehp: Drop GETPARAM lookups of I915_PARAM_[SUB]SLICE_MASK
2ee6de43eff7 drm/i915/sseu: Simplify gen11+ SSEU handling
616556780612 drm/i915/sseu: Don't try to store EU mask internally in UAPI format
982793037c15 drm/i915/sseu: Disassociate internal subslice mask representation from uapi
-:481: ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
#481: FILE: drivers/gpu/drm/i915/gt/intel_sseu.c:846:
+void intel_sseu_print_ss_info(const char* type,

-:565: WARNING:NEW_TYPEDEFS: do not add new typedefs
#565: FILE: drivers/gpu/drm/i915/gt/intel_sseu.h:59:
+typedef union {

-:661: ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
#661: FILE: drivers/gpu/drm/i915/gt/intel_sseu.h:174:
+void intel_sseu_print_ss_info(const char* type,

total: 2 errors, 1 warnings, 0 checks, 779 lines checked
a1f8cbcba917 drm/i915/pvc: Add SSEU changes


