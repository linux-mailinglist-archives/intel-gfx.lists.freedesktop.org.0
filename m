Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFF030F9D5
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 18:36:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5481F6E090;
	Thu,  4 Feb 2021 17:36:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A803C6E090;
 Thu,  4 Feb 2021 17:36:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0F29AA01E;
 Thu,  4 Feb 2021 17:36:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 04 Feb 2021 17:36:17 -0000
Message-ID: <161246017762.4502.13258468535702626366@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210204122126.647201-1-matthew.auld@intel.com>
In-Reply-To: <20210204122126.647201-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_cleanup_the_regi?=
 =?utf-8?q?on_class/instance_encoding?=
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

Series: series starting with [1/2] drm/i915: cleanup the region class/instance encoding
URL   : https://patchwork.freedesktop.org/series/86694/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2a7b87cc63e4 drm/i915: cleanup the region class/instance encoding
-:34: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#34: FILE: drivers/gpu/drm/i915/intel_memory_region.c:13:
+       [INTEL_REGION_SMEM] = {$

-:35: ERROR:CODE_INDENT: code indent should use tabs where possible
#35: FILE: drivers/gpu/drm/i915/intel_memory_region.c:14:
+               .class = INTEL_MEMORY_SYSTEM,$

-:35: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#35: FILE: drivers/gpu/drm/i915/intel_memory_region.c:14:
+               .class = INTEL_MEMORY_SYSTEM,$

-:36: ERROR:CODE_INDENT: code indent should use tabs where possible
#36: FILE: drivers/gpu/drm/i915/intel_memory_region.c:15:
+               .instance = 0,$

-:36: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#36: FILE: drivers/gpu/drm/i915/intel_memory_region.c:15:
+               .instance = 0,$

-:37: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#37: FILE: drivers/gpu/drm/i915/intel_memory_region.c:16:
+       },$

-:38: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#38: FILE: drivers/gpu/drm/i915/intel_memory_region.c:17:
+       [INTEL_REGION_LMEM] = {$

-:39: ERROR:CODE_INDENT: code indent should use tabs where possible
#39: FILE: drivers/gpu/drm/i915/intel_memory_region.c:18:
+               .class = INTEL_MEMORY_LOCAL,$

-:39: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#39: FILE: drivers/gpu/drm/i915/intel_memory_region.c:18:
+               .class = INTEL_MEMORY_LOCAL,$

-:40: ERROR:CODE_INDENT: code indent should use tabs where possible
#40: FILE: drivers/gpu/drm/i915/intel_memory_region.c:19:
+               .instance = 0,$

-:40: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#40: FILE: drivers/gpu/drm/i915/intel_memory_region.c:19:
+               .instance = 0,$

-:41: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#41: FILE: drivers/gpu/drm/i915/intel_memory_region.c:20:
+       },$

-:42: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#42: FILE: drivers/gpu/drm/i915/intel_memory_region.c:21:
+       [INTEL_REGION_STOLEN] = {$

-:43: ERROR:CODE_INDENT: code indent should use tabs where possible
#43: FILE: drivers/gpu/drm/i915/intel_memory_region.c:22:
+               .class = INTEL_MEMORY_STOLEN,$

-:43: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#43: FILE: drivers/gpu/drm/i915/intel_memory_region.c:22:
+               .class = INTEL_MEMORY_STOLEN,$

-:44: ERROR:CODE_INDENT: code indent should use tabs where possible
#44: FILE: drivers/gpu/drm/i915/intel_memory_region.c:23:
+               .instance = 0,$

-:44: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#44: FILE: drivers/gpu/drm/i915/intel_memory_region.c:23:
+               .instance = 0,$

-:45: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#45: FILE: drivers/gpu/drm/i915/intel_memory_region.c:24:
+       },$

total: 6 errors, 12 warnings, 0 checks, 79 lines checked
81f71fd67adc drm/i915: give stolen system memory its own class
-:71: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#71: FILE: drivers/gpu/drm/i915/intel_memory_region.c:21:
+       [INTEL_REGION_STOLEN_SMEM] = {$

-:72: ERROR:CODE_INDENT: code indent should use tabs where possible
#72: FILE: drivers/gpu/drm/i915/intel_memory_region.c:22:
+               .class = INTEL_MEMORY_STOLEN_SYSTEM,$

-:72: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#72: FILE: drivers/gpu/drm/i915/intel_memory_region.c:22:
+               .class = INTEL_MEMORY_STOLEN_SYSTEM,$

total: 1 errors, 2 warnings, 0 checks, 72 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
