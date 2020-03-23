Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6045A18FC7A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 19:14:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A25266E3D6;
	Mon, 23 Mar 2020 18:14:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D9CA6E3D6;
 Mon, 23 Mar 2020 18:14:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20665165-1500050 for multiple; Mon, 23 Mar 2020 18:14:29 +0000
MIME-Version: 1.0
In-Reply-To: <158498699246.9808.7975153423647201213@emeril.freedesktop.org>
References: <20200323161156.9732-1-chris@chris-wilson.co.uk>
 <158498699246.9808.7975153423647201213@emeril.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re:  ✗ Fi.CI.BAT: failure for drm/i915/gem: Wait until the context is finally retired before releasing engines (rev3)
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158498726934.13839.967044890710672723@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 23 Mar 2020 18:14:29 +0000
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

Quoting Patchwork (2020-03-23 18:09:52)
> #### Possible regressions ####
> 
>   * igt@gem_busy@busy-all:
>     - fi-icl-guc:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-guc/igt@gem_busy@busy-all.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-icl-guc/igt@gem_busy@busy-all.html

uaf, the dilemma of how to order the wake-up vs the retire callback.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
