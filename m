Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F157B1B3CE3
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 12:10:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 595886E3AA;
	Wed, 22 Apr 2020 10:10:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDF1F6E3AA;
 Wed, 22 Apr 2020 10:10:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20981258-1500050 for multiple; Wed, 22 Apr 2020 11:10:47 +0100
MIME-Version: 1.0
In-Reply-To: <158754981989.5177.11198579212261681048@emeril.freedesktop.org>
References: <20200422092924.19156-1-chris@chris-wilson.co.uk>
 <158754981989.5177.11198579212261681048@emeril.freedesktop.org>
Subject: Re:  ✗ Fi.CI.BAT: failure for drm/i915/gt: Warn more clearly if we the context state is still pinned
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158755024592.11203.257128212591106815@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 22 Apr 2020 11:10:45 +0100
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

Quoting Patchwork (2020-04-22 11:03:39)
> #### Possible regressions ####
> 
>   * igt@i915_module_load@reload:
>     - fi-ivb-3770:        [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8347/fi-ivb-3770/igt@i915_module_load@reload.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17416/fi-ivb-3770/igt@i915_module_load@reload.html
> 
>   * igt@i915_selftest@live@evict:
>     - fi-snb-2520m:       [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8347/fi-snb-2520m/igt@i915_selftest@live@evict.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17416/fi-snb-2520m/igt@i915_selftest@live@evict.html
> 
>   * igt@i915_selftest@live@gt_engines:
>     - fi-bsw-n3050:       [PASS][5] -> [INCOMPLETE][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8347/fi-bsw-n3050/igt@i915_selftest@live@gt_engines.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17416/fi-bsw-n3050/igt@i915_selftest@live@gt_engines.html

Look on the bright side, at least you now know what you suspected as the
cause.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
