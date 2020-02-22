Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78529168E50
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 11:47:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CA1E6E802;
	Sat, 22 Feb 2020 10:47:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E3886E802;
 Sat, 22 Feb 2020 10:47:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20312355-1500050 for multiple; Sat, 22 Feb 2020 10:47:47 +0000
MIME-Version: 1.0
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <158233706810.32578.6537544974618276825@emeril.freedesktop.org>
References: <20200221184355.2848409-1-chris@chris-wilson.co.uk>
 <158233706810.32578.6537544974618276825@emeril.freedesktop.org>
Message-ID: <158236846605.7320.18135882360167383867@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 22 Feb 2020 10:47:46 +0000
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Verify_LRC_isolation?=
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

Quoting Patchwork (2020-02-22 02:04:28)
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live_gt_lrc:
>     - fi-icl-y:           [PASS][1] -> [DMESG-FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-icl-y/igt@i915_selftest@live_gt_lrc.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-icl-y/igt@i915_selftest@live_gt_lrc.html
>     - fi-icl-u3:          [PASS][3] -> [DMESG-FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-icl-u3/igt@i915_selftest@live_gt_lrc.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-icl-u3/igt@i915_selftest@live_gt_lrc.html
>     - fi-icl-guc:         [PASS][5] -> [DMESG-FAIL][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-icl-guc/igt@i915_selftest@live_gt_lrc.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-icl-guc/igt@i915_selftest@live_gt_lrc.html
>     - fi-icl-u2:          [PASS][7] -> [DMESG-FAIL][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-icl-u2/igt@i915_selftest@live_gt_lrc.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-icl-u2/igt@i915_selftest@live_gt_lrc.html
>     - fi-icl-dsi:         [PASS][9] -> [DMESG-FAIL][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-icl-dsi/igt@i915_selftest@live_gt_lrc.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-icl-dsi/igt@i915_selftest@live_gt_lrc.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@i915_selftest@live_gt_lrc:
>     - {fi-ehl-1}:         [PASS][11] -> [DMESG-FAIL][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7984/fi-ehl-1/igt@i915_selftest@live_gt_lrc.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16669/fi-ehl-1/igt@i915_selftest@live_gt_lrc.html

What can I say other than "Bingo!"
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
