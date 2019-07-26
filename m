Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBF6771F3
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 21:18:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A970F6EE3D;
	Fri, 26 Jul 2019 19:18:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from Galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40C216EE3D;
 Fri, 26 Jul 2019 19:18:38 +0000 (UTC)
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hr5jc-00018V-Sk; Fri, 26 Jul 2019 21:18:33 +0200
Date: Fri, 26 Jul 2019 21:18:32 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156416793450.30723.5556760526480191131@skylake-alporthouse-com>
Message-ID: <alpine.DEB.2.21.1907262116530.1791@nanos.tec.linutronix.de>
References: <51a4155c5bc2ca847a9cbe85c1c11918bb193141.1564086017.git.jpoimboe@redhat.com>
 <alpine.DEB.2.21.1907252355150.1791@nanos.tec.linutronix.de>
 <156416793450.30723.5556760526480191131@skylake-alporthouse-com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove redundant
 user_access_end() from __copy_from_user() error path
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
Cc: Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 intel-gfx@lists.freedesktop.org, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Josh Poimboeuf <jpoimboe@redhat.com>, Sedat Dilek <sedat.dilek@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyNiBKdWwgMjAxOSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgVGhvbWFz
IEdsZWl4bmVyICgyMDE5LTA3LTI1IDIyOjU1OjQ1KQo+ID4gT24gVGh1LCAyNSBKdWwgMjAxOSwg
Sm9zaCBQb2ltYm9ldWYgd3JvdGU6Cj4gPiAKPiA+ID4gT2JqdG9vbCByZXBvcnRzOgo+ID4gPiAK
PiA+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5vOiB3
YXJuaW5nOiBvYmp0b29sOiAuYWx0aW5zdHJfcmVwbGFjZW1lbnQrMHgzNjogcmVkdW5kYW50IFVB
Q0NFU1MgZGlzYWJsZQo+ID4gPiAKPiA+ID4gX19jb3B5X2Zyb21fdXNlcigpIGFscmVhZHkgZG9l
cyBib3RoIFNUQUMgYW5kIENMQUMsIHNvIHRoZQo+ID4gPiB1c2VyX2FjY2Vzc19lbmQoKSBpbiBp
dHMgZXJyb3IgcGF0aCBhZGRzIGFuIGV4dHJhIHVubmVjZXNzYXJ5IENMQUMuCj4gPiA+IAo+ID4g
PiBGaXhlczogMGIyYzhmOGI2YjBjICgiaTkxNTogZml4IG1pc3NpbmcgdXNlcl9hY2Nlc3NfZW5k
KCkgaW4gcGFnZSBmYXVsdCBleGNlcHRpb24gY2FzZSIpCj4gPiA+IFJlcG9ydGVkLWJ5OiBUaG9t
YXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4KPiA+ID4gUmVwb3J0ZWQtYnk6IFNlZGF0
IERpbGVrIDxzZWRhdC5kaWxla0BnbWFpbC5jb20+Cj4gPiA+IEFja2VkLWJ5OiBQZXRlciBaaWps
c3RyYSAoSW50ZWwpIDxwZXRlcnpAaW5mcmFkZWFkLm9yZz4KPiA+ID4gVGVzdGVkLWJ5OiBOaWNr
IERlc2F1bG5pZXJzIDxuZGVzYXVsbmllcnNAZ29vZ2xlLmNvbT4KPiA+ID4gVGVzdGVkLWJ5OiBT
ZWRhdCBEaWxlayA8c2VkYXQuZGlsZWtAZ21haWwuY29tPgo+ID4gPiBMaW5rOiBodHRwczovL2dp
dGh1Yi5jb20vQ2xhbmdCdWlsdExpbnV4L2xpbnV4L2lzc3Vlcy82MTcKPiA+ID4gU2lnbmVkLW9m
Zi1ieTogSm9zaCBQb2ltYm9ldWYgPGpwb2ltYm9lQHJlZGhhdC5jb20+Cj4gPiAKPiA+IFJldmll
d2VkLWJ5OiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4KPiAKPiBXaGljaCB0
cmVlIGRvIHlvdSBwbGFuIHRvIGFwcGx5IGl0IHRvPyBJIGNhbiBwdXQgaW4gZHJtLWludGVsLCBh
bmQgd2l0aAo+IHRoZSBmaXhlcyB0YWcgaXQgd2lsbCBwZXJjb2xhdGUgdGhyb3VnaCB0byA1LjMg
YW5kIGJleW9uZCwgYnV0IGlmIHlvdQo+IHdhbnQgdG8gYXBwbHkgaXQgZGlyZWN0bHkgdG8gc3F1
YXNoIHRoZSBidWlsZCB3YXJuaW5ncywgZmVlbCBmcmVlLgoKSXQgd291bGQgYmUgbmljZSB0byBn
ZXQgaXQgaW50byA1LjMuIEkgY2FuIHJvdXRlIGl0IGxpbnV4d2FyZHMgaWYgeW91IGdpdmUKYW4g
QWNrZWQtYnksIGJ1dCBJJ20gaGFwcHkgdG8gaGFuZCBpdCB0byB5b3UgOikKClRoYW5rcywKCgl0
Z2x4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
