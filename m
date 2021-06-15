Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7B13A7668
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 07:20:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7782589C61;
	Tue, 15 Jun 2021 05:20:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2497989BF6;
 Tue, 15 Jun 2021 05:20:22 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8BFAD613F5;
 Tue, 15 Jun 2021 05:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1623734421;
 bh=s6xYPmSy+OD/HC3bvosyPFKtWJM7qQtPwUKU0uQGXWw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k/KzRFX98rFyAH32IPZQiP3hWvx62edvCWGk4Fvk3561qwAL6DGXroBsfc+6DOWb9
 UkeIASamFm6Ptq87jRBsD6/xlyJdMNZDTku67SBvaFNfSXviqyyK0FbFV5PnXrIwwZ
 TSk35PubERUvp9O6SHTqLEB9SaND/X/4r0b3bYVc=
Date: Tue, 15 Jun 2021 07:20:17 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <YMg4kWmfahnzjWsP@kroah.com>
References: <20210614150846.4111871-1-hch@lst.de>
 <20210614150846.4111871-6-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210614150846.4111871-6-hch@lst.de>
Subject: Re: [Intel-gfx] [PATCH 05/10] driver core: Export
 device_driver_attach()
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

On Mon, Jun 14, 2021 at 05:08:41PM +0200, Christoph Hellwig wrote:
> From: Jason Gunthorpe <jgg@nvidia.com>
> 
> This is intended as a replacement API for device_bind_driver(). It has at
> least the following benefits:
> 
> - Internal locking. Few of the users of device_bind_driver() follow the
>   locking rules
> 
> - Calls device driver probe() internally. Notably this means that devm
>   support for probe works correctly as probe() error will call
>   devres_release_all()
> 
> - struct device_driver -> dev_groups is supported
> 
> - Simplified calling convention, no need to manually call probe().
> 
> The general usage is for situations that already know what driver to bind
> and need to ensure the bind is synchronized with other logic. Call
> device_driver_attach() after device_add().
> 
> If probe() returns a failure then this will be preserved up through to the
> error return of device_driver_attach().
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
