Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4693A76BE
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 07:50:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C997A89E3B;
	Tue, 15 Jun 2021 05:50:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7931989E3B;
 Tue, 15 Jun 2021 05:50:23 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7D15767373; Tue, 15 Jun 2021 07:50:21 +0200 (CEST)
Date: Tue, 15 Jun 2021 07:50:21 +0200
From: Christoph Hellwig <hch@lst.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20210615055021.GB21080@lst.de>
References: <20210614150846.4111871-1-hch@lst.de> <YMg49UF8of2yHWum@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YMg49UF8of2yHWum@kroah.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] Allow mdev drivers to directly create the
 vfio_device (v2 / alternative)
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
 Kirti Wankhede <kwankhede@nvidia.com>, Christoph Hellwig <hch@lst.de>,
 linux-s390@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Halil Pasic <pasic@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Jason Gunthorpe <jgg@nvidia.com>, intel-gfx@lists.freedesktop.org,
 Jason Herne <jjherne@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, Tony Krowiak <akrowiak@linux.ibm.com>,
 Cornelia Huck <cohuck@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 15, 2021 at 07:21:57AM +0200, Greg Kroah-Hartman wrote:
> This looks much better as far as the driver core changes go, thank you
> for doing this.
> 
> I'm guessing there will be at least one more revision of this.

Yes.

> Do you
> want this to go through my driver core tree or is there a mdev tree it
> should go through?  Either is fine for me.

Either way is fine with me.  Alex, do you have a preference?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
