Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7354F3AB5C4
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 16:23:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0E746E8DE;
	Thu, 17 Jun 2021 14:23:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88AB66E8DE;
 Thu, 17 Jun 2021 14:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=KT8Fho4u1v+WGBh8E32ZhnVOMV59PxuzA427/9wm0KY=; b=kLIUNSr+ZtN2pxK1xLUuPRkASc
 vjIezr+g0MdhoqjexF9xi5AtFtnrggIZqedSzBTgmjP+Gyk2MBOYM2hZ8wuy7Gb+OrRKZwmIMCzF0
 4UyVNX01R4Ij/HUyWOMyklxav25gBlHvDGRXENqugc11vsQgQ27FsKxiKiOxPbq/h+9A5hs7yCLs2
 XK9Twq6jS8i4lqZumrwWQIRkUomXLas6RNrz9QTiWREb8Z1evF1hdvBBv7yAZ5+It/87WDVFk82VF
 YHidW4wLvDfnSD50MuC5RdxmcuMhdWOIT4d/M9D3MhZE2IpYkw982wSThgEk04cqYGqL7p8Ja6j8Q
 hoNLSn4A==;
Received: from [2001:4bb8:19b:fdce:dccf:26cc:e207:71f6] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltsuT-009DV6-5t; Thu, 17 Jun 2021 14:22:27 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jason Gunthorpe <jgg@nvidia.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>
Date: Thu, 17 Jun 2021 16:22:08 +0200
Message-Id: <20210617142218.1877096-1-hch@lst.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] Allow mdev drivers to directly create the vfio_device
 (v4)
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
Cc: Tony Krowiak <akrowiak@linux.ibm.com>, Jason Herne <jjherne@linux.ibm.com>,
 kvm@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
 Jonathan Corbet <corbet@lwn.net>, David Airlie <airlied@linux.ie>,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-doc@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Halil Pasic <pasic@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is my alternative take on this series from Jason:

https://lore.kernel.org/dri-devel/87czsszi9i.fsf@redhat.com/T/

The mdev/vfio parts are exactly the same, but this solves the driver core
changes for the direct probing without the in/out flag that Greg hated,
which cause a little more work, but probably make the result better.

Original decription from Jason below:

The mdev bus's core part for managing the lifecycle of devices is mostly
as one would expect for a driver core bus subsystem.

However instead of having a normal 'struct device_driver' and binding the
actual mdev drivers through the standard driver core mechanisms it open
codes this with the struct mdev_parent_ops and provides a single driver
that shims between the VFIO core's struct vfio_device and the actual
device driver.

Instead, allow mdev drivers implement an actual struct mdev_driver and
directly call vfio_register_group_dev() in the probe() function for the
mdev. Arrange to bind the created mdev_device to the mdev_driver that is
provided by the end driver.

The actual execution flow doesn't change much, eg what was
parent_ops->create is now device_driver->probe and it is called at almost
the exact same time - except under the normal control of the driver core.

Ultimately converting all the drivers unlocks a fair number of additional
VFIO simplifications and cleanups.

Changes since v3:
 - minor cleanup to avoid the probe_ret variable in really_probe entirely
 - use a saner name for a variable in mdev-mtty
 - use a better driver name in mdev-mtty
 - update the documentation to match the new interface

Changes since v2:
 - avoid warning spam for successful probes
 - improve the probe_count protection
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
