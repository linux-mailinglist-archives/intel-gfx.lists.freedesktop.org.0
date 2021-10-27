Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB2A43CC7D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 16:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3FE66E8B1;
	Wed, 27 Oct 2021 14:40:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3A68D6E8B1;
 Wed, 27 Oct 2021 14:40:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 31ECEA47EB;
 Wed, 27 Oct 2021 14:40:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Oct 2021 14:40:46 -0000
Message-ID: <163534564619.4642.8024923496551480013@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211027105211.485125-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211027105211.485125-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Prepare_error_capture_for_asynchronous_migration_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Prepare error capture for asynchronous migration (rev2)
URL   : https://patchwork.freedesktop.org/series/96281/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bf0df3812af8 drm/i915: Introduce refcounted sg-tables
69d21354f04a drm/i915: Update error capture code to avoid using the current vma state
-:803: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#803: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 958 lines checked
ff852d0fa9df drm/i915: Initial introduction of vma resources
-:144: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'vma->resource'
#144: FILE: drivers/gpu/drm/i915/i915_vma.c:439:
+	if ((vma->resource) || !vma_res) {

-:564: CHECK:LINE_SPACING: Please don't use multiple blank lines
#564: FILE: drivers/gpu/drm/i915/selftests/i915_gem_gtt.c:1493:
 
+

total: 0 errors, 0 warnings, 2 checks, 543 lines checked


