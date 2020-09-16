Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB79126BD35
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 08:33:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58E4F6E9AF;
	Wed, 16 Sep 2020 06:33:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F35666E9B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 06:33:23 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 44177206A5;
 Wed, 16 Sep 2020 06:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600238003;
 bh=wIHXaI6KNDEeIf6lJk7M0ugz5xhnlkyEFdtA6sHzDGo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2q9tLnApNZIwyqKiTSt9JDlKToe7BELueEwJvazqnppkuBa2vwDc/M5j9Khj6J77O
 1hOkLQgM69RsmNOWjRVafVr2nBXlGOKdNmlLXnmJmI3iv5DIEml06eFDGjzyS/VGWF
 HcA4O7vh3sngiD7uuss6Pz/L4fB63eiafZrWJbjM=
Date: Wed, 16 Sep 2020 08:33:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200916063358.GL142621@kroah.com>
References: <20200915124150.12045-1-chris@chris-wilson.co.uk>
 <20200915124150.12045-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200915124150.12045-2-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/gt: Wait for CSB entries on
 Tigerlake
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 15, 2020 at 01:41:48PM +0100, Chris Wilson wrote:
> On Tigerlake, we are seeing a repeat of commit d8f505311717 ("drm/i915/icl:
> Forcibly evict stale csb entries") where, presumably, due to a missing
> Global Observation Point synchronisation, the write pointer of the CSB
> ringbuffer is updated _prior_ to the contents of the ringbuffer. That is
> we see the GPU report more context-switch entries for us to parse, but
> those entries have not been written, leading us to process stale events,
> and eventually report a hung GPU.
> 
> However, this effect appears to be much more severe than we previously
> saw on Icelake (though it might be best if we try the same approach
> there as well and measure), and Bruce suggested the good idea of resetting
> the CSB entry after use so that we can detect when it has been updated by
> the GPU. By instrumenting how long that may be, we can set a reliable
> upper bound for how long we should wait for:
> 
>     513 late, avg of 61 retries (590 ns), max of 1061 retries (10099 ns)
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2045
> References: d8f505311717 ("drm/i915/icl: Forcibly evict stale csb entries")

What does "References:" mean?  Should that be "Fixes:"?

thanks,

greg k-h
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
