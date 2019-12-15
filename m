Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D97D411F733
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Dec 2019 11:42:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 489558993B;
	Sun, 15 Dec 2019 10:42:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6E10C8912F;
 Sun, 15 Dec 2019 10:42:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 74259A363B;
 Sun, 15 Dec 2019 10:42:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 15 Dec 2019 10:42:37 -0000
Message-ID: <157640655744.27846.14103009188045470650@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191214211241.2243420-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191214211241.2243420-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Unpin_vma-=3Eobj_on_early_error_=28rev3=29?=
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

Series: drm/i915: Unpin vma->obj on early error (rev3)
URL   : https://patchwork.freedesktop.org/series/70935/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7568 -> Patchwork_15764
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15764 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15764, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15764:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_create@basic:
    - fi-bsw-kefka:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-bsw-kefka/igt@gem_exec_create@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-bsw-kefka/igt@gem_exec_create@basic.html
    - fi-glk-dsi:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-glk-dsi/igt@gem_exec_create@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-glk-dsi/igt@gem_exec_create@basic.html
    - fi-bsw-nick:        [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-bsw-nick/igt@gem_exec_create@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-bsw-nick/igt@gem_exec_create@basic.html
    - fi-kbl-8809g:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-kbl-8809g/igt@gem_exec_create@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-kbl-8809g/igt@gem_exec_create@basic.html
    - fi-skl-guc:         [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-skl-guc/igt@gem_exec_create@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-skl-guc/igt@gem_exec_create@basic.html
    - fi-kbl-guc:         [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-kbl-guc/igt@gem_exec_create@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-kbl-guc/igt@gem_exec_create@basic.html
    - fi-snb-2520m:       [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-snb-2520m/igt@gem_exec_create@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-snb-2520m/igt@gem_exec_create@basic.html
    - fi-apl-guc:         [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-apl-guc/igt@gem_exec_create@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-apl-guc/igt@gem_exec_create@basic.html
    - fi-bxt-dsi:         [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-bxt-dsi/igt@gem_exec_create@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-bxt-dsi/igt@gem_exec_create@basic.html
    - fi-kbl-soraka:      [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-kbl-soraka/igt@gem_exec_create@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-kbl-soraka/igt@gem_exec_create@basic.html

  * igt@gem_exec_suspend@basic:
    - fi-hsw-peppy:       [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-hsw-peppy/igt@gem_exec_suspend@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-hsw-peppy/igt@gem_exec_suspend@basic.html
    - fi-snb-2600:        [PASS][23] -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-snb-2600/igt@gem_exec_suspend@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-snb-2600/igt@gem_exec_suspend@basic.html
    - fi-bsw-n3050:       [PASS][25] -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-bsw-n3050/igt@gem_exec_suspend@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-bsw-n3050/igt@gem_exec_suspend@basic.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-hsw-4770r:       [PASS][27] -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-hsw-4770r/igt@gem_exec_suspend@basic-s0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-hsw-4770r/igt@gem_exec_suspend@basic-s0.html
    - fi-ivb-3770:        [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-ivb-3770/igt@gem_exec_suspend@basic-s0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-ivb-3770/igt@gem_exec_suspend@basic-s0.html
    - fi-byt-j1900:       [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-byt-j1900/igt@gem_exec_suspend@basic-s0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-byt-j1900/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-hsw-4770:        [PASS][33] -> [DMESG-WARN][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-hsw-4770/igt@gem_exec_suspend@basic-s4-devices.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-hsw-4770/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_gtt:
    - fi-byt-n2820:       [PASS][35] -> [DMESG-WARN][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7568/fi-byt-n2820/igt@i915_selftest@live_gtt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-byt-n2820/igt@i915_selftest@live_gtt.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][37]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-bsw-kefka/igt@runner@aborted.html
    - fi-hsw-4770r:       NOTRUN -> [FAIL][38]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-hsw-4770r/igt@runner@aborted.html
    - fi-hsw-peppy:       NOTRUN -> [FAIL][39]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-hsw-peppy/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][40]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][41]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-kbl-8809g/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][42]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-snb-2520m/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][43]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-apl-guc/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][44]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][45]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][46]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-kbl-guc/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][47]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][48]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-bxt-dsi/igt@runner@aborted.html
    - fi-byt-j1900:       NOTRUN -> [FAIL][49]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-byt-j1900/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][50]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/fi-bsw-n3050/igt@runner@aborted.html

  


Participating hosts (35 -> 27)
------------------------------

  Missing    (8): fi-icl-1065g7 fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7568 -> Patchwork_15764

  CI-20190529: 20190529
  CI_DRM_7568: 243d577ae8401244d29960cc5106c58036d962cc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15764: 14dd75a8fa73fbb7dc58a1c4cb4b809df9ae65d2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

14dd75a8fa73 drm/i915: Unpin vma->obj on early error

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15764/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
