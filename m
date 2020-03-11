Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D36F018229B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 20:36:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06C646E9EB;
	Wed, 11 Mar 2020 19:36:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D6C2C6E9EB;
 Wed, 11 Mar 2020 19:36:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CF0C3A47E6;
 Wed, 11 Mar 2020 19:36:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 11 Mar 2020 19:36:50 -0000
Message-ID: <158395541082.13951.8338925866028503663@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmVm?=
 =?utf-8?q?actor_Gen11+_SAGV_support_=28rev4=29?=
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

Series: Refactor Gen11+ SAGV support (rev4)
URL   : https://patchwork.freedesktop.org/series/74461/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8121 -> Patchwork_16931
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16931/index.html


Changes
-------

  No changes found


Participating hosts (42 -> 42)
------------------------------

  Additional (4): fi-skl-6770hq fi-ivb-3770 fi-skl-6600u fi-snb-2600 
  Missing    (4): fi-ctg-p8600 fi-byt-clapper fi-tgl-y fi-bsw-cyan 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8121 -> Patchwork_16931

  CI-20190529: 20190529
  CI_DRM_8121: c2e15accdf0c2b6e8b766659acc8159dc19c8869 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5505: 8973d811f3fdfb4ace4aabab2095ce0309881648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16931: 8dbc69849096985e98cc18057afdf65fd56e9676 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8dbc69849096 drm/i915: Enable SAGV support for Gen12
17ff47d315f5 drm/i915: Restrict qgv points which don't have enough bandwidth.
c88f1fe1eaf8 drm/i915: Rename bw_state to new_bw_state
3c883855330f drm/i915: Added required new PCode commands
d9f13126f85f drm/i915: Refactor intel_can_enable_sagv
4e7b174c5c7c drm/i915: Add intel_bw_get_*_state helpers
aecca32ce817 drm/i915: Introduce skl_plane_wm_level accessor.
2831e00f5567 drm/i915: Start passing latency as parameter

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16931/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
