Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A84CFB703
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 19:08:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 461456E09E;
	Wed, 13 Nov 2019 18:08:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 824796E09E
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 18:08:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 10:08:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,301,1569308400"; d="scan'208";a="194751163"
Received: from nageldin-mobl1.ger.corp.intel.com (HELO [10.252.43.113])
 ([10.252.43.113])
 by orsmga007.jf.intel.com with ESMTP; 13 Nov 2019 10:08:00 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191113154639.27144-1-lionel.g.landwerlin@intel.com>
 <157366294079.22201.646622427460368767@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <6e487e55-43a7-8c95-7c31-e21318f9b2e3@intel.com>
Date: Wed, 13 Nov 2019 20:07:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <157366294079.22201.646622427460368767@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: don't forget noa wait after
 oa config
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTMvMTEvMjAxOSAxODozNSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMTEtMTMgMTU6NDY6MzkpCj4+IEknbSBvYnNlcnZpbmcgaW5jb2hl
cmVuY2UgbWV0cmljIHZhbHVlcywgY2hhbmdpbmcgZnJvbSBydW4gdG8gcnVuLgo+Pgo+PiBJdCBh
cHBlYXJzIHRoZSBwYXRjaGVzIGludHJvZHVjaW5nIG5vYSB3YWl0ICYgcmVjb25maWd1cmF0aW9u
IGZyb20KPj4gY29tbWFuZCBzdHJlYW0gc3dpdGNoZWQgcGxhY2VzIGluIHRoZSBzZXJpZXMgbXVs
dGlwbGUgdGltZXMgZHVyaW5nIHRoZQo+PiByZXZpZXcuIFRoaXMgbGVhZCB0byB0aGUgZGVwZW5k
ZW5jeSBvZiBvbmUgb250byB0aGUgb3JkZXIgdG8gZ28KPj4gbWlzc2luZy4uLgo+IEkgZG9uJ3Qg
dGhpbmsgSSBkcm9wcGVkIGl0OyBpZiBJIGRpZCBteSBhcG9sb2dpZXMuIEkgZG8gZmVlbCB0aGUK
PiBlZ2ctb24tZmFjZSBmb3Igd3JpdGluZyBhIHNlbGZ0ZXN0IHRvIHZlcmlmeSB0aGF0IG5vYV93
YWl0IGRvZXMgd2hhdCB5b3UKPiBzYWlkIGl0IGRpZCwgYnV0IGNvbXBsZXRlbHkgbWlzc2luZyB0
aGF0IGl0IHdlbnQgdW51c2VkIDopCj4gICAKPj4gU2lnbmVkLW9mZi1ieTogTGlvbmVsIExhbmR3
ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+PiBGaXhlczogMTVkMGFjZTFm
ODc2ICgiZHJtL2k5MTUvcGVyZjogZXhlY3V0ZSBPQSBjb25maWd1cmF0aW9uIGZyb20gY29tbWFu
ZCBzdHJlYW0iKQo+PiAtLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyB8
IDkgKysrKysrKy0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVy
Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPj4gaW5kZXggNTA3MjM2YmQ0
MWFlLi4zMWU0N2VlMjMzNTcgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGVyZi5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4+IEBA
IC0xODcwLDcgKzE4NzAsNyBAQCBhbGxvY19vYV9jb25maWdfYnVmZmVyKHN0cnVjdCBpOTE1X3Bl
cmZfc3RyZWFtICpzdHJlYW0sCj4+ICAgICAgICAgIGNvbmZpZ19sZW5ndGggKz0gbnVtX2xyaV9k
d29yZHMob2FfY29uZmlnLT5tdXhfcmVnc19sZW4pOwo+PiAgICAgICAgICBjb25maWdfbGVuZ3Ro
ICs9IG51bV9scmlfZHdvcmRzKG9hX2NvbmZpZy0+Yl9jb3VudGVyX3JlZ3NfbGVuKTsKPj4gICAg
ICAgICAgY29uZmlnX2xlbmd0aCArPSBudW1fbHJpX2R3b3JkcyhvYV9jb25maWctPmZsZXhfcmVn
c19sZW4pOwo+PiAtICAgICAgIGNvbmZpZ19sZW5ndGgrKzsgLyogTUlfQkFUQ0hfQlVGRkVSX0VO
RCAqLwo+PiArICAgICAgIGNvbmZpZ19sZW5ndGggKz0gMzsgLyogTUlfQkFUQ0hfQlVGRkVSX1NU
QVJUICovCj4+ICAgICAgICAgIGNvbmZpZ19sZW5ndGggPSBBTElHTihzaXplb2YodTMyKSAqIGNv
bmZpZ19sZW5ndGgsIEk5MTVfR1RUX1BBR0VfU0laRSk7Cj4+ICAgCj4+ICAgICAgICAgIG9iaiA9
IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0oc3RyZWFtLT5wZXJmLT5pOTE1LCBjb25maWdf
bGVuZ3RoKTsKPj4gQEAgLTE4OTUsNyArMTg5NSwxMiBAQCBhbGxvY19vYV9jb25maWdfYnVmZmVy
KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCj4+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIG9hX2NvbmZpZy0+ZmxleF9yZWdzLAo+PiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBvYV9jb25maWctPmZsZXhfcmVnc19sZW4pOwo+PiAgIAo+PiAtICAgICAgICpjcysr
ID0gTUlfQkFUQ0hfQlVGRkVSX0VORDsKPj4gKyAgICAgICAvKiBKdW1wIGludG8gdGhlIGFjdGl2
ZSB3YWl0LiAqLwo+PiArICAgICAgICpjcysrID0gKElOVEVMX0dFTihzdHJlYW0tPnBlcmYtPmk5
MTUpIDwgOCA/Cj4+ICsgICAgICAgICAgICAgICAgTUlfQkFUQ0hfQlVGRkVSX1NUQVJUIDoKPj4g
KyAgICAgICAgICAgICAgICBNSV9CQVRDSF9CVUZGRVJfU1RBUlRfR0VOOCk7Cj4+ICsgICAgICAg
KmNzKysgPSBpOTE1X2dndHRfb2Zmc2V0KHN0cmVhbS0+bm9hX3dhaXQpOwo+PiArICAgICAgICpj
cysrID0gMDsKPiBZaWtlcywgc3RyZWFtLT5ub2Ffd2FpdCBpcyB1bnVzZWQuCj4KPiBIbW0sIHRo
ZSBub2Ffd2FpdCBkb2Vzbid0IGhhdmUgYW55IGFyYml0cmF0aW9uIHBvaW50cyBpbnRlcm5hbGx5
LCBzbyB3ZQo+IHByb2JhYmx5IGRvIG5lZWQgdG8gbWFrZSBpdCBub24tcHJlZW1wdGFibGUgYXMg
d2VsbD8KPgo+IFdpdGggYSBycS0+ZmxhZ3MgfD0gSTkxNV9SRVFVRVNUX05PUFJFRU1QVCBpbiBl
bWl0X29hX2NvbmZpZywKPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4KPiBXZSBuZWVkIHRvIHdyYXAgZW1pdF9vYV9jb25maWcoKSBpbiBhIHNp
bWlsYXIgc2VsZnRlc3QgYW5kIHZlcmlmeQo+IHRoYXQgYSByZWFkIG9mIHRoZSBvYSByZWdzIGFy
ZSBjb3JyZWN0IGFuZCB0aGF0IHRoZSBUSU1FU1RBTVAgaW5kaWNhdGVzCj4gdGhlIGFwcHJvcHJp
YXRlIGRlbGF5IGJlZm9yZSB0aGUgcmVhZC4gSWYgeW91IGZlZWwgYm9yZWQuCj4gLUNocmlzCgoK
QXMgbG9uZyBhcyB3ZSB3YWl0IGxvbmcgZW5vdWdoLCBpdCBzaG91bGQgYmUgb2theS4KCldoeSBt
YWtpbmcgaXQgbm9wcmVlbXB0PwoKCi1MaW9uZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
