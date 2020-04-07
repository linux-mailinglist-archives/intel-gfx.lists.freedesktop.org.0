Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCF21A0DEB
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 14:44:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F20C6E868;
	Tue,  7 Apr 2020 12:44:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 309CD6E869;
 Tue,  7 Apr 2020 12:44:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20827568-1500050 for multiple; Tue, 07 Apr 2020 13:44:00 +0100
MIME-Version: 1.0
In-Reply-To: <158625917195.26327.16380027807054521872@emeril.freedesktop.org>
References: <20200407091406.8716-1-chris@chris-wilson.co.uk>
 <158625917195.26327.16380027807054521872@emeril.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re:  ✗ Fi.CI.BAT: failure for drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore (rev2)
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158626344105.8918.13143070975269776848@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 07 Apr 2020 13:44:01 +0100
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

Quoting Patchwork (2020-04-07 12:32:51)
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@execlists:
>     - fi-skl-6700k2:      [PASS][1] -> [DMESG-FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17232/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
>     - fi-icl-y:           NOTRUN -> [INCOMPLETE][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17232/fi-icl-y/igt@i915_selftest@live@execlists.html

What actually happenned here is the timeslice yielded twice in quick
succession, thereby putting the original context back into the active
slot. The test worked too good.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
