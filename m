Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D0D172DC6
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 02:01:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 681136EDAA;
	Fri, 28 Feb 2020 01:01:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4EB6A6EDAA;
 Fri, 28 Feb 2020 01:01:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4765EA7525;
 Fri, 28 Feb 2020 01:01:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bob Paauwe" <bob.j.paauwe@intel.com>
Date: Fri, 28 Feb 2020 01:01:41 -0000
Message-ID: <158285170128.7477.1860915947859143935@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200219211551.20125-1-bob.j.paauwe@intel.com>
In-Reply-To: <20200219211551.20125-1-bob.j.paauwe@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?ing_YUV444_packed_format_support_for_skl+_=28rev4=29?=
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

Series: Adding YUV444 packed format support for skl+ (rev4)
URL   : https://patchwork.freedesktop.org/series/73020/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8023 -> Patchwork_16744
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16744:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-tgl-u}:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/fi-tgl-u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16744 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-icl-u2:          [PASS][2] -> [FAIL][3] ([fdo#109635] / [i915#217])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/fi-icl-u2/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Possible fixes ####

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [FAIL][4] ([i915#217] / [i915#976]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][6] ([fdo#111096] / [i915#323]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109635]: https://bugs.freedesktop.org/show_bug.cgi?id=109635
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (46 -> 43)
------------------------------

  Additional (4): fi-blb-e6850 fi-bdw-5557u fi-ivb-3770 fi-snb-2600 
  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5474 -> IGTPW_4011
  * Linux: CI_DRM_8023 -> Patchwork_16744

  CI-20190529: 20190529
  CI_DRM_8023: fa9a02bbdfd6553ee633171f23183a115d0da577 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4011: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4011/index.html
  IGT_5474: 1be610f852de155cd915e7cda65cb2737adf04d4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16744: 8e8ab83649cddfd4640699468df891986565b31b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8e8ab83649cd drm/i915: Adding YUV444 packed format support for skl+ (V15)

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16744/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
