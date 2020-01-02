Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D55B12EA40
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 20:19:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8B576E134;
	Thu,  2 Jan 2020 19:19:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8CF516E133;
 Thu,  2 Jan 2020 19:19:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 88FC9A363D;
 Thu,  2 Jan 2020 19:19:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 02 Jan 2020 19:19:09 -0000
Message-ID: <157799274955.8911.9134748774912232192@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200102142454.1494257-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200102142454.1494257-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Drop_mutex_serialisation_between_context_pin/unpin?=
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

Series: drm/i915/gt: Drop mutex serialisation between context pin/unpin
URL   : https://patchwork.freedesktop.org/series/71568/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7667 -> Patchwork_15977
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/index.html

Known issues
------------

  Here are the changes found in Patchwork_15977 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-skl-lmem:        [INCOMPLETE][1] ([i915#671]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/fi-skl-lmem/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_mman:
    - fi-bxt-dsi:         [DMESG-WARN][3] ([i915#889]) -> [PASS][4] +23 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-bxt-dsi/igt@i915_selftest@live_mman.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/fi-bxt-dsi/igt@i915_selftest@live_mman.html

  * igt@i915_selftest@live_reset:
    - fi-bxt-dsi:         [DMESG-FAIL][5] ([i915#889]) -> [PASS][6] +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/fi-bxt-dsi/igt@i915_selftest@live_reset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/fi-bxt-dsi/igt@i915_selftest@live_reset.html

  
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889


Participating hosts (46 -> 40)
------------------------------

  Additional (4): fi-blb-e6850 fi-bdw-5557u fi-ivb-3770 fi-skl-6600u 
  Missing    (10): fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ilk-650 fi-ctg-p8600 fi-gdg-551 fi-byt-clapper fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7667 -> Patchwork_15977

  CI-20190529: 20190529
  CI_DRM_7667: e60a61aa9e6849fc2dba1085b1ba99c4847f20cf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15977: 395d527730339d2b907a2dfc94890eae41462393 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

395d52773033 drm/i915/gt: Drop mutex serialisation between context pin/unpin

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15977/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
