Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2BE1DACDE
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 10:05:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3190A6E5CA;
	Wed, 20 May 2020 08:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A24EF6E125;
 Wed, 20 May 2020 08:05:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 96408A0BD0;
 Wed, 20 May 2020 08:05:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 20 May 2020 08:05:11 -0000
Message-ID: <158996191161.30687.9230487062914236121@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200519222342.6395-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200519222342.6395-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Trace_the_CS_interrupt_=28rev2=29?=
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

Series: drm/i915/gt: Trace the CS interrupt (rev2)
URL   : https://patchwork.freedesktop.org/series/77441/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8509 -> Patchwork_17721
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17721/index.html

Known issues
------------

  Here are the changes found in Patchwork_17721 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - {fi-tgl-dsi}:       [INCOMPLETE][1] ([i915#1803]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8509/fi-tgl-dsi/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17721/fi-tgl-dsi/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1803]: https://gitlab.freedesktop.org/drm/intel/issues/1803


Participating hosts (48 -> 43)
------------------------------

  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8509 -> Patchwork_17721

  CI-20190529: 20190529
  CI_DRM_8509: ea6a2729d3d286137415319de4161042b0337e87 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5662: e79462659e0f45cd3f4f766f58cb792303c6bf9b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17721: 4ba28612eb5fe211fec32852e0166b9e5c2e4a06 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4ba28612eb5f drm/i915/gt: Trace the CS interrupt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17721/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
