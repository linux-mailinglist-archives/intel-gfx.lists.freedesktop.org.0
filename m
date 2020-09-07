Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A561B261296
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 16:23:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C52126E841;
	Tue,  8 Sep 2020 14:23:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F97D88E41
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Sep 2020 07:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=mOwuNgBR5sDIJB+BvLt/e/G3W0U4pZcy6kQxubHpOsc=; b=g4rWFwqPV1Go6Awo3Xadh/+FTc
 rhkqVOirmN3euJ0YqlVMZuHmarTPW9k/+KBS0IBJiq7PF6T/kKmi+Jfc3KrgtB827pIK6HWC/Mdht
 5xhoUhE0TgTLAd6RWIpqSgFwrqFKpVC7zMd2tCVTTzzCpWaSypFoADb7e9sp/QltHPE07bTrXlPCo
 jJpbTL7D5CEklu82hlfFs0pIt6EB91s9Pmo7ouUpJXku2JCl7cHofEBhAXLGEdBYyHfDd6vouz/NI
 JFp7LEB0sCZpyV49c8FZmuTBa8B14Fk7K9ICTPjCb0tLjN2FnTVYTfg2bFkUBB72NcK8nFsDXX9cL
 9fzmjARw==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kFB8l-0006fv-7r; Mon, 07 Sep 2020 07:00:35 +0000
Date: Mon, 7 Sep 2020 08:00:35 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Tom Murphy <murphyt7@tcd.ie>
Message-ID: <20200907070035.GA25114@infradead.org>
References: <20200903201839.7327-1-murphyt7@tcd.ie>
 <20200903201839.7327-6-murphyt7@tcd.ie>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200903201839.7327-6-murphyt7@tcd.ie>
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 03, 2020 at 09:18:37PM +0100, Tom Murphy wrote:
> Disable combining sg segments in the dma-iommu api.
> Combining the sg segments exposes a bug in the intel i915 driver which
> causes visual artifacts and the screen to freeze. This is most likely
> because of how the i915 handles the returned list. It probably doesn't
> respect the returned value specifying the number of elements in the list
> and instead depends on the previous behaviour of the intel iommu driver
> which would return the same number of elements in the output list as in
> the input list.

So what is the state of addressing this properly in i915?  IF we can't
get it done ASAP I wonder if we need a runtime quirk to disable
merging instead of blocking this conversion..
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
