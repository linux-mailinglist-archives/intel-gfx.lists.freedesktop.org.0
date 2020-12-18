Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CE42DDF68
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 09:11:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 612EB8999A;
	Fri, 18 Dec 2020 08:11:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A87A58999A
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 08:11:34 +0000 (UTC)
IronPort-SDR: yMbQdo+gU4a8ykcGsMG+06ejy+Ft7KX/5g2ZYa+VKQKI+wGy9E6dL4GTbe6K+IlLLL/JlfGFcc
 Jkeo8ADMWsxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="174627860"
X-IronPort-AV: E=Sophos;i="5.78,429,1599548400"; d="scan'208";a="174627860"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 00:11:34 -0800
IronPort-SDR: lQM1gfiieDKbBDui48Knw8VxxvQrPOUKHTkzRLDrofk3Sv34jAZqrI8jXti0sX4G9/pd4ZyeFn
 qovKldMLw8fA==
X-IronPort-AV: E=Sophos;i="5.78,429,1599548400"; d="scan'208";a="370441757"
Received: from omorris-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.33.231])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 00:11:32 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Aditya Swarup <aditya.swarup@intel.com>
In-Reply-To: <20201218023129.oxuzjlbxzqg7twpl@ldmartin-desk1>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201203072359.156682-1-aditya.swarup@intel.com>
 <20201218023129.oxuzjlbxzqg7twpl@ldmartin-desk1>
