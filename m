Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACC01BDF91
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 15:51:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A24326EE82;
	Wed, 29 Apr 2020 13:51:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 242A56EE82;
 Wed, 29 Apr 2020 13:51:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21058862-1500050 for multiple; Wed, 29 Apr 2020 14:51:40 +0100
MIME-Version: 1.0
In-Reply-To: <158816800968.6699.7293218349531718119@emeril.freedesktop.org>
References: <20200429112151.5263-1-chris@chris-wilson.co.uk>
 <158816800968.6699.7293218349531718119@emeril.freedesktop.org>
Subject: Re:  ✗ Fi.CI.BAT: failure for series starting with [CI,1/2] drm/i915/gt: Keep a no-frills swappable copy of the default context state (rev3)
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158816829904.4620.8580891622969057753@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 29 Apr 2020 14:51:39 +0100
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

Quoting Patchwork (2020-04-29 14:46:49)
> == Series Details ==
> 
> Series: series starting with [CI,1/2] drm/i915/gt: Keep a no-frills swappable copy of the default context state (rev3)
> URL   : https://patchwork.freedesktop.org/series/76719/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8391 -> Patchwork_17511
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_17511 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_17511, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_17511:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@execlists:
>     - fi-icl-u2:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-icl-u2/igt@i915_selftest@live@execlists.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-icl-u2/igt@i915_selftest@live@execlists.html
>     - fi-tgl-y:           [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-tgl-y/igt@i915_selftest@live@execlists.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-tgl-y/igt@i915_selftest@live@execlists.html
>     - fi-icl-y:           [PASS][5] -> [INCOMPLETE][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-icl-y/igt@i915_selftest@live@execlists.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-icl-y/igt@i915_selftest@live@execlists.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-cml-u2:          [PASS][7] -> [INCOMPLETE][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-cml-u2/igt@i915_selftest@live@hangcheck.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-cml-u2/igt@i915_selftest@live@hangcheck.html
>     - fi-icl-guc:         [PASS][9] -> [INCOMPLETE][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-icl-guc/igt@i915_selftest@live@hangcheck.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-icl-guc/igt@i915_selftest@live@hangcheck.html
>     - fi-cfl-8700k:       [PASS][11] -> [INCOMPLETE][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-cfl-8700k/igt@i915_selftest@live@hangcheck.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-cfl-8700k/igt@i915_selftest@live@hangcheck.html
>     - fi-whl-u:           [PASS][13] -> [INCOMPLETE][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/fi-whl-u/igt@i915_selftest@live@hangcheck.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17511/fi-whl-u/igt@i915_selftest@live@hangcheck.html

I hope this means that our minimal context is not adequate as a
replacement for a hung context and that we need to scrub some more.

I did run locally first, so I presume that it's dependent on whatever
random residual state we have in the context. Hmm. Or it's the trailing
memset in the setup...
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
