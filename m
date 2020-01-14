Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B815113A524
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 11:08:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 310E26E340;
	Tue, 14 Jan 2020 10:08:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 05A206E33E;
 Tue, 14 Jan 2020 10:08:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F1CFFA0096;
 Tue, 14 Jan 2020 10:08:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 14 Jan 2020 10:08:46 -0000
Message-ID: <157899652698.24906.17910823289733135493@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200114093648.2090633-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200114093648.2090633-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/13=5D_drm/i915=3A_Flush_idle_bar?=
 =?utf-8?q?riers_when_waiting?=
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

Series: series starting with [01/13] drm/i915: Flush idle barriers when waiting
URL   : https://patchwork.freedesktop.org/series/71998/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
74de6c3a485c drm/i915: Flush idle barriers when waiting
f64bad15a29b drm/i915: Allow userspace to specify ringsize on construction
-:226: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#226: 
new file mode 100644

-:231: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#231: FILE: drivers/gpu/drm/i915/gt/intel_context_param.c:1:
+/*

-:232: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#232: FILE: drivers/gpu/drm/i915/gt/intel_context_param.c:2:
+ * SPDX-License-Identifier: MIT

-:301: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#301: FILE: drivers/gpu/drm/i915/gt/intel_context_param.h:1:
+/*

-:302: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#302: FILE: drivers/gpu/drm/i915/gt/intel_context_param.h:2:
+ * SPDX-License-Identifier: MIT

total: 0 errors, 5 warnings, 0 checks, 307 lines checked
5ebef128a956 drm/i915/gem: Honour O_NONBLOCK before throttling execbuf submissions
dccc33f6bf8f drm/i915: Only retire requests when eviction is allowed to blocked
7f37be373d1e drm/i915: Disable preemption support on Icelake
471efda355ae drm/i915/gt: Expose engine properties via sysfs
-:87: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#87: 
new file mode 100644

-:92: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#92: FILE: drivers/gpu/drm/i915/gt/intel_engine_sysfs.c:1:
+/*

-:93: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#93: FILE: drivers/gpu/drm/i915/gt/intel_engine_sysfs.c:2:
+ * SPDX-License-Identifier: MIT

-:192: CHECK:SPACING: No space is necessary after a cast
#192: FILE: drivers/gpu/drm/i915/gt/intel_engine_sysfs.c:101:
+			 show_unknown ? BITS_PER_TYPE(typeof(caps)) : count) {

-:306: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#306: FILE: drivers/gpu/drm/i915/gt/intel_engine_sysfs.h:1:
+/*

-:307: WARNING:SPDX_LICENSE_TAG: Misplaced SPDX-License-Identifier tag - use line 1 instead
#307: FILE: drivers/gpu/drm/i915/gt/intel_engine_sysfs.h:2:
+ * SPDX-License-Identifier: MIT

total: 0 errors, 5 warnings, 1 checks, 254 lines checked
774439b0c892 drm/i915/gt: Expose engine->mmio_base via sysfs
35f4ea3763a4 drm/i915/gt: Expose timeslice duration to sysfs
fd22f1abe5f0 drm/i915/gt: Expose busywait duration to sysfs
a3d53499e38a drm/i915/gt: Expose reset stop timeout via sysfs
fa9c186511bc drm/i915/gt: Expose preempt reset timeout via sysfs
b91c2c52d438 drm/i915/gt: Expose heartbeat interval via sysfs
b513fe138e41 drm/i915/gt: Limit C-states while waiting for requests

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
