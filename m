Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DE830554B
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 09:10:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 805CB6E2C7;
	Wed, 27 Jan 2021 08:10:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4349B6E2C7
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 08:10:00 +0000 (UTC)
IronPort-SDR: gVWsYOks9fVw9bA5RQ7QH2e78L7r9gK5/BzBLmOO244TzNM8+RYW6Kd3qIoeVcSRuMSftEDJm7
 zMFR2fLR7aUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="198836684"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="198836684"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 00:09:58 -0800
IronPort-SDR: 5VhsdQfR15jGekiNOE2ZrUPahiMV7AwAlXuGeAp++G+bXV5EqObHOSc5mdBB4/2Uxbk6+yDsVy
 jyx+rPNVaLkA==
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="362329707"
Received: from kbs1-mobl1.gar.corp.intel.com (HELO [10.213.92.166])
 ([10.213.92.166])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 00:09:57 -0800
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210111163711.12913-1-ville.syrjala@linux.intel.com>
 <20210111163711.12913-12-ville.syrjala@linux.intel.com>
From: Karthik B S <karthik.b.s@intel.com>
Message-ID: <2c790bf8-2b40-0ab6-5de9-81e4cd034949@intel.com>
Date: Wed, 27 Jan 2021 13:39:55 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210111163711.12913-12-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 11/11] drm/i915: Implement async flips
 for vlv/chv
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMS8xMS8yMDIxIDEwOjA3IFBNLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4KPiBBZGQgc3VwcG9y
dCBmb3IgYXN5bmMgZmxpcHMgb24gdmx2L2Nodi4gVW5saWtlIGFsbCB0aGUgb3RoZXIKPiBwbGF0
Zm9ybXMgdmx2L2NodiBkbyBub3QgdXNlIHRoZSBhc3luYyBmbGlwIGJpdCBpbiBEU1BDTlRSIGFu
ZAo+IGluc3RlYWQgd2Ugc2VsZWN0IGJldHdlZW4gYXN5bmMgdnMuIHN5bmMgZmxpcHMgYmFzZWQg
b24gdGhlCj4gc3VyZmFjZSBhZGRyZXNzIHJlZ2lzdGVyLiBUaGUgbm9ybWFsIERTUFNVUkYgZ2Vu
ZXJhdGVzIHN5bmMKPiBmbGlwcyBEU1BBRERSX1ZMViBnZW5lcmF0ZXMgYXN5bmMgZmxpcHMuIEFu
ZCBhcyB1c3VhbCB0aGUKPiBpbnRlcnJ1cHQgYml0cyBhcmUgZGlmZmVyZW50IGZyb20gdGhlIG90
aGVyIHBsYXRmb3Jtcy4KPgo+IENjOiBLYXJ0aGlrIEIgUyA8a2FydGhpay5iLnNAaW50ZWwuY29t
Pgo+IENjOiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgoKTG9va3MgZ29vZCB0byBtZS4KClJldmlld2VkLWJ5OiBLYXJ0aGlrIEIgUyA8a2FydGhp
ay5iLnNAaW50ZWwuY29tPgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aTl4eF9wbGFuZS5jICAgIHwgNDkgKysrKysrKysrKysrKysrKysrLS0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgIDQgKy0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfaXJxLmMgICAgICAgICAgICAgIHwgIDMgKysKPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgIHwgIDIgKwo+ICAgNCBmaWxlcyBjaGFu
Z2VkLCA1MiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF9wbGFuZS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pOXh4X3BsYW5lLmMKPiBpbmRleCA0ODhlZDAxYmIzNDIuLmQzMDM3NGRm
NjdmMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxh
bmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF9wbGFuZS5jCj4g
QEAgLTUxNyw2ICs1MTcsMjMgQEAgZzR4X3ByaW1hcnlfYXN5bmNfZmxpcChzdHJ1Y3QgaW50ZWxf
cGxhbmUgKnBsYW5lLAo+ICAgCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmRldl9wcml2LT51bmNv
cmUubG9jaywgaXJxZmxhZ3MpOwo+ICAgfQo+ICAgCj4gK3N0YXRpYyB2b2lkCj4gK3Zsdl9wcmlt
YXJ5X2FzeW5jX2ZsaXAoc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKPiArCQkgICAgICAgY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gKwkJICAgICAgIGNvbnN0
IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUsCj4gKwkJICAgICAgIGJvb2wg
YXN5bmNfZmxpcCkKPiArewo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
dG9faTkxNShwbGFuZS0+YmFzZS5kZXYpOwo+ICsJdTMyIGRzcGFkZHJfb2Zmc2V0ID0gcGxhbmVf
c3RhdGUtPmNvbG9yX3BsYW5lWzBdLm9mZnNldDsKPiArCWVudW0gaTl4eF9wbGFuZV9pZCBpOXh4
X3BsYW5lID0gcGxhbmUtPmk5eHhfcGxhbmU7Cj4gKwl1bnNpZ25lZCBsb25nIGlycWZsYWdzOwo+
ICsKPiArCXNwaW5fbG9ja19pcnFzYXZlKCZkZXZfcHJpdi0+dW5jb3JlLmxvY2ssIGlycWZsYWdz
KTsKPiArCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBEU1BBRERSX1ZMVihpOXh4X3BsYW5l
KSwKPiArCQkJICBpbnRlbF9wbGFuZV9nZ3R0X29mZnNldChwbGFuZV9zdGF0ZSkgKyBkc3BhZGRy
X29mZnNldCk7Cj4gKwlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZkZXZfcHJpdi0+dW5jb3JlLmxv
Y2ssIGlycWZsYWdzKTsKPiArfQo+ICsKPiAgIHN0YXRpYyB2b2lkCj4gICBiZHdfcHJpbWFyeV9l
bmFibGVfZmxpcF9kb25lKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUpCj4gICB7Cj4gQEAgLTU3
OSw2ICs1OTYsMjggQEAgaWxrX3ByaW1hcnlfZGlzYWJsZV9mbGlwX2RvbmUoc3RydWN0IGludGVs
X3BsYW5lICpwbGFuZSkKPiAgIAlzcGluX3VubG9ja19pcnEoJmk5MTUtPmlycV9sb2NrKTsKPiAg
IH0KPiAgIAo+ICtzdGF0aWMgdm9pZAo+ICt2bHZfcHJpbWFyeV9lbmFibGVfZmxpcF9kb25lKHN0
cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUpCj4gK3sKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0gdG9faTkxNShwbGFuZS0+YmFzZS5kZXYpOwo+ICsJZW51bSBwaXBlIHBpcGUgPSBw
bGFuZS0+cGlwZTsKPiArCj4gKwlzcGluX2xvY2tfaXJxKCZpOTE1LT5pcnFfbG9jayk7Cj4gKwlp
OTE1X2VuYWJsZV9waXBlc3RhdChpOTE1LCBwaXBlLCBQTEFORV9GTElQX0RPTkVfSU5UX1NUQVRV
U19WTFYpOwo+ICsJc3Bpbl91bmxvY2tfaXJxKCZpOTE1LT5pcnFfbG9jayk7Cj4gK30KPiArCj4g
K3N0YXRpYyB2b2lkCj4gK3Zsdl9wcmltYXJ5X2Rpc2FibGVfZmxpcF9kb25lKHN0cnVjdCBpbnRl
bF9wbGFuZSAqcGxhbmUpCj4gK3sKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0g
dG9faTkxNShwbGFuZS0+YmFzZS5kZXYpOwo+ICsJZW51bSBwaXBlIHBpcGUgPSBwbGFuZS0+cGlw
ZTsKPiArCj4gKwlzcGluX2xvY2tfaXJxKCZpOTE1LT5pcnFfbG9jayk7Cj4gKwlpOTE1X2Rpc2Fi
bGVfcGlwZXN0YXQoaTkxNSwgcGlwZSwgUExBTkVfRkxJUF9ET05FX0lOVF9TVEFUVVNfVkxWKTsK
PiArCXNwaW5fdW5sb2NrX2lycSgmaTkxNS0+aXJxX2xvY2spOwo+ICt9Cj4gKwo+ICAgc3RhdGlj
IGJvb2wgaTl4eF9wbGFuZV9nZXRfaHdfc3RhdGUoc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwK
PiAgIAkJCQkgICAgZW51bSBwaXBlICpwaXBlKQo+ICAgewo+IEBAIC03OTIsMTYgKzgzMSwyMCBA
QCBpbnRlbF9wcmltYXJ5X3BsYW5lX2NyZWF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsIGVudW0gcGlwZSBwaXBlKQo+ICAgCXBsYW5lLT5nZXRfaHdfc3RhdGUgPSBpOXh4X3Bs
YW5lX2dldF9od19zdGF0ZTsKPiAgIAlwbGFuZS0+Y2hlY2tfcGxhbmUgPSBpOXh4X3BsYW5lX2No
ZWNrOwo+ICAgCj4gLQlpZiAoSVNfQlJPQURXRUxMKGRldl9wcml2KSkgewo+ICsJaWYgKElTX1ZB
TExFWVZJRVcoZGV2X3ByaXYpIHx8IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKSB7Cj4gKwkJcGxh
bmUtPmFzeW5jX2ZsaXAgPSB2bHZfcHJpbWFyeV9hc3luY19mbGlwOwo+ICsJCXBsYW5lLT5lbmFi
bGVfZmxpcF9kb25lID0gdmx2X3ByaW1hcnlfZW5hYmxlX2ZsaXBfZG9uZTsKPiArCQlwbGFuZS0+
ZGlzYWJsZV9mbGlwX2RvbmUgPSB2bHZfcHJpbWFyeV9kaXNhYmxlX2ZsaXBfZG9uZTsKPiArCX0g
ZWxzZSBpZiAoSVNfQlJPQURXRUxMKGRldl9wcml2KSkgewo+ICAgCQlwbGFuZS0+bmVlZF9hc3lu
Y19mbGlwX2Rpc2FibGVfd2EgPSB0cnVlOwo+ICAgCQlwbGFuZS0+YXN5bmNfZmxpcCA9IGc0eF9w
cmltYXJ5X2FzeW5jX2ZsaXA7Cj4gICAJCXBsYW5lLT5lbmFibGVfZmxpcF9kb25lID0gYmR3X3By
aW1hcnlfZW5hYmxlX2ZsaXBfZG9uZTsKPiAgIAkJcGxhbmUtPmRpc2FibGVfZmxpcF9kb25lID0g
YmR3X3ByaW1hcnlfZGlzYWJsZV9mbGlwX2RvbmU7Cj4gLQl9IGVsc2UgaWYgKElTX0hBU1dFTEwo
ZGV2X3ByaXYpIHx8IElTX0lWWUJSSURHRShkZXZfcHJpdikpIHsKPiArCX0gZWxzZSBpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSA3KSB7Cj4gICAJCXBsYW5lLT5hc3luY19mbGlwID0gZzR4X3By
aW1hcnlfYXN5bmNfZmxpcDsKPiAgIAkJcGxhbmUtPmVuYWJsZV9mbGlwX2RvbmUgPSBpdmJfcHJp
bWFyeV9lbmFibGVfZmxpcF9kb25lOwo+ICAgCQlwbGFuZS0+ZGlzYWJsZV9mbGlwX2RvbmUgPSBp
dmJfcHJpbWFyeV9kaXNhYmxlX2ZsaXBfZG9uZTsKPiAtCX0gZWxzZSBpZiAoSVNfR0VOX1JBTkdF
KGRldl9wcml2LCA1LCA2KSkgewo+ICsJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDUpIHsKPiAgIAkJcGxhbmUtPmFzeW5jX2ZsaXAgPSBnNHhfcHJpbWFyeV9hc3luY19mbGlwOwo+
ICAgCQlwbGFuZS0+ZW5hYmxlX2ZsaXBfZG9uZSA9IGlsa19wcmltYXJ5X2VuYWJsZV9mbGlwX2Rv
bmU7Cj4gICAJCXBsYW5lLT5kaXNhYmxlX2ZsaXBfZG9uZSA9IGlsa19wcmltYXJ5X2Rpc2FibGVf
ZmxpcF9kb25lOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCj4gaW5kZXggNjdhZGQxMTY2ZDVhLi44Y2YwNzc3NTM1Y2EgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0yMTIyLDkgKzIxMjIs
NyBAQCBzdGF0aWMgdW5zaWduZWQgaW50IGludGVsX2xpbmVhcl9hbGlnbm1lbnQoY29uc3Qgc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcgo+ICAgCj4gICBzdGF0aWMgYm9vbCBoYXNfYXN5
bmNfZmxpcHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gICB7Cj4gLQlyZXR1cm4g
SU5URUxfR0VOKGk5MTUpID49IDkgfHwgSVNfQlJPQURXRUxMKGk5MTUpIHx8Cj4gLQkJSVNfSEFT
V0VMTChpOTE1KSB8fCBJU19JVllCUklER0UoaTkxNSkgfHwKPiAtCQlJU19HRU5fUkFOR0UoaTkx
NSwgNSwgNik7Cj4gKwlyZXR1cm4gSU5URUxfR0VOKGk5MTUpID49IDU7Cj4gICB9Cj4gICAKPiAg
IHN0YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfc3VyZl9hbGlnbm1lbnQoY29uc3Qgc3RydWN0IGRy
bV9mcmFtZWJ1ZmZlciAqZmIsCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCj4gaW5kZXggOWUwNGM2
YjI4YzEyLi4xOWUzNjdmNmEzYjIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9pcnEuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKPiBAQCAt
MTUxNyw2ICsxNTE3LDkgQEAgc3RhdGljIHZvaWQgdmFsbGV5dmlld19waXBlc3RhdF9pcnFfaGFu
ZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gICAJCWlmIChwaXBlX3N0
YXRzW3BpcGVdICYgUElQRV9TVEFSVF9WQkxBTktfSU5URVJSVVBUX1NUQVRVUykKPiAgIAkJCWlu
dGVsX2hhbmRsZV92YmxhbmsoZGV2X3ByaXYsIHBpcGUpOwo+ICAgCj4gKwkJaWYgKHBpcGVfc3Rh
dHNbcGlwZV0gJiBQTEFORV9GTElQX0RPTkVfSU5UX1NUQVRVU19WTFYpCj4gKwkJCWZsaXBfZG9u
ZV9oYW5kbGVyKGRldl9wcml2LCBwaXBlKTsKPiArCj4gICAJCWlmIChwaXBlX3N0YXRzW3BpcGVd
ICYgUElQRV9DUkNfRE9ORV9JTlRFUlJVUFRfU1RBVFVTKQo+ICAgCQkJaTl4eF9waXBlX2NyY19p
cnFfaGFuZGxlcihkZXZfcHJpdiwgcGlwZSk7Cj4gICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
PiBpbmRleCAyNjQ2NDc4OTYzYTUuLjIxNTg5NTE4ZGU3MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaAo+IEBAIC02NTc4LDYgKzY1NzgsNyBAQCBlbnVtIHsKPiAgICNkZWZpbmUgVEdMX0NV
UlNPUl9EX09GRlNFVCAweDczMDgwCj4gICAKPiAgIC8qIERpc3BsYXkgQSBjb250cm9sICovCj4g
KyNkZWZpbmUgX0RTUEFBRERSX1ZMVgkJCQkweDcwMTdDIC8qIHZsdi9jaHYgKi8KPiAgICNkZWZp
bmUgX0RTUEFDTlRSCQkJCTB4NzAxODAKPiAgICNkZWZpbmUgICBESVNQTEFZX1BMQU5FX0VOQUJM
RQkJCSgxIDw8IDMxKQo+ICAgI2RlZmluZSAgIERJU1BMQVlfUExBTkVfRElTQUJMRQkJCTAKPiBA
QCAtNjYyNiw2ICs2NjI3LDcgQEAgZW51bSB7Cj4gICAjZGVmaW5lIF9EU1BBU1VSRkxJVkUJCQkJ
MHg3MDFBQwo+ICAgI2RlZmluZSBfRFNQQUdBTUMJCQkJMHg3MDFFMAo+ICAgCj4gKyNkZWZpbmUg
RFNQQUREUl9WTFYocGxhbmUpCV9NTUlPX1BJUEUyKHBsYW5lLCBfRFNQQUFERFJfVkxWKQo+ICAg
I2RlZmluZSBEU1BDTlRSKHBsYW5lKQkJX01NSU9fUElQRTIocGxhbmUsIF9EU1BBQ05UUikKPiAg
ICNkZWZpbmUgRFNQQUREUihwbGFuZSkJCV9NTUlPX1BJUEUyKHBsYW5lLCBfRFNQQUFERFIpCj4g
ICAjZGVmaW5lIERTUFNUUklERShwbGFuZSkJX01NSU9fUElQRTIocGxhbmUsIF9EU1BBU1RSSURF
KQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
