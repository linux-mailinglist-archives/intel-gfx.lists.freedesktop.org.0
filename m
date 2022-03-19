Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E20D54DEA92
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Mar 2022 21:15:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C61C10E20F;
	Sat, 19 Mar 2022 20:15:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C4F6F10E20F;
 Sat, 19 Mar 2022 20:15:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B963DA3C0D;
 Sat, 19 Mar 2022 20:15:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michael Cheng" <michael.cheng@intel.com>
Date: Sat, 19 Mar 2022 20:15:37 -0000
Message-ID: <164772093772.30528.1921217305385278811@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220319194227.297639-1-michael.cheng@intel.com>
In-Reply-To: <20220319194227.297639-1-michael.cheng@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Drop_wbinvd=5Fon=5Fall=5Fcpus_usage?=
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

Series: Drop wbinvd_on_all_cpus usage
URL   : https://patchwork.freedesktop.org/series/101560/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a6e7b94ada85 i915/gem: drop wbinvd_on_all_cpus usage
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
To make i915 more architecture-neutral and be less paranoid, lets attempt to

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
6f0d153682e1 Revert "drm/i915/gem: Almagamate clflushes on suspend"
-:9: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit ac05a22cd07a ("drm/i915/gem: Almagamate clflushes on suspend")'
#9: 
[1]. ac05a22cd07a ("drm/i915/gem: Almagamate clflushes on suspend")

-:75: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#75: FILE: drivers/gpu/drm/i915/gem/i915_gem_pm.c:173:
+			drm_WARN_ON(&i915->drm,
+			    i915_gem_object_set_to_gtt_domain(obj, false));

total: 1 errors, 0 warnings, 1 checks, 68 lines checked
edf596eb3f94 i915/gem: Revert i915_gem_freeze to previous logic
-:34: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#34: FILE: drivers/gpu/drm/i915/gem/i915_gem_pm.c:222:
+		drm_WARN_ON(&i915->drm,
+			i915_gem_object_set_to_cpu_domain(obj, true));

total: 0 errors, 0 warnings, 1 checks, 23 lines checked
4c9cb24c8fef drm/i915/gt: Revert ggtt_resume to previous logic
-:9: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9: 
[1]. 64b95df91f44 drm/i915: Assume exclusive access to objects inside resume

-:9: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 64b95df91f44 ("drm/i915: Assume exclusive access to objects inside resume")'
#9: 
[1]. 64b95df91f44 drm/i915: Assume exclusive access to objects inside resume

total: 1 errors, 1 warnings, 0 checks, 52 lines checked


