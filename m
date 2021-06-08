Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2442439F7F2
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 15:38:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C38346EC02;
	Tue,  8 Jun 2021 13:38:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADE8A6E969;
 Tue,  8 Jun 2021 06:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=l2WBiCb5duYJRA9nKpihqrJOH1Qjg6utSrFiu8qAdtc=; b=hiTxBqbaLttqm4BdURpATNL1iC
 s7aQT+WVGJb0K6aYPAlbuESXc7MqmIBEbRLGnqVxlrXmy2gKTGVG9gVTiVQUOdD0LRNSBuaQKAnsx
 FGavFuB3HAYcEnjm1VwpRLxTTUva4XdTvGosK/Mo6fuYTZsaye1LseKNEUMKilA4j3b7haIIcqhyP
 T0CaX7xL8xUydINIFymNuUXLDxVOooRHFJaHm6va1yEqTKbIEcgWAQMm0yTvN599OsHT00j2v/tEN
 ij1EKhnYWyoafelh6WZq90uUdsFdXvYHixBOMcPBpyeuWXrRJFfX2ly10VRITJz+4R0+cr/HTmq0H
 NrATKsBQ==;
Received: from hch by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lqV6K-00Gcuy-H9; Tue, 08 Jun 2021 06:20:42 +0000
Date: Tue, 8 Jun 2021 07:20:36 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <YL8MNA0SAt3FQCtU@infradead.org>
References: <0-v1-324b2038f212+1041f1-vfio3a_jgg@nvidia.com>
 <6-v1-324b2038f212+1041f1-vfio3a_jgg@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6-v1-324b2038f212+1041f1-vfio3a_jgg@nvidia.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Approved-At: Tue, 08 Jun 2021 13:38:44 +0000
Subject: Re: [Intel-gfx] [PATCH 06/10] vfio/mdev: Remove
 CONFIG_VFIO_MDEV_DEVICE
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
 Kirti Wankhede <kwankhede@nvidia.com>, dri-devel@lists.freedesktop.org,
 Halil Pasic <pasic@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
