Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46ED11ED494
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 18:56:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CD0789D61;
	Wed,  3 Jun 2020 16:56:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D28489D61;
 Wed,  3 Jun 2020 16:56:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21387402-1500050 for multiple; Wed, 03 Jun 2020 17:56:16 +0100
MIME-Version: 1.0
In-Reply-To: <159120310339.12267.7864264457769158564@emeril.freedesktop.org>
References: <20200603145529.3851-1-chris@chris-wilson.co.uk>
 <159120310339.12267.7864264457769158564@emeril.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] ✗ Fi.CI.BAT: failure for Restore "08fff7aeddc9 ("drm/i915/tgl: Wa_1607138340") (rev2)
Message-ID: <159120337346.25109.17865252221702367032@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 03 Jun 2020 17:56:13 +0100
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

Quoting Patchwork (2020-06-03 17:51:43)
> == Series Details ==
> 
> Series: Restore "08fff7aeddc9 ("drm/i915/tgl: Wa_1607138340") (rev2)
> URL   : https://patchwork.freedesktop.org/series/77959/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8579 -> Patchwork_17855
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_17855 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_17855, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17855/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_17855:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-tgl-y:           [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-tgl-y/igt@i915_selftest@live@hangcheck.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17855/fi-tgl-y/igt@i915_selftest@live@hangcheck.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@i915_selftest@live@hangcheck:
>     - {fi-tgl-u}:         [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-tgl-u/igt@i915_selftest@live@hangcheck.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17855/fi-tgl-u/igt@i915_selftest@live@hangcheck.html
>     - {fi-tgl-dsi}:       [PASS][5] -> [INCOMPLETE][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8579/fi-tgl-dsi/igt@i915_selftest@live@hangcheck.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17855/fi-tgl-dsi/igt@i915_selftest@live@hangcheck.html

Well that would be a compelling reason not to.

Let's just wait for working HW.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
