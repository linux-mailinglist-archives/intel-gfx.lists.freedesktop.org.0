Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FB63A805C
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 15:37:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C8036E2D8;
	Tue, 15 Jun 2021 13:37:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DC976E2D8;
 Tue, 15 Jun 2021 13:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=mI75xfisA2eMrNnkzQmGAm9ghfLRUHzTyYzm/ehApDI=; b=besrEgYaPZ92StUm+27IrAqfh/
 rpC9wbemLrXn0xSURWCmfRcNOEkq/tO9XItxN9YK2rgHhl1VlDrhWCgKw+zmjxN5FUQxwi/dhhL2D
 reGHC2Mai4CiHoXCT+UCy6PWMaZw0QugYXs5bO4ytFAdcx5rC14GbFOx+r+lLqfjjZP1SkvQvwFGz
 2TlMHEppRZUM9V9lpobJNXRii9ZvoRlwv4McWcdiAoKxLC53C8ms1Je9wYUehpSCzx9ljxo+jOiC8
 qgM2boBu8ST8tOJZOYS1LkxYxAdCQzRO9j3TzcZa5nHLd6JAnb3kJeoO+lGfEfq1kDYGA8L7fJinp
 S6/EDK4g==;
Received: from [2001:4bb8:19b:fdce:9045:1e63:20f0:ca9] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9Ds-006oxO-0m; Tue, 15 Jun 2021 13:35:47 +0000
From: Christoph Hellwig <hch@lst.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jason Gunthorpe <jgg@nvidia.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>
Date: Tue, 15 Jun 2021 15:35:09 +0200
Message-Id: <20210615133519.754763-1-hch@lst.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] Allow mdev drivers to directly create the vfio_device
 (v3)
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

Changes since v1:
 - avoid warning spam for successful probes
 - improve the probe_count protection
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
