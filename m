Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E263D7F9D73
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 11:27:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C268310E216;
	Mon, 27 Nov 2023 10:27:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EC5B10E02F
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 10:27:53 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 4C832CE0FDF;
 Mon, 27 Nov 2023 10:27:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F719C433C7;
 Mon, 27 Nov 2023 10:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1701080870;
 bh=mqtFeeqGki//5Nb3R143+AqRimwbXXJttWageC3NiuU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OFFL9zxnJAnhIv2QZsihLuUq6mKSrEU3HutEewWqBmC8wj4Ey9kZH08HHHrY0s6OK
 zJZxiyeDHaSXmt6RujDPBPT7LJnhuRH9OJliQMqLiUJp4RCXcxAYeyVDXQO0JCd49W
 1/eL8pYNWxbPBunN/ikK7aPYUr/nI0d2EHTOaXGxw2yoz6PMFwt1FvDvVsUmkD09L5
 u2TWtfr0bZ6oFm5a37f1YH5il4ot9Gs6cja1OS1Y66a9X9mqmQfbz9s3dTyGaD1cz1
 MOYYUotox20liwe8wOlhOdEtPTGsk7EHvqPuaSiHrypK3q+f/CrUaOAa1Ia9Vk/I6a
 nuBmvgv0yHIYQ==
Date: Mon, 27 Nov 2023 11:27:43 +0100
From: Christian Brauner <brauner@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20231127-kirschen-dissens-b511900fa85a@brauner>
References: <202311201406.2022ca3f-oliver.sang@intel.com>
 <CAHk-=wjMKONPsXAJ=yJuPBEAx6HdYRkYE8TdYVBvpm3=x_EnCw@mail.gmail.com>
 <CAHk-=wiCJtLbFWNURB34b9a_R_unaH3CiMRXfkR0-iihB_z68A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAHk-=wiCJtLbFWNURB34b9a_R_unaH3CiMRXfkR0-iihB_z68A@mail.gmail.com>
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

> So that nobody else would waste any time on this, attached is a new
> attempt. This time actually tested *after* the changes.

So I've picked up your patch (vfs.misc). It's clever alright so thanks
for the comments in there otherwise I would've stared at this for far
too long.

It's a little unpleasant because of the cast-orama going on before we
check the file pointer but I don't see that it's in any way wrong. And
given how focussed people are with __fget_* performance I think it might
even be the right thing to do.

But the cleverness means we have the same logic slightly differently
twice. Not too bad ofc but not too nice either especially because that
rcu lookup is pretty complicated already.

A few days ago I did just write a long explanatory off-list email to
someone who had questions about this and who is fairly experienced so
we're not making it easy on people. But performance or simplicity; one
can't necessarily always have both.
