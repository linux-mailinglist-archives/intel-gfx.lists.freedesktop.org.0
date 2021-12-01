Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B39C464E26
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 13:44:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEE106E849;
	Wed,  1 Dec 2021 12:44:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CBB816E849;
 Wed,  1 Dec 2021 12:44:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C3DB3AAA91;
 Wed,  1 Dec 2021 12:44:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mullati Siva" <siva.mullati@intel.com>
Date: Wed, 01 Dec 2021 12:44:43 -0000
Message-ID: <163836268376.14897.14736891237696004839@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211201113259.161647-1-siva.mullati@intel.com>
In-Reply-To: <20211201113259.161647-1-siva.mullati@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Skip_remap=5Fio=5Fmapping=28=29_for_non-x86_pla?=
 =?utf-8?q?tforms_=28rev4=29?=
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

Series: drm/i915: Skip remap_io_mapping() for non-x86 platforms (rev4)
URL   : https://patchwork.freedesktop.org/series/96855/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e1ed6afae3fa drm/i915: Skip remap_io_mapping() for non-x86 platforms
-:63: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#63: 
new file mode 100644

-:84: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#84: FILE: drivers/gpu/drm/i915/i915_mm.h:17:
+int remap_io_mapping(struct vm_area_struct *vma,
+		unsigned long addr, unsigned long pfn, unsigned long size,

-:88: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#88: FILE: drivers/gpu/drm/i915/i915_mm.h:21:
+static inline int remap_io_mapping(struct vm_area_struct *vma,
+		unsigned long addr, unsigned long pfn, unsigned long size,

total: 0 errors, 1 warnings, 2 checks, 63 lines checked


