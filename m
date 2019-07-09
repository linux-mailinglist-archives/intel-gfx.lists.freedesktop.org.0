Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD74E632DB
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 10:31:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 447376E057;
	Tue,  9 Jul 2019 08:31:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 791826E057
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 08:31:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17180047-1500050 for multiple; Tue, 09 Jul 2019 09:31:44 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
 <20190701113437.4043-4-lionel.g.landwerlin@intel.com>
 <156199377822.1583.13857985932185394689@skylake-alporthouse-com>
 <b4e45d91-3115-461f-65f2-fceccd5ff61d@intel.com>
In-Reply-To: <b4e45d91-3115-461f-65f2-fceccd5ff61d@intel.com>
Message-ID: <156266110201.9375.4695233048867280585@skylake-alporthouse-com>
Date: Tue, 09 Jul 2019 09:31:42 +0100
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wOSAwNzo0NzowNCkKPiBPbiAwMS8w
Ny8yMDE5IDE4OjA5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIExpb25lbCBMYW5k
d2VybGluICgyMDE5LTA3LTAxIDEyOjM0OjI5KQo+ID4+ICsgICAgICAgaWYgKG1ldHJpY3Nfc2V0
ID09IDEpIHsKPiA+PiArICAgICAgICAgICAgICAgb2FfY29uZmlnID0gJmk5MTUtPnBlcmYub2Eu
dGVzdF9jb25maWc7Cj4gPj4gKyAgICAgICB9IGVsc2Ugewo+ID4+ICsgICAgICAgICAgICAgICBv
YV9jb25maWcgPSBpZHJfZmluZCgmaTkxNS0+cGVyZi5tZXRyaWNzX2lkciwgbWV0cmljc19zZXQp
Owo+ID4gV2h5IG5vdCBoYXZlIHRoZSBidWlsdGluWzFdIGluc2lkZSB0aGUgaWRyPwo+IAo+IAo+
IEkgdGhpbmsgaXQgd2FzIGp1c3QgYSB3YXkgdG8gYXZvaWQgcmVtb3ZpbmcgaXQgZnJvbSB0aGUg
aWRyIHRocm91Z2ggCj4gdXNlcnNwYWNlIGNhbGxzLgoKSXQgbWlnaHQganVzdCBiZSBzaW1wbGVy
IHRvIGhhdmUgdGhlIGZpbHRlciBpbiB0aGUgaW9jdGw/CmlmIChhcmctPmlkIDw9IEJVSUxUSU5T
KQoJcmV0dXJuIC1FSU5WQUw7Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
