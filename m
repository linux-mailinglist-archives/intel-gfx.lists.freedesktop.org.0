Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CF63C6F30
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 13:12:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB938898C2;
	Tue, 13 Jul 2021 11:12:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D1C49898C2;
 Tue, 13 Jul 2021 11:12:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9192A47EB;
 Tue, 13 Jul 2021 11:12:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 13 Jul 2021 11:12:26 -0000
Message-ID: <162617474679.711.5306954720169367858@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210713104554.2381406-1-matthew.auld@intel.com>
In-Reply-To: <20210713104554.2381406-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/5=5D_drm/i915=3A_document_caching?=
 =?utf-8?q?_related_bits?=
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

Series: series starting with [1/5] drm/i915: document caching related bits
URL   : https://patchwork.freedesktop.org/series/92469/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2d424bc0390d drm/i915: document caching related bits
-:58: WARNING:TYPO_SPELLING: 'specifc' may be misspelled - perhaps 'specific'?
#58: FILE: drivers/gpu/drm/i915/gem/i915_gem_object_types.h:133:
+	 * gen7+, L3 sits between the domain specifc caches, eg sampler/render
 	                                     ^^^^^^^

-:119: WARNING:REPEATED_WORD: Possible repeated word: 'the'
#119: FILE: drivers/gpu/drm/i915/gem/i915_gem_object_types.h:319:
+	 * that same page. Now if the @cache_level is I915_CACHE_NONE and the
+	 * the platform doesn't have the shared-LLC, then the GPU will

total: 0 errors, 2 warnings, 0 checks, 166 lines checked
33fab8144f1c drm/i915/uapi: convert drm_i915_gem_madvise to kernel-doc
-:55: WARNING:TYPO_SPELLING: 'wont' may be misspelled - perhaps 'won't'?
#55: FILE: include/uapi/drm/i915_drm.h:1523:
+	 * The buffer wont be needed. The pages and their contents can be
 	              ^^^^

total: 0 errors, 1 warnings, 0 checks, 62 lines checked
5121ee416eb6 drm/i915: convert drm_i915_gem_object to kernel-doc
-:37: WARNING:REPEATED_WORD: Possible repeated word: 'of'
#37: FILE: drivers/gpu/drm/i915/gem/i915_gem_object_types.h:187:
+	 * mask of of the lengths for each sg entry.

total: 0 errors, 1 warnings, 0 checks, 577 lines checked
c30b089eaa9f drm/i915: pull in some more kernel-doc
d8d89d8aeb49 drm/i915/ehl: unconditionally flush the pages on acquire
-:21: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#21: 
References: 046091758b50 ("Revert "drm/i915/ehl: Update MOCS table for EHL"")

-:21: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 046091758b50 ("Revert "drm/i915/ehl: Update MOCS table for EHL"")'
#21: 
References: 046091758b50 ("Revert "drm/i915/ehl: Update MOCS table for EHL"")

total: 1 errors, 1 warnings, 0 checks, 36 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
