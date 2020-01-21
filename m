Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B7A143B93
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 12:04:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F58A6EC17;
	Tue, 21 Jan 2020 11:04:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 11FB06E204;
 Tue, 21 Jan 2020 11:04:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0931DA01BB;
 Tue, 21 Jan 2020 11:04:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 21 Jan 2020 11:04:04 -0000
Message-ID: <157960464401.11478.15255596589320186817@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200121100927.114886-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200121100927.114886-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/execlists=3A_Reclaim_hanging_virtual_request?=
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

Series: drm/i915/execlists: Reclaim hanging virtual request
URL   : https://patchwork.freedesktop.org/series/72320/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7783 -> Patchwork_16183
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16183/index.html

Known issues
------------

  Here are the changes found in Patchwork_16183 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [PASS][1] -> [INCOMPLETE][2] ([i915#505] / [i915#671])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16183/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@contexts:
    - {fi-ehl-1}:         [INCOMPLETE][3] ([i915#937]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-ehl-1/igt@gem_exec_parallel@contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16183/fi-ehl-1/igt@gem_exec_parallel@contexts.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [DMESG-WARN][5] ([i915#889]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16183/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6700k2:      [INCOMPLETE][7] ([i915#671]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16183/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-x1275:       [DMESG-WARN][9] ([i915#889]) -> [INCOMPLETE][10] ([i915#879])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16183/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (44 -> 40)
------------------------------

  Additional (6): fi-glk-dsi fi-gdg-551 fi-bsw-kefka fi-kbl-7560u fi-bsw-nick fi-snb-2600 
  Missing    (10): fi-kbl-soraka fi-ilk-m540 fi-bdw-5557u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-skl-lmem fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7783 -> Patchwork_16183

  CI-20190529: 20190529
  CI_DRM_7783: 3ee976286895f0bd54388efc16b12f62c624ff19 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5376: 5cf58d947a02379d2885d6dd4f8bb487cfc3eed2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16183: 4c75255de957a966bedf8afb96b3d98425ba09be @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4c75255de957 drm/i915/execlists: Reclaim hanging virtual request

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16183/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
