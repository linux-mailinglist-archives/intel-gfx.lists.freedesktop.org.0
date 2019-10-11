Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 762D1D3D96
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 12:40:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DB256E082;
	Fri, 11 Oct 2019 10:40:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7E026E02D
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 10:40:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18802040-1500050 for multiple; Fri, 11 Oct 2019 11:40:36 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191010071434.31195-1-chris@chris-wilson.co.uk>
 <20191010071434.31195-7-chris@chris-wilson.co.uk>
 <e9b171f6-be40-fb86-99e0-3bfe5f69404e@linux.intel.com>
 <157078895887.31572.554920387990865677@skylake-alporthouse-com>
In-Reply-To: <157078895887.31572.554920387990865677@skylake-alporthouse-com>
Message-ID: <157079043370.31572.9736235499221341873@skylake-alporthouse-com>
Date: Fri, 11 Oct 2019 11:40:33 +0100
Subject: Re: [Intel-gfx] [PATCH 07/10] drm/i915/execlists: Cancel banned
 contexts on schedule-out
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTAtMTEgMTE6MTU6NTgpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0xMC0xMSAxMDo0NzoyNikKPiA+ID4gKyAgICAgaWYgKHVubGlrZWx5
KGk5MTVfZ2VtX2NvbnRleHRfaXNfYmFubmVkKGNlLT5nZW1fY29udGV4dCkpKQo+ID4gPiArICAg
ICAgICAgICAgIGNhbmNlbF9hY3RpdmUocnEsIGVuZ2luZSk7Cj4gPiAKPiA+IE9yIHlvdSBhcmUg
Y291bnRpbmcgdGhpcyBpcyBhbHJlYWR5IHRoZSBsYXN0IHJ1bm5hYmxlIHJlcXVlc3QgZnJvbSB0
aGlzIAo+ID4gY29udGV4dCBkdWUgY29hbGVzY2luZz8gSXQgd291bGRuJ3Qgd29yayBpZiBmb3Ig
YW55IHJlYXNvbiBjb2FsZXNjaW5nIAo+ID4gd291bGQgYmUgcHJldmVudGVkLiBFaXRoZXIgd2l0
aCBHVlQsIG9yIEkgaGFkIHNvbWUgaWRlYXMgdG8gcHJldmVudCAKPiA+IGNvYWxlc2NpbmcgZm9y
IGNvbnRleHRzIHdoZXJlIHdhdGNoZG9nIGlzIGVuYWJsZWQgaW4gdGhlIGZ1dHVyZS4gSW4gCj4g
PiB3aGljaCBjYXNlIHRoaXMgd291bGQgYmUgYSBoaWRkZW4gZ290Y2hhLiBNYXliZSBhbGwgdGhh
dCdzIG5lZWRlZCBpbiAKPiA+IG1hcmtfY29tcGxldGUgaXMgYWxzbyB0byBsb29rIHRvd2FyZHMg
dGhlIGVuZCBvZiB0aGUgbGlzdD8KPiAKPiBJJ20gbm90IGZvbGxvd2luZy4gV2UgYXJlIGxvb2tp
bmcgYXQgdGhlIGNvbnRleHQgaGVyZSwgd2hpY2ggaXMgdHJhY2sgYnkKPiB0aGUgbGFzdCByZXF1
ZXN0IHN1Ym1pdHRlZCBmb3IgdGhhdCBjb250ZXh0LgoKT2ggSSBzZWUsIHlvdSB3ZXJlIHBvaW50
aW5nIG91dCB0aGF0IEkgaGFkIG5vdCB3YWxrZWQgYmFjayBhbG9uZyB0aGUgY29udGV4dAp0byBm
aW5kIHRoZSBpbmNvbXBsZXRlIHJlcXVlc3QgZm9yIGNvcnJlY3QgcGF0Y2hpbmcuCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
