Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBF738834E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 01:47:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2D586E10A;
	Tue, 18 May 2021 23:47:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 52E716E106;
 Tue, 18 May 2021 23:47:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4AFDCA0BCB;
 Tue, 18 May 2021 23:47:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Tue, 18 May 2021 23:47:50 -0000
Message-ID: <162138167028.23335.16846567787546964281@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210518235830.133834-1-matthew.brost@intel.com>
In-Reply-To: <20210518235830.133834-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_GuC_submission_/_DRM_scheduler_integration_plan_+_new_uAPI_?=
 =?utf-8?b?KHJldjIp?=
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

Series: GuC submission / DRM scheduler integration plan + new uAPI (rev2)
URL   : https://patchwork.freedesktop.org/series/89840/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fe3698660450 drm/doc/rfc: i915 GuC submission / DRM scheduler
-:30: WARNING:BAD_SIGN_OFF: Duplicate signature
#30: 
Cc: Jason Ekstrand <jason@jlekstrand.net>

-:35: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#35: 
new file mode 100644

-:40: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#40: FILE: Documentation/gpu/rfc/i915_scheduler.rst:1:
+=========================================

-:65: ERROR:TRAILING_WHITESPACE: trailing whitespace
#65: FILE: Documentation/gpu/rfc/i915_scheduler.rst:26:
+^I  which configures a slot with N contexts $

total: 1 errors, 3 warnings, 0 checks, 92 lines checked
011aea469596 drm/doc/rfc: i915 new parallel submission uAPI plan
-:23: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#23: 
new file mode 100644

-:28: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#28: FILE: Documentation/gpu/rfc/i915_parallel_execbuf.h:1:
+#define I915_CONTEXT_ENGINES_EXT_PARALLEL_SUBMIT 2 /* see i915_context_engines_parallel_submit */

-:51: WARNING:TYPO_SPELLING: 'inteface' may be misspelled - perhaps 'interface'?
#51: FILE: Documentation/gpu/rfc/i915_parallel_execbuf.h:24:
+ * inteface.
    ^^^^^^^^

-:152: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#152: FILE: Documentation/gpu/rfc/i915_parallel_execbuf.h:125:
+#define I915_PARALLEL_IMPLICT_BONDS			(1<<0)
                                    			  ^

-:160: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#160: FILE: Documentation/gpu/rfc/i915_parallel_execbuf.h:133:
+#define I915_PARALLEL_NO_PREEMPT_MID_BATCH		(1<<1)
                                           		  ^

-:170: WARNING:PREFER_DEFINED_ATTRIBUTE_MACRO: Prefer __packed over __attribute__((packed))
#170: FILE: Documentation/gpu/rfc/i915_parallel_execbuf.h:143:
+} __attribute__ ((packed));

-:184: WARNING:TYPO_SPELLING: 'explictly' may be misspelled - perhaps 'explicitly'?
#184: FILE: Documentation/gpu/rfc/i915_scheduler.rst:88:
+contexts in parallel with the GuC the context must be explictly registered with
                                                       ^^^^^^^^^

total: 0 errors, 5 warnings, 2 checks, 200 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
