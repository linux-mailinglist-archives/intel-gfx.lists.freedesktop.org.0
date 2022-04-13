Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C0F4FFB47
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 18:29:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA37310E121;
	Wed, 13 Apr 2022 16:29:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A87A10E121;
 Wed, 13 Apr 2022 16:29:50 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8A25968AFE; Wed, 13 Apr 2022 18:29:46 +0200 (CEST)
Date: Wed, 13 Apr 2022 18:29:46 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20220413162946.GB31053@lst.de>
References: <0-v1-a8faf768d202+125dd-vfio_mdev_no_group_jgg@nvidia.com>
 <1-v1-a8faf768d202+125dd-vfio_mdev_no_group_jgg@nvidia.com>
 <20220413055524.GB32092@lst.de> <20220413113952.GN2120790@nvidia.com>
 <20220413160601.GA29631@lst.de> <20220413161814.GS2120790@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220413161814.GS2120790@nvidia.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 1/9] vfio: Make vfio_(un)register_notifier
 accept a vfio_device
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
 Kirti Wankhede <kwankhede@nvidia.com>, Vineeth Vijayan <vneethv@linux.ibm.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>, Christoph Hellwig <hch@lst.de>,
 linux-s390@vger.kernel.org, "Liu, Yi L" <yi.l.liu@intel.com>,
 Matthew Rosato <mjrosato@linux.ibm.com>, Jonathan Corbet <corbet@lwn.net>,
 Halil Pasic <pasic@linux.ibm.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 intel-gfx@lists.freedesktop.org, Jason Herne <jjherne@linux.ibm.com>,
 Eric Farman <farman@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gvt-dev@lists.freedesktop.org,
 Tony Krowiak <akrowiak@linux.ibm.com>, Cornelia Huck <cohuck@redhat.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 Sven Schnelle <svens@linux.ibm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 13, 2022 at 01:18:14PM -0300, Jason Gunthorpe wrote:
> Yeah, I was thinking about that too, but on the other hand I think it
> is completely wrong that gvt requires kvm at all. A vfio_device is not
> supposed to be tightly linked to KVM - the only exception possibly
> being s390..

So i915/gvt uses it for:

 - poking into the KVM GFN translations
 - using the KVM page track notifier

No idea how these could be solved in a more generic way.
