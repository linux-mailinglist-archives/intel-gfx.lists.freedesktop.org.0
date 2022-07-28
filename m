Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C13B583703
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 04:37:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13765C8F64;
	Thu, 28 Jul 2022 02:37:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5AF8E11ADDE;
 Thu, 28 Jul 2022 02:37:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D313A77A5;
 Thu, 28 Jul 2022 02:37:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Thu, 28 Jul 2022 02:37:05 -0000
Message-ID: <165897582524.21235.1252902197151306085@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220728022028.2190627-1-John.C.Harrison@Intel.com>
In-Reply-To: <20220728022028.2190627-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fixes_and_improvements_to_GuC_logging_and_error_capture?=
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

Series: Fixes and improvements to GuC logging and error capture
URL   : https://patchwork.freedesktop.org/series/106789/
State : warning

== Summary ==

Error: dim checkpatch failed
77f455e72ebc drm/i915/guc: Add a helper for log buffer size
f49ac6e6709a drm/i915/guc: Fix capture size warning and bump the size
c88ca5a46e03 drm/i915/guc: Add GuC <-> kernel time stamp translation information
1ea2fd778459 drm/i915/guc: Record CTB info in error logs
eb7e76603266 drm/i915/guc: Use streaming loads to speed up dumping the guc log
01657cac8399 drm/i915/guc: Make GuC log sizes runtime configurable
-:462: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#462: FILE: drivers/gpu/drm/i915/i915_params.c:175:
+i915_param_named(guc_log_size_crash, int, 0400,
+	"GuC firmware logging buffer size for crash dumps (in MB)"

-:466: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#466: FILE: drivers/gpu/drm/i915/i915_params.c:179:
+i915_param_named(guc_log_size_debug, int, 0400,
+	"GuC firmware logging buffer size for debug logs (in MB)"

-:470: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#470: FILE: drivers/gpu/drm/i915/i915_params.c:183:
+i915_param_named(guc_log_size_capture, int, 0400,
+	"GuC error capture register dump buffer size (in MB)"

total: 0 errors, 0 warnings, 3 checks, 434 lines checked
bec1c0368504 drm/i915/guc: Reduce spam from error capture
-:129: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#129: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1481:
+				i915_error_printf(ebuf, "[%ld][%ld]",
+					FIELD_GET(GUC_REGSET_STEERING_GROUP, regs[j].flags),

total: 0 errors, 0 warnings, 1 checks, 118 lines checked


