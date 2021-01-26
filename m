Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 488ED304C3B
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 23:37:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F17E89F6B;
	Tue, 26 Jan 2021 22:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DCC2F89F33;
 Tue, 26 Jan 2021 22:37:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D7D8FA47DF;
 Tue, 26 Jan 2021 22:37:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Brian Welty" <brian.welty@intel.com>
Date: Tue, 26 Jan 2021 22:37:36 -0000
Message-ID: <161170065685.9810.4045130328130788844@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210126214626.16260-1-brian.welty@intel.com>
In-Reply-To: <20210126214626.16260-1-brian.welty@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_cgroup_support_for_GPU_devices_=28rev3=29?=
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

Series: cgroup support for GPU devices (rev3)
URL   : https://patchwork.freedesktop.org/series/60163/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bd39716cbb25 cgroup: Introduce cgroup for drm subsystem
-:55: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#55: 
new file mode 100644

-:60: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#60: FILE: Documentation/cgroup-v1/drm.rst:1:
+Please see ../cgroup-v2.rst for details

-:228: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*drmcg)...) over kzalloc(sizeof(struct drmcg)...)
#228: FILE: kernel/cgroup/drm.c:22:
+	drmcg = kzalloc(sizeof(struct drmcg), GFP_KERNEL);

total: 0 errors, 2 warnings, 1 checks, 192 lines checked
db1f7fae1900 drm, cgroup: Bind drm and cgroup subsystem
-:68: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#68: 
new file mode 100644

-:92: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#92: FILE: include/drm/drm_cgroup.h:20:
+static inline void drmcg_bind(

-:240: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#240: FILE: kernel/cgroup/drm.c:109:
+static int drm_minor_for_each(int (*fn)(int id, void *p, void *data),
+		void *data)

-:263: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#263: FILE: kernel/cgroup/drm.c:132:
+			minor = find_next_bit(known_devs, MAX_DRM_DEV, minor+1);
 			                                                    ^

total: 0 errors, 1 warnings, 3 checks, 229 lines checked
af6b9dbb7aba drm, cgroup: Initialize drmcg properties
-:114: ERROR:CODE_INDENT: code indent should use tabs where possible
#114: FILE: include/drm/drm_device.h:322:
+        /** \name DRM Cgroup */$

-:197: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!ddr"
#197: FILE: kernel/cgroup/drm.c:67:
+	if (ddr == NULL) {

-:198: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ddr)...) over kzalloc(sizeof(struct drmcg_device_resource)...)
#198: FILE: kernel/cgroup/drm.c:68:
+		ddr = kzalloc(sizeof(struct drmcg_device_resource),

-:199: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#199: FILE: kernel/cgroup/drm.c:69:
+		ddr = kzalloc(sizeof(struct drmcg_device_resource),
+			GFP_KERNEL);

-:292: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!root_drmcg"
#292: FILE: kernel/cgroup/drm.c:248:
+	if (root_drmcg == NULL)

-:310: ERROR:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Kenny Ho <Kenny.Ho@amd.com>'

total: 2 errors, 0 warnings, 4 checks, 247 lines checked
4b9f63dc8ead drmcg: Add skeleton seq_show and write for drmcg files
-:11: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#11: 
[1] https://lists.freedesktop.org/archives/dri-devel/2020-February/254986.html

-:14: WARNING:BAD_SIGN_OFF: Co-developed-by and Signed-off-by: name/email do not match 
#14: 
Co-developed-by: Kenny Ho <Kenny.Ho@amd.com>
Signed-off-by: Brian Welty <brian.welty@intel.com>
-:89: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!ddr"
#89: FILE: kernel/cgroup/drm.c:253:
+	if (ddr == NULL)

-:120: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "limits"
#120: FILE: kernel/cgroup/drm.c:284:
+	while (!ret && limits != NULL) {

-:124: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#124: FILE: kernel/cgroup/drm.c:288:
+		if (sscanf(line,
+			__stringify(DRM_MAJOR)":%u %255[^\t\n]",

-:128: WARNING:LOGGING_CONTINUATION: Avoid logging continuation uses where feasible
#128: FILE: kernel/cgroup/drm.c:292:
+			pr_cont("\n");

-:142: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#142: FILE: kernel/cgroup/drm.c:306:
+			pr_err("drmcg: invalid minor %d for %s ",
+					minor, cft_name);

-:144: WARNING:LOGGING_CONTINUATION: Avoid logging continuation uses where feasible
#144: FILE: kernel/cgroup/drm.c:308:
+			pr_cont("\n");

total: 0 errors, 4 warnings, 4 checks, 136 lines checked
05bdd5baeaa6 drmcg: Add support for device memory accounting via page counter
-:8: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#8: 
pair of functions. This is modelled after the existing RDMA cgroup controller,

-:132: ERROR:SPACING: space required after that ',' (ctx:VxV)
#132: FILE: include/drm/drm_cgroup.h:76:
+void drm_cgroup_uncharge(struct drmcg *drmcg,struct drm_device *dev,
                                             ^

-:228: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#228: FILE: kernel/cgroup/drm.c:282:
+			seq_printf(sf, "max\n");

total: 1 errors, 2 warnings, 0 checks, 298 lines checked
b329ab22109e drmcg: Add memory.total file
5caedcbc9758 drmcg: Add initial support for tracking gpu time usage
c0111c874b1b drm/gem: Associate GEM objects with drm cgroup
-:24: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#24: 
[1] https://www.kernel.org/doc/Documentation/cgroup-v2.txt, "Memory Ownership"

total: 0 errors, 1 warnings, 0 checks, 146 lines checked
0ac6778052b8 drm/i915: Use memory cgroup for enforcing device memory limit
-:163: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#163: FILE: drivers/gpu/drm/i915/intel_memory_region.h:113:
+u64 __intel_memory_region_put_pages_buddy(struct intel_memory_region *mem,
 					   struct list_head *blocks);

total: 0 errors, 0 warnings, 1 checks, 112 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
