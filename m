Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A8D62879
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 20:43:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEBD96E03A;
	Mon,  8 Jul 2019 18:43:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98C066E03A;
 Mon,  8 Jul 2019 18:43:54 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8C7F2227A81; Mon,  8 Jul 2019 20:43:51 +0200 (CEST)
Date: Mon, 8 Jul 2019 20:43:51 +0200
From: Christoph Hellwig <hch@lst.de>
To: Arend Van Spriel <arend.vanspriel@broadcom.com>
Message-ID: <20190708184351.GA12877@lst.de>
References: <20190614134726.3827-1-hch@lst.de> <20190701084833.GA22927@lst.de>
 <74eb9d99-6aa6-d1ad-e66d-6cc9c496b2f3@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <74eb9d99-6aa6-d1ad-e66d-6cc9c496b2f3@broadcom.com>
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

T24gVHVlLCBKdWwgMDIsIDIwMTkgYXQgMTE6NDg6NDRBTSArMDIwMCwgQXJlbmQgVmFuIFNwcmll
bCB3cm90ZToKPiBZb3UgbWFkZSBtZSBsb29rIDstKSBBY3R1YWxseSBub3QgdG91Y2hpbmcgbXkg
ZHJpdmVycyBzbyBJJ20gb2ZmIHRoZSBob29rLiAKPiBIb3dldmVyLCBJIHdhcyB3b25kZXJpbmcg
aWYgZHJpdmVycyBjb3VsZCBrbm93IHNvIEkgZGVjaWRlZCB0byBsb29rIGludG8gCj4gdGhlIERN
QS1BUEkudHh0IGRvY3VtZW50YXRpb24gd2hpY2ggY3VycmVudGx5IHN0YXRlczoKPgo+ICIiIgo+
IFRoZSBmbGFnIHBhcmFtZXRlciAoZG1hX2FsbG9jX2NvaGVyZW50KCkgb25seSkgYWxsb3dzIHRo
ZSBjYWxsZXIgdG8KPiBzcGVjaWZ5IHRoZSBgYEdGUF9gYCBmbGFncyAoc2VlIGttYWxsb2MoKSkg
Zm9yIHRoZSBhbGxvY2F0aW9uICh0aGUKPiBpbXBsZW1lbnRhdGlvbiBtYXkgY2hvb3NlIHRvIGln
bm9yZSBmbGFncyB0aGF0IGFmZmVjdCB0aGUgbG9jYXRpb24gb2YKPiB0aGUgcmV0dXJuZWQgbWVt
b3J5LCBsaWtlIEdGUF9ETUEpLgo+ICIiIgo+Cj4gSSBkbyBleHBlY3QgeW91IGFyZSBnb2luZyB0
byBjaGFuZ2UgdGhhdCBkZXNjcmlwdGlvbiBhcyB3ZWxsIG5vdyB0aGF0IHlvdSAKPiBhcmUgZ29p
bmcgdG8gaXNzdWUgYSB3YXJuaW5nIG9uIF9fR0ZQX0NPTVAuIE1heWJlIGluY2x1ZGUgdGhhdCBp
biBwYXRjaCAKPiAxNS8xNiB3aGVyZSB5b3UgaW50cm9kdWNlIHRoYXQgd2FybmluZy4KClllcywg
dGhhdCBkZXNjcmlwdGlvbiBuZWVkcyBhbiB1cGRhdGVkLCBldmVuIHdpdGhvdXQgdGhpcyBzZXJp
ZXMuCkknbGwgbWFrZSBzdXJlIGl0IGlzIG1vcmUgY2xlYXIuCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
