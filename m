Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79011570C3F
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 22:58:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C49F410FCD3;
	Mon, 11 Jul 2022 20:58:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 339C210F6E3;
 Mon, 11 Jul 2022 20:58:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1B58EA0096;
 Mon, 11 Jul 2022 20:58:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mauro Carvalho Chehab" <mchehab@kernel.org>
Date: Mon, 11 Jul 2022 20:58:18 -0000
Message-ID: <165757309807.5767.7954187220815394265@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1657565224.git.mchehab@kernel.org>
In-Reply-To: <cover.1657565224.git.mchehab@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_fix_kernel-doc_issues?=
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

Series: drm/i915: fix kernel-doc issues
URL   : https://patchwork.freedesktop.org/series/106224/
State : warning

== Summary ==

Error: dim checkpatch failed
637d83030bc5 drm/i915: fix kernel-doc trivial warnings on i915/*.[ch] files
-:117: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#117: FILE: drivers/gpu/drm/i915/i915_gem.c:532:
+ * ^Ithe data directly from the$

-:136: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#136: FILE: drivers/gpu/drm/i915/i915_gem.c:803:
+ * ^Ithis buffer$

total: 0 errors, 2 warnings, 0 checks, 176 lines checked
073c8a7b305a drm/i915: display: fix kernel-doc markup warnings
fbe4bfb7ef75 drm/i915: gt: fix some Kernel-doc issues
713822b2064e drm/i915: gvt: fix kernel-doc trivial warnings
1a5f8f7d38f1 drm/i915: gem: fix some Kernel-doc issues
-:72: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#72: FILE: drivers/gpu/drm/i915/gem/i915_gem_domain.c:117:
+ * ^Iand possibly write domain.$

-:102: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#102: FILE: drivers/gpu/drm/i915/gem/i915_gem_domain.c:460:
+ * ^Iand possibly write domain.$

total: 0 errors, 2 warnings, 0 checks, 89 lines checked
dce4ef39aef7 drm/i915: intel_wakeref.h: fix some kernel-doc markups
b967aad62fef drm/i915: i915_gem_ttm: fix a kernel-doc markup
93de7c0dc0c3 drm/i915: i915_gem_ttm_pm.c: fix kernel-doc markups
-:31: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#31: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c:127:
+ * ^I%I915_TTM_BACKUP_ALLOW_GPU: allow the gpu blitter for this backup;$

-:32: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#32: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c:128:
+ * ^I%I915_TTM_BACKUP_PINNED: backup also pinned objects.$

-:42: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#42: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c:193:
+ * ^I%I915_TTM_BACKUP_ALLOW_GPU: allow the gpu blitter for this backup;$

total: 0 errors, 3 warnings, 0 checks, 20 lines checked
e44cf507d008 drm/i915: gem: add missing trivial function parameters
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 29 lines checked
af06d22be0ec drm/i915: i915_gpu_error.c: document dump_flags
-:22: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#22: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:2100:
+ * ^Idump engine record registers and execlists.$

total: 0 errors, 1 warnings, 0 checks, 9 lines checked
52425777acff drm/i915: document kernel-doc trivial issues
a3aee77f7bd7 drm/i915: intel_dp_link_training.c: fix kernel-doc markup
3370381206b1 drm/i915: intel_fb: fix a kernel-doc issue with Sphinx
96b0d3634a47 drm/i915: skl_scaler: fix return value kernel-doc markup
fb962cfc2364 drm/i915: intel_pm.c: fix some ascii artwork at kernel-doc
-:14: WARNING:TYPO_SPELLING: 'indended' may be misspelled - perhaps 'intended'?
#14: 
followed by a blank line and indended lines.
                             ^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 49 lines checked
0349040e61b4 drm/i915: i915_gem_region.h: fix i915_gem_apply_to_region_ops doc
22bf310fbd82 drm/i915: i915_gem_wait.c: fix a kernel-doc markup
fb2f8aa51360 drm/i915: fix i915_gem_ttm_move.c DOC: markup
2e79a6d68cb9 drm/i915: stop using kernel-doc markups for something else
a3b5750da84d drm/i915: dvo_ch7xxx.c: use SPDX header
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
e6cb27da02d4 drm/i915: dvo_sil164.c: use SPDX header
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
5200aaa9391e drm/i915: i915_vma_resource.c: fix some kernel-doc markups
a486a184edf0 drm/i915: i915_gem.c fix a kernel-doc issue
50e414bc1c71 drm/i915: i915_scatterlist.h: fix some kernel-doc markups
012f4494d6c2 drm/i915: i915_deps: use a shorter title markup
de077fe0b140 docs: gpu: i915.rst: display: add kernel-doc markups
f222331d0d28 docs: gpu: i915.rst: gt: add more kernel-doc markups
0de22eca0eb4 docs: gpu: i915.rst: GuC: add more kernel-doc markups
aad864ee367d docs: gpu: i915.rst: GVT: add more kernel-doc markups
8c350397e64c docs: gpu: i915.rst: PM: add more kernel-doc markups
e87e866fdf6d docs: gpu: i915.rst: GEM/TTM: add more kernel-doc markups
e2a602177209 docs: gpu: i915.rst: add the remaining kernel-doc markup files
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
	$ git grep -l "/\*\*" $(git ls-files|grep drivers/gpu/drm/i915/) >kernel-doc-files

total: 0 errors, 1 warnings, 0 checks, 123 lines checked


