Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 124A75BFA0A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 11:04:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F4C710E8DA;
	Wed, 21 Sep 2022 09:03:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2DF6710E8DA;
 Wed, 21 Sep 2022 09:03:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EA048A0099;
 Wed, 21 Sep 2022 09:03:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: fei.yang@intel.com
Date: Wed, 21 Sep 2022 09:03:54 -0000
Message-ID: <166375103495.11599.7729966858256645377@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220921074901.3651252-1-fei.yang@intel.com>
In-Reply-To: <20220921074901.3651252-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915/guc=3A_Define_CTB_b?=
 =?utf-8?q?ased_TLB_invalidation_routines?=
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

Series: series starting with [1/4] drm/i915/guc: Define CTB based TLB invalidation routines
URL   : https://patchwork.freedesktop.org/series/108818/
State : warning

== Summary ==

Error: dim checkpatch failed
16cae73d9bcf drm/i915/guc: Define CTB based TLB invalidation routines
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
v8: split from "drm/i915/xehpsdv: Define GuC Based TLB invalidation routines"

-:162: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#162: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.c:929:
+		drm_err(&guc_to_gt(guc)->i915->drm,
+			 "tlb invalidation response timed out for seqno %u\n", seqno);

-:326: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'guc' - possible side-effects?
#326: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:480:
+#define INTEL_GUC_SUPPORTS_TLB_INVALIDATION(guc) \
+	((intel_guc_ct_enabled(&(guc)->ct)) && \
+	 (intel_guc_submission_is_used(guc)) && \
+	 (GRAPHICS_VER(guc_to_gt((guc))->i915) >= 12))

total: 0 errors, 1 warnings, 2 checks, 407 lines checked
c0c9221f611f drm/i915/xehpsdv: Define GuC Based full TLB invalidation routine
-:12: WARNING:BAD_SIGN_OFF: Non-standard signature: 'Singed-off-by:' - perhaps 'Signed-off-by:'?
#12: 
Singed-off-by: Fei Yang <fei.yang@intel.com>

total: 0 errors, 1 warnings, 0 checks, 41 lines checked
51b831d8101d drm/i915: Add support for GuC tlb invalidation
f984547c7ae1 drm/i915/guc: enable GuC GGTT invalidation from the start


