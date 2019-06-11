Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 073833D6ED
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 21:37:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5D20891D6;
	Tue, 11 Jun 2019 19:37:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90CA9891D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 19:37:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16868864-1500050 for multiple; Tue, 11 Jun 2019 20:37:23 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190611172731.19174-1-mika.kuoppala@linux.intel.com>
References: <20190611172731.19174-1-mika.kuoppala@linux.intel.com>
Message-ID: <156028184240.2193.2874395865745040687@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 11 Jun 2019 20:37:22 +0100
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915/gtt: No need to zero the table
 for page dirs
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTExIDE4OjI3OjIzKQo+IFdlIHNldCB0aGVt
IHRvIHNjcmF0Y2ggcmlnaHQgYWZ0ZXIgYWxsb2NhdGlvbiBzbyBwcmV2ZW50Cj4gdXNlbGVzcyB6
ZXJvaW5nIGJlZm9yZS4KPiAKPiB2MjogYXRvbWljX3QKPiAKPiBDYzogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8
bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4g
aW5kZXggZTcwNjc1YmZiNTFkLi4wN2Y4NmQ0NzRmYTIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbV9ndHQuYwo+IEBAIC02ODcsNyArNjg3LDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3Bh
Z2VfZGlyZWN0b3J5ICphbGxvY19wZChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKPiAg
ewo+ICAgICAgICAgc3RydWN0IGk5MTVfcGFnZV9kaXJlY3RvcnkgKnBkOwo+ICAKPiAtICAgICAg
IHBkID0ga3phbGxvYyhzaXplb2YoKnBkKSwgSTkxNV9HRlBfQUxMT1dfRkFJTCk7Cj4gKyAgICAg
ICBwZCA9IGttYWxsb2Moc2l6ZW9mKCpwZCksIEk5MTVfR0ZQX0FMTE9XX0ZBSUwpOwo+ICAgICAg
ICAgaWYgKHVubGlrZWx5KCFwZCkpCj4gICAgICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1F
Tk9NRU0pOwo+ICAKPiBAQCAtNzQ3LDcgKzc0Nyw3IEBAIGFsbG9jX3BkcChzdHJ1Y3QgaTkxNV9h
ZGRyZXNzX3NwYWNlICp2bSkKPiAgCj4gICAgICAgICBHRU1fQlVHX09OKCFpOTE1X3ZtX2lzXzRs
dmwodm0pKTsKPiAgCj4gLSAgICAgICBwZHAgPSBremFsbG9jKHNpemVvZigqcGRwKSwgR0ZQX0tF
Uk5FTCk7Cj4gKyAgICAgICBwZHAgPSBrbWFsbG9jKHNpemVvZigqcGRwKSwgR0ZQX0tFUk5FTCk7
CgpXaGlsZSB5b3UgYXJlIGhlcmUsIHRoaXMgdG9vIGNhbiBiZSBJOTE1X0dGUF9BTExPV19GQUlM
Cgo+ICAgICAgICAgaWYgKCFwZHApCj4gICAgICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1F
Tk9NRU0pOwoKQmVjYXVzZSB3ZSBpbW1lZGlhdGVseSBwcm9wYWdhdGUgdGhlIGVycm9yIGFuZCBj
YW4gZ3JhY2VmdWxseSBoYW5kbGUKZmFpbHVyZXMuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
