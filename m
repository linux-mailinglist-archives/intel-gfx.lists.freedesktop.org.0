Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7246F26129A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 16:24:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FF1A6E844;
	Tue,  8 Sep 2020 14:23:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EB066E13A
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 05:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=tnIhBm/D9q30OCjl0Uvk6IczrpKqywtr99E3Z7cDOcY=; b=A7cOmnVXCZtWAnsWTe66XL2mO2
 EfgFVttWjeSLSSOW7M36RucpwOpruW5Go8mkpQ5cD7T0J+07ypNo8hiB1Xuxa62/LM3ciqjLddxHv
 xRrWNTfI9+FCCIHBqmRat5fAniV5XoT3gd4rkXV0XBIex7sniDbxfzTpR9WqhPmTk0d8tJXk7y1oZ
 jwShC3NettOOKABfpiYOFXx730naA1c5vdvjOVfcLXmzLB70bqh/LkhPpc6V6jKL77EIL+9N/T6Fi
 lxgKjyEDm7kq9V2R/eQojzNIjMHQCRKlWOLKzMxzwKo6SZzs1YMFkDgc6hzdfs7ZnDpdIS3qBRgdJ
 WWIrZI2g==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kFWIl-00044r-4s; Tue, 08 Sep 2020 05:36:19 +0000
Date: Tue, 8 Sep 2020 06:36:19 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Tom Murphy <murphyt7@tcd.ie>
Message-ID: <20200908053619.GA15418@infradead.org>
References: <20200903201839.7327-1-murphyt7@tcd.ie>
 <20200903201839.7327-6-murphyt7@tcd.ie>
 <20200907070035.GA25114@infradead.org>
 <CALQxJute8_y=JsW4UV1awSccOjxT_1OyPdymq=R_PurVQzENeQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALQxJute8_y=JsW4UV1awSccOjxT_1OyPdymq=R_PurVQzENeQ@mail.gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Tue, 08 Sep 2020 14:23:54 +0000
Subject: Re: [Intel-gfx] [PATCH V2 5/5] DO NOT MERGE: iommu: disable list
 appending in dma-iommu
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
Cc: intel-gfx@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, iommu@lists.linux-foundation.org,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 07, 2020 at 09:18:50PM +0100, Tom Murphy wrote:
> Yeah we talked about passing an attr to map_sg to disable merging at
> the following microconfernce:
> https://linuxplumbersconf.org/event/7/contributions/846/
> As far as I can remember everyone seemed happy with that solution. I
> won't be working on this though as I don't have any more time to
> dedicate to this. It seems Lu Baolu will take over this.

I'm absolutely again passing a flag.  Tha just invites further
abuse.  We need a PCI ID based quirk or something else that can't
be as easily abused.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
