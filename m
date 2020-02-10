Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A06157F70
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 17:06:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9440E6ECB4;
	Mon, 10 Feb 2020 16:06:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 798646ECB4;
 Mon, 10 Feb 2020 16:06:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20177270-1500050 for multiple; Mon, 10 Feb 2020 16:06:09 +0000
MIME-Version: 1.0
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <158135044196.3098.1826933363356106302@emeril.freedesktop.org>
References: <20200207111124.2762388-1-chris@chris-wilson.co.uk>
 <158135044196.3098.1826933363356106302@emeril.freedesktop.org>
Message-ID: <158135076656.5235.5492394752953579664@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 10 Feb 2020 16:06:06 +0000
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/gem=3A_Don=27t_leak_non-pe?=
 =?utf-8?q?rsistent_requests_on_changing_engines?=
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

Quoting Patchwork (2020-02-10 16:00:41)
> #### Possible fixes ####
>
>   * {igt@gem_ctx_persistence@replace-hostile@vcs0}:
>     - shard-kbl:          [FAIL][27] ([i915#1154]) -> [PASS][28] +9 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-kbl1/igt@gem_ctx_persistence@replace-hostile@vcs0.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-kbl1/igt@gem_ctx_persistence@replace-hostile@vcs0.html
> 
>   * {igt@gem_ctx_persistence@replace@vcs0}:
>     - shard-apl:          [FAIL][29] ([i915#1154]) -> [PASS][30] +7 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-apl4/igt@gem_ctx_persistence@replace@vcs0.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-apl3/igt@gem_ctx_persistence@replace@vcs0.html
>     - shard-iclb:         [FAIL][31] ([i915#1154]) -> [PASS][32] +7 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb2/igt@gem_ctx_persistence@replace@vcs0.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-iclb7/igt@gem_ctx_persistence@replace@vcs0.html
>     - shard-glk:          [FAIL][33] ([i915#1154]) -> [PASS][34] +7 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-glk9/igt@gem_ctx_persistence@replace@vcs0.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-glk9/igt@gem_ctx_persistence@replace@vcs0.html
> 
>   * {igt@gem_ctx_persistence@replace@vecs0}:
>     - shard-tglb:         [FAIL][35] ([i915#1154]) -> [PASS][36] +9 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-tglb1/igt@gem_ctx_persistence@replace@vecs0.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-tglb7/igt@gem_ctx_persistence@replace@vecs0.html

Yay \o/
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
