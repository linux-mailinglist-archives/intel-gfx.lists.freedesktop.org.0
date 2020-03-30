Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74042198751
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 00:23:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 050B86E4CB;
	Mon, 30 Mar 2020 22:23:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 265256E4CB;
 Mon, 30 Mar 2020 22:23:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 20448A00E6;
 Mon, 30 Mar 2020 22:23:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Melissa Wen" <melissa.srw@gmail.com>
Date: Mon, 30 Mar 2020 22:23:13 -0000
Message-ID: <158560699310.13827.4099112499210605186@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <2a7dba6ade737e179e812bb9fd1a5c3ab8c3a35f.1585604921.git.melissa.srw@gmail.com>
In-Reply-To: <2a7dba6ade737e179e812bb9fd1a5c3ab8c3a35f.1585604921.git.melissa.srw@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgdGVz?=
 =?utf-8?q?ts/kms=5Fplane=5Falpha=5Fblend=3A_Correct_typo_in_the_name_and_?=
 =?utf-8?q?comments_of_a_subtest?=
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

Series: tests/kms_plane_alpha_blend: Correct typo in the name and comments of a subtest
URL   : https://patchwork.freedesktop.org/series/75273/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8219 -> IGTPW_4376
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/index.html

Known issues
------------

  Here are the changes found in IGTPW_4376 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][1] ([CI#94]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live@execlists:
    - {fi-tgl-u}:         [DMESG-FAIL][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/fi-tgl-u/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/fi-tgl-u/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94


Participating hosts (44 -> 42)
------------------------------

  Additional (5): fi-bdw-5557u fi-kbl-7500u fi-kbl-x1275 fi-cfl-8109u fi-kbl-r 
  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-icl-guc fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5545 -> IGTPW_4376

  CI-20190529: 20190529
  CI_DRM_8219: 42de3b3c94078845ceed586199c039622561b522 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4376: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/index.html
  IGT_5545: 9e5bfd10d56f81b98e0229c6bb14670221fd0b54 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools



== Testlist changes ==

+igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb
+igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb
+igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb
+igt@kms_plane_alpha_blend@pipe-d-alpha-transparent-fb
+igt@kms_plane_alpha_blend@pipe-e-alpha-transparent-fb
+igt@kms_plane_alpha_blend@pipe-f-alpha-transparent-fb
-igt@kms_plane_alpha_blend@pipe-a-alpha-transparant-fb
-igt@kms_plane_alpha_blend@pipe-b-alpha-transparant-fb
-igt@kms_plane_alpha_blend@pipe-c-alpha-transparant-fb
-igt@kms_plane_alpha_blend@pipe-d-alpha-transparant-fb
-igt@kms_plane_alpha_blend@pipe-e-alpha-transparant-fb
-igt@kms_plane_alpha_blend@pipe-f-alpha-transparant-fb

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4376/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
