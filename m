Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1590F1EB844
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 11:21:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E6AA89C6B;
	Tue,  2 Jun 2020 09:21:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 392E589C6B;
 Tue,  2 Jun 2020 09:21:05 +0000 (UTC)
IronPort-SDR: oxtE+dy6RHIcaqnBo2Fg2BEeR4ABLHsMh2KWG8sA8pRBaxE9AE/Fr2qLYcN0h5DbzoI2pY0DN6
 cIxagl7NXanA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 02:21:04 -0700
IronPort-SDR: OpI2JlgGNNxfvu2lYGYn0X4I0+dWbJfSvGyylKUPy7sEotI4AGPPP1KUnOm3ltRopREFUN//rO
 /SWm0gfbCM/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,463,1583222400"; d="scan'208";a="257058445"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 02 Jun 2020 02:21:03 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id CA4F75C2C64; Tue,  2 Jun 2020 12:18:34 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200602002650.1355736-1-chris@chris-wilson.co.uk>
References: <20200602002650.1355736-1-chris@chris-wilson.co.uk>
Date: Tue, 02 Jun 2020 12:18:34 +0300
Message-ID: <87pnahsu51.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_exec_schedule: Try
 to spot unfairness
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gQW4gaW1w
b3J0YW50IHByb3BlcnR5IGZvciBtdWx0aS1jbGllbnQgc3lzdGVtcyBpcyB0aGF0IGVhY2ggY2xp
ZW50IGdldHMKPiBhICdmYWlyJyBhbGxvdG1lbnQgb2Ygc3lzdGVtIHRpbWUuIChXaGVyZSBmYWly
bmVzcyBpcyBhdCB0aGUgd2hpbSBvZiB0aGUKPiBjb250ZXh0IHByb3BlcnRpZXMsIHN1Y2ggYXMg
cHJpb3JpdGllcy4pIFRoaXMgdGVzdCBmb3JrcyBOIGluZGVwZW5kZW50Cj4gY2xpZW50cyAoYWxi
ZWl0IHRoZXkgaGFwcGVuIHRvIHNoYXJlIGEgc2luZ2xlIHZtKSwgYW5kIGRvZXMgYW4gZXF1YWwK
PiBhbW91bnQgb2Ygd29yayBpbiBjbGllbnQgYW5kIGFzc2VydHMgdGhhdCB0aGV5IHRha2UgYW4g
ZXF1YWwgYW1vdW50IG9mCj4gdGltZS4KPgo+IFRob3VnaCB3ZSBoYXZlIG5ldmVyIGNsYWltZWQg
dG8gaGF2ZSBhIGNvbXBsZXRlbHkgZmFpciBzY2hlZHVsZXIsIHRoYXQKPiBpcyB3aGF0IGlzIGV4
cGVjdGVkLgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
Cj4gQ2M6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KPiAtLS0KPiAgdGVz
dHMvaTkxNS9nZW1fZXhlY19zY2hlZHVsZS5jIHwgNDE4ICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNDE4IGluc2VydGlvbnMoKykKPgo+IGRpZmYg
LS1naXQgYS90ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVkdWxlLmMgYi90ZXN0cy9pOTE1L2dlbV9l
eGVjX3NjaGVkdWxlLmMKPiBpbmRleCA1NmM2Mzg4MzMuLmQxMTIxZWNkMiAxMDA2NDQKPiAtLS0g
YS90ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVkdWxlLmMKPiArKysgYi90ZXN0cy9pOTE1L2dlbV9l
eGVjX3NjaGVkdWxlLmMKPiBAQCAtMjQ5NSw2ICsyNDk1LDQxNyBAQCBzdGF0aWMgdm9pZCBtZWFz
dXJlX3NlbWFwaG9yZV9wb3dlcihpbnQgaTkxNSkKPiAgCXJhcGxfY2xvc2UoJnBrZyk7Cj4gIH0K
PiAgCj4gK3N0YXRpYyBpbnQgcmVhZF90aW1lc3RhbXBfZnJlcXVlbmN5KGludCBpOTE1KQo+ICt7
Cj4gKwlpbnQgdmFsdWUgPSAwOwo+ICsJZHJtX2k5MTVfZ2V0cGFyYW1fdCBncCA9IHsKPiArCQku
dmFsdWUgPSAmdmFsdWUsCj4gKwkJLnBhcmFtID0gSTkxNV9QQVJBTV9DU19USU1FU1RBTVBfRlJF
UVVFTkNZLAo+ICsJfTsKPiArCWlvY3RsKGk5MTUsIERSTV9JT0NUTF9JOTE1X0dFVFBBUkFNLCAm
Z3ApOwo+ICsJcmV0dXJuIHZhbHVlOwo+ICt9Cj4gKwo+ICtzdGF0aWMgdWludDY0X3QgZGl2NjRf
dTY0X3JvdW5kX3VwKHVpbnQ2NF90IHgsIHVpbnQ2NF90IHkpCj4gK3sKPiArCXJldHVybiAoeCAr
IHkgLSAxKSAvIHk7Cj4gK30KPiArCj4gK3N0YXRpYyB1aW50NjRfdCBuc190b190aWNrcyhpbnQg
aTkxNSwgdWludDY0X3QgbnMpCj4gK3sKPiArCXJldHVybiBkaXY2NF91NjRfcm91bmRfdXAobnMg
KiByZWFkX3RpbWVzdGFtcF9mcmVxdWVuY3koaTkxNSksCj4gKwkJCQkgIE5TRUNfUEVSX1NFQyk7
Cj4gK30KPiArCj4gK3N0YXRpYyB1aW50NjRfdCB0aWNrc190b19ucyhpbnQgaTkxNSwgdWludDY0
X3QgdGlja3MpCj4gK3sKPiArCXJldHVybiBkaXY2NF91NjRfcm91bmRfdXAodGlja3MgKiBOU0VD
X1BFUl9TRUMsCj4gKwkJCQkgIHJlYWRfdGltZXN0YW1wX2ZyZXF1ZW5jeShpOTE1KSk7Cj4gK30K
PiArCj4gKyNkZWZpbmUgTUlfSU5TVFIob3Bjb2RlLCBmbGFncykgKCgob3Bjb2RlKSA8PCAyMykg
fCAoZmxhZ3MpKQo+ICsKPiArI2RlZmluZSBNSV9NQVRIKHgpICAgICAgICAgICAgICAgICAgICAg
IE1JX0lOU1RSKDB4MWEsICh4KSAtIDEpCj4gKyNkZWZpbmUgTUlfTUFUSF9JTlNUUihvcGNvZGUs
IG9wMSwgb3AyKSAoKG9wY29kZSkgPDwgMjAgfCAob3AxKSA8PCAxMCB8IChvcDIpKQo+ICsvKiBP
cGNvZGVzIGZvciBNSV9NQVRIX0lOU1RSICovCj4gKyNkZWZpbmUgICBNSV9NQVRIX05PT1AgICAg
ICAgICAgICAgICAgICBNSV9NQVRIX0lOU1RSKDB4MDAwLCAweDAsIDB4MCkKPiArI2RlZmluZSAg
IE1JX01BVEhfTE9BRChvcDEsIG9wMikgICAgICAgIE1JX01BVEhfSU5TVFIoMHgwODAsIG9wMSwg
b3AyKQo+ICsjZGVmaW5lICAgTUlfTUFUSF9MT0FESU5WKG9wMSwgb3AyKSAgICAgTUlfTUFUSF9J
TlNUUigweDQ4MCwgb3AxLCBvcDIpCj4gKyNkZWZpbmUgICBNSV9NQVRIX0xPQUQwKG9wMSkgICAg
ICAgICAgICBNSV9NQVRIX0lOU1RSKDB4MDgxLCBvcDEpCj4gKyNkZWZpbmUgICBNSV9NQVRIX0xP
QUQxKG9wMSkgICAgICAgICAgICBNSV9NQVRIX0lOU1RSKDB4NDgxLCBvcDEpCj4gKyNkZWZpbmUg
ICBNSV9NQVRIX0FERCAgICAgICAgICAgICAgICAgICBNSV9NQVRIX0lOU1RSKDB4MTAwLCAweDAs
IDB4MCkKPiArI2RlZmluZSAgIE1JX01BVEhfU1VCICAgICAgICAgICAgICAgICAgIE1JX01BVEhf
SU5TVFIoMHgxMDEsIDB4MCwgMHgwKQo+ICsjZGVmaW5lICAgTUlfTUFUSF9BTkQgICAgICAgICAg
ICAgICAgICAgTUlfTUFUSF9JTlNUUigweDEwMiwgMHgwLCAweDApCj4gKyNkZWZpbmUgICBNSV9N
QVRIX09SICAgICAgICAgICAgICAgICAgICBNSV9NQVRIX0lOU1RSKDB4MTAzLCAweDAsIDB4MCkK
PiArI2RlZmluZSAgIE1JX01BVEhfWE9SICAgICAgICAgICAgICAgICAgIE1JX01BVEhfSU5TVFIo
MHgxMDQsIDB4MCwgMHgwKQo+ICsjZGVmaW5lICAgTUlfTUFUSF9TVE9SRShvcDEsIG9wMikgICAg
ICAgTUlfTUFUSF9JTlNUUigweDE4MCwgb3AxLCBvcDIpCj4gKyNkZWZpbmUgICBNSV9NQVRIX1NU
T1JFSU5WKG9wMSwgb3AyKSAgICBNSV9NQVRIX0lOU1RSKDB4NTgwLCBvcDEsIG9wMikKPiArLyog
UmVnaXN0ZXJzIHVzZWQgYXMgb3BlcmFuZHMgaW4gTUlfTUFUSF9JTlNUUiAqLwo+ICsjZGVmaW5l
ICAgTUlfTUFUSF9SRUcoeCkgICAgICAgICAgICAgICAgKHgpCj4gKyNkZWZpbmUgICBNSV9NQVRI
X1JFR19TUkNBICAgICAgICAgICAgICAweDIwCj4gKyNkZWZpbmUgICBNSV9NQVRIX1JFR19TUkNC
ICAgICAgICAgICAgICAweDIxCj4gKyNkZWZpbmUgICBNSV9NQVRIX1JFR19BQ0NVICAgICAgICAg
ICAgICAweDMxCj4gKyNkZWZpbmUgICBNSV9NQVRIX1JFR19aRiAgICAgICAgICAgICAgICAweDMy
Cj4gKyNkZWZpbmUgICBNSV9NQVRIX1JFR19DRiAgICAgICAgICAgICAgICAweDMzCgpBcmUgeW91
IHRoaW5raW5nIHRoYXQgd2Ugc2hvdWxkIGp1c3QgcHVsbCBpbiB0aGUgZHJpdmVyIGdwdV9jb21t
YW5kcy5oCmFzIGlzIGludG8gbGliPwoKLU1pa2EKCj4gKwo+ICsjZGVmaW5lIE1JX0xPQURfUkVH
SVNURVJfUkVHICAgIE1JX0lOU1RSKDB4MkEsIDEpCj4gKwo+ICtzdGF0aWMgdm9pZCBkZWxheShp
bnQgaTkxNSwKPiArCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9leGVjdXRpb25fZW5naW5lMiAqZSwK
PiArCQkgIHVpbnQzMl90IGhhbmRsZSwKPiArCQkgIHVpbnQ2NF90IGFkZHIsCj4gKwkJICB1aW50
NjRfdCBucykKPiArewo+ICsJY29uc3QgaW50IHVzZV82NGIgPSBpbnRlbF9nZW4oaW50ZWxfZ2V0
X2RybV9kZXZpZChpOTE1KSkgPj0gODsKPiArCWNvbnN0IHVpbnQzMl90IGJhc2UgPSBnZW1fZW5n
aW5lX21taW9fYmFzZShpOTE1LCBlLT5uYW1lKTsKPiArI2RlZmluZSBDU19HUFIoeCkgKGJhc2Ug
KyAweDYwMCArIDggKiAoeCkpCj4gKyNkZWZpbmUgVElNRVNUQU1QIChiYXNlICsgMHgzYTgpCj4g
KwllbnVtIHsgU1RBUlRfVFMsIE5PV19UUyB9Owo+ICsJdWludDMyX3QgKm1hcCwgKmNzLCAqam1w
Owo+ICsKPiArCWlndF9yZXF1aXJlKGJhc2UpOwo+ICsKPiArCWNzID0gbWFwID0gZ2VtX21tYXBf
X2RldmljZV9jb2hlcmVudChpOTE1LCBoYW5kbGUsIDAsIDQwOTYsIFBST1RfV1JJVEUpOwo+ICsK
PiArCSpjcysrID0gTUlfTE9BRF9SRUdJU1RFUl9JTU07Cj4gKwkqY3MrKyA9IENTX0dQUihTVEFS
VF9UUykgKyA0Owo+ICsJKmNzKysgPSAwOwo+ICsJKmNzKysgPSBNSV9MT0FEX1JFR0lTVEVSX1JF
RzsKPiArCSpjcysrID0gVElNRVNUQU1QOwo+ICsJKmNzKysgPSBDU19HUFIoU1RBUlRfVFMpOwo+
ICsKPiArCWlmIChvZmZzZXRfaW5fcGFnZShjcykgJiA0KQo+ICsJCSpjcysrID0gMDsKPiArCWpt
cCA9IGNzOwo+ICsKPiArCSpjcysrID0gMHg1IDw8IDIzOyAvKiBNSV9BUkJfQ0hFQ0sgKi8KPiAr
Cj4gKwkqY3MrKyA9IE1JX0xPQURfUkVHSVNURVJfSU1NOwo+ICsJKmNzKysgPSBDU19HUFIoTk9X
X1RTKSArIDQ7Cj4gKwkqY3MrKyA9IDA7Cj4gKwkqY3MrKyA9IE1JX0xPQURfUkVHSVNURVJfUkVH
Owo+ICsJKmNzKysgPSBUSU1FU1RBTVA7Cj4gKwkqY3MrKyA9IENTX0dQUihOT1dfVFMpOwo+ICsK
PiArCSpjcysrID0gTUlfTUFUSCg0KTsKPiArCSpjcysrID0gTUlfTUFUSF9MT0FEKE1JX01BVEhf
UkVHX1NSQ0EsIE1JX01BVEhfUkVHKE5PV19UUykpOwo+ICsJKmNzKysgPSBNSV9NQVRIX0xPQUQo
TUlfTUFUSF9SRUdfU1JDQiwgTUlfTUFUSF9SRUcoU1RBUlRfVFMpKTsKPiArCSpjcysrID0gTUlf
TUFUSF9TVUI7Cj4gKwkqY3MrKyA9IE1JX01BVEhfU1RPUkVJTlYoTUlfTUFUSF9SRUcoTk9XX1RT
KSwgTUlfTUFUSF9SRUdfQUNDVSk7Cj4gKwo+ICsJKmNzKysgPSAweDI0IDw8IDIzIHwgKDEgKyB1
c2VfNjRiKTsgLyogU1JNICovCj4gKwkqY3MrKyA9IENTX0dQUihOT1dfVFMpOwo+ICsJKmNzKysg
PSBhZGRyICsgNDAwMDsKPiArCSpjcysrID0gYWRkciA+PiAzMjsKPiArCj4gKwkqY3MrKyA9IE1J
X0NPTkRfQkFUQ0hfQlVGRkVSX0VORCB8IE1JX0RPX0NPTVBBUkUgfCAoMSArIHVzZV82NGIpOwo+
ICsJKmNzKysgPSB+bnNfdG9fdGlja3MoaTkxNSwgbnMpOwo+ICsJKmNzKysgPSBhZGRyICsgNDAw
MDsKPiArCSpjcysrID0gYWRkciA+PiAzMjsKPiArCj4gKwkqY3MrKyA9IE1JX0JBVENIX0JVRkZF
Ul9TVEFSVCB8IDEgPDwgOCB8IHVzZV82NGI7Cj4gKwkqY3MrKyA9IGFkZHIgKyBvZmZzZXRfaW5f
cGFnZShqbXApOwo+ICsJKmNzKysgPSBhZGRyID4+IDMyOwo+ICsKPiArCW11bm1hcChtYXAsIDQw
OTYpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX29iamVjdDIK
PiArZGVsYXlfY3JlYXRlKGludCBpOTE1LCB1aW50MzJfdCBjdHgsCj4gKwkgICAgIGNvbnN0IHN0
cnVjdCBpbnRlbF9leGVjdXRpb25fZW5naW5lMiAqZSwKPiArCSAgICAgdWludDY0X3QgdGFyZ2V0
X25zKQo+ICt7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiBvYmogPSB7Cj4g
KwkJLmhhbmRsZSA9IGJhdGNoX2NyZWF0ZShpOTE1KSwKPiArCQkuZmxhZ3MgPSBFWEVDX09CSkVD
VF9TVVBQT1JUU180OEJfQUREUkVTUywKPiArCX07Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4
ZWNidWZmZXIyIGV4ZWNidWYgPSB7Cj4gKwkJLmJ1ZmZlcnNfcHRyID0gdG9fdXNlcl9wb2ludGVy
KCZvYmopLAo+ICsJCS5idWZmZXJfY291bnQgPSAxLAo+ICsJCS5yc3ZkMSA9IGN0eCwKPiArCQku
ZmxhZ3MgPSBlLT5mbGFncywKPiArCX07Cj4gKwo+ICsJZ2VtX2V4ZWNidWYoaTkxNSwgJmV4ZWNi
dWYpOwo+ICsJZ2VtX3N5bmMoaTkxNSwgb2JqLmhhbmRsZSk7Cj4gKwo+ICsJZGVsYXkoaTkxNSwg
ZSwgb2JqLmhhbmRsZSwgb2JqLm9mZnNldCwgdGFyZ2V0X25zKTsKPiArCj4gKwlvYmouZmxhZ3Mg
fD0gRVhFQ19PQkpFQ1RfUElOTkVEOwo+ICsJcmV0dXJuIG9iajsKPiArfQo+ICsKPiArc3RhdGlj
IHZvaWQgdHNsb2coaW50IGk5MTUsCj4gKwkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9u
X2VuZ2luZTIgKmUsCj4gKwkJICB1aW50MzJfdCBoYW5kbGUsCj4gKwkJICB1aW50NjRfdCBhZGRy
KQo+ICt7Cj4gKwljb25zdCBpbnQgdXNlXzY0YiA9IGludGVsX2dlbihpbnRlbF9nZXRfZHJtX2Rl
dmlkKGk5MTUpKSA+PSA4Owo+ICsJY29uc3QgdWludDMyX3QgYmFzZSA9IGdlbV9lbmdpbmVfbW1p
b19iYXNlKGk5MTUsIGUtPm5hbWUpOwo+ICsjZGVmaW5lIENTX0dQUih4KSAoYmFzZSArIDB4NjAw
ICsgOCAqICh4KSkKPiArI2RlZmluZSBDU19USU1FU1RBTVAgKGJhc2UgKyAweDM1OCkKPiArCWVu
dW0geyBPTkUsIE1BU0ssIEFERFIgfTsKPiArCXVpbnQzMl90ICp0aW1lc3RhbXBfbG8sICphZGRy
X2xvOwo+ICsJdWludDMyX3QgKm1hcCwgKmNzOwo+ICsKPiArCWlndF9yZXF1aXJlKGJhc2UpOwo+
ICsKPiArCW1hcCA9IGdlbV9tbWFwX19kZXZpY2VfY29oZXJlbnQoaTkxNSwgaGFuZGxlLCAwLCA0
MDk2LCBQUk9UX1dSSVRFKTsKPiArCWNzID0gbWFwICsgNTEyOwo+ICsKPiArCSpjcysrID0gMHgy
NCA8PCAyMyB8ICgxICsgdXNlXzY0Yik7IC8qIFNSTSAqLwo+ICsJKmNzKysgPSBDU19USU1FU1RB
TVA7Cj4gKwl0aW1lc3RhbXBfbG8gPSBjczsKPiArCSpjcysrID0gYWRkcjsKPiArCSpjcysrID0g
YWRkciA+PiAzMjsKPiArCj4gKwkqY3MrKyA9IE1JX0xPQURfUkVHSVNURVJfSU1NOwo+ICsJKmNz
KysgPSBDU19HUFIoQUREUik7Cj4gKwlhZGRyX2xvID0gY3M7Cj4gKwkqY3MrKyA9IGFkZHI7Cj4g
KwkqY3MrKyA9IE1JX0xPQURfUkVHSVNURVJfSU1NOwo+ICsJKmNzKysgPSBDU19HUFIoQUREUikg
KyA0Owo+ICsJKmNzKysgPSBhZGRyID4+IDMyOwo+ICsKPiArCSpjcysrID0gTUlfTE9BRF9SRUdJ
U1RFUl9JTU07Cj4gKwkqY3MrKyA9IENTX0dQUihPTkUpOwo+ICsJKmNzKysgPSA0Owo+ICsJKmNz
KysgPSBNSV9MT0FEX1JFR0lTVEVSX0lNTTsKPiArCSpjcysrID0gQ1NfR1BSKE9ORSkgKyA0Owo+
ICsJKmNzKysgPSAwOwo+ICsKPiArCSpjcysrID0gTUlfTE9BRF9SRUdJU1RFUl9JTU07Cj4gKwkq
Y3MrKyA9IENTX0dQUihNQVNLKTsKPiArCSpjcysrID0gMHhmZmZmZjdmZjsKPiArCSpjcysrID0g
TUlfTE9BRF9SRUdJU1RFUl9JTU07Cj4gKwkqY3MrKyA9IENTX0dQUihNQVNLKSArIDQ7Cj4gKwkq
Y3MrKyA9IDB4ZmZmZmZmZmY7Cj4gKwo+ICsJKmNzKysgPSBNSV9NQVRIKDgpOwo+ICsJKmNzKysg
PSBNSV9NQVRIX0xPQUQoTUlfTUFUSF9SRUdfU1JDQSwgTUlfTUFUSF9SRUcoT05FKSk7Cj4gKwkq
Y3MrKyA9IE1JX01BVEhfTE9BRChNSV9NQVRIX1JFR19TUkNCLCBNSV9NQVRIX1JFRyhBRERSKSk7
Cj4gKwkqY3MrKyA9IE1JX01BVEhfQUREOwo+ICsJKmNzKysgPSBNSV9NQVRIX1NUT1JFKE1JX01B
VEhfUkVHKEFERFIpLCBNSV9NQVRIX1JFR19BQ0NVKTsKPiArCSpjcysrID0gTUlfTUFUSF9MT0FE
KE1JX01BVEhfUkVHX1NSQ0EsIE1JX01BVEhfUkVHKEFERFIpKTsKPiArCSpjcysrID0gTUlfTUFU
SF9MT0FEKE1JX01BVEhfUkVHX1NSQ0IsIE1JX01BVEhfUkVHKE1BU0spKTsKPiArCSpjcysrID0g
TUlfTUFUSF9BTkQ7Cj4gKwkqY3MrKyA9IE1JX01BVEhfU1RPUkUoTUlfTUFUSF9SRUcoQUREUiks
IE1JX01BVEhfUkVHX0FDQ1UpOwo+ICsKPiArCSpjcysrID0gMHgyNCA8PCAyMyB8ICgxICsgdXNl
XzY0Yik7IC8qIFNSTSAqLwo+ICsJKmNzKysgPSBDU19HUFIoQUREUik7Cj4gKwkqY3MrKyA9IGFk
ZHIgKyBvZmZzZXRfaW5fcGFnZSh0aW1lc3RhbXBfbG8pOwo+ICsJKmNzKysgPSBhZGRyID4+IDMy
Owo+ICsJKmNzKysgPSAweDI0IDw8IDIzIHwgKDEgKyB1c2VfNjRiKTsgLyogU1JNICovCj4gKwkq
Y3MrKyA9IENTX0dQUihBRERSKTsKPiArCSpjcysrID0gYWRkciArIG9mZnNldF9pbl9wYWdlKGFk
ZHJfbG8pOwo+ICsJKmNzKysgPSBhZGRyID4+IDMyOwo+ICsKPiArCSpjcysrID0gTUlfQkFUQ0hf
QlVGRkVSX0VORDsKPiArCj4gKwltdW5tYXAobWFwLCA0MDk2KTsKPiArfQo+ICsKPiArc3RhdGlj
IHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19vYmplY3QyCj4gK3RzbG9nX2NyZWF0ZShpbnQgaTkx
NSwgdWludDMyX3QgY3R4LCBjb25zdCBzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZTIgKmUp
Cj4gK3sKPiArCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19vYmplY3QyIG9iaiA9IHsKPiArCQku
aGFuZGxlID0gYmF0Y2hfY3JlYXRlKGk5MTUpLAo+ICsJCS5mbGFncyA9IEVYRUNfT0JKRUNUX1NV
UFBPUlRTXzQ4Ql9BRERSRVNTLAo+ICsJfTsKPiArCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1
ZmZlcjIgZXhlY2J1ZiA9IHsKPiArCQkuYnVmZmVyc19wdHIgPSB0b191c2VyX3BvaW50ZXIoJm9i
aiksCj4gKwkJLmJ1ZmZlcl9jb3VudCA9IDEsCj4gKwkJLnJzdmQxID0gY3R4LAo+ICsJCS5mbGFn
cyA9IGUtPmZsYWdzLAo+ICsJfTsKPiArCj4gKwlnZW1fZXhlY2J1ZihpOTE1LCAmZXhlY2J1Zik7
Cj4gKwlnZW1fc3luYyhpOTE1LCBvYmouaGFuZGxlKTsKPiArCj4gKwl0c2xvZyhpOTE1LCBlLCBv
YmouaGFuZGxlLCBvYmoub2Zmc2V0KTsKPiArCj4gKwlvYmouZmxhZ3MgfD0gRVhFQ19PQkpFQ1Rf
UElOTkVEOwo+ICsJcmV0dXJuIG9iajsKPiArfQo+ICsKPiArc3RhdGljIGludCBjbXBfdTMyKGNv
bnN0IHZvaWQgKkEsIGNvbnN0IHZvaWQgKkIpCj4gK3sKPiArCWNvbnN0IHVuc2lnbmVkIGxvbmcg
KmEgPSBBLCAqYiA9IEI7Cj4gKwo+ICsJaWYgKCphIDwgKmIpCj4gKwkJcmV0dXJuIC0xOwo+ICsJ
ZWxzZSBpZiAoKmEgPiAqYikKPiArCQlyZXR1cm4gMTsKPiArCWVsc2UKPiArCQlyZXR1cm4gMDsK
PiArfQo+ICsKPiArc3RhdGljIHZvaWQgZmFpcl9jaGlsZChpbnQgaTkxNSwgdWludDMyX3QgY3R4
LAo+ICsJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZTIgKmUsCj4g
KwkJICAgICAgIHVpbnQ2NF90IGZyYW1lX25zLAo+ICsJCSAgICAgICBpbnQgdGltZW91dCwKPiAr
CQkgICAgICAgaW50IHRpbWVsaW5lLAo+ICsJCSAgICAgICB1bnNpZ25lZCBpbnQgZmxhZ3MsCj4g
KwkJICAgICAgIHVuc2lnbmVkIGxvbmcgKmN0bCwKPiArCQkgICAgICAgdW5zaWduZWQgbG9uZyAq
b3V0KQo+ICsjZGVmaW5lIEZfUEFDSU5HIDB4MQo+ICsjZGVmaW5lIEZfRVhURVJOQUwgMHgyCj4g
K3sKPiArCWNvbnN0IGludCBiYXRjaGVzX3Blcl9mcmFtZSA9IDM7Cj4gKwlzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX2V4ZWNfb2JqZWN0MiBwcmV2ID0KPiArCQlkZWxheV9jcmVhdGUoaTkxNSwgY3R4LCBl
LCBmcmFtZV9ucyAvIGJhdGNoZXNfcGVyX2ZyYW1lKTsKPiArCXN0cnVjdCBkcm1faTkxNV9nZW1f
ZXhlY19vYmplY3QyIG5leHQgPQo+ICsJCWRlbGF5X2NyZWF0ZShpOTE1LCBjdHgsIGUsIGZyYW1l
X25zIC8gYmF0Y2hlc19wZXJfZnJhbWUpOwo+ICsJc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX29i
amVjdDIgdHMgPSB0c2xvZ19jcmVhdGUoaTkxNSwgY3R4LCBlKTsKPiArCXN0cnVjdCB0aW1lc3Bl
YyB0diA9IHt9Owo+ICsJdW5zaWduZWQgbG9uZyBjb3VudCA9IDA7Cj4gKwlpbnQgcF9mZW5jZSA9
IC0xLCBuX2ZlbmNlID0gLTE7Cj4gKwl1aW50MzJfdCAqbWFwOwo+ICsJaW50IG47Cj4gKwo+ICsJ
aWd0X25zZWNfZWxhcHNlZCgmdHYpOwo+ICsJd2hpbGUgKCFSRUFEX09OQ0UoKmN0bCkpIHsKPiAr
CQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNidWZmZXIyIGV4ZWNidWYgPSB7Cj4gKwkJCS5idWZm
ZXJzX3B0ciA9IHRvX3VzZXJfcG9pbnRlcigmbmV4dCksCj4gKwkJCS5idWZmZXJfY291bnQgPSAx
LAo+ICsJCQkucnN2ZDEgPSBjdHgsCj4gKwkJCS5yc3ZkMiA9IC0xLAo+ICsJCQkuZmxhZ3MgPSBl
LT5mbGFncywKPiArCQl9Owo+ICsKPiArCQlpZiAoZmxhZ3MgJiBGX0VYVEVSTkFMKSB7Cj4gKwkJ
CWV4ZWNidWYucnN2ZDIgPQo+ICsJCQkJc3dfc3luY190aW1lbGluZV9jcmVhdGVfZmVuY2UodGlt
ZWxpbmUsIGNvdW50KTsKPiArCQkJZXhlY2J1Zi5mbGFncyB8PSBJOTE1X0VYRUNfRkVOQ0VfSU47
Cj4gKwkJfQo+ICsKPiArCQlleGVjYnVmLmZsYWdzIHw9IEk5MTVfRVhFQ19GRU5DRV9PVVQ7Cj4g
KwkJZ2VtX2V4ZWNidWZfd3IoaTkxNSwgJmV4ZWNidWYpOwo+ICsJCW5fZmVuY2UgPSBleGVjYnVm
LnJzdmQyID4+IDMyOwo+ICsJCWV4ZWNidWYuZmxhZ3MgJj0gfihJOTE1X0VYRUNfRkVOQ0VfT1VU
IHwgSTkxNV9FWEVDX0ZFTkNFX0lOKTsKPiArCQlmb3IgKG4gPSAxOyBuIDwgYmF0Y2hlc19wZXJf
ZnJhbWU7IG4rKykKPiArCQkJZ2VtX2V4ZWNidWYoaTkxNSwgJmV4ZWNidWYpOwo+ICsKPiArCQll
eGVjYnVmLmJ1ZmZlcnNfcHRyID0gdG9fdXNlcl9wb2ludGVyKCZ0cyk7Cj4gKwkJZXhlY2J1Zi5i
YXRjaF9zdGFydF9vZmZzZXQgPSAyMDQ4Owo+ICsJCWdlbV9leGVjYnVmKGk5MTUsICZleGVjYnVm
KTsKPiArCj4gKwkJaWYgKGZsYWdzICYgRl9QQUNJTkcgJiYgcF9mZW5jZSAhPSAtMSkgewo+ICsJ
CQlzdHJ1Y3QgcG9sbGZkIHBmZCA9IHsKPiArCQkJCS5mZCA9IHBfZmVuY2UsCj4gKwkJCQkuZXZl
bnRzID0gUE9MTElOLAo+ICsJCQl9Owo+ICsJCQlwb2xsKCZwZmQsIDEsIC0xKTsKPiArCQl9Cj4g
KwkJY2xvc2UocF9mZW5jZSk7Cj4gKwkJY2xvc2UoZXhlY2J1Zi5yc3ZkMik7Cj4gKwo+ICsJCWln
dF9zd2FwKHByZXYsIG5leHQpOwo+ICsJCWlndF9zd2FwKHBfZmVuY2UsIG5fZmVuY2UpOwo+ICsJ
CWNvdW50Kys7Cj4gKwl9Cj4gKwlnZW1fc3luYyhpOTE1LCBwcmV2LmhhbmRsZSk7Cj4gKwljbG9z
ZShwX2ZlbmNlKTsKPiArCj4gKwlnZW1fY2xvc2UoaTkxNSwgbmV4dC5oYW5kbGUpOwo+ICsJZ2Vt
X2Nsb3NlKGk5MTUsIHByZXYuaGFuZGxlKTsKPiArCj4gKwltYXAgPSBnZW1fbW1hcF9fZGV2aWNl
X2NvaGVyZW50KGk5MTUsIHRzLmhhbmRsZSwgMCwgNDA5NiwgUFJPVF9XUklURSk7Cj4gKwlmb3Ig
KG4gPSAxOyBuIDwgbWluKGNvdW50LCA1MTIpOyBuKyspCj4gKwkJbWFwW24gLSAxXSA9IG1hcFtu
XSAtIG1hcFtuIC0gMV07Cj4gKwlxc29ydChtYXAsIC0tbiwgc2l6ZW9mKCptYXApLCBjbXBfdTMy
KTsKPiArCSpvdXQgPSB0aWNrc190b19ucyhpOTE1LCBtYXBbbiAvIDJdKTsKPiArCW11bm1hcCht
YXAsIDQwOTYpOwo+ICsKPiArCWdlbV9jbG9zZShpOTE1LCB0cy5oYW5kbGUpOwo+ICt9Cj4gKwo+
ICtzdGF0aWMgaW50IGNtcF91bChjb25zdCB2b2lkICpBLCBjb25zdCB2b2lkICpCKQo+ICt7Cj4g
Kwljb25zdCB1bnNpZ25lZCBsb25nICphID0gQSwgKmIgPSBCOwo+ICsKPiArCWlmICgqYSA8ICpi
KQo+ICsJCXJldHVybiAtMTsKPiArCWVsc2UgaWYgKCphID4gKmIpCj4gKwkJcmV0dXJuIDE7Cj4g
KwllbHNlCj4gKwkJcmV0dXJuIDA7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIGZhaXJuZXNzKGlu
dCBpOTE1LAo+ICsJCSAgICAgY29uc3Qgc3RydWN0IGludGVsX2V4ZWN1dGlvbl9lbmdpbmUyICpl
LAo+ICsJCSAgICAgaW50IHRpbWVvdXQsIHVuc2lnbmVkIGludCBmbGFncykKPiArewo+ICsJY29u
c3QgaW50IGZyYW1lX25zID0gMTY2NjYgKiAxMDAwOwo+ICsJdW5zaWduZWQgbG9uZyAqcmVzdWx0
Owo+ICsKPiArCWlndF9yZXF1aXJlKGludGVsX2dlbihpbnRlbF9nZXRfZHJtX2RldmlkKGk5MTUp
KSA+PSA4KTsKPiArCWlndF9yZXF1aXJlKGdlbV9jbGFzc19oYXNfbXV0YWJsZV9zdWJtaXNzaW9u
KGk5MTUsIGUtPmNsYXNzKSk7Cj4gKwo+ICsJcmVzdWx0ID0gbW1hcChOVUxMLCA0MDk2LCBQUk9U
X1dSSVRFLCBNQVBfU0hBUkVEIHwgTUFQX0FOT04sIC0xLCAwKTsKPiArCj4gKwlmb3IgKGludCBu
ID0gMjsgbiA8PSAxNjsgbiA8PD0gMSkgewo+ICsJCWludCB0aW1lbGluZSA9IHN3X3N5bmNfdGlt
ZWxpbmVfY3JlYXRlKCk7Cj4gKwkJaW50IG5mcmFtZXMgPSB0aW1lb3V0ICogTlNFQ19QRVJfU0VD
IC8gZnJhbWVfbnMgKyAxOwo+ICsJCWNvbnN0IGludCBuY2hpbGQgPSBuIC0gMTsgLyogb2RkIGZv
ciBlYXN5IG1lZGlhbnMgKi8KPiArCQljb25zdCBpbnQgbG8gPSBuY2hpbGQgLyA0Owo+ICsJCWNv
bnN0IGludCBoaSA9ICgzICogbmNoaWxkICsgMykgLyA0IC0gMTsKPiArCQlzdHJ1Y3QgaWd0X21l
YW4gbTsKPiArCj4gKwkJbWVtc2V0KHJlc3VsdCwgMCwgKG5jaGlsZCArIDEpICogc2l6ZW9mKHJl
c3VsdFswXSkpOwo+ICsJCWlndF9mb3JrKGNoaWxkLCBuY2hpbGQpIHsKPiArCQkJdWludDMyX3Qg
Y3R4ID0gZ2VtX2NvbnRleHRfY2xvbmVfd2l0aF9lbmdpbmVzKGk5MTUsIDApOwo+ICsKPiArCQkJ
ZmFpcl9jaGlsZChpOTE1LCBjdHgsIGUsIGZyYW1lX25zIC8gbmNoaWxkLAo+ICsJCQkJICAgdGlt
ZW91dCwgdGltZWxpbmUsIGZsYWdzLAo+ICsJCQkJICAgJnJlc3VsdFtuY2hpbGRdLAo+ICsJCQkJ
ICAgJnJlc3VsdFtjaGlsZF0pOwo+ICsKPiArCQkJZ2VtX2NvbnRleHRfZGVzdHJveShpOTE1LCBj
dHgpOwo+ICsJCX0KPiArCj4gKwkJd2hpbGUgKG5mcmFtZXMtLSkgewo+ICsJCQlzdHJ1Y3QgdGlt
ZXNwZWMgdHYgPSB7IC50dl9uc2VjID0gZnJhbWVfbnMgfTsKPiArCQkJbmFub3NsZWVwKCZ0diwg
TlVMTCk7Cj4gKwkJCXN3X3N5bmNfdGltZWxpbmVfaW5jKHRpbWVsaW5lLCAxKTsKPiArCQl9Cj4g
KwkJcmVzdWx0W25jaGlsZF0gPSAxOwo+ICsJCWZvciAoaW50IGNoaWxkID0gMDsgY2hpbGQgPCBu
Y2hpbGQ7IGNoaWxkKyspIHsKPiArCQkJd2hpbGUgKCFSRUFEX09OQ0UocmVzdWx0W2NoaWxkXSkp
IHsKPiArCQkJCXN0cnVjdCB0aW1lc3BlYyB0diA9IHsgLnR2X25zZWMgPSBmcmFtZV9ucyB9Owo+
ICsJCQkJbmFub3NsZWVwKCZ0diwgTlVMTCk7Cj4gKwkJCQlzd19zeW5jX3RpbWVsaW5lX2luYyh0
aW1lbGluZSwgMSk7Cj4gKwkJCX0KPiArCQl9Cj4gKwkJaWd0X3dhaXRjaGlsZHJlbigpOwo+ICsJ
CWNsb3NlKHRpbWVsaW5lKTsKPiArCj4gKwkJaWd0X21lYW5faW5pdCgmbSk7Cj4gKwkJZm9yIChp
bnQgY2hpbGQgPSAwOyBjaGlsZCA8IG5jaGlsZDsgY2hpbGQrKykKPiArCQkJaWd0X21lYW5fYWRk
KCZtLCByZXN1bHRbY2hpbGRdKTsKPiArCj4gKwkJcXNvcnQocmVzdWx0LCBuY2hpbGQsIHNpemVv
ZigqcmVzdWx0KSwgY21wX3VsKTsKPiArCQlpZ3RfaW5mbygiJWQgY2xpZW50cywgcmFuZ2U6IFsl
LjFmLCAlLjFmXSwgaXFyOiBbJS4xZiwgJS4xZl0sIG1lZGlhbjogJS4xZiwgbWVhbjogJS4xZiDC
sSAlLjJmIG1zXG4iLAo+ICsJCQkgbmNoaWxkLAo+ICsJCQkgMWUtNiAqIHJlc3VsdFswXSwgIDFl
LTYgKiByZXN1bHRbbmNoaWxkIC0gMV0sCj4gKwkJCSAxZS02ICogcmVzdWx0W2xvXSwgMWUtNiAq
IHJlc3VsdFtoaV0sCj4gKwkJCSAxZS02ICogcmVzdWx0W25jaGlsZCAvIDJdLAo+ICsJCQkgMWUt
NiAqIGlndF9tZWFuX2dldCgmbSksCj4gKwkJCSAxZS02ICogc3FydChpZ3RfbWVhbl9nZXRfdmFy
aWFuY2UoJm0pKSk7Cj4gKwo+ICsjaWYgMAo+ICsJCS8qIE1lYW4gd2l0aGluIDEwJSBvZiB0YXJn
ZXQgKi8KPiArCQlpZ3RfYXNzZXJ0KCA5ICogaWd0X21lYW5fZ2V0KCZtKSA+IDEwICogZnJhbWVf
bnMgJiYKPiArCQkJICAgMTAgKiBpZ3RfbWVhbl9nZXQoJm0pIDwgIDkgKiBmcmFtZV9ucyk7Cj4g
Kwo+ICsJCS8qIFZhcmlhbmNlIFtpbnRlci1xdWFydGlsZSByYW5nZV0gaXMgbGVzcyB0aGFuIDMz
JSBvZiBtZWRpYW4gKi8KPiArCQlpZ3RfYXNzZXJ0KDMgKiByZXN1bHRbaGldIC0gcmVzdWx0W2xv
XSA8IHJlc3VsdFtuY2hpbGQgLyAyXSk7Cj4gKyNlbmRpZgo+ICsJfQo+ICsKPiArCW11bm1hcChy
ZXN1bHQsIDQwOTYpOwo+ICt9Cj4gKwo+ICAjZGVmaW5lIHRlc3RfZWFjaF9lbmdpbmUoVCwgaTkx
NSwgZSkgXAo+ICAJaWd0X3N1YnRlc3Rfd2l0aF9keW5hbWljKFQpIF9fZm9yX2VhY2hfcGh5c2lj
YWxfZW5naW5lKGk5MTUsIGUpIFwKPiAgCQlpZ3RfZHluYW1pY19mKCIlcyIsIGUtPm5hbWUpCj4g
QEAgLTI1ODksNiArMzAwMCwxMyBAQCBpZ3RfbWFpbgo+ICAJCXRlc3RfZWFjaF9lbmdpbmVfc3Rv
cmUoInByb21vdGlvbiIsIGZkLCBlKQo+ICAJCQlwcm9tb3Rpb24oZmQsIGUtPmZsYWdzKTsKPiAg
Cj4gKwkJdGVzdF9lYWNoX2VuZ2luZV9zdG9yZSgiZmFpci1ub25lIiwgZmQsIGUpCj4gKwkJCWZh
aXJuZXNzKGZkLCBlLCAyLCAwKTsKPiArCQl0ZXN0X2VhY2hfZW5naW5lX3N0b3JlKCJmYWlyLXBh
Y2UiLCBmZCwgZSkKPiArCQkJZmFpcm5lc3MoZmQsIGUsIDIsIEZfUEFDSU5HKTsKPiArCQl0ZXN0
X2VhY2hfZW5naW5lX3N0b3JlKCJmYWlyLXN5bmMiLCBmZCwgZSkKPiArCQkJZmFpcm5lc3MoZmQs
IGUsIDIsIEZfUEFDSU5HIHwgRl9FWFRFUk5BTCk7Cj4gKwo+ICAJCWlndF9zdWJ0ZXN0X2dyb3Vw
IHsKPiAgCQkJaWd0X2ZpeHR1cmUgewo+ICAJCQkJaWd0X3JlcXVpcmUoZ2VtX3NjaGVkdWxlcl9o
YXNfcHJlZW1wdGlvbihmZCkpOwo+IC0tIAo+IDIuMjcuMC5yYzIKPgo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gaWd0LWRldiBtYWlsaW5nIGxpc3QK
PiBpZ3QtZGV2QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaWd0LWRldgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
