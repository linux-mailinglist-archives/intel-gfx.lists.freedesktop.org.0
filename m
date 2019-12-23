Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 244371297CA
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 16:06:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A12E6E2B6;
	Mon, 23 Dec 2019 15:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F7A16E2B6;
 Mon, 23 Dec 2019 15:06:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19673184-1500050 for multiple; Mon, 23 Dec 2019 15:06:30 +0000
MIME-Version: 1.0
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Dave Airlie <airlied@gmail.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191219124635.GA16068@jlahtine-desk.ger.corp.intel.com>
References: <20191219124635.GA16068@jlahtine-desk.ger.corp.intel.com>
Message-ID: <157711358834.2689.10289674532634098369@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 23 Dec 2019 15:06:28 +0000
Subject: Re: [Intel-gfx] [PULL] drm-intel-fixes
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Joonas Lahtinen (2019-12-19 12:46:35)
> Hi Dave & Daniel,
> 
> Another -rc, another CI fire due to regressions elsewhere.
> 
> Our CI needed the following patches to get machines boot with -rc2:
> 
>         Revert "devtmpfs: use do_mount() instead of ksys_mount()"
>         (commit 5e787dbf659fe77d56215be74044f85e01b3920f)
> 
>         Revert "initrd: use do_mount() instead of ksys_mount()"
>         (commit d4440aac83d12f87df9bcc51e992b9c28c7f4fa5)
> 
>         Revert "init: use do_mount() instead of ksys_mount()"
>         (commit cccaa5e33525fc07f4a2ce0518e50b9ddf435e47)
> 
> I have queued CI_DIF_433 with this PR contents + reverts to get any
> CI results:
> 
> https://intel-gfx-ci.01.org/tree/drm-intel-fixes/CI_DIF_433/git-log.txt
> 
> Nothing appears in the UI for the failed-to-boot runs, so don't be
> confused. CI_DIF_433 is equal to this PR + 3 reverts needed to mitigate
> the -rc2 regressions.
> 
> Due to the CI fires, it may take a while to get the full results. Due to
> my holidays, I'll defer to Chris to let you know if the results are good
> or not. There have been some GEM bugs tackled in drm-tip, so have to make
> sure they are under control.

Nothing unexpected turned up by CI, i.e. its as good as can be.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
