Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7384337BB97
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 13:15:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46B866EB78;
	Wed, 12 May 2021 11:15:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D31D06EB78
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 11:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=/YzIPVf0TSTnsIiEebVAwyDbe66VAQBxqqFJbqGyDhM=; b=t6WgltO/8euk95nxU3pgCRIET1
 TBjLWJTUgj0j+tgtmL5Ksuz3zF7W99rqn/72myM45MaxGNie0oYHW+BcjkYHxdhuUia2clhFIJnHv
 PLAJ9lfxm5XVdyCWu2p70zI0Il2KJBqp62saEs0WfG0qnd4vt5toydMYMtmqajCgtpk5z3jMCAKpj
 yA9TDDDVs2q37/AKF9WtEiLeb0jRwzHIxSpJRzCqTkNrqEOn1A4i6RRJ5KjXVlFJoX+tCaI7aYjjq
 pnf9ydfiQDIIGFKCVzGBEalJYEKiBIe7v5bKRUYhbKUsdbYtHPgZx6mTVQqb5XU+5Gqs0BJC3mtg+
 bALQOHdQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lgmpU-008D7l-Vl; Wed, 12 May 2021 11:15:11 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 06921300242;
 Wed, 12 May 2021 13:15:04 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id E5F5C20B5CA97; Wed, 12 May 2021 13:15:03 +0200 (CEST)
Date: Wed, 12 May 2021 13:15:03 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <YJu4tzXmCJbKp7Fm@hirez.programming.kicks-ass.net>
References: <b6b61cf0-5874-f4c0-1fcc-4b3848451c31@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b6b61cf0-5874-f4c0-1fcc-4b3848451c31@redhat.com>
Subject: Re: [Intel-gfx] 5.13 i915/PAT regression on Brasswell,
 adding nopat to the kernel commandline worksaround this
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
Cc: intel-gfx@lists.freedesktop.org, x86@kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 12, 2021 at 11:57:02AM +0200, Hans de Goede wrote:
> Hi All,
> 
> I'm not sure if this is a i915 bug, or caused by changes elsewhere in the kernel,
> so I thought it would be best to just send out an email and then see from there.
> 
> With 5.13-rc1 gdm fails to show and dmesg contains:
> 
> [   38.504613] x86/PAT: Xwayland:683 map pfn RAM range req write-combining for [mem 0x23883000-0x23883fff], got write-back
> <repeated lots of times for different ranges>
> [   39.484766] x86/PAT: gnome-shell:632 map pfn RAM range req write-combining for [mem 0x1c6a3000-0x1c6a3fff], got write-back
> <repeated lots of times for different ranges>
> [   54.314858] Asynchronous wait on fence 0000:00:02.0:gnome-shell[632]:a timed out (hint:intel_cursor_plane_create [i915])
> [   58.339769] i915 0000:00:02.0: [drm] GPU HANG: ecode 8:1:86dfdffb, in gnome-shell [632]
> [   58.341161] i915 0000:00:02.0: [drm] Resetting rcs0 for stopped heartbeat on rcs0
> [   58.341267] i915 0000:00:02.0: [drm] gnome-shell[632] context reset due to GPU hang
> 
> Because of the PAT errors I tried adding "nopat" to the kernel commandline
> and I'm happy to report that that works around this.
> 
> Any hints on how to debug this further (without doing a full git bisect) would be
> appreciated.

IIRC it's because of 74ffa5a3e685 ("mm: add remap_pfn_range_notrack"),
which added a sanity check to make sure expectations were met. It turns
out they were not.

The bug is not new, the warning is. AFAIK the i915 team is aware, but
other than that I've not followed.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
