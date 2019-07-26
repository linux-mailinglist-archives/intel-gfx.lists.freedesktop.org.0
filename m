Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 546A075BF3
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 02:10:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B81596E82C;
	Fri, 26 Jul 2019 00:10:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FEB16E82C
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 00:10:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17612222-1500050 for multiple; Fri, 26 Jul 2019 01:10:29 +0100
MIME-Version: 1.0
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190726000226.26914-3-lucas.demarchi@intel.com>
References: <20190726000226.26914-1-lucas.demarchi@intel.com>
 <20190726000226.26914-3-lucas.demarchi@intel.com>
Message-ID: <156409982772.30723.16146937485087701539@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 26 Jul 2019 01:10:27 +0100
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/tgl: Implement Wa_1604555607
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBMdWNhcyBEZSBNYXJjaGkgKDIwMTktMDctMjYgMDE6MDI6MjUpCj4gRnJvbTogTWlj
aGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KPiAKPiBJbXBsZW1lbnQgV2Ff
MTYwNDU1NTYwNyAoc2V0IHRoZSBEUyBwYWlyaW5nIHRpbWVyIHRvIDEyOCBjeWNsZXMpLgo+IEZG
X01PREUyIGlzIHBhcnQgb2YgdGhlIHJlZ2lzdGVyIHN0YXRlIGNvbnRleHQsIHRoYXQncyB3aHkg
aXQgaXMKPiBpbXBsZW1lbnRlZCBoZXJlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hlbCBUaGll
cnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUg
TWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA3ICsrKysrKysKPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICB8IDUgKysrKysKPiAgMiBmaWxlcyBjaGFu
Z2VkLCAxMiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jCj4gaW5kZXggYTZlYjljNmU4N2VjLi4zMjM1ZWYzNTVkZmQgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiBAQCAtNTcy
LDYgKzU3MiwxMyBAQCBzdGF0aWMgdm9pZCBpY2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ICBzdGF0aWMgdm9pZCB0Z2xfY3R4X3dvcmthcm91
bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCj4gIHsKPiAr
ICAgICAgIHUzMiB2YWw7Cj4gKwo+ICsgICAgICAgLyogV2FfMTYwNDU1NTYwNzp0Z2wgKi8KPiAr
ICAgICAgIHZhbCA9IGludGVsX3VuY29yZV9yZWFkKGVuZ2luZS0+dW5jb3JlLCBGRl9NT0RFMik7
Cj4gKyAgICAgICB2YWwgJj0gfkZGX01PREUyX1REU19USU1FUl9NQVNLOwo+ICsgICAgICAgdmFs
IHw9IEZGX01PREUyX1REU19USU1FUl8xMjg7Cj4gKyAgICAgICB3YV93cml0ZV9tYXNrZWRfb3Io
d2FsLCBGRl9NT0RFMiwgRkZfTU9ERTJfVERTX1RJTUVSX01BU0ssIHZhbCk7CgpJdCB3aWxsIGRv
IGEgcm13IG9uIGFwcGxpY2F0aW9uLCBzbyB5b3UganVzdCBuZWVkCgl3YV93cml0ZV9tYXNrZWRf
b3Iod2FsLCBGRl9NT0RFMiwKCQkgICAgICAgICAgIEZGX01PREUyX1REU19USU1FUl9NQVNLLCBG
Rl9NT0RFMl9URFNfVElNRVJfMTI4KTsKCj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCj4gaW5kZXggNTRlYTI1MDAwMGJlLi5mYmJiODlmNmNhMmYgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBAQCAtNzc3MSw2ICs3NzcxLDExIEBAIGVudW0gewo+
ICAjZGVmaW5lICAgUElYRUxfUk9VTkRJTkdfVFJVTkNfRkJfUEFTU1RIUlUgICAgICgxIDw8IDE1
KQo+ICAjZGVmaW5lICAgUEVSX1BJWEVMX0FMUEhBX0JZUEFTU19FTiAgICAgICAgICAgICgxIDw8
IDcpCj4gIAo+ICsjZGVmaW5lIEZGX01PREUyICAgICAgICAgICAgICAgICAgICAgICBfTU1JTygw
eDY2MDQpCj4gKyNkZWZpbmUgICBGRl9NT0RFMl9URFNfVElNRVJfU0hJRlQgICAgICgxNikKPiAr
I2RlZmluZSAgIEZGX01PREUyX1REU19USU1FUl8xMjggICAgICAgKDQgPDwgRkZfTU9ERTJfVERT
X1RJTUVSX1NISUZUKQo+ICsjZGVmaW5lICAgRkZfTU9ERTJfVERTX1RJTUVSX01BU0sgICAgICAo
MHhmZiA8PCBGRl9NT0RFMl9URFNfVElNRVJfU0hJRlQpCgojZGVmaW5lIEZGX01PREUyX1REU19U
SU1FUl9NQVNLIFJFR19HRU5NQVNLKDIzLCAxNikKI2RlZmluZSBGRl9NT0RFMl9URFNfVElNRVJf
MTI4IFJFR19GSUVMRF9QUkVQKEZGX01PREUyX1REU19USU1FUl9NQVNLLCA0KQotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
