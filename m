Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F86636EC7
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Nov 2022 01:14:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1BA310E663;
	Thu, 24 Nov 2022 00:14:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8D66F10E665;
 Thu, 24 Nov 2022 00:14:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 859EFAA01E;
 Thu, 24 Nov 2022 00:14:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Thu, 24 Nov 2022 00:14:15 -0000
Message-ID: <166924885550.28650.7208747627905962395@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221123223410.2846296-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20221123223410.2846296-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/pxp=3A_Create_a_backend_abstraction_layer_for_pxp-?=
 =?utf-8?q?tee-link?=
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

Series: drm/i915/pxp: Create a backend abstraction layer for pxp-tee-link
URL   : https://patchwork.freedesktop.org/series/111287/
State : warning

== Summary ==

Error: dim checkpatch failed
11ceb24c80fb HAX: drm/i915/pxp: Prepare intel_pxp entry points for MTL
362d4558aeaa drm/i915/pxp: Refactor mei-teelink checks at init/fini
f76d384f0eaf drm/i915/pxp: Abstract mei-teelink function access via backend ptrs
0e1aed6ffa27 drm/i915/pxp: Separate tee-link front end interfaces from backend implementation
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:415: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#415: 
new file mode 100644

-:521: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#521: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.c:102:
+	GEM_BUG_ON(!pxp->stream_cmd.obj);

total: 0 errors, 2 warnings, 0 checks, 730 lines checked
6f79db582769 drm/i915/pxp: move mei-pxp and mei-gsc resources to be backend-private
-:206: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#206: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_tee_mei.c:132:
+	GEM_BUG_ON(!mei->stream_cmd.obj);

total: 0 errors, 1 warnings, 0 checks, 430 lines checked
f90c8b2d8f09 drm/i915/pxp: Add PXP gsccs tee-link backend stubs
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:25: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#25: 
new file mode 100644

-:113: ERROR:RETURN_PARENTHESES: return is not a function, parentheses are not required
#113: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_tee.c:57:
+	return (HAS_ENGINE(gt, GSC0));

total: 1 errors, 1 warnings, 0 checks, 102 lines checked
03ebd40d438b drm/i915/pxp: Better hierarchy readibility - move backends to a backend folder
-:8: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#8: 
This would provide clearer readibility of file hiearchy with regards to this

-:50: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#50: 
rename from drivers/gpu/drm/i915/pxp/intel_pxp_gsccs.c

total: 0 errors, 2 warnings, 0 checks, 53 lines checked