Date: Fri, 18 Dec 2020 10:11:30 +0200
Message-ID: <87eejn4jpp.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/tgl: Fix REVID macros for
 TGL to fetch correct stepping
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAxNyBEZWMgMjAyMCwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IEJvdGggcGF0Y2hlcyBhcHBsaWVkLiBUaGFua3MhCj4KPiBKYW5pLCBt
YXliZSBub3cgeW91IGNhbiByZWJhc2UgeW91ciBwYXRjaCB0byBnZXQgcmlkIG9mIHRoZSBleHRl
cm4gPwoKWWVzLCB0aGFua3MgZm9yIHRoZSBpcnEgc28gSSBjYW4gc3RvcCBwb2xsaW5nLiA7KQoK
QlIsCkphbmkuCgoKPgo+Cj4gTHVjYXMgRGUgTWFyY2hpCj4KPiBPbiBXZWQsIERlYyAwMiwgMjAy
MCBhdCAxMToyMzo1OFBNIC0wODAwLCBBZGl0eWEgU3dhcnVwIHdyb3RlOgo+PkZpeCBUR0wgUkVW
SUQgbWFjcm9zIHRvIGZldGNoIGNvcnJlY3QgZGlzcGxheS9ndCBzdGVwcGluZyBiYXNlZAo+Pm9u
IFNPQyByZXYgaWQgZnJvbSBJTlRFTF9SRVZJRCgpIG1hY3JvLiBQcmV2aW91c2x5LCB3ZSB3ZXJl
IGp1c3QKPj5yZXR1cm5pbmcgdGhlIGZpcnN0IGVsZW1lbnQgb2YgdGhlIHJldmlkIGFycmF5IGlu
c3RlYWQgb2YgdXNpbmcKPj50aGUgY29ycmVjdCBpbmRleCBiYXNlZCBvbiBTT0MgcmV2IGlkLgo+
Pgo+PkZpeGVzOiAoImRybS9pOTE1L3RnbDogRml4IHN0ZXBwaW5nIFdBIG1hdGNoaW5nIikKPj5D
YzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4+Q2M6IE1h
dHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4+Q2M6IEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+PkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPgo+PkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgo+PlNpZ25lZC1vZmYtYnk6IEFkaXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBA
aW50ZWwuY29tPgo+PlJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4KPj4tLS0KPj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCB8IDEy
ICsrKysrKy0tLS0tLQo+PiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0
aW9ucygtKQo+Pgo+PmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+PmluZGV4IGZjMTA5MGM2ODg5Yy4u
MmUyMTQ5YzlhMmY0IDEwMDY0NAo+Pi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgKPj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4+QEAgLTE1ODAsOSAr
MTU4MCw5IEBAIHN0YXRpYyBpbmxpbmUgY29uc3Qgc3RydWN0IGk5MTVfcmV2X3N0ZXBwaW5ncyAq
Cj4+IHRnbF9yZXZpZHNfZ2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPj4g
ewo+PiAJaWYgKElTX1RHTF9VKGRldl9wcml2KSB8fCBJU19UR0xfWShkZXZfcHJpdikpCj4+LQkJ
cmV0dXJuIHRnbF91eV9yZXZpZHM7Cj4+KwkJcmV0dXJuICZ0Z2xfdXlfcmV2aWRzW0lOVEVMX1JF
VklEKGRldl9wcml2KV07Cj4+IAllbHNlCj4+LQkJcmV0dXJuIHRnbF9yZXZpZHM7Cj4+KwkJcmV0
dXJuICZ0Z2xfcmV2aWRzW0lOVEVMX1JFVklEKGRldl9wcml2KV07Cj4+IH0KPj4KPj4gI2RlZmlu
ZSBJU19UR0xfRElTUF9SRVZJRChwLCBzaW5jZSwgdW50aWwpIFwKPj5AQCAtMTU5MiwxNCArMTU5
MiwxNCBAQCB0Z2xfcmV2aWRzX2dldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
Cj4+Cj4+ICNkZWZpbmUgSVNfVEdMX1VZX0dUX1JFVklEKHAsIHNpbmNlLCB1bnRpbCkgXAo+PiAJ
KChJU19UR0xfVShwKSB8fCBJU19UR0xfWShwKSkgJiYgXAo+Pi0JIHRnbF91eV9yZXZpZHMtPmd0
X3N0ZXBwaW5nID49IChzaW5jZSkgJiYgXAo+Pi0JIHRnbF91eV9yZXZpZHMtPmd0X3N0ZXBwaW5n
IDw9ICh1bnRpbCkpCj4+KwkgdGdsX3V5X3Jldmlkc1tJTlRFTF9SRVZJRChwKV0uZ3Rfc3RlcHBp
bmcgPj0gKHNpbmNlKSAmJiBcCj4+KwkgdGdsX3V5X3Jldmlkc1tJTlRFTF9SRVZJRChwKV0uZ3Rf
c3RlcHBpbmcgPD0gKHVudGlsKSkKPj4KPj4gI2RlZmluZSBJU19UR0xfR1RfUkVWSUQocCwgc2lu
Y2UsIHVudGlsKSBcCj4+IAkoSVNfVElHRVJMQUtFKHApICYmIFwKPj4gCSAhKElTX1RHTF9VKHAp
IHx8IElTX1RHTF9ZKHApKSAmJiBcCj4+LQkgdGdsX3Jldmlkcy0+Z3Rfc3RlcHBpbmcgPj0gKHNp
bmNlKSAmJiBcCj4+LQkgdGdsX3Jldmlkcy0+Z3Rfc3RlcHBpbmcgPD0gKHVudGlsKSkKPj4rCSB0
Z2xfcmV2aWRzW0lOVEVMX1JFVklEKHApXS5ndF9zdGVwcGluZyA+PSAoc2luY2UpICYmIFwKPj4r
CSB0Z2xfcmV2aWRzW0lOVEVMX1JFVklEKHApXS5ndF9zdGVwcGluZyA8PSAodW50aWwpKQo+Pgo+
PiAjZGVmaW5lIFJLTF9SRVZJRF9BMAkJMHgwCj4+ICNkZWZpbmUgUktMX1JFVklEX0IwCQkweDEK
Pj4tLSAKPj4yLjI3LjAKPj4KPj5fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+PkludGVsLWdmeCBtYWlsaW5nIGxpc3QKPj5JbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4+aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhp
Y3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
