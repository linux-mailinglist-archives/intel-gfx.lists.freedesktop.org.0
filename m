Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 547ED1BE4F6
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 19:16:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92E7B6EAA5;
	Wed, 29 Apr 2020 17:16:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD2E16EAA5;
 Wed, 29 Apr 2020 17:16:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21061465-1500050 for multiple; Wed, 29 Apr 2020 18:16:23 +0100
MIME-Version: 1.0
In-Reply-To: <158817967996.6698.13955567058604324276@emeril.freedesktop.org>
References: <20200429112151.5263-1-chris@chris-wilson.co.uk>
 <158817967996.6698.13955567058604324276@emeril.freedesktop.org>
Subject: Re:  ✗ Fi.CI.BAT: failure for series starting with [CI,1/2] drm/i915/gt: Keep a no-frills swappable copy of the default context state (rev4)
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158817987631.2633.9487788085570508080@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 29 Apr 2020 18:04:36 +0100
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

Quoting Patchwork (2020-04-29 18:01:19)
> == Series Details ==
> 
> Series: series starting with [CI,1/2] drm/i915/gt: Keep a no-frills swappable copy of the default context state (rev4)
> URL   : https://patchwork.freedesktop.org/series/76719/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8392 -> Patchwork_17516
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_17516 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_17516, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_17516:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@workarounds:
>     - fi-skl-6700k2:      [PASS][1] -> [DMESG-FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8392/fi-skl-6700k2/igt@i915_selftest@live@workarounds.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17516/fi-skl-6700k2/igt@i915_selftest@live@workarounds.html

So closing the context fixes the reset, but also discards the default
setup such as the whitelist.

Catch 22.

Back to the question of what we are missing in resetting the context
image then.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
