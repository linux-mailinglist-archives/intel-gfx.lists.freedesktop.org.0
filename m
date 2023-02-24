Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 344716A1A16
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 11:23:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FB6710E878;
	Fri, 24 Feb 2023 10:23:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F15EC10E878;
 Fri, 24 Feb 2023 10:23:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E8C50A0BCB;
 Fri, 24 Feb 2023 10:23:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Fri, 24 Feb 2023 10:23:51 -0000
Message-ID: <167723423192.4565.11431432261582258157@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230224095152.30134-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20230224095152.30134-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/helpers=3A_Make_the_suballocation_manager_drm_generic_?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/helpers: Make the suballocation manager drm generic (rev2)
URL   : https://patchwork.freedesktop.org/series/114299/
State : warning

== Summary ==

Error: dim checkpatch failed
9a396adf2225 drm/suballoc: Extract amdgpu_sa.c as generic suballocation helper
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:66: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#66: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 584 lines checked
32ed88e340b0 drm/amd: Convert amdgpu to use suballocation helper.
-:62: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#62: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu.h:430:
+	uint64_t			gpu_addr;

total: 0 errors, 0 warnings, 1 checks, 487 lines checked
c71372f410ef drm/radeon: Use the drm suballocation manager implementation.
-:95: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#95: FILE: drivers/gpu/drm/radeon/radeon.h:518:
+	uint64_t			gpu_addr;

-:156: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#156: FILE: drivers/gpu/drm/radeon/radeon_ib.c:204:
+					      RADEON_IB_POOL_SIZE*64*1024, 256,
 					                         ^

-:156: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#156: FILE: drivers/gpu/drm/radeon/radeon_ib.c:204:
+					      RADEON_IB_POOL_SIZE*64*1024, 256,
 					                            ^

-:166: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#166: FILE: drivers/gpu/drm/radeon/radeon_ib.c:212:
+					      RADEON_IB_POOL_SIZE*64*1024, 256,
 					                         ^

-:166: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#166: FILE: drivers/gpu/drm/radeon/radeon_ib.c:212:
+					      RADEON_IB_POOL_SIZE*64*1024, 256,
 					                            ^

-:211: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#211: FILE: drivers/gpu/drm/radeon/radeon_object.h:200:
+extern int radeon_sa_bo_new(struct radeon_sa_manager *sa_manager,

-:214: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#214: FILE: drivers/gpu/drm/radeon/radeon_object.h:203:
+extern void radeon_sa_bo_free(struct drm_suballoc **sa_bo,

total: 0 errors, 0 warnings, 7 checks, 551 lines checked


