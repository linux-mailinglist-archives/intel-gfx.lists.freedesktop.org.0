Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8D347D28
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 10:34:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D957E89191;
	Mon, 17 Jun 2019 08:34:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from newverein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4915989191;
 Mon, 17 Jun 2019 08:34:15 +0000 (UTC)
Received: by newverein.lst.de (Postfix, from userid 2407)
 id D530F68D0E; Mon, 17 Jun 2019 10:33:42 +0200 (CEST)
Date: Mon, 17 Jun 2019 10:33:42 +0200
From: Christoph Hellwig <hch@lst.de>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20190617083342.GA7883@lst.de>
References: <20190614134726.3827-1-hch@lst.de> <20190617082148.GF28859@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617082148.GF28859@kadam>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] use exact allocation for dma coherent memory
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, Christoph Hellwig <hch@lst.de>, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux-rdma@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 Intel Linux Wireless <linuxwifi@intel.com>, intel-gfx@lists.freedesktop.org,
 Ian Abbott <abbotti@mev.co.uk>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, H Hartley Sweeten <hsweeten@visionengravers.com>,
 iommu@lists.linux-foundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiBkcml2ZXJzL2luZmluaWJhbmQvaHcvY3hnYjQvcXAuYwo+ICAgIDEyOSAgc3RhdGljIGludCBh
bGxvY19ob3N0X3NxKHN0cnVjdCBjNGl3X3JkZXYgKnJkZXYsIHN0cnVjdCB0NF9zcSAqc3EpCj4g
ICAgMTMwICB7Cj4gICAgMTMxICAgICAgICAgIHNxLT5xdWV1ZSA9IGRtYV9hbGxvY19jb2hlcmVu
dCgmKHJkZXYtPmxsZGkucGRldi0+ZGV2KSwgc3EtPm1lbXNpemUsCj4gICAgMTMyICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmKHNxLT5kbWFfYWRkciksIEdGUF9LRVJO
RUwpOwo+ICAgIDEzMyAgICAgICAgICBpZiAoIXNxLT5xdWV1ZSkKPiAgICAxMzQgICAgICAgICAg
ICAgICAgICByZXR1cm4gLUVOT01FTTsKPiAgICAxMzUgICAgICAgICAgc3EtPnBoeXNfYWRkciA9
IHZpcnRfdG9fcGh5cyhzcS0+cXVldWUpOwo+ICAgIDEzNiAgICAgICAgICBkbWFfdW5tYXBfYWRk
cl9zZXQoc3EsIG1hcHBpbmcsIHNxLT5kbWFfYWRkcik7Cj4gICAgMTM3ICAgICAgICAgIHJldHVy
biAwOwo+ICAgIDEzOCAgfQo+IAo+IElzIHRoaXMgYSBidWc/CgpZZXMuICBUaGlzIHdpbGwgYmxv
dyB1cCBiYWRseSBvbiBtYW55IHBsYXRmb3JtcywgYXMgc3EtPnF1ZXVlCm1pZ2h0IGJlIHZtYXBw
ZWQsIGlvcmVtYXBwZWQsIGNvbWUgZnJvbSBhIHBvb2wgd2l0aG91dCBwYWdlIGJhY2tpbmcuCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
