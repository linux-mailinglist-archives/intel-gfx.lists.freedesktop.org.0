Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D25CEB4B19
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 11:44:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E0426EB9A;
	Tue, 17 Sep 2019 09:44:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ED306EB98;
 Tue, 17 Sep 2019 09:44:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18516746-1500050 for multiple; Tue, 17 Sep 2019 10:43:40 +0100
MIME-Version: 1.0
To: Xiaolin Zhang <xiaolin.zhang@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-gvt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <1568699301-2799-5-git-send-email-xiaolin.zhang@intel.com>
References: <1568699301-2799-1-git-send-email-xiaolin.zhang@intel.com>
 <1568699301-2799-5-git-send-email-xiaolin.zhang@intel.com>
Message-ID: <156871341845.5729.12236186941994076760@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 17 Sep 2019 10:43:38 +0100
Subject: Re: [Intel-gfx] [PATCH v10 4/9] drm/i915: vgpu ppgtt update pv
 optimization
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
Cc: zhenyu.z.wang@intel.com, hang.yuan@intel.com, zhiyuan.lv@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBYaWFvbGluIFpoYW5nICgyMDE5LTA5LTE3IDA2OjQ4OjE1KQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jCj4gaW5kZXggZTYyZTlkMS4uMDBiMTg3YSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gQEAgLTEwMTUsNyArMTAxNSw3IEBAIHN0YXRpYyB1
NjQgX19nZW44X3BwZ3R0X2NsZWFyKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKiBjb25zdCB2
bSwKPiAgICAgICAgIHJldHVybiBzdGFydDsKPiAgfQo+ICAKPiAtc3RhdGljIHZvaWQgZ2VuOF9w
cGd0dF9jbGVhcihzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKPiArdm9pZCBnZW44X3Bw
Z3R0X2NsZWFyKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgdTY0IHN0YXJ0LCB1NjQgbGVuZ3RoKQo+ICB7Cj4gICAgICAgICBHRU1f
QlVHX09OKCFJU19BTElHTkVEKHN0YXJ0LCBCSVRfVUxMKEdFTjhfUFRFX1NISUZUKSkpOwo+IEBA
IC0xMTI2LDcgKzExMjYsNyBAQCBzdGF0aWMgaW50IF9fZ2VuOF9wcGd0dF9hbGxvYyhzdHJ1Y3Qg
aTkxNV9hZGRyZXNzX3NwYWNlICogY29uc3Qgdm0sCj4gICAgICAgICByZXR1cm4gcmV0Owo+ICB9
Cj4gIAo+IC1zdGF0aWMgaW50IGdlbjhfcHBndHRfYWxsb2Moc3RydWN0IGk5MTVfYWRkcmVzc19z
cGFjZSAqdm0sCj4gK2ludCBnZW44X3BwZ3R0X2FsbG9jKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3Bh
Y2UgKnZtLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1NjQgc3RhcnQsIHU2NCBsZW5n
dGgpCj4gIHsKPiAgICAgICAgIHU2NCBmcm9tOwo+IEBAIC0xMzI2LDcgKzEzMjYsNyBAQCBzdGF0
aWMgdm9pZCBnZW44X3BwZ3R0X2luc2VydF9odWdlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAo+ICAg
ICAgICAgfSB3aGlsZSAoaXRlci0+c2cpOwo+ICB9Cj4gIAo+IC1zdGF0aWMgdm9pZCBnZW44X3Bw
Z3R0X2luc2VydChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKPiArdm9pZCBnZW44X3Bw
Z3R0X2luc2VydChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnZtYSwKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBlbnVtIGk5MTVfY2FjaGVfbGV2ZWwgY2FjaGVfbGV2ZWwsCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgdTMyIGZsYWdzKQoKSSB0aGluayBpdCBpcyB1bndpc2Ug
dG8gZXhwb3J0IHRoZXNlLiBJIHdvdWxkIHN1Z2dlc3QgZm9jdXNpbmcgb24Kd3JhcHBpbmcgdGhl
IGZ1bmN0aW9uIHBvaW50ZXJzLCBmb3Igd2hpY2ggd2UgbmVlZCB0byBpbXByb3ZlIHRoZQpjb25z
dHJ1Y3RvcnMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5jCj4gaW5kZXggNmUyOWE1Mi4uZTQ1
ODg5MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5jCj4gQEAgLTk2LDYgKzk2LDkgQEAg
dm9pZCBpOTE1X2RldGVjdF92Z3B1KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
PiAgICAgICAgIGRldl9wcml2LT52Z3B1LmFjdGl2ZSA9IHRydWU7Cj4gICAgICAgICBtdXRleF9p
bml0KCZkZXZfcHJpdi0+dmdwdS5sb2NrKTsKPiAgCj4gKyAgICAgICAvKiBndWVzdCBkcml2ZXIg
UFYgY2FwYWJpbGl0eSAqLwo+ICsgICAgICAgZGV2X3ByaXYtPnZncHUucHZfY2FwcyA9IFBWX1BQ
R1RUX1VQREFURTsKPiArCj4gICAgICAgICBpZiAoIWludGVsX3ZncHVfY2hlY2tfcHZfY2Fwcyhk
ZXZfcHJpdiwgc2hhcmVkX2FyZWEpKSB7Cj4gICAgICAgICAgICAgICAgIERSTV9JTkZPKCJWaXJ0
dWFsIEdQVSBmb3IgSW50ZWwgR1ZULWcgZGV0ZWN0ZWQuXG4iKTsKPiAgICAgICAgICAgICAgICAg
Z290byBvdXQ7Cj4gQEAgLTMyMiw2ICszMjUsODIgQEAgaW50IGludGVsX3ZndF9iYWxsb29uKHN0
cnVjdCBpOTE1X2dndHQgKmdndHQpCj4gICAqIGk5MTUgdmdwdSBQViBzdXBwb3J0IGZvciBMaW51
eAo+ICAgKi8KPiAgCj4gK3N0YXRpYyBpbnQgdmdwdV9wcGd0dF9wdl91cGRhdGUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICsgICAgICAgICAgICAgICB1MzIgYWN0aW9uLCB1
NjQgcGRwLCB1NjQgc3RhcnQsIHU2NCBsZW5ndGgsIHUzMiBjYWNoZV9sZXZlbCkKPiArewo+ICsg
ICAgICAgdTMyIGRhdGFbOF07Cj4gKwo+ICsgICAgICAgZGF0YVswXSA9IGFjdGlvbjsKPiArICAg
ICAgIGRhdGFbMV0gPSBsb3dlcl8zMl9iaXRzKHBkcCk7Cj4gKyAgICAgICBkYXRhWzJdID0gdXBw
ZXJfMzJfYml0cyhwZHApOwo+ICsgICAgICAgZGF0YVszXSA9IGxvd2VyXzMyX2JpdHMoc3RhcnQp
Owo+ICsgICAgICAgZGF0YVs0XSA9IHVwcGVyXzMyX2JpdHMoc3RhcnQpOwo+ICsgICAgICAgZGF0
YVs1XSA9IGxvd2VyXzMyX2JpdHMobGVuZ3RoKTsKPiArICAgICAgIGRhdGFbNl0gPSB1cHBlcl8z
Ml9iaXRzKGxlbmd0aCk7Cj4gKyAgICAgICBkYXRhWzddID0gY2FjaGVfbGV2ZWw7Cj4gKwo+ICsg
ICAgICAgcmV0dXJuIGludGVsX3ZncHVfcHZfc2VuZChkZXZfcHJpdiwgZGF0YSwgQVJSQVlfU0la
RShkYXRhKSk7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIGdlbjhfcHBndHRfY2xlYXJfNGx2bF9w
dihzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKPiArICAgICAgICAgICAgICAgdTY0IHN0
YXJ0LCB1NjQgbGVuZ3RoKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQg
PSBpOTE1X3ZtX3RvX3BwZ3R0KHZtKTsKPiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IHZtLT5pOTE1Owo+ICsKPiArICAgICAgIGdlbjhfcHBndHRfY2xlYXIodm0s
IHN0YXJ0LCBsZW5ndGgpOwo+ICsgICAgICAgdmdwdV9wcGd0dF9wdl91cGRhdGUoZGV2X3ByaXYs
IFBWX0FDVElPTl9QUEdUVF9MNF9DTEVBUiwKPiArICAgICAgICAgICAgICAgcHhfZG1hKHBwZ3R0
LT5wZCksIHN0YXJ0LCBsZW5ndGgsIDApOwo+ICt9Cj4gKwo+ICtzdGF0aWMgdm9pZCBnZW44X3Bw
Z3R0X2luc2VydF80bHZsX3B2KHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAo+ICsgICAg
ICAgICAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnZtYSwKPiArICAgICAgICAgICAgICAgZW51bSBp
OTE1X2NhY2hlX2xldmVsIGNhY2hlX2xldmVsLCB1MzIgZmxhZ3MpCj4gK3sKPiArICAgICAgIHN0
cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCA9IGk5MTVfdm1fdG9fcHBndHQodm0pOwo+ICsgICAgICAg
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdm0tPmk5MTU7Cj4gKyAgICAgICB1
NjQgc3RhcnQgPSB2bWEtPm5vZGUuc3RhcnQ7Cj4gKyAgICAgICB1NjQgbGVuZ3RoID0gdm1hLT5u
b2RlLnNpemU7Cj4gKwo+ICsgICAgICAgZ2VuOF9wcGd0dF9pbnNlcnQodm0sIHZtYSwgY2FjaGVf
bGV2ZWwsIGZsYWdzKTsKPiArICAgICAgIHZncHVfcHBndHRfcHZfdXBkYXRlKGRldl9wcml2LCBQ
Vl9BQ1RJT05fUFBHVFRfTDRfSU5TRVJULAo+ICsgICAgICAgICAgICAgICBweF9kbWEocHBndHQt
PnBkKSwgc3RhcnQsIGxlbmd0aCwgY2FjaGVfbGV2ZWwpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50
IGdlbjhfcHBndHRfYWxsb2NfNGx2bF9wdihzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwK
PiArICAgICAgICAgICAgICAgdTY0IHN0YXJ0LCB1NjQgbGVuZ3RoKQo+ICt7Cj4gKyAgICAgICBz
dHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQgPSBpOTE1X3ZtX3RvX3BwZ3R0KHZtKTsKPiArICAgICAg
IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHZtLT5pOTE1Owo+ICsgICAgICAg
aW50IHJldDsKPiArCj4gKyAgICAgICByZXQgPSBnZW44X3BwZ3R0X2FsbG9jKHZtLCBzdGFydCwg
bGVuZ3RoKTsKPiArICAgICAgIGlmIChyZXQpCj4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7
Cj4gKwo+ICsgICAgICAgcmV0dXJuIHZncHVfcHBndHRfcHZfdXBkYXRlKGRldl9wcml2LCBQVl9B
Q1RJT05fUFBHVFRfTDRfQUxMT0MsCj4gKyAgICAgICAgICAgICAgIHB4X2RtYShwcGd0dC0+cGQp
LCBzdGFydCwgbGVuZ3RoLCAwKTsKClVuYmFsYW5jZWQgZXJyb3IgcGF0aC4KCj4gK30KPiArCj4g
Ky8qCj4gKyAqIGNvbmZpZyBndWVzdCBkcml2ZXIgUFYgb3BzIGZvciBkaWZmZXJlbnQgUFYgZmVh
dHVyZXMKPiArICovCj4gK3ZvaWQgaW50ZWxfdmdwdV9jb25maWdfcHZfY2FwcyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gKyAgICAgICAgICAgICAgIGVudW0gcHZfY2FwcyBj
YXAsIHZvaWQgKmRhdGEpCj4gK3sKPiArICAgICAgIHN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dDsK
PiArCj4gKyAgICAgICBpZiAoIWludGVsX3ZncHVfZW5hYmxlZF9wdl9jYXBzKGRldl9wcml2LCBj
YXApKQo+ICsgICAgICAgICAgICAgICByZXR1cm47Cj4gKwo+ICsgICAgICAgaWYgKGNhcCA9PSBQ
Vl9QUEdUVF9VUERBVEUpIHsKPiArICAgICAgICAgICAgICAgcHBndHQgPSAoc3RydWN0IGk5MTVf
cHBndHQgKilkYXRhOwo+ICsgICAgICAgICAgICAgICBwcGd0dC0+dm0uYWxsb2NhdGVfdmFfcmFu
Z2UgPSBnZW44X3BwZ3R0X2FsbG9jXzRsdmxfcHY7Cj4gKyAgICAgICAgICAgICAgIHBwZ3R0LT52
bS5pbnNlcnRfZW50cmllcyA9IGdlbjhfcHBndHRfaW5zZXJ0XzRsdmxfcHY7Cj4gKyAgICAgICAg
ICAgICAgIHBwZ3R0LT52bS5jbGVhcl9yYW5nZSA9IGdlbjhfcHBndHRfY2xlYXJfNGx2bF9wdjsK
PiArICAgICAgIH0KCkknZCByYXRoZXIgd2UganVzdCBhdWdtZW50IHRoZSBmYWN0b3J5IHRoYW4g
aGF2ZSBhbiBpbnZhc2l2ZSBtdWx0aXBsZXhlZApmdW5jdGlvbi4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
