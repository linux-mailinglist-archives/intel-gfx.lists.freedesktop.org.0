Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC063A820E
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 16:12:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 879AC6E32F;
	Tue, 15 Jun 2021 14:12:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0685E6E32F;
 Tue, 15 Jun 2021 14:12:27 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1C1C461446;
 Tue, 15 Jun 2021 14:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1623766346;
 bh=gh2F299R4k2iDVtQbCSS7bY7JJHnWhyEvt6uhPQcyq4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rYzTyFv/7WfF5BEdmE9OcQCKpoSmAdqBZ9dMhGx1SD2QhqyIRjTxjR3Ox8zR5NmPg
 /CiehRvufTeuLy7EvrzywbYDkDh2wPsK7MwI+CmaUMgannLrkmQnXV8UlAbfn/z348
 mX1u+HCZSxV0pXBFVSVixI8s48HH8F3f2LPTqpS0=
Date: Tue, 15 Jun 2021 16:12:24 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <YMi1SBSadCNRRrbh@kroah.com>
References: <20210615133519.754763-1-hch@lst.de>
 <20210615133519.754763-10-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210615133519.754763-10-hch@lst.de>
Subject: Re: [Intel-gfx] [PATCH 09/10] vfio/mdpy: Convert to use
 vfio_register_group_dev()
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

On Tue, Jun 15, 2021 at 03:35:18PM +0200, Christoph Hellwig wrote:
> From: Jason Gunthorpe <jgg@nvidia.com>
> 
> This is straightforward conversion, the mdev_state is actually serving as
> the vfio_device and we can replace all the mdev_get_drvdata()'s and the
> wonky dead code with a simple container_of().
> 
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  samples/vfio-mdev/mdpy.c | 159 ++++++++++++++++++++++-----------------
>  1 file changed, 88 insertions(+), 71 deletions(-)

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
