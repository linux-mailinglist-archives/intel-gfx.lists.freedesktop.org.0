Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58804632D8
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 10:30:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B61F86E056;
	Tue,  9 Jul 2019 08:30:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C84D06E056
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 08:30:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17180017-1500050 for multiple; Tue, 09 Jul 2019 09:30:22 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
 <20190701113437.4043-4-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190701113437.4043-4-lionel.g.landwerlin@intel.com>
Message-ID: <156266102012.9375.18422206847327862526@skylake-alporthouse-com>
Date: Tue, 09 Jul 2019 09:30:20 +0100
Subject: Re: [Intel-gfx] [PATCH v6 03/11] drm/i915/perf: allow for CS OA
 configs to be created lazily
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wMSAxMjozNDoyOSkKPiBIZXJlIHdl
IGludHJvZHVjZSBhIG1lY2hhbmlzbSBieSB3aGljaCB0aGUgZXhlY2J1ZiBwYXJ0IG9mIHRoZSBp
OTE1Cj4gZHJpdmVyIHdpbGwgYmUgYWJsZSB0byByZXF1ZXN0IHRoYXQgYSBiYXRjaCBidWZmZXIg
Y29udGFpbmluZyB0aGUKPiBwcm9ncmFtbWluZyBmb3IgYSBwYXJ0aWN1bGFyIE9BIGNvbmZpZyBi
ZSBjcmVhdGVkLgo+IAo+IFdlJ2xsIGV4ZWN1dGUgdGhlc2UgT0EgY29uZmlndXJhdGlvbiBidWZm
ZXJzIHJpZ2h0IGJlZm9yZSBleGVjdXRpbmcgYQo+IHNldCBvZiB1c2Vyc3BhY2UgY29tbWFuZHMg
c28gdGhhdCBhIHBhcnRpY3VsYXIgdXNlciBiYXRjaGJ1ZmZlciBiZQo+IGV4ZWN1dGVkIHdpdGgg
YSBnaXZlbiBPQSBjb25maWd1cmF0aW9uLgo+IAo+IFRoaXMgbWVjaGFuaXNtIGVzc2VudGlhbGx5
IGFsbG93cyB0aGUgdXNlcnNwYWNlIGRyaXZlciB0byBnbyB0aHJvdWdoCj4gc2V2ZXJhbCBPQSBj
b25maWd1cmF0aW9uIHdpdGhvdXQgaGF2aW5nIHRvIG9wZW4vY2xvc2UgdGhlIGk5MTUvcGVyZgo+
IHN0cmVhbS4KPiAKPiB2MjogTm8gbmVlZCBmb3IgbG9ja2luZyBvbiBvYmplY3QgT0EgY29uZmln
IG9iamVjdCBjcmVhdGlvbiAoQ2hyaXMpCj4gICAgIEZsdXNoIGNwdSBtYXBwaW5nIG9mIE9BIGNv
bmZpZyAoQ2hyaXMpCj4gCj4gdjM6IFByb3Blcmx5IGRlYWwgd2l0aCB0aGUgcGVyZl9tZXRyaWMg
bG9jayAoQ2hyaXMvTGlvbmVsKQo+IAo+IFNpZ25lZC1vZmYtYnk6IExpb25lbCBMYW5kd2VybGlu
IDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
