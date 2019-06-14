Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6914621E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 17:09:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7941D89A0F;
	Fri, 14 Jun 2019 15:09:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from newverein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFAFA89A0F;
 Fri, 14 Jun 2019 15:08:58 +0000 (UTC)
Received: by newverein.lst.de (Postfix, from userid 2407)
 id EDC7268B05; Fri, 14 Jun 2019 17:08:27 +0200 (CEST)
Date: Fri, 14 Jun 2019 17:08:27 +0200
From: 'Christoph Hellwig' <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Message-ID: <20190614150827.GA9460@lst.de>
References: <20190614134726.3827-1-hch@lst.de>
 <20190614134726.3827-17-hch@lst.de>
 <a90cf7ec5f1c4166b53c40e06d4d832a@AcuMS.aculab.com>
 <20190614145001.GB9088@lst.de> <4113cd5f-5c13-e9c7-bc5e-dcf0b60e7054@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4113cd5f-5c13-e9c7-bc5e-dcf0b60e7054@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 16/16] dma-mapping: use exact allocation in
 dma_alloc_contiguous
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, 'Christoph Hellwig' <hch@lst.de>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 David Airlie <airlied@linux.ie>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Ian Abbott <abbotti@mev.co.uk>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 David Laight <David.Laight@ACULAB.COM>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMDQ6MDU6MzNQTSArMDEwMCwgUm9iaW4gTXVycGh5IHdy
b3RlOgo+IFRoYXQgc2FpZCwgSSBkb24ndCBiZWxpZXZlIHRoaXMgcGFydGljdWxhciBwYXRjaCBz
aG91bGQgbWFrZSBhbnkgCj4gYXBwcmVjaWFibGUgZGlmZmVyZW5jZSAtIGFsbG9jX3BhZ2VzX2V4
YWN0KCkgaXMgc3RpbGwgZ29pbmcgdG8gZ2l2ZSBiYWNrIAo+IHRoZSBzYW1lIGJhc2UgYWRkcmVz
cyBhcyB0aGUgcm91bmRlZCB1cCBvdmVyLWFsbG9jYXRpb24gd291bGQsIGFuZCAKPiBQQUdFX0FM
SUdOKClpbmcgdGhlIHNpemUgcGFzc2VkIHRvIGdldF9vcmRlcigpIGFscmVhZHkgc2VlbWVkIHRv
IGJlIAo+IHBvaW50bGVzcy4KClRydWUsIHdlIGFjdHVhbGx5IGRvIGdldCB0aGUgcmlnaHQgYWxp
Z25tZW50IGp1c3QgYWJvdXQgYW55d2hlcmUuCk5vdCAxMDAlIHN1cmUgYWJvdXQgdGhlIHZhcmlv
dXMgc3RhdGljIHBvb2wgaW1wbGVtZW50YXRpb25zLCBidXQgd2UKY2FuIG1ha2Ugc3VyZSBpZiBh
bnkgZGlkbid0IHdlJ2xsIGRvIHRoYXQgcmlnaHQgdGhpbmcgb25jZSB0aG9zZQpnZXQgY29uc29s
aWRhdGVkLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
