Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8446A3D1DC9
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 07:53:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22F236E92E;
	Thu, 22 Jul 2021 05:53:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8BF56E8ED;
 Thu, 22 Jul 2021 05:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=8JEcuwQ7CqlETKVrYpgdp5zLm0oWbQvOCKRV6BLxz8A=; b=UEZZRWpT5mOQZBmeIHchDc/kU+
 3snI7DpSlFEl6DEmOR6a6cNuaSa/XuuOuK9KQDIZLvxC/doiflksALie5qr9FYN2ZNAZiFqeDp05y
 GaaFLgJokNqiW96wKlGQrZp5DOnH5v6nkzuze2vtneoZZ8NVeMl0nzx5q3jwUF7KY9tCz7/SE+xy2
 W46zifrmtsyZK+O2JTv0mP0UbXWQP4QYJs2PqHE4j1hmEP9PJinDLEDL7J+dViELE6Kdy/kyz73/5
 tM0C95//gw4CoiiT8SFb4Rytlr2yjoaqk51tAN8owANyPEMeziX8TjnXcU8Nxlaeb8j5xXGQ/OD2b
 A1oclD2g==;
Received: from hch by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat
 Linux)) id 1m6RdR-009vtx-A8; Thu, 22 Jul 2021 05:52:44 +0000
Date: Thu, 22 Jul 2021 06:52:41 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Zhenyu Wang <zhenyuw@linux.intel.com>
Message-ID: <YPkHqVNIFgAYewe1@infradead.org>
References: <YPgAuSt6Ps7w4/AI@infradead.org>
 <20210722050549.GN13928@zhen-hp.sh.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210722050549.GN13928@zhen-hp.sh.intel.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: Re: [Intel-gfx] 5.14-rc2 warnings with kvmgvt
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
Cc: intel-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 intel-gvt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 22, 2021 at 01:05:49PM +0800, Zhenyu Wang wrote:
> On 2021.07.21 13:10:49 +0200, Christoph Hellwig wrote:
> > Hi all,
> > 
> > I'm trying to test some changes for the gvt code, but even with a baseline
> > 5.14-rc2 host and guest the 915 driver does not seem overly happy:
> >
> 
> I think we also got bug report on those display related warnings, should be
> some issue with our virtual display model that doesn't work nicely with more i915
> display pipe/port check or exercises have been added...But I believe you should
> still get virtual framebuffer up and show, right?

Well, as soon as I add a display the warnings disappear anyway.  Not
sure how to test if the framebuffers gets up without the display.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
