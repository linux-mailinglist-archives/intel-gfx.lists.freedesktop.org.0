Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D8B19A12C
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 23:47:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86F206E34C;
	Tue, 31 Mar 2020 21:47:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD71C6E34C
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 21:47:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20757661-1500050 for multiple; Tue, 31 Mar 2020 22:46:59 +0100
MIME-Version: 1.0
In-Reply-To: <20200331213714.GD26946@jack.zhora.eu>
References: <20200331162150.3635-1-chris@chris-wilson.co.uk>
 <20200331213714.GD26946@jack.zhora.eu>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>
Message-ID: <158569121875.5852.2944993465722614214@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 31 Mar 2020 22:46:58 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Ignore readonly failures when
 updating relocs
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Andi Shyti (2020-03-31 22:37:14)
> Hi Chris,
> 
> > If the user passes in a readonly reloc[], by the time we notice we have
> > already commited to modifying the execobjects, or have indeed done so
> > already. Reporting the failure just compounds the issue as we have no
> > second pass to fall back to anymore.
> 
> It's also written in the comment, btw.
> 
> > Testcase: igt/gem_exec_reloc/readonly
> 
> if one day we will change igt, we can't fix this commit.

Heh, I'm old, I've been using this from the inception of igt even though
it's not formalized anywhere. All it is is a clue that there is some
code somewhere that exercises this patch in some way.

And short of including the test code in the patch... Hey wait that's what
selftests are so -- only execbuf2 is not amenable to unit testing atm, or
at least no effect has been spent doing so. A new interface would be
built around testing, but we might still struggle to create valid user
addresses. I think there's a way to do so with set_fs(USER_DS) but I am
not sure. Or we use usermodehelper to wrap the testcode and run it from
userspace but included as part of the driver sources.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
