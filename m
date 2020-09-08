Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 671F6261295
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 16:23:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9399C6E83E;
	Tue,  8 Sep 2020 14:23:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A90C6E58E
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 05:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=S3ldECwV6aYVj8kFvW2tKZDE9/xw5MtcF6dMvAAzlgk=; b=PwJlaz8QSQA8PmEsdT/oEaZTXP
 ybFVlLL+6NodzFFNNFhCkvJoI/2GqgQmwf0qU3lL9ljNCgMfVnL+9OubVVmnvsaKQGiXmaOCmfykA
 6tyQ9TLS/LgF/mbnW8+YfiBKz8RdibDRYPaIdUsSX36o/zYxmUJijjHKll8nWoGOq6b0TD++EtI+j
 0U4SS7my6/Cah3C7yLeF3v2knnA3X9WwbpTiRr0rW5bFYo3UxCSdWrtBdJO/lacNS0WCm9RGY8PEK
 ZkEqbNlf9pFfq0IAtR3PK40VroF4oi20xKozo26cC8mqcPqXaqG/dDWKVgLzwIPQwgtnmJqgTXsE4
 L3M7KigA==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kFWb0-00057I-8N; Tue, 08 Sep 2020 05:55:10 +0000
Date: Tue, 8 Sep 2020 06:55:10 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Tom Murphy <murphyt7@tcd.ie>
Message-ID: <20200908055510.GA19078@infradead.org>
References: <20200903201839.7327-1-murphyt7@tcd.ie>
 <20200903201839.7327-6-murphyt7@tcd.ie>
 <20200907070035.GA25114@infradead.org>
 <CALQxJute8_y=JsW4UV1awSccOjxT_1OyPdymq=R_PurVQzENeQ@mail.gmail.com>
 <20200908053619.GA15418@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200908053619.GA15418@infradead.org>
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

On Tue, Sep 08, 2020 at 06:36:19AM +0100, Christoph Hellwig wrote:
> On Mon, Sep 07, 2020 at 09:18:50PM +0100, Tom Murphy wrote:
> > Yeah we talked about passing an attr to map_sg to disable merging at
> > the following microconfernce:
> > https://linuxplumbersconf.org/event/7/contributions/846/
> > As far as I can remember everyone seemed happy with that solution. I
> > won't be working on this though as I don't have any more time to
> > dedicate to this. It seems Lu Baolu will take over this.
> 
> I'm absolutely again passing a flag.  Tha just invites further
> abuse.  We need a PCI ID based quirk or something else that can't
> be as easily abused.

Also, I looked at i915 and there are just three dma_map_sg callers.
The two dmabuf related ones are fixed by Marek in his series, leaving
just the one in i915_gem_gtt_prepare_pages, which does indeed look
very fishy.  But if that one is so hard to fix it can just be replaced
by an open coded for_each_sg loop that contains manual dma_map_page
calls.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
