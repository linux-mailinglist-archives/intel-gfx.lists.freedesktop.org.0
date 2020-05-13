Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CB61D128D
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 14:23:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B17366EA15;
	Wed, 13 May 2020 12:23:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 23BA76EA10;
 Wed, 13 May 2020 12:23:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 20FB0A47DA;
 Wed, 13 May 2020 12:23:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 13 May 2020 12:23:50 -0000
Message-ID: <158937263013.25405.15136062201262277543@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200513103155.12336-1-imre.deak@intel.com>
In-Reply-To: <20200513103155.12336-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/dp=5Fmst=3A_Fix_timeout_handling_of_MST_down_messages?=
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

Series: drm/dp_mst: Fix timeout handling of MST down messages
URL   : https://patchwork.freedesktop.org/series/77216/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8472 -> Patchwork_17643
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17643/index.html

Known issues
------------

  Here are the changes found in Patchwork_17643 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-skl-guc:         [INCOMPLETE][1] ([i915#1874]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17643/fi-skl-guc/igt@i915_selftest@live@execlists.html
    - {fi-tgl-dsi}:       [INCOMPLETE][3] ([i915#1803]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/fi-tgl-dsi/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17643/fi-tgl-dsi/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_pm:
    - fi-icl-u2:          [INCOMPLETE][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17643/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
    - fi-bdw-5557u:       [INCOMPLETE][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/fi-bdw-5557u/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17643/fi-bdw-5557u/igt@i915_selftest@live@gt_pm.html

  * {igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2}:
    - fi-bsw-n3050:       [FAIL][9] ([i915#34]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8472/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17643/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1803]: https://gitlab.freedesktop.org/drm/intel/issues/1803
  [i915#1874]: https://gitlab.freedesktop.org/drm/intel/issues/1874
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34


Participating hosts (39 -> 35)
------------------------------

  Missing    (4): fi-byt-clapper fi-byt-squawks fi-bsw-cyan fi-hsw-4200u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8472 -> Patchwork_17643

  CI-20190529: 20190529
  CI_DRM_8472: 57acc5ba2cfb81691917a3da729573a99c893e5a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5651: e54e2642f1967ca3c488db32264607df670d1dfb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17643: 211186b681ff1bc9c2f4f70d495e1072ae5ee0b4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

211186b681ff drm/dp_mst: Fix timeout handling of MST down messages

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17643/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
