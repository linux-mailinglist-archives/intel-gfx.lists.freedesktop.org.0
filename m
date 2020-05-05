Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAC91C5CB0
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 17:56:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 047926E20E;
	Tue,  5 May 2020 15:56:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 596056E20E;
 Tue,  5 May 2020 15:56:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 537E2A47DA;
 Tue,  5 May 2020 15:56:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 05 May 2020 15:56:38 -0000
Message-ID: <158869419831.25911.1383678310495761425@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200505142816.13021-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200505142816.13021-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQ29u?=
 =?utf-8?q?sider_DBuf_bandwidth_when_calculating_CDCLK_=28rev9=29?=
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

Series: Consider DBuf bandwidth when calculating CDCLK (rev9)
URL   : https://patchwork.freedesktop.org/series/74739/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8430 -> Patchwork_17583
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17583/index.html


Changes
-------

  No changes found


Participating hosts (50 -> 43)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8430 -> Patchwork_17583

  CI-20190529: 20190529
  CI_DRM_8430: 2daa6f8cad645f49a898158190a20a893b4aabe3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5632: e630cb8cd2ec01d6d5358eb2a3f6ea70498b8183 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17583: 0792cc71d598d77d1570d73068661bd1cd504e02 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0792cc71d598 drm/i915: Remove unneeded hack now for CDCLK
6b07838f4a00 drm/i915: Adjust CDCLK accordingly to our DBuf bw needs
0c2d539a68ee drm/i915: Introduce for_each_dbuf_slice_in_mask macro
0debc96ba00f drm/i915: Force recalculate min_cdclk if planes config changed
b9fba3b4f20a drm/i915: Decouple cdclk calculation from modeset checks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17583/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
