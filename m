Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9C63D246B
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 15:16:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA5CD6EDEB;
	Thu, 22 Jul 2021 13:16:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91D036ED88;
 Thu, 22 Jul 2021 13:16:21 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3188261003;
 Thu, 22 Jul 2021 13:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1626959780;
 bh=CrztZNaKVjON/d/4c724HSYw6X0K63o+ecpeTn4t92Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=twohJJ8smdG94+ivCw6JHpWyxc/qnlszhBccWg+IT0PNCF6RLAbwgvtAb4DN2qECG
 1blRjx5cbIoNeAlvlElPmqUE78cShdo48RyrAA0wLts+zAOpVLveOXrx4KpCvFVSMQ
 02DnOiltWrfxfI2rKpgeeftVW5Yy+cB37A0sQmus=
Date: Thu, 22 Jul 2021 15:16:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Wang, Zhi A" <zhi.a.wang@intel.com>
Message-ID: <YPlvoa4lZzfXXmvE@kroah.com>
References: <20210721155355.173183-1-hch@lst.de>
 <DM4PR11MB55496531B246A4604FC86998CAE49@DM4PR11MB5549.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM4PR11MB55496531B246A4604FC86998CAE49@DM4PR11MB5549.namprd11.prod.outlook.com>
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
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 22, 2021 at 10:49:47AM +0000, Wang, Zhi A wrote:
> But it's hard for some customers to contribute their own "hypervisor"
> module to the upstream Linux kernel.

What prevents them from doing this?  We will take any code that meets
our standards, what format is this external code in?

> I am thinking what would be a
> better solution here? The MPT layer in the kernel helps a lot for
> customers, but only one open-source "hypervisor" module is there in
> the kernel. That can confuse people which don't know the story. One
> thing I was thinking is to put a document about the background and
> more description in the MPT headers. So it won't confuse more people. 

If no one is using it in the kernel, it needs to be removed.  No
abstractions should be added that are not required by the in-tree code.

So this series should be accepted, _or_ the external code needs to be
submitted for inclusion.

thanks,

greg k-h
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
