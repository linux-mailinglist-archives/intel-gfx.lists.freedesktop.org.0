Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF031BBDC2
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 14:42:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB3646E19A;
	Tue, 28 Apr 2020 12:42:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EA1F6E19A;
 Tue, 28 Apr 2020 12:42:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21045932-1500050 for multiple; Tue, 28 Apr 2020 13:42:27 +0100
MIME-Version: 1.0
In-Reply-To: <158807613633.17774.14990716184074347774@emeril.freedesktop.org>
References: <20200428085336.9580-1-chris@chris-wilson.co.uk>
 <158807613633.17774.14990716184074347774@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] ✗ Fi.CI.BAT: failure for series starting with [1/2] drm/i915/execlists: Avoid reusing the same logical CCID
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158807774635.24122.9453776948679777067@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 28 Apr 2020 13:42:26 +0100
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

Quoting Patchwork (2020-04-28 13:15:36)
> == Series Details ==
> 
> Series: series starting with [1/2] drm/i915/execlists: Avoid reusing the same logical CCID
> URL   : https://patchwork.freedesktop.org/series/76583/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8379 -> Patchwork_17490
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_17490 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_17490, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_17490:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@blt:
>     - fi-cml-u2:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-cml-u2/igt@i915_selftest@live@blt.html

Well that disproved my theory that #1 alone would be enough. Now I'm
worried if #1 and #2 are enough.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
