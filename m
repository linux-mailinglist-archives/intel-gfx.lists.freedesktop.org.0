Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D739531240
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 18:24:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FEE0896E5;
	Fri, 31 May 2019 16:24:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2182B896E5
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 16:24:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16751574-1500050 for multiple; Fri, 31 May 2019 17:24:22 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190531161836.28474-1-mika.kuoppala@linux.intel.com>
References: <20190531161836.28474-1-mika.kuoppala@linux.intel.com>
Message-ID: <155931985867.27302.8738767827008715650@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 31 May 2019 17:24:18 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: No need to zero the table for
 page dirs
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA1LTMxIDE3OjE4OjM2KQo+IFdlIHNldCB0aGVt
IHRvIHNjcmF0Y2ggcmlnaHQgYWZ0ZXIgYWxsb2NhdGlvbiBzbyBwcmV2ZW50Cj4gdXNlbGVzcyB6
ZXJvaW5nIGJlZm9yZS4KPiAKPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Cj4gU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51
eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
IHwgNSArKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gaW5kZXggY2E4YTY5ZThi
MDk4Li5mMjM3YWQzMTA0MjYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW1fZ3R0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+
IEBAIC02ODEsNyArNjgxLDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0b3J5ICph
bGxvY19wZChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKPiAgewo+ICAgICAgICAgc3Ry
dWN0IGk5MTVfcGFnZV9kaXJlY3RvcnkgKnBkOwo+ICAKPiAtICAgICAgIHBkID0ga3phbGxvYyhz
aXplb2YoKnBkKSwgSTkxNV9HRlBfQUxMT1dfRkFJTCk7Cj4gKyAgICAgICBwZCA9IGttYWxsb2Mo
c2l6ZW9mKCpwZCksIEk5MTVfR0ZQX0FMTE9XX0ZBSUwpOwo+ICAgICAgICAgaWYgKHVubGlrZWx5
KCFwZCkpCj4gICAgICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwo+ICAKPiBA
QCAtNzM4LDcgKzczOCw3IEBAIGFsbG9jX3BkcChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2
bSkKPiAgCj4gICAgICAgICBHRU1fQlVHX09OKCFpOTE1X3ZtX2lzXzRsdmwodm0pKTsKPiAgCj4g
LSAgICAgICBwZHAgPSBremFsbG9jKHNpemVvZigqcGRwKSwgR0ZQX0tFUk5FTCk7Cj4gKyAgICAg
ICBwZHAgPSBrbWFsbG9jKHNpemVvZigqcGRwKSwgR0ZQX0tFUk5FTCk7Cj4gICAgICAgICBpZiAo
IXBkcCkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7Cj4gIAo+IEBA
IC03NTAsNiArNzUwLDcgQEAgYWxsb2NfcGRwKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZt
KQo+ICAgICAgICAgaWYgKHJldCkKPiAgICAgICAgICAgICAgICAgZ290byBmYWlsX3BhZ2VfbTsK
PiAgCj4gKyAgICAgICBwZHAtPnVzZWRfcGRwZXMgPSAwOwoKLT4gX19wZHBfaW5pdC4KClRoYXQg
bWFrZXMgbW9yZSBzZW5zZSB3aGVuIHlvdSBzZWUgbXkgcGF0Y2hlcyA7KQoKV2l0aCBwdXR0aW5n
IGluaXRpYWxpc2F0aW9uIGluIF9fcGRwX2luaXQKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
