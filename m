Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 736052F99BA
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 07:07:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E78789F85;
	Mon, 18 Jan 2021 06:07:34 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DEF389F53
 for <Intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 06:07:33 +0000 (UTC)
IronPort-SDR: 9fLedA26+QAmmTvvrHrxwXgZxxCJhn981GLHQhDXBqDxVf/XWyXs6PVW8NXr/rT3eITEBwDJei
 YUiqbYVdtxog==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="197455394"
X-IronPort-AV: E=Sophos;i="5.79,355,1602572400"; d="scan'208";a="197455394"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2021 22:07:32 -0800
IronPort-SDR: F/75WMq1PlyKJgh2//j4+MlrLj7Sx0ttk9/sgpub5GyJmNM8td062r6B8YQQO/uKFlV35whi5t
 okd3JNh9BfMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,355,1602572400"; d="scan'208";a="399016969"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga004.fm.intel.com with ESMTP; 17 Jan 2021 22:07:32 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sun, 17 Jan 2021 22:07:20 -0800
Message-Id: <20210118060730.15425-4-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210118060730.15425-1-sean.z.huang@intel.com>
References: <20210118060730.15425-1-sean.z.huang@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC-v21 03/13] drm/i915/pxp: Implement funcs to create
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
Cc: kumar.gaurav@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW1wbGVtZW50IHRoZSBmdW5jcyB0byBjcmVhdGUgdGhlIFRFRSBjaGFubmVsLCBzbyBrZXJuZWwg
Y2FuCnNlbmQgdGhlIFRFRSBjb21tYW5kcyBkaXJlY3RseSB0byBURUUgZm9yIGNyZWF0aW5nIHRo
ZSBhcmJpdHJhcnkKKGRlZmF1bHQpIHNlc3Npb24uCgpyZXYyMToKICAgIC0gUmVtb3ZlIGRlYnVn
IHByaW50X2hleF9kdW1wKCkgZnJvbSBpbnRlbF9weHBfdGVlX2lvX21lc3NhZ2UoKQogICAgLSBJ
biBzdHJ1Y3QgaTkxNV9weHBfY29tcG9uZW50X29wcywgY2hhbmdlICJyZWNlaXZlIiB0byAicmVj
diIKClNpZ25lZC1vZmYtYnk6IEh1YW5nLCBTZWFuIFogPHNlYW4uei5odWFuZ0BpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICB8ICAgMyArLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICB8ICAgMSArCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgIHwgICA2ICsrCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9weHAvaW50ZWxfcHhwLmMgICAgIHwgICA1ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L3B4cC9pbnRlbF9weHBfdGVlLmMgfCAxMjkgKysrKysrKysrKysrKysrKysrKysrKysKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfdGVlLmggfCAgMTQgKysrCiBpbmNsdWRlL2Ry
bS9pOTE1X2NvbXBvbmVudC5oICAgICAgICAgICAgIHwgICAxICsKIGluY2x1ZGUvZHJtL2k5MTVf
cHhwX3RlZV9pbnRlcmZhY2UuaCAgICAgfCAgNDUgKysrKysrKysKIDggZmlsZXMgY2hhbmdlZCwg
MjAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3RlZS5jCiBjcmVhdGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF90ZWUuaAogY3JlYXRlIG1vZGUgMTAw
NjQ0IGluY2x1ZGUvZHJtL2k5MTVfcHhwX3RlZV9pbnRlcmZhY2UuaAoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZp
bGUKaW5kZXggOWQyN2UyZDhkZWNjLi4wN2JiMDQwMGUwMTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L01ha2VmaWxlCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxl
CkBAIC0yNjgsNyArMjY4LDggQEAgaTkxNS15ICs9IGk5MTVfcGVyZi5vCiAjIFByb3RlY3RlZCBl
eGVjdXRpb24gcGxhdGZvcm0gKFBYUCkgc3VwcG9ydAogaTkxNS0kKENPTkZJR19EUk1fSTkxNV9Q
WFApICs9IFwKIAlweHAvaW50ZWxfcHhwLm8gXAotCXB4cC9pbnRlbF9weHBfY29udGV4dC5vCisJ
cHhwL2ludGVsX3B4cF9jb250ZXh0Lm8gXAorCXB4cC9pbnRlbF9weHBfdGVlLm8KIAogIyBQb3N0
LW1vcnRlbSBkZWJ1ZyBhbmQgR1BVIGhhbmcgc3RhdGUgY2FwdHVyZQogaTkxNS0kKENPTkZJR19E
Uk1fSTkxNV9DQVBUVVJFX0VSUk9SKSArPSBpOTE1X2dwdV9lcnJvci5vCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuYwppbmRleCBmNTY2NmI0NGVhOWQuLmU5Y2I4ZTljYTE3MiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jCkBAIC0zMjIsNiArMzIyLDcgQEAgc3RhdGljIGludCBpOTE1X2RyaXZlcl9lYXJs
eV9wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJbXV0ZXhfaW5pdCgm
ZGV2X3ByaXYtPndtLndtX211dGV4KTsKIAltdXRleF9pbml0KCZkZXZfcHJpdi0+cHBzX211dGV4
KTsKIAltdXRleF9pbml0KCZkZXZfcHJpdi0+aGRjcF9jb21wX211dGV4KTsKKwltdXRleF9pbml0
KCZkZXZfcHJpdi0+cHhwX3RlZV9jb21wX211dGV4KTsKIAogCWk5MTVfbWVtY3B5X2luaXRfZWFy
bHkoZGV2X3ByaXYpOwogCWludGVsX3J1bnRpbWVfcG1faW5pdF9lYXJseSgmZGV2X3ByaXYtPnJ1
bnRpbWVfcG0pOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggODM3NmNmZjViYTg2Li5kMmFl
NTg3NGM1MTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMTIwOSw2ICsxMjA5LDEyIEBA
IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlIHsKIAkvKiBNdXRleCB0byBwcm90ZWN0IHRoZSBhYm92
ZSBoZGNwIGNvbXBvbmVudCByZWxhdGVkIHZhbHVlcy4gKi8KIAlzdHJ1Y3QgbXV0ZXggaGRjcF9j
b21wX211dGV4OwogCisJc3RydWN0IGk5MTVfcHhwX2NvbXBfbWFzdGVyICpweHBfdGVlX21hc3Rl
cjsKKwlib29sIHB4cF90ZWVfY29tcF9hZGRlZDsKKworCS8qIE11dGV4IHRvIHByb3RlY3QgdGhl
IGFib3ZlIHB4cF90ZWUgY29tcG9uZW50IHJlbGF0ZWQgdmFsdWVzLiAqLworCXN0cnVjdCBtdXRl
eCBweHBfdGVlX2NvbXBfbXV0ZXg7CisKIAlJOTE1X1NFTEZURVNUX0RFQ0xBUkUoc3RydWN0IGk5
MTVfc2VsZnRlc3Rfc3Rhc2ggc2VsZnRlc3Q7KQogCiAJLyoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9p
bnRlbF9weHAuYwppbmRleCA0ZTljZWU3ZGY0ZjIuLjgxY2Y4NDVkMWI5NCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L3B4cC9pbnRlbF9weHAuYwpAQCAtNSw2ICs1LDcgQEAKICNpbmNsdWRlICJpOTE1X2Ry
di5oIgogI2luY2x1ZGUgImludGVsX3B4cC5oIgogI2luY2x1ZGUgImludGVsX3B4cF9jb250ZXh0
LmgiCisjaW5jbHVkZSAiaW50ZWxfcHhwX3RlZS5oIgogCiAvKiBLQ1IgcmVnaXN0ZXIgZGVmaW5p
dGlvbnMgKi8KICNkZWZpbmUgS0NSX0lOSVQgICAgICAgICAgICBfTU1JTygweDMyMGYwKQpAQCAt
MjQsNiArMjUsOCBAQCB2b2lkIGludGVsX3B4cF9pbml0KHN0cnVjdCBpbnRlbF9weHAgKnB4cCkK
IAlpZiAoSU5URUxfR0VOKGd0LT5pOTE1KSA9PSAxMikKIAkJaW50ZWxfdW5jb3JlX3dyaXRlKGd0
LT51bmNvcmUsIEtDUl9JTklULCBLQ1JfSU5JVF9BTExPV19ESVNQTEFZX01FX1dSSVRFUyk7CiAK
KwlpbnRlbF9weHBfdGVlX2NvbXBvbmVudF9pbml0KHB4cCk7CisKIAlkcm1faW5mbygmZ3QtPmk5
MTUtPmRybSwgIlByb3RlY3RlZCBYZSBQYXRoIChQWFApIHByb3RlY3RlZCBjb250ZW50IHN1cHBv
cnQgaW5pdGlhbGl6ZWRcbiIpOwogfQogCkBAIC0zNCw1ICszNyw3IEBAIHZvaWQgaW50ZWxfcHhw
X2Zpbmkoc3RydWN0IGludGVsX3B4cCAqcHhwKQogCWlmIChJTlRFTF9HRU4oZ3QtPmk5MTUpIDwg
MTIpCiAJCXJldHVybjsKIAorCWludGVsX3B4cF90ZWVfY29tcG9uZW50X2ZpbmkocHhwKTsKKwog
CWludGVsX3B4cF9jdHhfZmluaSgmcHhwLT5jdHgpOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF90ZWUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4
cC9pbnRlbF9weHBfdGVlLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAw
Li5lN2VkZDRlMWQ1YjQKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9w
eHAvaW50ZWxfcHhwX3RlZS5jCkBAIC0wLDAgKzEsMTI5IEBACisvLyBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogTUlUCisvKgorICogQ29weXJpZ2h0KGMpIDIwMjAgSW50ZWwgQ29ycG9yYXRpb24u
CisgKi8KKworI2luY2x1ZGUgPGxpbnV4L2NvbXBvbmVudC5oPgorI2luY2x1ZGUgImRybS9pOTE1
X3B4cF90ZWVfaW50ZXJmYWNlLmgiCisjaW5jbHVkZSAiZHJtL2k5MTVfY29tcG9uZW50LmgiCisj
aW5jbHVkZSAiaTkxNV9kcnYuaCIKKyNpbmNsdWRlICJpbnRlbF9weHAuaCIKKyNpbmNsdWRlICJp
bnRlbF9weHBfY29udGV4dC5oIgorI2luY2x1ZGUgImludGVsX3B4cF90ZWUuaCIKKworc3RhdGlj
IGludCBpbnRlbF9weHBfdGVlX2lvX21lc3NhZ2Uoc3RydWN0IGludGVsX3B4cCAqcHhwLAorCQkJ
CSAgICB2b2lkICptc2dfaW4sIHUzMiBtc2dfaW5fc2l6ZSwKKwkJCQkgICAgdm9pZCAqbXNnX291
dCwgdTMyICptc2dfb3V0X3NpemVfcHRyLAorCQkJCSAgICB1MzIgbXNnX291dF9idWZfc2l6ZSkK
K3sKKwlpbnQgcmV0OworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBjb250YWluZXJfb2YocHhwLCB0
eXBlb2YoKmd0KSwgcHhwKTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5p
OTE1OworCXN0cnVjdCBpOTE1X3B4cF9jb21wX21hc3RlciAqcHhwX3RlZV9tYXN0ZXIgPSBpOTE1
LT5weHBfdGVlX21hc3RlcjsKKworCWlmICghcHhwX3RlZV9tYXN0ZXIgfHwgIW1zZ19pbiB8fCAh
bXNnX291dCB8fCAhbXNnX291dF9zaXplX3B0cikKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwlsb2Nr
ZGVwX2Fzc2VydF9oZWxkKCZpOTE1LT5weHBfdGVlX2NvbXBfbXV0ZXgpOworCisJcmV0ID0gcHhw
X3RlZV9tYXN0ZXItPm9wcy0+c2VuZChweHBfdGVlX21hc3Rlci0+dGVlX2RldiwgbXNnX2luLCBt
c2dfaW5fc2l6ZSk7CisJaWYgKHJldCkgeworCQlkcm1fZXJyKCZpOTE1LT5kcm0sICJGYWlsZWQg
dG8gc2VuZCBURUUgbWVzc2FnZVxuIik7CisJCXJldHVybiAtRUZBVUxUOworCX0KKworCXJldCA9
IHB4cF90ZWVfbWFzdGVyLT5vcHMtPnJlY3YocHhwX3RlZV9tYXN0ZXItPnRlZV9kZXYsIG1zZ19v
dXQsIG1zZ19vdXRfYnVmX3NpemUpOworCWlmIChyZXQgPCAwKSB7CisJCWRybV9lcnIoJmk5MTUt
PmRybSwgIkZhaWxlZCB0byByZWNlaXZlIFRFRSBtZXNzYWdlXG4iKTsKKwkJcmV0dXJuIC1FRkFV
TFQ7CisJfQorCisJaWYgKHJldCA+IG1zZ19vdXRfYnVmX3NpemUpIHsKKwkJZHJtX2VycigmaTkx
NS0+ZHJtLCAiRmFpbGVkIHRvIHJlY2VpdmUgVEVFIG1lc3NhZ2UgZHVlIHRvIHVuZXhwZWN0ZWQg
b3V0cHV0IHNpemVcbiIpOworCQlyZXR1cm4gLUVGQVVMVDsKKwl9CisKKwkqbXNnX291dF9zaXpl
X3B0ciA9IHJldDsKKwlyZXQgPSAwOworCisJcmV0dXJuIHJldDsKK30KKworLyoqCisgKiBpOTE1
X3B4cF90ZWVfY29tcG9uZW50X2JpbmQgLSBiaW5kIGZ1bmNpdG9uIHRvIHBhc3MgdGhlIGZ1bmN0
aW9uIHBvaW50ZXJzIHRvIHB4cF90ZWUKKyAqIEBpOTE1X2tkZXY6IHBvaW50ZXIgdG8gaTkxNSBr
ZXJuZWwgZGV2aWNlCisgKiBAdGVlX2tkZXY6IHBvaW50ZXIgdG8gdGVlIGtlcm5lbCBkZXZpY2UK
KyAqIEBkYXRhOiBwb2ludGVyIHRvIHB4cF90ZWVfbWFzdGVyIGNvbnRhaW5pbmcgdGhlIGZ1bmN0
aW9uIHBvaW50ZXJzCisgKgorICogVGhpcyBiaW5kIGZ1bmN0aW9uIGlzIGNhbGxlZCBkdXJpbmcg
dGhlIHN5c3RlbSBib290IG9yIHJlc3VtZSBmcm9tIHN5c3RlbSBzbGVlcC4KKyAqCisgKiBSZXR1
cm46IHJldHVybiAwIGlmIHN1Y2Nlc3NmdWwuCisgKi8KK3N0YXRpYyBpbnQgaTkxNV9weHBfdGVl
X2NvbXBvbmVudF9iaW5kKHN0cnVjdCBkZXZpY2UgKmk5MTVfa2RldiwKKwkJCQkgICAgICAgc3Ry
dWN0IGRldmljZSAqdGVlX2tkZXYsIHZvaWQgKmRhdGEpCit7CisJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUgPSBrZGV2X3RvX2k5MTUoaTkxNV9rZGV2KTsKKworCWlmICghaTkxNSB8fCAh
dGVlX2tkZXYgfHwgIWRhdGEpCisJCXJldHVybiAtRVBFUk07CisKKwltdXRleF9sb2NrKCZpOTE1
LT5weHBfdGVlX2NvbXBfbXV0ZXgpOworCWk5MTUtPnB4cF90ZWVfbWFzdGVyID0gKHN0cnVjdCBp
OTE1X3B4cF9jb21wX21hc3RlciAqKWRhdGE7CisJaTkxNS0+cHhwX3RlZV9tYXN0ZXItPnRlZV9k
ZXYgPSB0ZWVfa2RldjsKKwltdXRleF91bmxvY2soJmk5MTUtPnB4cF90ZWVfY29tcF9tdXRleCk7
CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIHZvaWQgaTkxNV9weHBfdGVlX2NvbXBvbmVudF91
bmJpbmQoc3RydWN0IGRldmljZSAqaTkxNV9rZGV2LAorCQkJCQkgIHN0cnVjdCBkZXZpY2UgKnRl
ZV9rZGV2LCB2b2lkICpkYXRhKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0g
a2Rldl90b19pOTE1KGk5MTVfa2Rldik7CisKKwlpZiAoIWk5MTUgfHwgIXRlZV9rZGV2IHx8ICFk
YXRhKQorCQlyZXR1cm47CisKKwltdXRleF9sb2NrKCZpOTE1LT5weHBfdGVlX2NvbXBfbXV0ZXgp
OworCWk5MTUtPnB4cF90ZWVfbWFzdGVyID0gTlVMTDsKKwltdXRleF91bmxvY2soJmk5MTUtPnB4
cF90ZWVfY29tcF9tdXRleCk7Cit9CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgY29tcG9uZW50X29w
cyBpOTE1X3B4cF90ZWVfY29tcG9uZW50X29wcyA9IHsKKwkuYmluZCAgID0gaTkxNV9weHBfdGVl
X2NvbXBvbmVudF9iaW5kLAorCS51bmJpbmQgPSBpOTE1X3B4cF90ZWVfY29tcG9uZW50X3VuYmlu
ZCwKK307CisKK3ZvaWQgaW50ZWxfcHhwX3RlZV9jb21wb25lbnRfaW5pdChzdHJ1Y3QgaW50ZWxf
cHhwICpweHApCit7CisJaW50IHJldDsKKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gY29udGFpbmVy
X29mKHB4cCwgdHlwZW9mKCpndCksIHB4cCk7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSBndC0+aTkxNTsKKworCXJldCA9IGNvbXBvbmVudF9hZGRfdHlwZWQoaTkxNS0+ZHJtLmRl
diwgJmk5MTVfcHhwX3RlZV9jb21wb25lbnRfb3BzLAorCQkJCSAgSTkxNV9DT01QT05FTlRfUFhQ
KTsKKwlpZiAocmV0IDwgMCkgeworCQlkcm1fZXJyKCZpOTE1LT5kcm0sICJGYWlsZWQgYXQgY29t
cG9uZW50IGFkZCglZClcbiIsIHJldCk7CisJCXJldHVybjsKKwl9CisKKwltdXRleF9sb2NrKCZp
OTE1LT5weHBfdGVlX2NvbXBfbXV0ZXgpOworCWk5MTUtPnB4cF90ZWVfY29tcF9hZGRlZCA9IHRy
dWU7CisJbXV0ZXhfdW5sb2NrKCZpOTE1LT5weHBfdGVlX2NvbXBfbXV0ZXgpOworfQorCit2b2lk
IGludGVsX3B4cF90ZWVfY29tcG9uZW50X2Zpbmkoc3RydWN0IGludGVsX3B4cCAqcHhwKQorewor
CXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBjb250YWluZXJfb2YocHhwLCB0eXBlb2YoKmd0KSwgcHhw
KTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5pOTE1OworCisJbXV0ZXhf
bG9jaygmaTkxNS0+cHhwX3RlZV9jb21wX211dGV4KTsKKwlpZiAoIWk5MTUtPnB4cF90ZWVfY29t
cF9hZGRlZCkgeworCQltdXRleF91bmxvY2soJmk5MTUtPnB4cF90ZWVfY29tcF9tdXRleCk7CisJ
CXJldHVybjsKKwl9CisKKwlpOTE1LT5weHBfdGVlX2NvbXBfYWRkZWQgPSBmYWxzZTsKKwltdXRl
eF91bmxvY2soJmk5MTUtPnB4cF90ZWVfY29tcF9tdXRleCk7CisKKwljb21wb25lbnRfZGVsKGk5
MTUtPmRybS5kZXYsICZpOTE1X3B4cF90ZWVfY29tcG9uZW50X29wcyk7Cit9CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3RlZS5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvcHhwL2ludGVsX3B4cF90ZWUuaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAw
MDAwMDAwMDAwMDAuLjRiNWUzZWRiMWQ5YgotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfdGVlLmgKQEAgLTAsMCArMSwxNCBAQAorLyogU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLworLyoKKyAqIENvcHlyaWdodChjKSAyMDIwLCBJbnRl
bCBDb3Jwb3JhdGlvbi4gQWxsIHJpZ2h0cyByZXNlcnZlZC4KKyAqLworCisjaWZuZGVmIF9fSU5U
RUxfUFhQX1RFRV9IX18KKyNkZWZpbmUgX19JTlRFTF9QWFBfVEVFX0hfXworCisjaW5jbHVkZSAi
aW50ZWxfcHhwLmgiCisKK3ZvaWQgaW50ZWxfcHhwX3RlZV9jb21wb25lbnRfaW5pdChzdHJ1Y3Qg
aW50ZWxfcHhwICpweHApOwordm9pZCBpbnRlbF9weHBfdGVlX2NvbXBvbmVudF9maW5pKHN0cnVj
dCBpbnRlbF9weHAgKnB4cCk7CisKKyNlbmRpZiAvKiBfX0lOVEVMX1BYUF9URUVfSF9fICovCmRp
ZmYgLS1naXQgYS9pbmNsdWRlL2RybS9pOTE1X2NvbXBvbmVudC5oIGIvaW5jbHVkZS9kcm0vaTkx
NV9jb21wb25lbnQuaAppbmRleCA1NWMzYjEyMzU4MWIuLmMxZTJhNDNkMmQxZSAxMDA2NDQKLS0t
IGEvaW5jbHVkZS9kcm0vaTkxNV9jb21wb25lbnQuaAorKysgYi9pbmNsdWRlL2RybS9pOTE1X2Nv
bXBvbmVudC5oCkBAIC0yOSw2ICsyOSw3IEBACiBlbnVtIGk5MTVfY29tcG9uZW50X3R5cGUgewog
CUk5MTVfQ09NUE9ORU5UX0FVRElPID0gMSwKIAlJOTE1X0NPTVBPTkVOVF9IRENQLAorCUk5MTVf
Q09NUE9ORU5UX1BYUAogfTsKIAogLyogTUFYX1BPUlQgaXMgdGhlIG51bWJlciBvZiBwb3J0CmRp
ZmYgLS1naXQgYS9pbmNsdWRlL2RybS9pOTE1X3B4cF90ZWVfaW50ZXJmYWNlLmggYi9pbmNsdWRl
L2RybS9pOTE1X3B4cF90ZWVfaW50ZXJmYWNlLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXgg
MDAwMDAwMDAwMDAwLi4wZWZkMTQ3MDJiNGIKLS0tIC9kZXYvbnVsbAorKysgYi9pbmNsdWRlL2Ry
bS9pOTE1X3B4cF90ZWVfaW50ZXJmYWNlLmgKQEAgLTAsMCArMSw0NSBAQAorLyogU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IE1JVCAqLworLyoKKyAqIENvcHlyaWdodCDCqSAyMDIwIEludGVsIENv
cnBvcmF0aW9uCisgKgorICogQXV0aG9yczoKKyAqIFZpdGFseSBMdWJhcnQgPHZpdGFseS5sdWJh
cnRAaW50ZWwuY29tPgorICovCisKKyNpZm5kZWYgX0k5MTVfUFhQX1RFRV9JTlRFUkZBQ0VfSF8K
KyNkZWZpbmUgX0k5MTVfUFhQX1RFRV9JTlRFUkZBQ0VfSF8KKworI2luY2x1ZGUgPGxpbnV4L211
dGV4Lmg+CisjaW5jbHVkZSA8bGludXgvZGV2aWNlLmg+CisKKy8qKgorICogc3RydWN0IGk5MTVf
cHhwX2NvbXBvbmVudF9vcHMgLSBvcHMgZm9yIFBYUCBzZXJ2aWNlcy4KKyAqIEBvd25lcjogTW9k
dWxlIHByb3ZpZGluZyB0aGUgb3BzCisgKiBAc2VuZDogc2VuZHMgZGF0YSB0byBQWFAKKyAqIEBy
ZWNlaXZlOiByZWNlaXZlcyBkYXRhIGZyb20gUFhQCisgKi8KK3N0cnVjdCBpOTE1X3B4cF9jb21w
b25lbnRfb3BzIHsKKwkvKioKKwkgKiBAb3duZXI6IG93bmVyIG9mIHRoZSBtb2R1bGUgcHJvdmRp
bmcgdGhlIG9wcworCSAqLworCXN0cnVjdCBtb2R1bGUgKm93bmVyOworCisJaW50ICgqc2VuZCko
c3RydWN0IGRldmljZSAqZGV2LCBjb25zdCB2b2lkICptZXNzYWdlLCBzaXplX3Qgc2l6ZSk7CisJ
aW50ICgqcmVjdikoc3RydWN0IGRldmljZSAqZGV2LCB2b2lkICpidWZmZXIsIHNpemVfdCBzaXpl
KTsKK307CisKKy8qKgorICogc3RydWN0IGk5MTVfcHhwX2NvbXBvbmVudF9tYXN0ZXIgLSBVc2Vk
IGZvciBjb21tdW5pY2F0aW9uIGJldHdlZW4gaTkxNQorICogYW5kIFRFRSBkcml2ZXJzIGZvciB0
aGUgUFhQIHNlcnZpY2VzCisgKiBAdGVlX2RldjogZGV2aWNlIHRoYXQgcHJvdmlkZSB0aGUgUFhQ
IHNlcnZpY2UgZnJvbSBURUUgQnVzLgorICogQHB4cF9vcHM6IE9wcyBpbXBsZW1lbnRlZCBieSBU
RUUgZHJpdmVyLCB1c2VkIGJ5IGk5MTUgZHJpdmVyLgorICovCitzdHJ1Y3QgaTkxNV9weHBfY29t
cF9tYXN0ZXIgeworCXN0cnVjdCBkZXZpY2UgKnRlZV9kZXY7CisJY29uc3Qgc3RydWN0IGk5MTVf
cHhwX2NvbXBvbmVudF9vcHMgKm9wczsKKworCS8qIFRvIHByb3RlY3QgdGhlIGFib3ZlIG1lbWJl
cnMuICovCisJc3RydWN0IG11dGV4IG11dGV4OworfTsKKworI2VuZGlmIC8qIF9JOTE1X1RFRV9Q
WFBfSU5URVJGQUNFX0hfICovCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
