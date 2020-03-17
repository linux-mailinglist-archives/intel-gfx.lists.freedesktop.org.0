Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3D2188A44
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 17:30:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9803C6E5B6;
	Tue, 17 Mar 2020 16:30:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EE3576E21E;
 Tue, 17 Mar 2020 16:30:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DD0C3A00C7;
 Tue, 17 Mar 2020 16:30:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 17 Mar 2020 16:30:11 -0000
Message-ID: <158446261187.5179.12425065685130908901@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200317141250.20903-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200317141250.20903-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_up_documentation_paths_after_file_moving?=
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

Series: drm/i915: Fix up documentation paths after file moving
URL   : https://patchwork.freedesktop.org/series/74778/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8142 -> Patchwork_16997
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/index.html

Known issues
------------

  Here are the changes found in Patchwork_16997 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-soraka:      [INCOMPLETE][1] ([fdo#112259] / [i915#1430] / [i915#656]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][3] ([i915#1209]) -> [FAIL][4] ([i915#192] / [i915#193] / [i915#194])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/fi-kbl-8809g/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/fi-kbl-8809g/igt@runner@aborted.html

  
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (43 -> 36)
------------------------------

  Additional (4): fi-glk-dsi fi-bdw-5557u fi-cfl-8109u fi-skl-6700k2 
  Missing    (11): fi-bsw-n3050 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-snb-2520m fi-kbl-7500u fi-skl-lmem fi-byt-clapper fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8142 -> Patchwork_16997

  CI-20190529: 20190529
  CI_DRM_8142: 13dfeddee92ca6b9d134e036ae315e93b96023db @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5514: 921758a91a453e8148b3146ad874bbd4ae4364ec @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16997: af208eb667dc2f87b932606c3ff4190b8aaa0d94 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

af208eb667dc drm/i915: Fix up documentation paths after file moving

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
