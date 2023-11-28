Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9AE7FBE95
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 16:52:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D96DC10E57B;
	Tue, 28 Nov 2023 15:52:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3E4110E57B
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 15:52:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 7A7D2B810A8;
 Tue, 28 Nov 2023 15:52:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69B3AC433C7;
 Tue, 28 Nov 2023 15:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1701186757;
 bh=W49ajMFtN9aTN86Tnl430idPA/txjACjmrkpyxn3DE8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qhCM0efNQ55/CadBsgmu3A+z7I663gGmRlop+aHtsSVP3W3KCJxS4fFnJj2rO9RpG
 y+R924PIXTrR+evJd3GTxqaL5irmDkrqNbRWw9SV1YHNS71I8J/El1OHEQtPkEIRyr
 Afc1O5Xcnr2agGFbz1OiKZ75NeDBlttGNDF5zEkddR7IRkSJ/bYJXRhvwXvYTDouWl
 WOc9GyV32DURezCRx7CTi+a6DGNmgsBWfsB2RHkt8xIdcAxiZzDkyVQICDB2vFML3C
 hmh8wYtpto+fz3KlsQeu2I/pmzyU/Po0vKVV7MZySBCX95gqixVMLw42/5bpJlCqj3
 T2wz5oaTTY4Gw==
Date: Tue, 28 Nov 2023 16:52:31 +0100
From: Christian Brauner <brauner@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20231128-serpentinen-sinnieren-e186ea8742e9@brauner>
References: <202311201406.2022ca3f-oliver.sang@intel.com>
 <CAHk-=wjMKONPsXAJ=yJuPBEAx6HdYRkYE8TdYVBvpm3=x_EnCw@mail.gmail.com>
 <CAHk-=wiCJtLbFWNURB34b9a_R_unaH3CiMRXfkR0-iihB_z68A@mail.gmail.com>
 <20231127-kirschen-dissens-b511900fa85a@brauner>
 <CAHk-=wgwpzgoSYU9Ob+MRyFuHRow4s5J099=DsCo1hGT=bkCtw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAHk-=wgwpzgoSYU9Ob+MRyFuHRow4s5J099=DsCo1hGT=bkCtw@mail.gmail.com>
Subject: Re: [Intel-gfx] [linus:master] [file] 0ede61d858:
 will-it-scale.per_thread_ops -2.9% regression
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
Cc: feng.tang@intel.com, Jann Horn <jannh@google.com>,
 intel-gfx@lists.freedesktop.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, fengwei.yin@intel.com, gfs2@lists.linux.dev,
 linux-fsdevel@vger.kernel.org, kernel test robot <oliver.sang@intel.com>,
 ying.huang@intel.com, oe-lkp@lists.linux.dev, bpf@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 27, 2023 at 09:10:54AM -0800, Linus Torvalds wrote:
> On Mon, 27 Nov 2023 at 02:27, Christian Brauner <brauner@kernel.org> wrote:
> >
> > So I've picked up your patch (vfs.misc). It's clever alright so thanks
> > for the comments in there otherwise I would've stared at this for far
> > too long.
> 
> Note that I should probably have commented on one other thing: that
> whole "just load from fd[0] is always safe, because the fd[] array
> always exists".

I added a comment to that effect in the code.

> 
> IOW, that whole "load and mask" thing only works when you know the
> array exists at all.
> 
> Doing that "just mask the index" wouldn't be valid if "size = 0" is an
> option and might mean that we don't have an array at all (ie if "->fd"
> itself could be NULL.
> 
> But we never have a completely empty file descriptor array, and
> fdp->fd is never NULL.  At a minimum 'max_fds' is NR_OPEN_DEFAULT.
> 
> (The whole 'tsk->files' could be NULL, but only for kernel threads or
> when exiting, so fget_task() will check for *that*, but it's a
> separate thing)

Yep.

> 
> So that's why it's safe to *entirely* remove the whole
> 
>                 if (unlikely(fd >= fdt->max_fds))
> 
> test, and do it *all* with just "mask the index, and mask the resulting load".

Yep.
