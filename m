Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F55D5B71C
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 10:48:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD1E889E03;
	Mon,  1 Jul 2019 08:48:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E615E89DFF;
 Mon,  1 Jul 2019 08:48:35 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id AC3E268B20; Mon,  1 Jul 2019 10:48:33 +0200 (CEST)
Date: Mon, 1 Jul 2019 10:48:33 +0200
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Message-ID: <20190701084833.GA22927@lst.de>
References: <20190614134726.3827-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614134726.3827-1-hch@lst.de>
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 Intel Linux Wireless <linuxwifi@intel.com>, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMDM6NDc6MTBQTSArMDIwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6Cj4gU3dpdGNoaW5nIHRvIGEgc2xpZ2h0bHkgY2xlYW5lZCB1cCBhbGxvY19wYWdl
c19leGFjdCBpcyBwcmV0dHkgZWFzeSwKPiBidXQgaXQgdHVybnMgb3V0IHRoYXQgYmVjYXVzZSB3
ZSBkaWRuJ3QgZmlsdGVyIHZhbGlkIGdmcF90IGZsYWdzCj4gb24gdGhlIERNQSBhbGxvY2F0b3Is
IGEgYnVuY2ggb2YgZHJpdmVycyB3ZXJlIHBhc3NpbmcgX19HRlBfQ09NUAo+IHRvIGl0LCB3aGlj
aCBpcyByYXRoZXIgYm9ndXMgaW4gdG9vIG1hbnkgd2F5cyB0byBleHBsYWluLiAgQXJtIGhhcwo+
IGJlZW4gZmlsdGVyaW5nIGl0IGZvciBhIHdoaWxlLCBidXQgdGhpcyBzZXJpZXMgaW5zdGVhZCB0
cmllcyB0byBmaXgKPiB0aGUgZHJpdmVycyBhbmQgd2FybiB3aGVuIF9fR0ZQX0NPTVAgaXMgcGFz
c2VkLCB3aGljaCBtYWtlcyBpdCBtdWNoCj4gbGFyZ2VyIHRoYW4ganVzdCBhZGRpbmcgdGhlIGZ1
bmN0aW9uYWxpdHkuCgpEZWFyIGRyaXZlciBtYWludGFpbmVycywKCmNhbiB5b3UgbG9vayBvdmVy
IHRoZSBwYXRjaGVzIHRvdWNoaW5nIHlvdXIgZHJpdmVycywgcGxlYXNlPyAgSSdkCmxpa2UgdG8g
Z2V0IGFzIG11Y2ggYXMgcG9zc2libGUgb2YgdGhlIGRyaXZlciBwYXRjaGVzIGludG8gdGhpcwpt
ZXJnZSB3aW5kb3csIHNvIHRoYXQgaXQgY2FuIHlvdSB0aHJvdWdoIHlvdXIgbWFpbnRhaW5lciB0
cmVlcy4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
