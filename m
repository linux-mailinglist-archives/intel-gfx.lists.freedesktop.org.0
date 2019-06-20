Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B064CC44
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 12:51:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C78F56E578;
	Thu, 20 Jun 2019 10:51:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from newverein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C531D6E578;
 Thu, 20 Jun 2019 10:51:55 +0000 (UTC)
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 558CF68B20; Thu, 20 Jun 2019 12:51:24 +0200 (CEST)
Date: Thu, 20 Jun 2019 12:51:24 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20190620105124.GA25233@lst.de>
References: <20190614134726.3827-1-hch@lst.de> <20190617082148.GF28859@kadam>
 <20190617083342.GA7883@lst.de> <20190619162903.GF9360@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619162903.GF9360@ziepe.ca>
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
 David Airlie <airlied@linux.ie>, Potnuri Bharat Teja <bharat@chelsio.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org,
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

T24gV2VkLCBKdW4gMTksIDIwMTkgYXQgMDE6Mjk6MDNQTSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgo+ID4gWWVzLiAgVGhpcyB3aWxsIGJsb3cgdXAgYmFkbHkgb24gbWFueSBwbGF0Zm9y
bXMsIGFzIHNxLT5xdWV1ZQo+ID4gbWlnaHQgYmUgdm1hcHBlZCwgaW9yZW1hcHBlZCwgY29tZSBm
cm9tIGEgcG9vbCB3aXRob3V0IHBhZ2UgYmFja2luZy4KPiAKPiBHYWgsIHRoaXMgYWRkciBnZXRz
IGZlZCBpbnRvIGlvX3JlbWFwX3Bmbl9yYW5nZS9yZW1hcF9wZm5fcmFuZ2UgdG9vLi4KPiAKPiBQ
b3RudXJpLCB5b3Ugc2hvdWxkIGZpeCB0aGlzLi4gCj4gCj4gWW91IHByb2JhYmx5IG5lZWQgdG8g
dXNlIGRtYV9tbWFwX2Zyb21fZGV2X2NvaGVyZW50KCkgaW4gdGhlIG1tYXAgPwoKVGhlIGZ1bmN0
aW9uIHRvIHVzZSBpcyBkbWFfbW1hcF9jb2hlcmVudCwgZG1hX21tYXBfZnJvbV9kZXZfY29oZXJl
bnQgaXMKanVzdCBhbiBpbnRlcm5hbCBoZWxwZXIuCgpUaGF0IGJlacWLIHNhaWQgdGhlIGRyaXZl
cnMvaW5maW5pYmFuZCBjb2RlIGhhcyBhIGxvdCBvZgoqcmVtYXBfcGZuX3JhbmdlLCBhbmQgYSBs
b3Qgb2YgdGhlbSBsb29rIGxpa2UgdGhleSBtaWdodCBiZSBmb3IKRE1BIG1lbW9yeS4KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
