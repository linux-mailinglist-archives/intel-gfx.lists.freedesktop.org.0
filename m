Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5D31361AD
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 21:24:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED6A36E965;
	Thu,  9 Jan 2020 20:24:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D81D06E962;
 Thu,  9 Jan 2020 20:24:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BF350A0075;
 Thu,  9 Jan 2020 20:24:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 09 Jan 2020 20:24:16 -0000
Message-ID: <157860145675.4566.5414742388442239058@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200109122507.945002-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200109122507.945002-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/3=5D_drm/i915=3A_Flush_idle_?=
 =?utf-8?q?barriers_when_waiting?=
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

Series: series starting with [CI,1/3] drm/i915: Flush idle barriers when waiting
URL   : https://patchwork.freedesktop.org/series/71819/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
421ad93f393d drm/i915: Flush idle barriers when waiting
275b6f677174 drm/i915: Allow userspace to specify ringsize on construction
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

total: 0 errors, 5 warnings, 0 checks, 305 lines checked
372cfdbe8c33 drm/i915/gem: Honour O_NONBLOCK before throttling execbuf submissions

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
