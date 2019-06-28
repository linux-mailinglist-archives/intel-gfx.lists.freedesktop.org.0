Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 245ED595BC
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 10:09:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56564897F3;
	Fri, 28 Jun 2019 08:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFD93897F3
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 08:09:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17053478-1500050 for multiple; Fri, 28 Jun 2019 09:09:39 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-3-matthew.auld@intel.com>
In-Reply-To: <20190627205633.1143-3-matthew.auld@intel.com>
Message-ID: <156170937685.9225.16180210020217088786@skylake-alporthouse-com>
Date: Fri, 28 Jun 2019 09:09:36 +0100
Subject: Re: [Intel-gfx] [PATCH v2 02/37] drm/i915: introduce
 intel_memory_region
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMjcgMjE6NTU6NTgpCj4gQEAgLTAsMCArMSwx
MDcgQEAKPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLwo+ICsvKgo+ICsgKiBD
b3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgo+ICsgKi8KPiArCj4gKyNpZm5kZWYg
X19JTlRFTF9NRU1PUllfUkVHSU9OX0hfXwo+ICsjZGVmaW5lIF9fSU5URUxfTUVNT1JZX1JFR0lP
Tl9IX18KPiArCj4gKyNpbmNsdWRlIDxsaW51eC9pb3BvcnQuaD4KPiArI2luY2x1ZGUgPGxpbnV4
L211dGV4Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9pby1tYXBwaW5nLmg+Cj4gKwo+ICsjaW5jbHVk
ZSAiaTkxNV9idWRkeS5oIgo+ICsKPiArc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7Cj4gK3N0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0Owo+ICtzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbjsKPiAr
c3RydWN0IHNnX3RhYmxlOwo+ICsKPiArLyoqCj4gKyAqICBCYXNlIG1lbW9yeSB0eXBlCj4gKyAq
Lwo+ICtlbnVtIGludGVsX21lbW9yeV90eXBlIHsKPiArICAgICAgIElOVEVMX1NNRU0gPSAwLAo+
ICsgICAgICAgSU5URUxfTE1FTSwKPiArICAgICAgIElOVEVMX1NUT0xFTiwKPiArfTsKPiArCj4g
K2VudW0gaW50ZWxfcmVnaW9uX2lkIHsKPiArICAgICAgIElOVEVMX01FTU9SWV9TTUVNID0gMCwK
PiArICAgICAgIElOVEVMX01FTU9SWV9MTUVNLAo+ICsgICAgICAgSU5URUxfTUVNT1JZX1NUT0xF
TiwKPiArICAgICAgIElOVEVMX01FTU9SWV9VS05PV04sIC8qIFNob3VsZCBiZSBsYXN0ICovCj4g
K307Cj4gKwo+ICsjZGVmaW5lIFJFR0lPTl9TTUVNICAgICBCSVQoSU5URUxfTUVNT1JZX1NNRU0p
Cj4gKyNkZWZpbmUgUkVHSU9OX0xNRU0gICAgIEJJVChJTlRFTF9NRU1PUllfTE1FTSkKPiArI2Rl
ZmluZSBSRUdJT05fU1RPTEVOICAgQklUKElOVEVMX01FTU9SWV9TVE9MRU4pCj4gKwo+ICsjZGVm
aW5lIElOVEVMX01FTU9SWV9UWVBFX1NISUZUIDE2Cj4gKwo+ICsjZGVmaW5lIE1FTU9SWV9UWVBF
X0ZST01fUkVHSU9OKHIpIChpbG9nMihyID4+IElOVEVMX01FTU9SWV9UWVBFX1NISUZUKSkKPiAr
I2RlZmluZSBNRU1PUllfSU5TVEFOQ0VfRlJPTV9SRUdJT04ocikgKGlsb2cyKHIgJiAweGZmZmYp
KQo+ICsKPiArLyoqCj4gKyAqIE1lbW9yeSByZWdpb25zIGVuY29kZWQgYXMgdHlwZSB8IGluc3Rh
bmNlCj4gKyAqLwo+ICtzdGF0aWMgY29uc3QgdTMyIGludGVsX3JlZ2lvbl9tYXBbXSA9IHsKPiAr
ICAgICAgIFtJTlRFTF9NRU1PUllfU01FTV0gPSBCSVQoSU5URUxfU01FTSArIElOVEVMX01FTU9S
WV9UWVBFX1NISUZUKSB8IEJJVCgwKSwKPiArICAgICAgIFtJTlRFTF9NRU1PUllfTE1FTV0gPSBC
SVQoSU5URUxfTE1FTSArIElOVEVMX01FTU9SWV9UWVBFX1NISUZUKSB8IEJJVCgwKSwKPiArICAg
ICAgIFtJTlRFTF9NRU1PUllfU1RPTEVOXSA9IEJJVChJTlRFTF9TVE9MRU4gKyBJTlRFTF9NRU1P
UllfVFlQRV9TSElGVCkgfCBCSVQoMCksCj4gK307CgpZb3UgcHV0IHRoaXMgYXJyYXkgaW50byB0
aGUgaGVhZGVyLCBlcmdvIGEgc2VwYXJhdGUgaW5zdGFuY2UgaXMgY3JlYXRlZApmb3IgZXZlcnkg
Y29tcGlsYXRpb24gdW5pdCBwdWxsaW5nIGluIHRoaXMgaGVhZGVyLiBJbmNvbWluZyBidWlsZApm
YWlsdXJlIHJlcG9ydCA6LXAKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
