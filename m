Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA296188D0C
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 19:23:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15E716E7FE;
	Tue, 17 Mar 2020 18:23:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EFE776E7EF;
 Tue, 17 Mar 2020 18:23:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E6EB9A0088;
 Tue, 17 Mar 2020 18:23:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 17 Mar 2020 18:23:15 -0000
Message-ID: <158446939594.5177.2255511156252275802@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200317163208.30010-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200317163208.30010-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Always_reschedule_the_new_heartbeat?=
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

Series: drm/i915/gt: Always reschedule the new heartbeat
URL   : https://patchwork.freedesktop.org/series/74791/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8143 -> Patchwork_16998
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16998/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16998:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@hangcheck:
    - {fi-tgl-u}:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8143/fi-tgl-u/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16998/fi-tgl-u/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).



Participating hosts (38 -> 40)
------------------------------

  Additional (7): fi-bdw-5557u fi-snb-2520m fi-kbl-7500u fi-ivb-3770 fi-elk-e7500 fi-skl-lmem fi-skl-6600u 
  Missing    (5): fi-byt-j1900 fi-byt-squawks fi-bwr-2160 fi-cfl-8109u fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8143 -> Patchwork_16998

  CI-20190529: 20190529
  CI_DRM_8143: 6f22cb5a2b0ba7fc92e19c9d8a038d0cd9c0208a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5516: 59aa9e450a90b4dedbe6899fd17c317bbac741c4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16998: db7a098d5f89c53e7a792ba3fad4c20e2f6be0e7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

db7a098d5f89 drm/i915/gt: Always reschedule the new heartbeat

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16998/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
