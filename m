Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8788E19B669
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 21:32:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E732189BDB;
	Wed,  1 Apr 2020 19:32:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1D7F89BDB;
 Wed,  1 Apr 2020 19:32:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20769330-1500050 for multiple; Wed, 01 Apr 2020 20:32:49 +0100
MIME-Version: 1.0
In-Reply-To: <158576947588.25628.9057470012004973455@emeril.freedesktop.org>
References: <20200401185834.20595-1-chris@chris-wilson.co.uk>
 <158576947588.25628.9057470012004973455@emeril.freedesktop.org>
Subject: Re:  ✗ Fi.CI.BAT: failure for drm/i915/gem: Try allocating va from free space (rev2)
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158576956902.5852.13847559244041067484@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 01 Apr 2020 20:32:49 +0100
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

Quoting Patchwork (2020-04-01 20:31:15)
> == Series Details ==
> 
> Series: drm/i915/gem: Try allocating va from free space (rev2)
> URL   : https://patchwork.freedesktop.org/series/74748/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8233 -> Patchwork_17170
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_17170 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_17170, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_17170:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_busy@busy-all:
>     - fi-bsw-nick:        [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8233/fi-bsw-nick/igt@gem_busy@busy-all.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17170/fi-bsw-nick/igt@gem_busy@busy-all.html

Looks like CI is working!
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
