Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD1419ACDB
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 15:28:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3990B6E93F;
	Wed,  1 Apr 2020 13:28:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C5F0A6E93E;
 Wed,  1 Apr 2020 13:28:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BFEC8A00FD;
 Wed,  1 Apr 2020 13:28:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Apr 2020 13:28:19 -0000
Message-ID: <158574769975.25625.14059395487567840338@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200401111554.6279-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200401111554.6279-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Align_engine_dump_active/pending?=
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

Series: drm/i915/gt: Align engine dump active/pending
URL   : https://patchwork.freedesktop.org/series/75363/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8232 -> Patchwork_17169
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/index.html

Known issues
------------

  Here are the changes found in Patchwork_17169 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-skl-6770hq:      [DMESG-WARN][1] ([i915#203]) -> [PASS][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/fi-skl-6770hq/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/fi-skl-6770hq/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-skl-6770hq:      [SKIP][3] ([fdo#109271]) -> [PASS][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/fi-skl-6770hq/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/fi-skl-6770hq/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@requests:
    - fi-icl-guc:         [INCOMPLETE][5] ([i915#1505] / [i915#1581]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/fi-icl-guc/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/fi-icl-guc/igt@i915_selftest@live@requests.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-skl-6770hq:      [DMESG-FAIL][7] ([i915#165]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8232/fi-skl-6770hq/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/fi-skl-6770hq/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1505]: https://gitlab.freedesktop.org/drm/intel/issues/1505
  [i915#1581]: https://gitlab.freedesktop.org/drm/intel/issues/1581
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203


Participating hosts (49 -> 36)
------------------------------

  Missing    (13): fi-ilk-m540 fi-bsw-n3050 fi-hsw-4200u fi-hsw-peppy fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-snb-2520m fi-kbl-7500u fi-ctg-p8600 fi-gdg-551 fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8232 -> Patchwork_17169

  CI-20190529: 20190529
  CI_DRM_8232: cade363a69762c57ffb58f91b47670df7ca520bf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5553: 60475d9b41c58b7d256e83c7d53eaf7c2f1f8ecc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17169: a8418e5a61084fde9a451c49a9351ef9df9039fa @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a8418e5a6108 drm/i915/gt: Align engine dump active/pending

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17169/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
