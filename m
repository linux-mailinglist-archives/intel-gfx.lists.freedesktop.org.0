Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4CF1B69C0
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 01:26:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D3166EA3A;
	Thu, 23 Apr 2020 23:26:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 170576E137;
 Thu, 23 Apr 2020 23:26:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0EB76A363D;
 Thu, 23 Apr 2020 23:26:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 23 Apr 2020 23:26:06 -0000
Message-ID: <158768436603.26748.17634090779017114070@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200423182440.21876-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200423182440.21876-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Add_context_batchbuffers_registers_to_live?=
 =?utf-8?b?X2xyY19maXhlZCAocmV2NCk=?=
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

Series: drm/i915/selftests: Add context batchbuffers registers to live_lrc_fixed (rev4)
URL   : https://patchwork.freedesktop.org/series/76407/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8354 -> Patchwork_17449
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17449 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17449, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17449/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17449:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17449/fi-bsw-nick/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_parallel@engines@fds}:
    - fi-bsw-nick:        [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8354/fi-bsw-nick/igt@gem_exec_parallel@engines@fds.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17449/fi-bsw-nick/igt@gem_exec_parallel@engines@fds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).



Participating hosts (48 -> 44)
------------------------------

  Additional (2): fi-kbl-7560u fi-bwr-2160 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8354 -> Patchwork_17449

  CI-20190529: 20190529
  CI_DRM_8354: 6ec6eeeda39e1733777f9115ba813a992a47b5fe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5608: e7bcaf1dd251d454706c7cd64282f531aec50183 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17449: 22d0fd6a3d3fcfd63dbbde1858fd0ff348e01e55 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

22d0fd6a3d3f drm/i915/selftests: Add context batchbuffers registers to live_lrc_fixed

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17449/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
