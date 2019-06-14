Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1FD46209
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 17:06:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60B56899DC;
	Fri, 14 Jun 2019 15:06:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from newverein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F8BE899DC;
 Fri, 14 Jun 2019 15:06:28 +0000 (UTC)
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 9BFFD68AFE; Fri, 14 Jun 2019 17:05:58 +0200 (CEST)
Date: Fri, 14 Jun 2019 17:05:58 +0200
From: 'Christoph Hellwig' <hch@lst.de>
To: David Laight <David.Laight@ACULAB.COM>
Message-ID: <20190614150558.GA9402@lst.de>
References: <20190614134726.3827-1-hch@lst.de>
 <20190614134726.3827-17-hch@lst.de>
 <a90cf7ec5f1c4166b53c40e06d4d832a@AcuMS.aculab.com>
 <20190614145001.GB9088@lst.de>
 <d93fd4c2c1584d92a05dd641929f6d63@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d93fd4c2c1584d92a05dd641929f6d63@AcuMS.aculab.com>
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
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMDM6MDE6MjJQTSArMDAwMCwgRGF2aWQgTGFpZ2h0IHdy
b3RlOgo+IEknbSBwcmV0dHkgc3VyZSB0aGVyZSBpcyBhIGxvdCBvZiBjb2RlIG91dCB0aGVyZSB0
aGF0IG1ha2VzIHRoYXQgYXNzdW1wdGlvbi4KPiBXaXRob3V0IGl0IG1hbnkgZHJpdmVycyB3aWxs
IGhhdmUgdG8gYWxsb2NhdGUgYWxtb3N0IGRvdWJsZSB0aGUKPiBhbW91bnQgb2YgbWVtb3J5IHRo
ZXkgYWN0dWFsbHkgbmVlZCBpbiBvcmRlciB0byBnZXQgdGhlIHJlcXVpcmVkIGFsaWdubWVudC4K
PiBTbyBpbnN0ZWFkIG9mIHNhdmluZyBtZW1vcnkgeW91J2xsIGFjdHVhbGx5IG1ha2UgbW9yZSBi
ZSB1c2VkLgoKVGhhdCBjb2RlIHdvdWxkIGFscmVhZHkgYmUgYnJva2VuIG9uIGEgbG90IG9mIExp
bnV4IHBsYXRmb3Jtcy4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
