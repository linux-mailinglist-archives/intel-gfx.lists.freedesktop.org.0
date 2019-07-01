Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C25E5BC5B
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 15:06:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E958789B0D;
	Mon,  1 Jul 2019 13:06:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CBA489B0D
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 13:06:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17085311-1500050 for multiple; Mon, 01 Jul 2019 14:06:51 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
 <20190701113437.4043-4-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190701113437.4043-4-lionel.g.landwerlin@intel.com>
Message-ID: <156198640799.1583.11835497130419567618@skylake-alporthouse-com>
Date: Mon, 01 Jul 2019 14:06:48 +0100
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wMSAxMjozNDoyOSkKPiBAQCAtMjUz
NSw5ICsyNjM1LDIxIEBAIHN0YXRpYyBpbnQgaTkxNV9wZXJmX3JlbGVhc2Uoc3RydWN0IGlub2Rl
ICppbm9kZSwgc3RydWN0IGZpbGUgKmZpbGUpCj4gIHsKPiAgICAgICAgIHN0cnVjdCBpOTE1X3Bl
cmZfc3RyZWFtICpzdHJlYW0gPSBmaWxlLT5wcml2YXRlX2RhdGE7Cj4gICAgICAgICBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBzdHJlYW0tPmRldl9wcml2Owo+ICsgICAgICAg
c3RydWN0IGk5MTVfb2FfY29uZmlnICpvYV9jb25maWcsICpuZXh0Owo+ICAKPiAgICAgICAgIG11
dGV4X2xvY2soJmRldl9wcml2LT5wZXJmLmxvY2spOwo+ICsKPiAgICAgICAgIGk5MTVfcGVyZl9k
ZXN0cm95X2xvY2tlZChzdHJlYW0pOwo+ICsKPiArICAgICAgIC8qIERpc3Bvc2Ugb2YgYWxsIG9h
IGNvbmZpZyBiYXRjaCBidWZmZXJzLiAqLwo+ICsgICAgICAgbXV0ZXhfbG9jaygmZGV2X3ByaXYt
PnBlcmYubWV0cmljc19sb2NrKTsKPiArICAgICAgIGxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShv
YV9jb25maWcsIG5leHQsICZkZXZfcHJpdi0+cGVyZi5tZXRyaWNzX2J1ZmZlcnMsIHZtYV9saW5r
KSB7Cj4gKyAgICAgICAgICAgICAgIGxpc3RfZGVsKCZvYV9jb25maWctPnZtYV9saW5rKTsKPiAr
ICAgICAgICAgICAgICAgaTkxNV9nZW1fb2JqZWN0X3B1dChvYV9jb25maWctPm9iaik7Cj4gKyAg
ICAgICAgICAgICAgIG9hX2NvbmZpZy0+b2JqID0gTlVMTDsKPiArICAgICAgIH0KPiArICAgICAg
IG11dGV4X3VubG9jaygmZGV2X3ByaXYtPnBlcmYubWV0cmljc19sb2NrKTsKCldoYXQncyB0aGUg
cmVmZXJlbmNlIGNoYWluIGZyb20gdGhlIGk5MTVfcGVyZiBmZCB0byB0aGUgaTkxNV9kZXZpY2U/
CldoYXQncyBldmVuIGtlZXBpbmcgdGhlIG1vZHVsZSBhbGl2ZSEKClNob3VsZG4ndCBiZSBhIGRy
bV9kZXZfZ2V0KCkgaW4gaTkxNV9wZXJmX29wZW5faW9jdGwoKSBhbmQgYQpkcm1fZGV2X3B1dCgp
IGhlcmU/CgpTbyB0aGVyZSBtYXkgYmUgbW9yZSB0aGFuIG9uZSBzdHJlYW0sIHNoYXJpbmcgdGhl
IHNhbWUgb2FfY29uZmlnLiBJZiBhCnN0cmVhbSBjbG9zZXMsIHlvdSBsZXQgYWxsIHRoZSBjdXJy
ZW50IHN0cmVhbXMga2VlcCB0aGVpciByZWZlcmVuY2UgYW5kCnRoZSBuZXh0IGdldHMgYSBuZXcg
b2JqZWN0LiBMb29rcyBsaWtlIHRoZXJlJ3Mgc29tZSBzY29wZSBmb3IKZHVwbGljYXRpb24sIGJ1
dCBsb29rcyBzYWZlIGVub3VnaC4gTXkgbWFpbiB3b3JyeSB3YXMgZm9yIHpvbWJpZQpvYV9jb25m
aWcuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
