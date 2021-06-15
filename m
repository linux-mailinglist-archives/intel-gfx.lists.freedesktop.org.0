Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3C73A7654
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 07:16:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8175689AA6;
	Tue, 15 Jun 2021 05:16:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FBEE89A77;
 Tue, 15 Jun 2021 05:16:11 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7EFA66140C;
 Tue, 15 Jun 2021 05:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1623734171;
 bh=Z00wlTIUpAwaWy8xwiUaTQGWmY0BylPfc2L2hvZ+QA4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XzO4BqfGmAc01uYXz9KRlSIfYofAufPEugrj5xBw07XpsOJdKwMkPD48lw9FwkjbJ
 UwkVG1u4+JGUrpvF3ZrOKzZ3EW6CO8BVhY7wqok0SYWRu1Htf5oNH/L0Xvu49w78AT
 KP62aqSUdz4MdZ3D88ffBHHpAxow5RUuKzu3/IwI=
Date: Tue, 15 Jun 2021 07:16:07 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <YMg3l5jsSz0OabNK@kroah.com>
References: <20210614150846.4111871-1-hch@lst.de>
 <20210614150846.4111871-2-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210614150846.4111871-2-hch@lst.de>
Subject: Re: [Intel-gfx] [PATCH 01/10] driver core: Pull required checks
 into driver_probe_device()
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Kirti Wankhede <kwankhede@nvidia.com>, linux-s390@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Halil Pasic <pasic@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Jason Gunthorpe <jgg@nvidia.com>, intel-gfx@lists.freedesktop.org,
 Jason Herne <jjherne@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, Tony Krowiak <akrowiak@linux.ibm.com>,
 Cornelia Huck <cohuck@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 14, 2021 at 05:08:37PM +0200, Christoph Hellwig wrote:
> From: Jason Gunthorpe <jgg@nvidia.com>
> 
> Checking if the dev is dead or if the dev is already bound is a required
> precondition to invoking driver_probe_device(). All the call chains
> leading here duplicate these checks.
> 
> Add it directly to driver_probe_device() so the precondition is clear and
> remove the checks from device_driver_attach() and
> __driver_attach_async_helper().
> 
> The other call chain going through __device_attach_driver() does have
> these same checks but they are inlined into logic higher up the call stack
> and can't be removed.
> 
> The sysfs uAPI call chain starting at bind_store() is a bit confused
> because it reads dev->driver unlocked and returns -ENODEV if it is !NULL,
> otherwise it reads it again under lock and returns 0 if it is !NULL. Fix
> this to always return -EBUSY and always read dev->driver under its lock.
> 
> Done in preparation for the next patches which will add additional
> callers to driver_probe_device() and will need these checks as well.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> [hch: drop the extra checks in device_driver_attach and bind_store]
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
