Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A76AD3B2E
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 10:31:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D49F6EBE3;
	Fri, 11 Oct 2019 08:31:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB0D96EBE3
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 08:31:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18800051-1500050 for multiple; Fri, 11 Oct 2019 09:31:23 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191010134849.9078-1-chris@chris-wilson.co.uk>
 <157071588745.29611.7390894218720747310@skylake-alporthouse-com>
 <7e93c515-39a4-c67e-43ce-323b68ca932e@linux.intel.com>
In-Reply-To: <7e93c515-39a4-c67e-43ce-323b68ca932e@linux.intel.com>
Message-ID: <157078268014.31572.4364265335410462160@skylake-alporthouse-com>
Date: Fri, 11 Oct 2019 09:31:20 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Honour O_NONBLOCK before
 throttling execbuf submissions
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xMSAwOToyMDoxMikKPiAKPiBPbiAxMC8x
MC8yMDE5IDE0OjU4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIENocmlzIFdpbHNv
biAoMjAxOS0xMC0xMCAxNDo0ODo0OSkKPiA+PiBDaGVjayB0aGUgdXNlcidzIGZsYWdzIG9uIHRo
ZSBzdHJ1Y3QgZmlsZSBiZWZvcmUgZGVjaWRpbmcgd2hldGhlciBvciBub3QKPiA+PiB0byBzdGFs
bCBiZWZvcmUgc3VibWl0dGluZyBhIHJlcXVlc3QuIFRoaXMgYWxsb3dzIHVzIHRvIHJlYXNvbmFi
bHkKPiA+PiBjaGVhcGx5IGhvbm91ciBPX05PTkJMT0NLIHdpdGhvdXQgY2hlY2tpbmcgYXQgbW9y
ZSBjcml0aWNhbCBwaGFzZXMKPiA+PiBkdXJpbmcgcmVxdWVzdCBzdWJtaXNzaW9uLgo+ID4gCj4g
PiBPbmUgbWlnaHQgcmVhc29uYWJseSBleHBlY3QgcG9sbChQT0xMT1VUKSB0byBiZSBzdXBwb3J0
ZWQgYXMgd2VsbCBpbgo+ID4gdGhpcyBjYXNlIDp8Cj4gCj4gVGhhdCBkb2Vzbid0IGtpbmQgb2Yg
Zml0IC0gbWlzbWF0Y2ggYmV0d2VlbiBvbmUgZmQgYW5kIG11bHRpcGxlIAo+IGNvbnRleHRzLCBu
bz8gT3IgeW91IGNvdWxkIHNpZ25hbCBQT0xMT1VUIG9uIGFueSwgb3Igb24gYWxsIGhhdmUgc3Bh
Y2UuIAo+IEJ1dCB0aGF0J3MgdGFraW5nIGl0IHRvbyBmYXIuIDopCgpBeWUsIHRoYXQncyB3aGF0
IEkgd2FzIHRoaW5raW5nIG9mIHdpdGggdGhlIHVncHUgY29tbWVudCwgd2hlcmUgb25lIGZkIGlz
Cm9uZSB1c2VyIHN1Ym1pdCBxdWV1ZS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
