Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C245640CBC3
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 19:35:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 782F96E9C6;
	Wed, 15 Sep 2021 17:35:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D81F46E978
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 16:58:07 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id DB2146121F
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 16:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631725087;
 bh=xf/35nGHEC0uJpFfdAEUCF1Li9cQYJFw4h4FqPA1QpA=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=jND++OXzlfRW8keUQt9vMhj0OxHdaF3Ww+U5JJb6oDDgSNu2ROqfYv+epWDkIQ3nO
 hqR16Pc0b9+oli+nFuPgCoQnKrHLeBfsCv2Fnb+F0oi6rXZcyl+bmn6nfP1FRJ0fZC
 QxnjoVA+zPR7bDI2RFhlmeeGWuFtxkiEKMmevPIcz0vpTHUD9B5lbOitoQ5szaASIh
 cfbW5EnCZQ4qBLpYj30BGbf93nYE2SIGPMLS6h0bWPjWmM7BhGx0YA3jToiYwZOb+I
 IDYeOrXJmyyyHJhNFQ8GxbUgIlbK0/2muF2JWxfC6pEDFbLXTdopIaVrBfkBrgj5Gu
 XwdPZsiq+bzHw==
Date: Wed, 15 Sep 2021 09:58:03 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YUImGzd/aiY8rOEW@archlinux-ax161>
References: <20210914194944.4004260-1-nathan@kernel.org>
 <163171801907.30119.3730955929994883643@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163171801907.30119.3730955929994883643@emeril.freedesktop.org>
X-Mailman-Approved-At: Wed, 15 Sep 2021 17:35:08 +0000
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Clean_up_disabled_warnings_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I don't really see how this patch could be responsible for either this
or the sparse report that I got... it is a simple build time change,
nothing at runtime should be affected.

Cheers,
Nathan

On Wed, Sep 15, 2021 at 03:00:19PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Clean up disabled warnings (rev2)
> URL   : https://patchwork.freedesktop.org/series/94009/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10590 -> Patchwork_21059
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21059 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21059, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21059:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@core_auth@basic-auth:
>     - fi-kbl-8809g:       [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-kbl-8809g/igt@core_auth@basic-auth.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-kbl-8809g/igt@core_auth@basic-auth.html
> 
>   * igt@i915_module_load@reload:
>     - fi-skl-6700k2:      [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-skl-6700k2/igt@i915_module_load@reload.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-skl-6700k2/igt@i915_module_load@reload.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_module_load@reload:
>     - fi-kbl-soraka:      [INCOMPLETE][5] ([i915#4136]) -> [INCOMPLETE][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-kbl-soraka/igt@i915_module_load@reload.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-kbl-soraka/igt@i915_module_load@reload.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@i915_module_load@reload:
>     - {fi-ehl-2}:         [INCOMPLETE][7] ([i915#4136]) -> [INCOMPLETE][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-ehl-2/igt@i915_module_load@reload.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-ehl-2/igt@i915_module_load@reload.html
>     - {fi-jsl-1}:         [INCOMPLETE][9] ([i915#4136]) -> [INCOMPLETE][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-jsl-1/igt@i915_module_load@reload.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-jsl-1/igt@i915_module_load@reload.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21059 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@amdgpu/amd_basic@cs-compute:
>     - fi-cfl-guc:         NOTRUN -> [SKIP][11] ([fdo#109271]) +17 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-cfl-guc/igt@amdgpu/amd_basic@cs-compute.html
> 
>   * igt@amdgpu/amd_basic@cs-sdma:
>     - fi-kbl-7500u:       NOTRUN -> [SKIP][12] ([fdo#109271]) +17 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-kbl-7500u/igt@amdgpu/amd_basic@cs-sdma.html
> 
>   * igt@amdgpu/amd_basic@semaphore:
>     - fi-icl-y:           NOTRUN -> [SKIP][13] ([fdo#109315]) +17 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-icl-y/igt@amdgpu/amd_basic@semaphore.html
> 
>   * igt@amdgpu/amd_cs_nop@fork-gfx0:
>     - fi-icl-u2:          NOTRUN -> [SKIP][14] ([fdo#109315]) +17 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - fi-rkl-guc:         [PASS][15] -> [INCOMPLETE][16] ([i915#4130])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
>     - fi-cfl-8109u:       [PASS][17] -> [INCOMPLETE][18] ([i915#4130])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@i915_module_load@reload:
>     - fi-skl-guc:         NOTRUN -> [INCOMPLETE][19] ([i915#4136])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-skl-guc/igt@i915_module_load@reload.html
> 
>   * igt@runner@aborted:
>     - fi-bsw-nick:        NOTRUN -> [FAIL][20] ([i915#1610] / [i915#3690])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-bsw-nick/igt@runner@aborted.html
>     - fi-kbl-8809g:       NOTRUN -> [FAIL][21] ([i915#3363])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-kbl-8809g/igt@runner@aborted.html
>     - fi-skl-6700k2:      NOTRUN -> [FAIL][22] ([i915#2426] / [i915#3363])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-skl-6700k2/igt@runner@aborted.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - fi-cfl-guc:         [INCOMPLETE][23] ([i915#4130]) -> [PASS][24]
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
>     - fi-kbl-7500u:       [INCOMPLETE][25] ([i915#4130]) -> [PASS][26]
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
>     - fi-skl-guc:         [INCOMPLETE][27] ([i915#4130]) -> [PASS][28]
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@i915_module_load@reload:
>     - fi-icl-u2:          [INCOMPLETE][29] ([i915#4136]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-icl-u2/igt@i915_module_load@reload.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-icl-u2/igt@i915_module_load@reload.html
>     - fi-kbl-guc:         [INCOMPLETE][31] -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-kbl-guc/igt@i915_module_load@reload.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-kbl-guc/igt@i915_module_load@reload.html
>     - fi-icl-y:           [INCOMPLETE][33] -> [PASS][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-icl-y/igt@i915_module_load@reload.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-icl-y/igt@i915_module_load@reload.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
>   [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
>   [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
>   [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
>   [i915#4130]: https://gitlab.freedesktop.org/drm/intel/issues/4130
>   [i915#4136]: https://gitlab.freedesktop.org/drm/intel/issues/4136
> 
> 
> Participating hosts (39 -> 36)
> ------------------------------
> 
>   Additional (1): fi-bsw-nick 
>   Missing    (4): fi-bdw-samus fi-tgl-1115g4 fi-bsw-cyan bat-dg1-6 
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_10590 -> Patchwork_21059
> 
>   CI-20190529: 20190529
>   CI_DRM_10590: d1e5e3748daf93e7f98b256958bcf80f67892d8e @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6209: 07d6594ed02f55b68d64fa6dd7f80cfbc1ce4ef8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_21059: 29f43978444f1b90c22423e3a9f4fdbb2902fb62 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 29f43978444f drm/i915: Clean up disabled warnings
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/index.html
