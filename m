Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5671994AA
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 13:04:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44E226E80B;
	Tue, 31 Mar 2020 11:04:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A100689C97;
 Tue, 31 Mar 2020 11:04:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A2CCA47E1;
 Tue, 31 Mar 2020 11:04:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 31 Mar 2020 11:04:27 -0000
Message-ID: <158565266761.5564.16438931274360397494@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200331091459.29179-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200331091459.29179-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915/selftests=3A_Tidy_up_an_er?=
 =?utf-8?q?ror_message_for_live=5Ferror=5Finterrupt?=
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

Series: series starting with [1/4] drm/i915/selftests: Tidy up an error message for live_error_interrupt
URL   : https://patchwork.freedesktop.org/series/75296/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8222 -> Patchwork_17149
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17149/index.html

Known issues
------------

  Here are the changes found in Patchwork_17149 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-icl-guc:         [PASS][1] -> [INCOMPLETE][2] ([i915#1505])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8222/fi-icl-guc/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17149/fi-icl-guc/igt@i915_selftest@live@requests.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-dsi:         [INCOMPLETE][3] ([i915#189]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8222/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17149/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-bxt-dsi:         [INCOMPLETE][5] ([i915#656]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8222/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17149/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
    - fi-cml-u2:          [INCOMPLETE][7] ([i915#283] / [i915#656]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8222/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17149/fi-cml-u2/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_contexts:
    - fi-bwr-2160:        [INCOMPLETE][9] ([i915#1170] / [i915#489]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8222/fi-bwr-2160/igt@i915_selftest@live@gt_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17149/fi-bwr-2160/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [INCOMPLETE][11] -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8222/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17149/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  
  [i915#1170]: https://gitlab.freedesktop.org/drm/intel/issues/1170
  [i915#1505]: https://gitlab.freedesktop.org/drm/intel/issues/1505
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (46 -> 43)
------------------------------

  Additional (3): fi-hsw-4770 fi-kbl-7560u fi-snb-2520m 
  Missing    (6): fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8222 -> Patchwork_17149

  CI-20190529: 20190529
  CI_DRM_8222: 6970d295e51e3b03d7ee3f781522398402d3a35d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5546: f074c26aea9681e52a5128e0da45e809dbacbea4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17149: 77b975ee8c8b9510f5fdd30dc71fdc5941faa9dc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

77b975ee8c8b drm/i915/execlists: Record the active CCID from before reset
4effc0d425da drm/i915/execlists: Peek at the next submission for error interrupts
b670e9191fe5 drm/i915/execlists: Pause CS flow before reset
008d17b47d33 drm/i915/selftests: Tidy up an error message for live_error_interrupt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17149/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
