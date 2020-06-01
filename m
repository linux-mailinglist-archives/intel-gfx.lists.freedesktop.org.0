Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB6E1EA2FE
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 13:40:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AE04884E2;
	Mon,  1 Jun 2020 11:40:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3BF1884E2;
 Mon,  1 Jun 2020 11:40:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21359723-1500050 for multiple; Mon, 01 Jun 2020 12:40:00 +0100
MIME-Version: 1.0
In-Reply-To: <159100924007.14888.836552676635186270@emeril.freedesktop.org>
References: <20200601072446.19548-1-chris@chris-wilson.co.uk>
 <159100924007.14888.836552676635186270@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] ✗ Fi.CI.IGT: failure for series starting with [01/36] drm/i915: Handle very early engine initialisation failure (rev2)
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159101159719.29407.14651351122274434786@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 01 Jun 2020 12:39:57 +0100
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Patchwork (2020-06-01 12:00:40)
> == Series Details ==
> 
> Series: series starting with [01/36] drm/i915: Handle very early engine initialisation failure (rev2)
> URL   : https://patchwork.freedesktop.org/series/77857/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8560_full -> Patchwork_17828_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_17828_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_17828_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_17828_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@runner@aborted:
>     - shard-hsw:          NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-hsw6/igt@runner@aborted.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@gem_exec_fence@parallel@vecs0}:
>     - shard-hsw:          [PASS][2] -> [FAIL][3] +3 similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8560/shard-hsw1/igt@gem_exec_fence@parallel@vecs0.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17828/shard-hsw2/igt@gem_exec_fence@parallel@vecs0.html

Sigh. They dropped the memory compare from MI_SEMAPHORE_MBOX in Haswell.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
