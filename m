Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE126F71D8
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 20:19:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9988910E17D;
	Thu,  4 May 2023 18:19:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C9B0610E070;
 Thu,  4 May 2023 18:19:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6720DAADE8;
 Thu,  4 May 2023 18:19:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 04 May 2023 18:19:13 -0000
Message-ID: <168322435339.11434.6038882862827731409@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1683041799.git.jani.nikula@intel.com>
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_fix_kernel-doc_warnings=2C_enable_kernel-doc_-Werror?=
 =?utf-8?q?_=28rev2=29?=
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

Series: drm/i915: fix kernel-doc warnings, enable kernel-doc -Werror (rev2)
URL   : https://patchwork.freedesktop.org/series/117207/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/117207/revisions/2/mbox/ not applied
Applying: drm/i915/gvt: fix intel_vgpu_alloc_resource() kernel-doc parameter
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gvt/aperture_gm.c
Falling back to patching base and 3-way merge...
No changes -- Patch already applied.
Applying: drm/i915/vma: fix kernel-doc function name for i915_vma_size()
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/i915_vma.h
Falling back to patching base and 3-way merge...
No changes -- Patch already applied.
Applying: drm/i915/utils: drop kernel-doc from __wait_for()
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/i915_utils.h
Falling back to patching base and 3-way merge...
No changes -- Patch already applied.
Applying: drm/i915/vma: document struct i915_vma_resource wakeref member
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/i915_vma_resource.h
Falling back to patching base and 3-way merge...
No changes -- Patch already applied.
Applying: drm/i915/vma: fix struct i915_vma_bindinfo kernel-doc
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/i915_vma_resource.h).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0005 drm/i915/vma: fix struct i915_vma_bindinfo kernel-doc
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


