Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5F43F34D8
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Aug 2021 21:56:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 458EC6EB11;
	Fri, 20 Aug 2021 19:56:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79BF46EB0F;
 Fri, 20 Aug 2021 19:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=VbTON6RvZeZhGJt6ehyn/UMw7061NqQ9ISQ7HVHxgAQ=; b=Nz+M9aqAdzrwVlpMtHBAoKM3sQ
 /MC1a1UMn1TH8I0i3RIECs05+soT9W1PjPzTbJ9rJrBlQZiWwYwPq5gPiNraa8QlgzaxsxKTtNK51
 xfHrhec5YI34f1OJr5TdE25HisAWUsCmZJlfg36RHrmqUjwzulPaeZmFyCQjOLZek95gCw4CfmWlT
 +NwsZjpJZ7dW4R+GpB9sCknUYdpVqI5Cy28SWGT6seS6n8qKOZLjSm9RoGhsy/82Rwg4KCVU8B1K7
 vj3/f3pKGq5u6+BekrrvIUuufXlQ8QjCnK+AZbqc6s1HEqxrDWtOgT5+qZjbt4NuQI6nmdeG+FTns
 mYHecTpA==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2
 (Red Hat Linux)) id 1mHAd0-00C0kX-OY; Fri, 20 Aug 2021 19:56:34 +0000
Date: Fri, 20 Aug 2021 12:56:34 -0700
From: Luis Chamberlain <mcgrof@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Cc: Zhenyu Wang <zhenyuw@linux.intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Gerd Hoffmann <kraxel@redhat.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 "Wang, Zhi A" <zhi.a.wang@intel.com>, Jani Nikula <jani.nikula@intel.com>
Message-ID: <YSAI8pKAvvW/8S2O@bombadil.infradead.org>
References: <20210728175925.GU1721383@nvidia.com>
 <20210729072022.GB31896@lst.de>
 <20210803094315.GF13928@zhen-hp.sh.intel.com>
 <20210803143058.GA1721383@nvidia.com>
 <20210804052606.GG13928@zhen-hp.sh.intel.com>
 <20210816173458.GA9183@lst.de>
 <20210817010851.GW13928@zhen-hp.sh.intel.com>
 <20210817052203.GX13928@zhen-hp.sh.intel.com>
 <20210819082929.GB13928@zhen-hp.sh.intel.com>
 <20210820141724.GA29034@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210820141724.GA29034@lst.de>
Subject: Re: [Intel-gfx] refactor the i915 GVT support
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 20, 2021 at 04:17:24PM +0200, Christoph Hellwig wrote:
> On Thu, Aug 19, 2021 at 04:29:29PM +0800, Zhenyu Wang wrote:
> > I'm working on below patch to resolve this. But I met a weird issue in
> > case when building i915 as module and also kvmgt module, it caused
> > busy wait on request_module("kvmgt") when boot, it doesn't happen if
> > building i915 into kernel. I'm not sure what could be the reason?
> 
> Luis, do you know if there is a problem with a request_module from
> a driver ->probe routine that is probably called by a module_init
> function itself?

Generally no, but you can easily foot yourself in the feet by creating
cross dependencies and not dealing with them properly. I'd make sure
to keep module initialization as simple as possible, and run whatever
takes more time asynchronously, then use a state machine to allow
you to verify where you are in the initialization phase or query it
or wait for a completion with a timeout.

It seems the code in question is getting some spring cleaning, and its
unclear where the code is I can inspect. If there's a tree somewhere I
can take a peak I'd be happy to review possible oddities that may stick
out.

My goto model for these sorts of problems is to abstract the issue
*outside* of the driver in question and implement new selftests to
try to reproduce. This serves two purposes, 1) helps with testing
2) may allow you to see the problem more clearly.

  Luis
