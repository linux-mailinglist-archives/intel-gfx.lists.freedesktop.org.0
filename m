Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7D219989B
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 16:32:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA3266E0DD;
	Tue, 31 Mar 2020 14:32:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DDDE5898AA;
 Tue, 31 Mar 2020 14:32:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D80F8A66C9;
 Tue, 31 Mar 2020 14:32:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 31 Mar 2020 14:32:49 -0000
Message-ID: <158566516985.5566.17874066329772263646@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200330210647.3343-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200330210647.3343-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Utilize_rcu_iteration_of_context_engines_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915/gem: Utilize rcu iteration of context engines (rev2)
URL   : https://patchwork.freedesktop.org/series/75270/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8223 -> Patchwork_17151
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17151/index.html

Known issues
------------

  Here are the changes found in Patchwork_17151 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [PASS][1] -> [INCOMPLETE][2] ([i915#1430] / [i915#656])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8223/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17151/fi-cfl-8109u/igt@i915_selftest@live@execlists.html

  
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (41 -> 43)
------------------------------

  Additional (6): fi-bdw-5557u fi-hsw-peppy fi-skl-guc fi-bwr-2160 fi-kbl-7500u fi-ivb-3770 
  Missing    (4): fi-ctg-p8600 fi-byt-clapper fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8223 -> Patchwork_17151

  CI-20190529: 20190529
  CI_DRM_8223: 1d63647b277eabde6a0a6f1b68b6569482ff4063 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5548: d9e70dc1b35633b7d5c81cbfa165e331189eb260 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17151: c8a455ae5b6044259ff17fcb49dbb9125d3be278 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c8a455ae5b60 drm/i915/gem: Utilize rcu iteration of context engines

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17151/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
