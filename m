Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A861AB18A4
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 09:06:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 059736EE90;
	Fri, 13 Sep 2019 07:06:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63EF66EE90
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 07:06:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18472106-1500050 for multiple; Fri, 13 Sep 2019 08:06:09 +0100
MIME-Version: 1.0
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190823082055.5992-3-lucas.demarchi@intel.com>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
 <20190823082055.5992-3-lucas.demarchi@intel.com>
Message-ID: <156835836697.4926.7596688559246795730@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 13 Sep 2019 08:06:06 +0100
Subject: Re: [Intel-gfx] [PATCH v3 02/23] drm/i915/tgl: Enable VD HCP/MFX
 sub-pipe power gating
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

UXVvdGluZyBMdWNhcyBEZSBNYXJjaGkgKDIwMTktMDgtMjMgMDk6MjA6MzQpCj4gRnJvbTogTWlj
aGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KPiAKPiBIQ1AvTUZYIHBvd2Vy
IGdhdGluZyBpcyBkaXNhYmxlZCBieSBkZWZhdWx0LCB0dXJuIGl0IG9uIGZvciB0aGUgdmQgdW5p
dHMKPiBhdmFpbGFibGUuIFVzZXIgc3BhY2Ugd2lsbCBhbHNvIGlzc3VlIGEgTUlfRk9SQ0VfV0FL
RVVQIHByb3Blcmx5IHRvCj4gd2FrZSB1cCBwcm9wZXIgc3Vid2VsbC4KPiAKPiBEdXJpbmcgZHJp
dmVyIGxvYWQsIGluaXRfY2xvY2tfZ2F0aW5nIGhhcHBlbnMgYWZ0ZXIgZGV2aWNlX2luZm9faW5p
dF9tbWlvCj4gcmVhZCB0aGUgdmRib3ggZGlzYWJsZSBmdXNlIHJlZ2lzdGVyLCBzbyBvbmx5IHBy
ZXNlbnQgdmQgdW5pdHMgd2lsbCBoYXZlCj4gdGhlc2UgZW5hYmxlZC4KPiAKPiBCU3BlYzogMTQy
MTQKPiBIU0RFUzogMTIwOTk3NzgyNwo+IFNpZ25lZC1vZmYtYnk6IE1pY2hlbCBUaGllcnJ5IDxt
aWNoZWwudGhpZXJyeUBpbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8
bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+IFJldmlld2VkLWJ5OiBUb255IFllIDx0b255
LnllQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8
ICA0ICsrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDE4ICsrKysrKysr
KysrKysrKysrLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBpbmRleCBhMDkyYjM0YzI2OWQuLjAy
ZTFlZjEwYzQ3ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IEBAIC04NjE1LDYgKzg2
MTUsMTAgQEAgZW51bSB7Cj4gICNkZWZpbmUgICBHRU45X1BXUkdUX01FRElBX1NUQVRVU19NQVNL
ICAgICAgICAgKDEgPDwgMCkKPiAgI2RlZmluZSAgIEdFTjlfUFdSR1RfUkVOREVSX1NUQVRVU19N
QVNLICAgICAgICAgICAgICAgICgxIDw8IDEpCj4gIAo+ICsjZGVmaW5lIFBPV0VSR0FURV9FTkFC
TEUgICAgICAgICAgICAgICAgICAgICAgIF9NTUlPKDB4YTIxMCkKPiArI2RlZmluZSAgICBWRE5f
SENQX1BPV0VSR0FURV9FTkFCTEUobikgICAgICAgICBCSVQoKChuKSAqIDIpICsgMykKPiArI2Rl
ZmluZSAgICBWRE5fTUZYX1BPV0VSR0FURV9FTkFCTEUobikgICAgICAgICBCSVQoKChuKSAqIDIp
ICsgNCkKPiArCj4gICNkZWZpbmUgIEdURklGT0RCRyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgX01NSU8oMHgxMjAwMDApCj4gICNkZWZpbmUgICAgR1RfRklGT19TQkRFRElDQVRFX0ZSRUVf
RU5UUllfQ0hWICAgKDB4MWYgPDwgMjApCj4gICNkZWZpbmUgICAgR1RfRklGT19GUkVFX0VOVFJJ
RVNfQ0hWICAgICAgICAgICAgKDB4N2YgPDwgMTMpCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCj4g
aW5kZXggNzVlZTAyN2FiYjgwLi5kM2VhMTkzY2QwOTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcG0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmMKPiBAQCAtOTA3OCw2ICs5MDc4LDIyIEBAIHN0YXRpYyB2b2lkIGljbF9pbml0X2Nsb2Nr
X2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gICAgICAgICAgICAg
ICAgICAgIF9NQVNLRURfQklUX0VOQUJMRShHRU4xMV9FTkFCTEVfMzJfUExBTkVfTU9ERSkpOwo+
ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZCB0Z2xfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICt7Cj4gKyAgICAgICB1MzIgdmRfcGdfZW5hYmxlID0g
MDsKPiArICAgICAgIHVuc2lnbmVkIGludCBpOwo+ICsKPiArICAgICAgIC8qIFRoaXMgaXMgbm90
IGEgV0EuIEVuYWJsZSBWRCBIQ1AgJiBNRlhfRU5DIHBvd2VyZ2F0ZSAqLwo+ICsgICAgICAgZm9y
IChpID0gMDsgaSA8IEk5MTVfTUFYX1ZDUzsgaSsrKSB7Cj4gKyAgICAgICAgICAgICAgIGlmIChI
QVNfRU5HSU5FKGRldl9wcml2LCBfVkNTKGkpKSkKPiArICAgICAgICAgICAgICAgICAgICAgICB2
ZF9wZ19lbmFibGUgfD0gVkROX0hDUF9QT1dFUkdBVEVfRU5BQkxFKGkpIHwKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgVkROX01GWF9QT1dFUkdBVEVfRU5BQkxFKGkp
Owo+ICsgICAgICAgfQo+ICsKPiArICAgICAgIEk5MTVfV1JJVEUoUE9XRVJHQVRFX0VOQUJMRSwK
PiArICAgICAgICAgICAgICAgICAgSTkxNV9SRUFEKFBPV0VSR0FURV9FTkFCTEUpIHwgdmRfcGdf
ZW5hYmxlKTsKCklzIHRoaXMgZGlzcGxheSByZWxhdGVkIGF0IGFsbD8KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
