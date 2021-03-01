Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E3F327BFA
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 11:24:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90A806E581;
	Mon,  1 Mar 2021 10:24:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FA136E581
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 10:24:44 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A1ED5601FE;
 Mon,  1 Mar 2021 10:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1614594283;
 bh=FK/AThtBxITI//ZD/oP1uszU74a03b0Ho7NJTF0EuvA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G4RWutD39b7bC3hnooLgtMNpcm/C0ne99k5IiETsqkGCQvDnvryVbUIQRJd7IYtNe
 uykb0yJhX3cZTIpLctmcVwhGxz6j6+TnlOzvttvWYfQ0EGW2+500moyqpah+5PevoK
 QOpWeRdFO1e0ceBpYiB+4q01Z3SAtfCMiQIstuWg=
Date: Mon, 1 Mar 2021 11:24:40 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Diego Calleja <diegocg@gmail.com>
Message-ID: <YDzA6LMG6rUxJXWP@kroah.com>
References: <3423617.kz1aARBMGD@archlinux> <1911334.sV3ZJath2r@archlinux>
 <YDyvNoiRAQwT4boR@kroah.com> <1969510.QSeQnKm9EC@archlinux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1969510.QSeQnKm9EC@archlinux>
Subject: Re: [Intel-gfx] -stable regression in Intel graphics,
 introduced in Linux 5.10.9
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 01, 2021 at 11:11:13AM +0100, Diego Calleja wrote:
> El lunes, 1 de marzo de 2021 10:09:10 (CET) Greg KH escribi=F3:
> > I do not see all 3 commits in Linus's tree already, am I missing
> > something?
> > =

> > What are the git ids that you are looking at?
> =

> I used grep on the git log, the commits are there but seem to have differ=
ent commit ids (except for the first one)
> =

> commit e627d5923cae93fa4188f4c4afba6486169a1337
> Author: Chris Wilson <chris@chris-wilson.co.uk>
> Date:   Tue Jan 19 11:07:57 2021 +0000
> =

>     drm/i915/gt: One more flush for Baytrail clear residuals
> =

> =

> commit d5109f739c9f14a3bda249cb48b16de1065932f0
> Author: Chris Wilson <chris@chris-wilson.co.uk>
> Date:   Mon Jan 25 22:02:47 2021 +0000
> =

>     drm/i915/gt: Flush before changing register state
> =

> =

> commit 81ce8f04aa96f7f6cae05770f68b5d15be91f5a2
> Author: Chris Wilson <chris@chris-wilson.co.uk>
> Date:   Wed Feb 10 12:27:28 2021 +0000
> =

>     drm/i915/gt: Correct surface base address for renderclear
> =

> =


Ugh, have I mentioned recently just how badly I think the drm developers
handle their git trees?  It's a constant mess to unwind that stuff...

{sigh}

Now queued up.

greg k-h
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
