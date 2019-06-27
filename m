Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 224B257F64
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 11:35:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77CCA6E82E;
	Thu, 27 Jun 2019 09:35:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DFF26E82E
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 09:35:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17040791-1500050 for multiple; Thu, 27 Jun 2019 10:19:05 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190627080045.8814-1-lionel.g.landwerlin@intel.com>
 <20190627080045.8814-8-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190627080045.8814-8-lionel.g.landwerlin@intel.com>
Message-ID: <156162714216.20851.7683224794301212757@skylake-alporthouse-com>
Date: Thu, 27 Jun 2019 10:19:02 +0100
Subject: Re: [Intel-gfx] [PATCH v5 07/10] drm/i915: add a new perf
 configuration execbuf parameter
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNi0yNyAwOTowMDo0MikKPiArc3RhdGlj
IGludAo+ICtnZXRfZXhlY2J1Zl9vYV9jb25maWcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAo+ICsgICAgICAgICAgICAgICAgICAgICBzMzIgcGVyZl9mZCwgdTY0IG9hX2NvbmZp
Z19pZCwKPiArICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGk5MTVfb2FfY29uZmlnICoqb3V0
X29hX2NvbmZpZywKPiArICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKipvdXRfb2Ffb2JqKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgZmlsZSAqcGVyZl9maWxl
Owo+ICsgICAgICAgaW50IHJldDsKPiArCj4gKyAgICAgICBpZiAoIWRldl9wcml2LT5wZXJmLm9h
LmV4Y2x1c2l2ZV9zdHJlYW0pCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ICsK
PiArICAgICAgIHBlcmZfZmlsZSA9IGZnZXQocGVyZl9mZCk7Cj4gKyAgICAgICBpZiAoIXBlcmZf
ZmlsZSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gKwo+ICsgICAgICAgaWYg
KHBlcmZfZmlsZS0+cHJpdmF0ZV9kYXRhICE9IGRldl9wcml2LT5wZXJmLm9hLmV4Y2x1c2l2ZV9z
dHJlYW0pCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwoKTGVha2VkIHRoZSBmaWxl
LgoKPiArICAgICAgIGZwdXQocGVyZl9maWxlKTsKCmFuZCB3ZSBuZXZlciB1c2UgcGVyZl9maWxl
IGFnYWluPyBJdCdzIG9ubHkgdXNlIGlzIGFzIGEgcGVybWlzc2lvbiBjaGVjawpvbiB0aGUgaW9j
dGw/IEp1c3QgY2hlY2tpbmcgaW4gY2FzZSBwZXJmX2ZkIGlzIGR1cCgpZWQgYnkgdGhlIHVzZXIg
YWZ0ZXIKd2UgY2hlY2sgaXQuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
