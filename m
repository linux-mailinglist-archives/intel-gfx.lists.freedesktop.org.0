Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B12A35AE48A
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 11:42:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3927D10E60C;
	Tue,  6 Sep 2022 09:42:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E174D10E60C;
 Tue,  6 Sep 2022 09:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=2qDYpHuHfXVn75WEqJsFoiIv26+1ntYwgiyVPU2xfns=; b=g9OAK4Ewx/kpJOsybV0tqVyLKC
 fXPe1N0g2PyjPi7YcykxQf3qHou7W6XeCXvzfhB1MKz+1xoMQo/1B69aqyYsEgCJdPJ4eFoyRapu9
 4v9cxK2KLCj31WbbiVWNS75ziRNFuWcExlAlF60lghK5noBzEQUTEPiiBR/K6doR56BNUARdEHX/t
 bHk7W2vMBxX3WGJTnC4vmOkwDkES390sWShqj1MVD2/8IkX09iKEa+jwg4Bh7oSMumi3IWxyCIoST
 rIptoxF8mPudqsREDfFfqylMfpjsg/nakCMCF0YnUahVDGaHM96GY+aVM6/A1ZnWFp48uTpo/Z2tU
 4pj77kKQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1oVV5P-00Bz2h-AF; Tue, 06 Sep 2022 09:41:39 +0000
Date: Tue, 6 Sep 2022 02:41:39 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Kevin Tian <kevin.tian@intel.com>
Message-ID: <YxcV05AVN4kqdPX6@infradead.org>
References: <20220901143747.32858-1-kevin.tian@intel.com>
 <20220901143747.32858-2-kevin.tian@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220901143747.32858-2-kevin.tian@intel.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
Subject: Re: [Intel-gfx] [PATCH v2 01/15] vfio: Add helpers for unifying
 vfio_device life cycle
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
Cc: Matthew Rosato <mjrosato@linux.ibm.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Kirti Wankhede <kwankhede@nvidia.com>, Vineeth Vijayan <vneethv@linux.ibm.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Longfang Liu <liulongfang@huawei.com>, linux-s390@vger.kernel.org,
 Yi Liu <yi.l.liu@intel.com>, kvm@vger.kernel.org,
 Leon Romanovsky <leon@kernel.org>, Halil Pasic <pasic@linux.ibm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 intel-gfx@lists.freedesktop.org, Tony Krowiak <akrowiak@linux.ibm.com>,
 Eric Farman <farman@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, Eric Auger <eric.auger@redhat.com>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gvt-dev@lists.freedesktop.org,
 Jason Herne <jjherne@linux.ibm.com>, Yishai Hadas <yishaih@nvidia.com>,
 Cornelia Huck <cohuck@redhat.com>, Peter Oberparleiter <oberpar@linux.ibm.com>,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 Sven Schnelle <svens@linux.ibm.com>, Daniel Vetter <daniel@ffwll.ch>,
 Abhishek Sahu <abhsahu@nvidia.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

What is the point?  This adds indirect calls, and actually creates
more boilerplate code in the drivers.  i.g. when using this code there
is more, and harder to read code.
