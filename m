Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EADD2DDAFF
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Dec 2020 22:49:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D009689A4F;
	Thu, 17 Dec 2020 21:49:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40C3289A16
 for <Intel-gfx@lists.freedesktop.org>; Thu, 17 Dec 2020 21:49:33 +0000 (UTC)
IronPort-SDR: 9fPD6IpNQsEvM2OutZWWTokQNnX+va2oFIgNHaEPUg7j3Mu1xDy3/BNNawh4UE6nmd0pngfdw7
 tlm1Y2Zk79SQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="236906270"
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="236906270"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 13:49:31 -0800
IronPort-SDR: t66bz5gsnFrfDRXRqexIDcuk7oIpKzn/9HaKifZ/ocdNrP/l7HxSmE/On88+XS2wiNmR9GSEs0
 ty+D0gUKTbXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="342780452"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga006.jf.intel.com with ESMTP; 17 Dec 2020 13:49:31 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 17 Dec 2020 13:49:21 -0800
Message-Id: <20201217214931.13340-4-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201217214931.13340-1-sean.z.huang@intel.com>
References: <20201217214931.13340-1-sean.z.huang@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC-v11 03/13] drm/i915/pxp: Implement funcs to create
 the TEE channel
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW1wbGVtZW50IHRoZSBmdW5jcyB0byBjcmVhdGUgdGhlIFRFRSBjaGFubmVsLCBzbyBrZXJuZWwg
Y2FuCnNlbmQgdGhlIFRFRSBjb21tYW5kcyBkaXJlY3RseSB0byBURUUgZm9yIGNyZWF0aW5nIHRo
ZSBhcmJpdHJhcnkKKGRlZnVhbHQpIHNlc3Npb24uCgpTaWduZWQtb2ZmLWJ5OiBIdWFuZywgU2Vh
biBaIDxzZWFuLnouaHVhbmdAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01h
a2VmaWxlICAgICAgICAgICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAg
ICAgICB8ICAgNiArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5jICAgICB8
ICAgNSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3RlZS5jIHwgMTMyICsr
KysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhw
X3RlZS5oIHwgIDE0ICsrKwogaW5jbHVkZS9kcm0vaTkxNV9jb21wb25lbnQuaCAgICAgICAgICAg
ICB8ICAgMSArCiBpbmNsdWRlL2RybS9pOTE1X3B4cF90ZWVfaW50ZXJmYWNlLmggICAgIHwgIDQ1
ICsrKysrKysrCiA4IGZpbGVzIGNoYW5nZWQsIDIwNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4
cF90ZWUuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRl
bF9weHBfdGVlLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2RybS9pOTE1X3B4cF90ZWVf
aW50ZXJmYWNlLmgKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCmluZGV4IDUzYmUyOWRiYzA3ZC4uNTc0NDc4
ODdkMzUyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQpAQCAtMjU4LDcgKzI1OCw4IEBAIGk5MTUteSAr
PSBpOTE1X3BlcmYubwogIyBQcm90ZWN0ZWQgZXhlY3V0aW9uIHBsYXRmb3JtIChQWFApIHN1cHBv
cnQKIGk5MTUtJChDT05GSUdfRFJNX0k5MTVfUFhQKSArPSBcCiAJcHhwL2ludGVsX3B4cC5vIFwK
LQlweHAvaW50ZWxfcHhwX2NvbnRleHQubworCXB4cC9pbnRlbF9weHBfY29udGV4dC5vIFwKKwlw
eHAvaW50ZWxfcHhwX3RlZS5vCiAKICMgUG9zdC1tb3J0ZW0gZGVidWcgYW5kIEdQVSBoYW5nIHN0
YXRlIGNhcHR1cmUKIGk5MTUtJChDT05GSUdfRFJNX0k5MTVfQ0FQVFVSRV9FUlJPUikgKz0gaTkx
NV9ncHVfZXJyb3IubwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggNTcwOGUxMWQ5MTdiLi45
Mjk5YTQ1NmFkYjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAtMzIyLDYgKzMyMiw3IEBA
IHN0YXRpYyBpbnQgaTkxNV9kcml2ZXJfZWFybHlfcHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQogCW11dGV4X2luaXQoJmRldl9wcml2LT53bS53bV9tdXRleCk7CiAJbXV0
ZXhfaW5pdCgmZGV2X3ByaXYtPnBwc19tdXRleCk7CiAJbXV0ZXhfaW5pdCgmZGV2X3ByaXYtPmhk
Y3BfY29tcF9tdXRleCk7CisJbXV0ZXhfaW5pdCgmZGV2X3ByaXYtPnB4cF90ZWVfY29tcF9tdXRl
eCk7CiAKIAlpOTE1X21lbWNweV9pbml0X2Vhcmx5KGRldl9wcml2KTsKIAlpbnRlbF9ydW50aW1l
X3BtX2luaXRfZWFybHkoJmRldl9wcml2LT5ydW50aW1lX3BtKTsKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oCmluZGV4IGMyZDAxNTZlOGE1ZC4uYWFmNDUyMTE1YzJmIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgKQEAgLTEyMTIsNiArMTIxMiwxMiBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7CiAJ
LyogTXV0ZXggdG8gcHJvdGVjdCB0aGUgYWJvdmUgaGRjcCBjb21wb25lbnQgcmVsYXRlZCB2YWx1
ZXMuICovCiAJc3RydWN0IG11dGV4IGhkY3BfY29tcF9tdXRleDsKIAorCXN0cnVjdCBpOTE1X3B4
cF9jb21wX21hc3RlciAqcHhwX3RlZV9tYXN0ZXI7CisJYm9vbCBweHBfdGVlX2NvbXBfYWRkZWQ7
CisKKwkvKiBNdXRleCB0byBwcm90ZWN0IHRoZSBhYm92ZSBweHBfdGVlIGNvbXBvbmVudCByZWxh
dGVkIHZhbHVlcy4gKi8KKwlzdHJ1Y3QgbXV0ZXggcHhwX3RlZV9jb21wX211dGV4OworCiAJSTkx
NV9TRUxGVEVTVF9ERUNMQVJFKHN0cnVjdCBpOTE1X3NlbGZ0ZXN0X3N0YXNoIHNlbGZ0ZXN0OykK
IAogCS8qCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwLmMKaW5kZXggY2YyMjAwNjIyMmNl
Li41YTM0NjEyNzJmZTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRl
bF9weHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwLmMKQEAgLTUs
NiArNSw3IEBACiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJpbnRlbF9weHAuaCIK
ICNpbmNsdWRlICJpbnRlbF9weHBfY29udGV4dC5oIgorI2luY2x1ZGUgImludGVsX3B4cF90ZWUu
aCIKIAogLyogS0NSIHJlZ2lzdGVyIGRlZmluaXRpb25zICovCiAjZGVmaW5lIEtDUl9JTklUICAg
ICAgICAgICAgX01NSU8oMHgzMjBmMCkKQEAgLTIzLDEwICsyNCwxNCBAQCB2b2lkIGludGVsX3B4
cF9pbml0KHN0cnVjdCBpbnRlbF9weHAgKnB4cCkKIAogCWludGVsX3VuY29yZV93cml0ZShndC0+
dW5jb3JlLCBLQ1JfSU5JVCwgS0NSX0lOSVRfQUxMT1dfRElTUExBWV9NRV9XUklURVMpOwogCisJ
aW50ZWxfcHhwX3RlZV9jb21wb25lbnRfaW5pdChweHApOworCiAJZHJtX2luZm8oJmd0LT5pOTE1
LT5kcm0sICJQcm90ZWN0ZWQgWGUgUGF0aCAoUFhQKSBwcm90ZWN0ZWQgY29udGVudCBzdXBwb3J0
IGluaXRpYWxpemVkXG4iKTsKIH0KIAogdm9pZCBpbnRlbF9weHBfZmluaShzdHJ1Y3QgaW50ZWxf
cHhwICpweHApCiB7CisJaW50ZWxfcHhwX3RlZV9jb21wb25lbnRfZmluaShweHApOworCiAJaW50
ZWxfcHhwX2N0eF9maW5pKCZweHAtPmN0eCk7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9weHAvaW50ZWxfcHhwX3RlZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2lu
dGVsX3B4cF90ZWUuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmNh
NmI2MTA5OWFlZQotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9p
bnRlbF9weHBfdGVlLmMKQEAgLTAsMCArMSwxMzIgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBNSVQKKy8qCisgKiBDb3B5cmlnaHQoYykgMjAyMCBJbnRlbCBDb3Jwb3JhdGlvbi4KKyAq
LworCisjaW5jbHVkZSA8bGludXgvY29tcG9uZW50Lmg+CisjaW5jbHVkZSAiZHJtL2k5MTVfcHhw
X3RlZV9pbnRlcmZhY2UuaCIKKyNpbmNsdWRlICJkcm0vaTkxNV9jb21wb25lbnQuaCIKKyNpbmNs
dWRlICAiaTkxNV9kcnYuaCIKKyNpbmNsdWRlICJpbnRlbF9weHAuaCIKKyNpbmNsdWRlICJpbnRl
bF9weHBfY29udGV4dC5oIgorI2luY2x1ZGUgImludGVsX3B4cF90ZWUuaCIKKworc3RhdGljIGlu
dCBpbnRlbF9weHBfdGVlX2lvX21lc3NhZ2Uoc3RydWN0IGludGVsX3B4cCAqcHhwLAorCQkJCSAg
ICB2b2lkICptc2dfaW4sIHUzMiBtc2dfaW5fc2l6ZSwKKwkJCQkgICAgdm9pZCAqbXNnX291dCwg
dTMyICptc2dfb3V0X3NpemVfcHRyLAorCQkJCSAgICB1MzIgbXNnX291dF9idWZfc2l6ZSkKK3sK
KwlpbnQgcmV0OworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBjb250YWluZXJfb2YocHhwLCB0eXBl
b2YoKmd0KSwgcHhwKTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5pOTE1
OworCXN0cnVjdCBpOTE1X3B4cF9jb21wX21hc3RlciAqcHhwX3RlZV9tYXN0ZXIgPSBpOTE1LT5w
eHBfdGVlX21hc3RlcjsKKworCWlmICghcHhwX3RlZV9tYXN0ZXIgfHwgIW1zZ19pbiB8fCAhbXNn
X291dCB8fCAhbXNnX291dF9zaXplX3B0cikKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwlsb2NrZGVw
X2Fzc2VydF9oZWxkKCZpOTE1LT5weHBfdGVlX2NvbXBfbXV0ZXgpOworCisJaWYgKGRybV9kZWJ1
Z19lbmFibGVkKERSTV9VVF9EUklWRVIpKQorCQlwcmludF9oZXhfZHVtcChLRVJOX0RFQlVHLCAi
VEVFIGlucHV0IG1lc3NhZ2UgYmluYXJpZXM6IiwKKwkJCSAgICAgICBEVU1QX1BSRUZJWF9PRkZT
RVQsIDQsIDQsIG1zZ19pbiwgbXNnX2luX3NpemUsIHRydWUpOworCisJcmV0ID0gcHhwX3RlZV9t
YXN0ZXItPm9wcy0+c2VuZChweHBfdGVlX21hc3Rlci0+dGVlX2RldiwgbXNnX2luLCBtc2dfaW5f
c2l6ZSk7CisJaWYgKHJldCkgeworCQlkcm1fZXJyKCZpOTE1LT5kcm0sICJGYWlsZWQgdG8gc2Vu
ZCBURUUgbWVzc2FnZVxuIik7CisJCXJldHVybiAtRUZBVUxUOworCX0KKworCXJldCA9IHB4cF90
ZWVfbWFzdGVyLT5vcHMtPnJlY2VpdmUocHhwX3RlZV9tYXN0ZXItPnRlZV9kZXYsIG1zZ19vdXQs
IG1zZ19vdXRfYnVmX3NpemUpOworCWlmIChyZXQgPCAwKSB7CisJCWRybV9lcnIoJmk5MTUtPmRy
bSwgIkZhaWxlZCB0byByZWNlaXZlIFRFRSBtZXNzYWdlXG4iKTsKKwkJcmV0dXJuIC1FRkFVTFQ7
CisJfQorCisJaWYgKHJldCA+IG1zZ19vdXRfYnVmX3NpemUpIHsKKwkJZHJtX2VycigmaTkxNS0+
ZHJtLCAiRmFpbGVkIHRvIHJlY2VpdmUgVEVFIG1lc3NhZ2UgZHVlIHRvIHVuZXhwZWN0ZWQgb3V0
cHV0IHNpemVcbiIpOworCQlyZXR1cm4gLUVGQVVMVDsKKwl9CisKKwkqbXNnX291dF9zaXplX3B0
ciA9IHJldDsKKwlyZXQgPSAwOworCisJaWYgKGRybV9kZWJ1Z19lbmFibGVkKERSTV9VVF9EUklW
RVIpKQorCQlwcmludF9oZXhfZHVtcChLRVJOX0RFQlVHLCAiVEVFIG91dHB1dCBtZXNzYWdlIGJp
bmFyaWVzOiIsCisJCQkgICAgICAgRFVNUF9QUkVGSVhfT0ZGU0VULCA0LCA0LCBtc2dfb3V0LCAq
bXNnX291dF9zaXplX3B0ciwgdHJ1ZSk7CisKKwlyZXR1cm4gcmV0OworfQorCisvKioKKyAqIGk5
MTVfcHhwX3RlZV9jb21wb25lbnRfYmluZCAtIGJpbmQgZnVuY2l0b24gdG8gcGFzcyB0aGUgZnVu
Y3Rpb24gcG9pbnRlcnMgdG8gcHhwX3RlZQorICogQGk5MTVfa2RldjogcG9pbnRlciB0byBpOTE1
IGtlcm5lbCBkZXZpY2UKKyAqIEB0ZWVfa2RldjogcG9pbnRlciB0byB0ZWUga2VybmVsIGRldmlj
ZQorICogQGRhdGE6IHBvaW50ZXIgdG8gcHhwX3RlZV9tYXN0ZXIgY29udGFpbmluZyB0aGUgZnVu
Y3Rpb24gcG9pbnRlcnMKKyAqCisgKiBUaGlzIGJpbmQgZnVuY3Rpb24gaXMgY2FsbGVkIGR1cmlu
ZyB0aGUgc3lzdGVtIGJvb3Qgb3IgcmVzdW1lIGZyb20gc3lzdGVtIHNsZWVwLgorICoKKyAqIFJl
dHVybjogcmV0dXJuIDAgaWYgc3VjY2Vzc2Z1bC4KKyAqLworc3RhdGljIGludCBpOTE1X3B4cF90
ZWVfY29tcG9uZW50X2JpbmQoc3RydWN0IGRldmljZSAqaTkxNV9rZGV2LAorCQkJCSAgICAgICBz
dHJ1Y3QgZGV2aWNlICp0ZWVfa2Rldiwgdm9pZCAqZGF0YSkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IGtkZXZfdG9faTkxNShpOTE1X2tkZXYpOworCisJaWYgKCFpOTE1IHx8
ICF0ZWVfa2RldiB8fCAhZGF0YSkKKwkJcmV0dXJuIC1FUEVSTTsKKworCW11dGV4X2xvY2soJmk5
MTUtPnB4cF90ZWVfY29tcF9tdXRleCk7CisJaTkxNS0+cHhwX3RlZV9tYXN0ZXIgPSAoc3RydWN0
IGk5MTVfcHhwX2NvbXBfbWFzdGVyICopZGF0YTsKKwlpOTE1LT5weHBfdGVlX21hc3Rlci0+dGVl
X2RldiA9IHRlZV9rZGV2OworCW11dGV4X3VubG9jaygmaTkxNS0+cHhwX3RlZV9jb21wX211dGV4
KTsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgdm9pZCBpOTE1X3B4cF90ZWVfY29tcG9uZW50
X3VuYmluZChzdHJ1Y3QgZGV2aWNlICppOTE1X2tkZXYsCisJCQkJCSAgc3RydWN0IGRldmljZSAq
dGVlX2tkZXYsIHZvaWQgKmRhdGEpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSBrZGV2X3RvX2k5MTUoaTkxNV9rZGV2KTsKKworCWlmICghaTkxNSB8fCAhdGVlX2tkZXYgfHwg
IWRhdGEpCisJCXJldHVybjsKKworCW11dGV4X2xvY2soJmk5MTUtPnB4cF90ZWVfY29tcF9tdXRl
eCk7CisJaTkxNS0+cHhwX3RlZV9tYXN0ZXIgPSBOVUxMOworCW11dGV4X3VubG9jaygmaTkxNS0+
cHhwX3RlZV9jb21wX211dGV4KTsKK30KKworc3RhdGljIGNvbnN0IHN0cnVjdCBjb21wb25lbnRf
b3BzIGk5MTVfcHhwX3RlZV9jb21wb25lbnRfb3BzID0geworCS5iaW5kICAgPSBpOTE1X3B4cF90
ZWVfY29tcG9uZW50X2JpbmQsCisJLnVuYmluZCA9IGk5MTVfcHhwX3RlZV9jb21wb25lbnRfdW5i
aW5kLAorfTsKKwordm9pZCBpbnRlbF9weHBfdGVlX2NvbXBvbmVudF9pbml0KHN0cnVjdCBpbnRl
bF9weHAgKnB4cCkKK3sKKwlpbnQgcmV0OworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBjb250YWlu
ZXJfb2YocHhwLCB0eXBlb2YoKmd0KSwgcHhwKTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSA9IGd0LT5pOTE1OworCisJcmV0ID0gY29tcG9uZW50X2FkZF90eXBlZChpOTE1LT5kcm0u
ZGV2LCAmaTkxNV9weHBfdGVlX2NvbXBvbmVudF9vcHMsCisJCQkJICBJOTE1X0NPTVBPTkVOVF9Q
WFApOworCWlmIChyZXQgPCAwKSB7CisJCWRybV9lcnIoJmk5MTUtPmRybSwgIkZhaWxlZCBhdCBj
b21wb25lbnQgYWRkKCVkKVxuIiwgcmV0KTsKKwkJcmV0dXJuOworCX0KKworCW11dGV4X2xvY2so
Jmk5MTUtPnB4cF90ZWVfY29tcF9tdXRleCk7CisJaTkxNS0+cHhwX3RlZV9jb21wX2FkZGVkID0g
dHJ1ZTsKKwltdXRleF91bmxvY2soJmk5MTUtPnB4cF90ZWVfY29tcF9tdXRleCk7Cit9CisKK3Zv
aWQgaW50ZWxfcHhwX3RlZV9jb21wb25lbnRfZmluaShzdHJ1Y3QgaW50ZWxfcHhwICpweHApCit7
CisJc3RydWN0IGludGVsX2d0ICpndCA9IGNvbnRhaW5lcl9vZihweHAsIHR5cGVvZigqZ3QpLCBw
eHApOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3QtPmk5MTU7CisKKwltdXRl
eF9sb2NrKCZpOTE1LT5weHBfdGVlX2NvbXBfbXV0ZXgpOworCWk5MTUtPnB4cF90ZWVfY29tcF9h
ZGRlZCA9IGZhbHNlOworCW11dGV4X3VubG9jaygmaTkxNS0+cHhwX3RlZV9jb21wX211dGV4KTsK
KworCWNvbXBvbmVudF9kZWwoaTkxNS0+ZHJtLmRldiwgJmk5MTVfcHhwX3RlZV9jb21wb25lbnRf
b3BzKTsKK30KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBf
dGVlLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3RlZS5oCm5ldyBmaWxl
IG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uNGI1ZTNlZGIxZDliCi0tLSAvZGV2L251
bGwKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF90ZWUuaApAQCAtMCww
ICsxLDE0IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICovCisvKgorICogQ29w
eXJpZ2h0KGMpIDIwMjAsIEludGVsIENvcnBvcmF0aW9uLiBBbGwgcmlnaHRzIHJlc2VydmVkLgor
ICovCisKKyNpZm5kZWYgX19JTlRFTF9QWFBfVEVFX0hfXworI2RlZmluZSBfX0lOVEVMX1BYUF9U
RUVfSF9fCisKKyNpbmNsdWRlICJpbnRlbF9weHAuaCIKKwordm9pZCBpbnRlbF9weHBfdGVlX2Nv
bXBvbmVudF9pbml0KHN0cnVjdCBpbnRlbF9weHAgKnB4cCk7Cit2b2lkIGludGVsX3B4cF90ZWVf
Y29tcG9uZW50X2Zpbmkoc3RydWN0IGludGVsX3B4cCAqcHhwKTsKKworI2VuZGlmIC8qIF9fSU5U
RUxfUFhQX1RFRV9IX18gKi8KZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVfY29tcG9uZW50
LmggYi9pbmNsdWRlL2RybS9pOTE1X2NvbXBvbmVudC5oCmluZGV4IDU1YzNiMTIzNTgxYi4uYzFl
MmE0M2QyZDFlIDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9pOTE1X2NvbXBvbmVudC5oCisrKyBi
L2luY2x1ZGUvZHJtL2k5MTVfY29tcG9uZW50LmgKQEAgLTI5LDYgKzI5LDcgQEAKIGVudW0gaTkx
NV9jb21wb25lbnRfdHlwZSB7CiAJSTkxNV9DT01QT05FTlRfQVVESU8gPSAxLAogCUk5MTVfQ09N
UE9ORU5UX0hEQ1AsCisJSTkxNV9DT01QT05FTlRfUFhQCiB9OwogCiAvKiBNQVhfUE9SVCBpcyB0
aGUgbnVtYmVyIG9mIHBvcnQKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVfcHhwX3RlZV9p
bnRlcmZhY2UuaCBiL2luY2x1ZGUvZHJtL2k5MTVfcHhwX3RlZV9pbnRlcmZhY2UuaApuZXcgZmls
ZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjM5OTllMjU1ZTE0NQotLS0gL2Rldi9u
dWxsCisrKyBiL2luY2x1ZGUvZHJtL2k5MTVfcHhwX3RlZV9pbnRlcmZhY2UuaApAQCAtMCwwICsx
LDQ1IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICovCisvKgorICogQ29weXJp
Z2h0IMKpIDIwMjAgSW50ZWwgQ29ycG9yYXRpb24KKyAqCisgKiBBdXRob3JzOgorICogVml0YWx5
IEx1YmFydCA8dml0YWx5Lmx1YmFydEBpbnRlbC5jb20+CisgKi8KKworI2lmbmRlZiBfSTkxNV9Q
WFBfVEVFX0lOVEVSRkFDRV9IXworI2RlZmluZSBfSTkxNV9QWFBfVEVFX0lOVEVSRkFDRV9IXwor
CisjaW5jbHVkZSA8bGludXgvbXV0ZXguaD4KKyNpbmNsdWRlIDxsaW51eC9kZXZpY2UuaD4KKwor
LyoqCisgKiBzdHJ1Y3QgaTkxNV9weHBfY29tcG9uZW50X29wcyAtIG9wcyBmb3IgUFhQIHNlcnZp
Y2VzLgorICogQG93bmVyOiBNb2R1bGUgcHJvdmlkaW5nIHRoZSBvcHMKKyAqIEBzZW5kOiBzZW5k
cyBkYXRhIHRvIFBYUAorICogQHJlY2VpdmU6IHJlY2VpdmVzIGRhdGEgZnJvbSBQWFAKKyAqLwor
c3RydWN0IGk5MTVfcHhwX2NvbXBvbmVudF9vcHMgeworCS8qKgorCSAqIEBvd25lcjogb3duZXIg
b2YgdGhlIG1vZHVsZSBwcm92ZGluZyB0aGUgb3BzCisJICovCisJc3RydWN0IG1vZHVsZSAqb3du
ZXI7CisKKwlpbnQgKCpzZW5kKShzdHJ1Y3QgZGV2aWNlICpkZXYsIGNvbnN0IHZvaWQgKm1lc3Nh
Z2UsIHNpemVfdCBzaXplKTsKKwlpbnQgKCpyZWNlaXZlKShzdHJ1Y3QgZGV2aWNlICpkZXYsIHZv
aWQgKmJ1ZmZlciwgc2l6ZV90IHNpemUpOworfTsKKworLyoqCisgKiBzdHJ1Y3QgaTkxNV9weHBf
Y29tcG9uZW50X21hc3RlciAtIFVzZWQgZm9yIGNvbW11bmljYXRpb24gYmV0d2VlbiBpOTE1Cisg
KiBhbmQgVEVFIGRyaXZlcnMgZm9yIHRoZSBQWFAgc2VydmljZXMKKyAqIEB0ZWVfZGV2OiBkZXZp
Y2UgdGhhdCBwcm92aWRlIHRoZSBQWFAgc2VydmljZSBmcm9tIFRFRSBCdXMuCisgKiBAcHhwX29w
czogT3BzIGltcGxlbWVudGVkIGJ5IFRFRSBkcml2ZXIsIHVzZWQgYnkgaTkxNSBkcml2ZXIuCisg
Ki8KK3N0cnVjdCBpOTE1X3B4cF9jb21wX21hc3RlciB7CisJc3RydWN0IGRldmljZSAqdGVlX2Rl
djsKKwljb25zdCBzdHJ1Y3QgaTkxNV9weHBfY29tcG9uZW50X29wcyAqb3BzOworCisJLyogVG8g
cHJvdGVjdCB0aGUgYWJvdmUgbWVtYmVycy4gKi8KKwlzdHJ1Y3QgbXV0ZXggbXV0ZXg7Cit9Owor
CisjZW5kaWYgLyogX0k5MTVfVEVFX1BYUF9JTlRFUkZBQ0VfSF8gKi8KLS0gCjIuMTcuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
