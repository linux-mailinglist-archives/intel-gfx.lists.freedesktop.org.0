Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7650A1B2549
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 13:46:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74EE06E090;
	Tue, 21 Apr 2020 11:46:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 119DE6E090;
 Tue, 21 Apr 2020 11:46:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20970368-1500050 for multiple; Tue, 21 Apr 2020 12:46:47 +0100
MIME-Version: 1.0
In-Reply-To: <158746905089.17661.7361833100870328222@emeril.freedesktop.org>
References: <20200421103751.14639-1-chris@chris-wilson.co.uk>
 <158746905089.17661.7361833100870328222@emeril.freedesktop.org>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
Subject: Re:  ✗ Fi.CI.BAT: failure for drm/i915/gt: Apply a small scalefactor for the gpu:ring ratio
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158746960580.19285.312952078185145985@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 21 Apr 2020 12:46:45 +0100
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

Quoting Patchwork (2020-04-21 12:37:30)
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@gt_timelines:
>     - fi-snb-2520m:       [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-snb-2520m/igt@i915_selftest@live@gt_timelines.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17401/fi-snb-2520m/igt@i915_selftest@live@gt_timelines.html
> 
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@gt_pm:
>     - fi-icl-u2:          [DMESG-FAIL][5] -> [PASS][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17401/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
>     - fi-glk-dsi:         [DMESG-FAIL][7] ([i915#1751]) -> [PASS][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/fi-glk-dsi/igt@i915_selftest@live@gt_pm.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17401/fi-glk-dsi/igt@i915_selftest@live@gt_pm.html

Mostly looks like an improvement.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
