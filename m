Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 186533A7EF1
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 15:15:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF8D66E332;
	Tue, 15 Jun 2021 13:15:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A12D689FCA
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 13:15:20 +0000 (UTC)
IronPort-SDR: EkvTg76di7DzB4lNjOVkNUZWaHYMz3VJ7MGt7hDO981/A9ubGdC99IlvWsjtMh0YLzPRQ/Rt/p
 1v1GgUYHVSRg==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="205804394"
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="205804394"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 06:15:20 -0700
IronPort-SDR: HAEeo6efekX41uK6W6hm1b9QcHht/MKSa+06IY14NJWk6WebMfAvXvb9FwEVEMfu3nLSnpVGML
 xU8HQNLFDp+w==
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="554443388"
Received: from vgribano-mobl.ccr.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.53])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 06:15:18 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Jun 2021 15:14:48 +0200
Message-Id: <20210615131451.61023-10-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210615131451.61023-1-thomas.hellstrom@linux.intel.com>
References: <20210615131451.61023-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 09/12] drm/i915/gt: Setup a default migration
 context on the GT
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpTZXQgdXAgYSBk
ZWZhdWx0IG1pZ3JhdGlvbiBjb250ZXh0IG9uIHRoZSBHVCBhbmQgdXNlIGl0IGZyb20gdGhlCnNl
bGZ0ZXN0cy4KQWRkIGEgcGVyZiBzZWxmdGVzdCBhbmQgbWFrZSBzdXJlIHdlIGV4ZXJjaXNlIExN
RU0gaWYgYXZhaWxhYmxlLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+CkNvLWRldmVsb3BlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21h
cy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0
csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0
aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0tLQp2MzoKLSBTa2lwIGNoZWNrcyBm
b3IgbG1lbSBwcmVzZW5jZSBiZWZvcmUgY3JlYXRpbmcgb2JqZWN0cwogIChSZXBvcnRlZCBieSBN
YXR0aGV3IEF1bGQpCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYyAgICAg
ICAgICAgIHwgICA0ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgg
ICAgICB8ICAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlLmMgICAg
ICAgfCAgIDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbWlncmF0ZS5jICAg
IHwgMjM3ICsrKysrKysrKysrKysrKysrLQogLi4uL2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3Bl
cmZfc2VsZnRlc3RzLmggIHwgICAxICsKIDUgZmlsZXMgY2hhbmdlZCwgMjM2IGluc2VydGlvbnMo
KyksIDExIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2d0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCmluZGV4IDIx
NjFiZjAxZWY4Yi4uNjdlZjA1N2FlOTE4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ndC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMK
QEAgLTEzLDYgKzEzLDcgQEAKICNpbmNsdWRlICJpbnRlbF9ndF9jbG9ja191dGlscy5oIgogI2lu
Y2x1ZGUgImludGVsX2d0X3BtLmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3RfcmVxdWVzdHMuaCIKKyNp
bmNsdWRlICJpbnRlbF9taWdyYXRlLmgiCiAjaW5jbHVkZSAiaW50ZWxfbW9jcy5oIgogI2luY2x1
ZGUgImludGVsX3JjNi5oIgogI2luY2x1ZGUgImludGVsX3JlbmRlcnN0YXRlLmgiCkBAIC02MjYs
NiArNjI3LDggQEAgaW50IGludGVsX2d0X2luaXQoc3RydWN0IGludGVsX2d0ICpndCkKIAlpZiAo
ZXJyKQogCQlnb3RvIGVycl9ndDsKIAorCWludGVsX21pZ3JhdGVfaW5pdCgmZ3QtPm1pZ3JhdGUs
IGd0KTsKKwogCWdvdG8gb3V0X2Z3OwogZXJyX2d0OgogCV9faW50ZWxfZ3RfZGlzYWJsZShndCk7
CkBAIC02NDksNiArNjUyLDcgQEAgdm9pZCBpbnRlbF9ndF9kcml2ZXJfcmVtb3ZlKHN0cnVjdCBp
bnRlbF9ndCAqZ3QpCiB7CiAJX19pbnRlbF9ndF9kaXNhYmxlKGd0KTsKIAorCWludGVsX21pZ3Jh
dGVfZmluaSgmZ3QtPm1pZ3JhdGUpOwogCWludGVsX3VjX2RyaXZlcl9yZW1vdmUoJmd0LT51Yyk7
CiAKIAlpbnRlbF9lbmdpbmVzX3JlbGVhc2UoZ3QpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0X3R5cGVzLmgKaW5kZXggZmVjZmFjZjU1MWQ1Li43NDUwOTM1ZjJjYTggMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaApAQCAtMjQsNiArMjQsNyBAQAogI2lu
Y2x1ZGUgImludGVsX3Jlc2V0X3R5cGVzLmgiCiAjaW5jbHVkZSAiaW50ZWxfcmM2X3R5cGVzLmgi
CiAjaW5jbHVkZSAiaW50ZWxfcnBzX3R5cGVzLmgiCisjaW5jbHVkZSAiaW50ZWxfbWlncmF0ZV90
eXBlcy5oIgogI2luY2x1ZGUgImludGVsX3dha2VyZWYuaCIKIAogc3RydWN0IGRybV9pOTE1X3By
aXZhdGU7CkBAIC0xNDUsNiArMTQ2LDggQEAgc3RydWN0IGludGVsX2d0IHsKIAogCXN0cnVjdCBp
OTE1X3ZtYSAqc2NyYXRjaDsKIAorCXN0cnVjdCBpbnRlbF9taWdyYXRlIG1pZ3JhdGU7CisKIAlz
dHJ1Y3QgaW50ZWxfZ3RfaW5mbyB7CiAJCWludGVsX2VuZ2luZV9tYXNrX3QgZW5naW5lX21hc2s7
CiAJCXU4IG51bV9lbmdpbmVzOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbWlncmF0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbWlncmF0ZS5j
CmluZGV4IGJhNDAwOTEyMGIzMy4uMjNjNTljZTY2Y2VlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbWlncmF0ZS5jCkBAIC00MTgsNiArNDE4LDcgQEAgaW50ZWxfY29udGV4dF9taWdy
YXRlX2NvcHkoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogCXN0cnVjdCBpOTE1X3JlcXVlc3Qg
KnJxOwogCWludCBlcnI7CiAKKwlHRU1fQlVHX09OKGNlLT52bSAhPSBjZS0+ZW5naW5lLT5ndC0+
bWlncmF0ZS5jb250ZXh0LT52bSk7CiAJKm91dCA9IE5VTEw7CiAKIAlHRU1fQlVHX09OKGNlLT5y
aW5nLT5zaXplIDwgU1pfNjRLKTsKQEAgLTUzNiw2ICs1MzcsNyBAQCBpbnRlbF9jb250ZXh0X21p
Z3JhdGVfY2xlYXIoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogCXN0cnVjdCBpOTE1X3JlcXVl
c3QgKnJxOwogCWludCBlcnI7CiAKKwlHRU1fQlVHX09OKGNlLT52bSAhPSBjZS0+ZW5naW5lLT5n
dC0+bWlncmF0ZS5jb250ZXh0LT52bSk7CiAJKm91dCA9IE5VTEw7CiAKIAlHRU1fQlVHX09OKGNl
LT5yaW5nLT5zaXplIDwgU1pfNjRLKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3NlbGZ0ZXN0X21pZ3JhdGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0
X21pZ3JhdGUuYwppbmRleCAxNTljODY1NmUxYjAuLjEyZWYyODM3Yzg5YiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbWlncmF0ZS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X21pZ3JhdGUuYwpAQCAtMyw2ICszLDggQEAKICAqIENv
cHlyaWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9uCiAgKi8KIAorI2luY2x1ZGUgPGxpbnV4
L3NvcnQuaD4KKwogI2luY2x1ZGUgInNlbGZ0ZXN0cy9pOTE1X3JhbmRvbS5oIgogCiBzdGF0aWMg
Y29uc3QgdW5zaWduZWQgaW50IHNpemVzW10gPSB7CkBAIC0xOCwxMyArMjAsMTEgQEAgc3RhdGlj
IGNvbnN0IHVuc2lnbmVkIGludCBzaXplc1tdID0gewogc3RhdGljIHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICoKIGNyZWF0ZV9sbWVtX29yX2ludGVybmFsKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LCBzaXplX3Qgc2l6ZSkKIHsKLQlpZiAoSEFTX0xNRU0oaTkxNSkpIHsKLQkJc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqOwogCi0JCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfbG1lbShpOTE1LCBzaXpl
LCAwKTsKLQkJaWYgKCFJU19FUlIob2JqKSkKLQkJCXJldHVybiBvYmo7Ci0JfQorCW9iaiA9IGk5
MTVfZ2VtX29iamVjdF9jcmVhdGVfbG1lbShpOTE1LCBzaXplLCAwKTsKKwlpZiAoIUlTX0VSUihv
YmopKQorCQlyZXR1cm4gb2JqOwogCiAJcmV0dXJuIGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50
ZXJuYWwoaTkxNSwgc2l6ZSk7CiB9CkBAIC00NDEsMTQgKzQ0MSwyMjkgQEAgaW50IGludGVsX21p
Z3JhdGVfbGl2ZV9zZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCVNV
QlRFU1QodGhyZWFkX2dsb2JhbF9jb3B5KSwKIAkJU1VCVEVTVCh0aHJlYWRfZ2xvYmFsX2NsZWFy
KSwKIAl9OwotCXN0cnVjdCBpbnRlbF9taWdyYXRlIG07CisJc3RydWN0IGludGVsX2d0ICpndCA9
ICZpOTE1LT5ndDsKKworCWlmICghZ3QtPm1pZ3JhdGUuY29udGV4dCkKKwkJcmV0dXJuIDA7CisK
KwlyZXR1cm4gaTkxNV9zdWJ0ZXN0cyh0ZXN0cywgJmd0LT5taWdyYXRlKTsKK30KKworc3RhdGlj
IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICoKK2NyZWF0ZV9pbml0X2xtZW1faW50ZXJuYWwo
c3RydWN0IGludGVsX2d0ICpndCwgc2l6ZV90IHN6LCBib29sIHRyeV9sbWVtKQoreworCXN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBOVUxMOwogCWludCBlcnI7CiAKLQlpZiAoaW50
ZWxfbWlncmF0ZV9pbml0KCZtLCAmaTkxNS0+Z3QpKQorCWlmICh0cnlfbG1lbSkKKwkJb2JqID0g
aTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9sbWVtKGd0LT5pOTE1LCBzeiwgMCk7CisKKwlpZiAoSVNf
RVJSX09SX05VTEwob2JqKSkgeworCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVy
bmFsKGd0LT5pOTE1LCBzeik7CisJCWlmIChJU19FUlIob2JqKSkKKwkJCXJldHVybiBvYmo7CisJ
fQorCisJaTkxNV9nZW1fb2JqZWN0X3RyeWxvY2sob2JqKTsKKwllcnIgPSBpOTE1X2dlbV9vYmpl
Y3RfcGluX3BhZ2VzKG9iaik7CisJaWYgKGVycikgeworCQlpOTE1X2dlbV9vYmplY3RfdW5sb2Nr
KG9iaik7CisJCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKKwkJcmV0dXJuIEVSUl9QVFIoZXJy
KTsKKwl9CisKKwlyZXR1cm4gb2JqOworfQorCitzdGF0aWMgaW50IHdyYXBfa3RpbWVfY29tcGFy
ZShjb25zdCB2b2lkICpBLCBjb25zdCB2b2lkICpCKQoreworCWNvbnN0IGt0aW1lX3QgKmEgPSBB
LCAqYiA9IEI7CisKKwlyZXR1cm4ga3RpbWVfY29tcGFyZSgqYSwgKmIpOworfQorCitzdGF0aWMg
aW50IF9fcGVyZl9jbGVhcl9ibHQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAorCQkJICAgIHN0
cnVjdCBzY2F0dGVybGlzdCAqc2csCisJCQkgICAgZW51bSBpOTE1X2NhY2hlX2xldmVsIGNhY2hl
X2xldmVsLAorCQkJICAgIGJvb2wgaXNfbG1lbSwKKwkJCSAgICBzaXplX3Qgc3opCit7CisJa3Rp
bWVfdCB0WzVdOworCWludCBwYXNzOworCWludCBlcnIgPSAwOworCisJZm9yIChwYXNzID0gMDsg
cGFzcyA8IEFSUkFZX1NJWkUodCk7IHBhc3MrKykgeworCQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpy
cTsKKwkJa3RpbWVfdCB0MCwgdDE7CisKKwkJdDAgPSBrdGltZV9nZXQoKTsKKworCQllcnIgPSBp
bnRlbF9jb250ZXh0X21pZ3JhdGVfY2xlYXIoY2UsIE5VTEwsIHNnLCBjYWNoZV9sZXZlbCwKKwkJ
CQkJCSAgaXNfbG1lbSwgMCwgJnJxKTsKKwkJaWYgKHJxKSB7CisJCQlpZiAoaTkxNV9yZXF1ZXN0
X3dhaXQocnEsIDAsIE1BWF9TQ0hFRFVMRV9USU1FT1VUKSA8IDApCisJCQkJZXJyID0gLUVJTzsK
KwkJCWk5MTVfcmVxdWVzdF9wdXQocnEpOworCQl9CisJCWlmIChlcnIpCisJCQlicmVhazsKKwor
CQl0MSA9IGt0aW1lX2dldCgpOworCQl0W3Bhc3NdID0ga3RpbWVfc3ViKHQxLCB0MCk7CisJfQor
CWlmIChlcnIpCisJCXJldHVybiBlcnI7CisKKwlzb3J0KHQsIEFSUkFZX1NJWkUodCksIHNpemVv
ZigqdCksIHdyYXBfa3RpbWVfY29tcGFyZSwgTlVMTCk7CisJcHJfaW5mbygiJXM6ICV6ZCBLaUIg
ZmlsbDogJWxsZCBNaUIvc1xuIiwKKwkJY2UtPmVuZ2luZS0+bmFtZSwgc3ogPj4gMTAsCisJCWRp
djY0X3U2NChtdWxfdTMyX3UzMig0ICogc3osCisJCQkJICAgICAgMTAwMCAqIDEwMDAgKiAxMDAw
KSwKKwkJCSAgdFsxXSArIDIgKiB0WzJdICsgdFszXSkgPj4gMjApOworCXJldHVybiAwOworfQor
CitzdGF0aWMgaW50IHBlcmZfY2xlYXJfYmx0KHZvaWQgKmFyZykKK3sKKwlzdHJ1Y3QgaW50ZWxf
Z3QgKmd0ID0gYXJnOworCXN0YXRpYyBjb25zdCB1bnNpZ25lZCBsb25nIHNpemVzW10gPSB7CisJ
CVNaXzRLLAorCQlTWl82NEssCisJCVNaXzJNLAorCQlTWl82NE0KKwl9OworCWludCBpOworCisJ
Zm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoc2l6ZXMpOyBpKyspIHsKKwkJc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKmRzdDsKKwkJaW50IGVycjsKKworCQlkc3QgPSBjcmVhdGVfaW5pdF9s
bWVtX2ludGVybmFsKGd0LCBzaXplc1tpXSwgdHJ1ZSk7CisJCWlmIChJU19FUlIoZHN0KSkKKwkJ
CXJldHVybiBQVFJfRVJSKGRzdCk7CisKKwkJZXJyID0gX19wZXJmX2NsZWFyX2JsdChndC0+bWln
cmF0ZS5jb250ZXh0LAorCQkJCSAgICAgICBkc3QtPm1tLnBhZ2VzLT5zZ2wsCisJCQkJICAgICAg
IEk5MTVfQ0FDSEVfTk9ORSwKKwkJCQkgICAgICAgaTkxNV9nZW1fb2JqZWN0X2lzX2xtZW0oZHN0
KSwKKwkJCQkgICAgICAgc2l6ZXNbaV0pOworCisJCWk5MTVfZ2VtX29iamVjdF91bmxvY2soZHN0
KTsKKwkJaTkxNV9nZW1fb2JqZWN0X3B1dChkc3QpOworCQlpZiAoZXJyKQorCQkJcmV0dXJuIGVy
cjsKKwl9CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCBfX3BlcmZfY29weV9ibHQoc3Ry
dWN0IGludGVsX2NvbnRleHQgKmNlLAorCQkJICAgc3RydWN0IHNjYXR0ZXJsaXN0ICpzcmMsCisJ
CQkgICBlbnVtIGk5MTVfY2FjaGVfbGV2ZWwgc3JjX2NhY2hlX2xldmVsLAorCQkJICAgYm9vbCBz
cmNfaXNfbG1lbSwKKwkJCSAgIHN0cnVjdCBzY2F0dGVybGlzdCAqZHN0LAorCQkJICAgZW51bSBp
OTE1X2NhY2hlX2xldmVsIGRzdF9jYWNoZV9sZXZlbCwKKwkJCSAgIGJvb2wgZHN0X2lzX2xtZW0s
CisJCQkgICBzaXplX3Qgc3opCit7CisJa3RpbWVfdCB0WzVdOworCWludCBwYXNzOworCWludCBl
cnIgPSAwOworCisJZm9yIChwYXNzID0gMDsgcGFzcyA8IEFSUkFZX1NJWkUodCk7IHBhc3MrKykg
eworCQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKKwkJa3RpbWVfdCB0MCwgdDE7CisKKwkJdDAg
PSBrdGltZV9nZXQoKTsKKworCQllcnIgPSBpbnRlbF9jb250ZXh0X21pZ3JhdGVfY29weShjZSwg
TlVMTCwKKwkJCQkJCSBzcmMsIHNyY19jYWNoZV9sZXZlbCwKKwkJCQkJCSBzcmNfaXNfbG1lbSwK
KwkJCQkJCSBkc3QsIGRzdF9jYWNoZV9sZXZlbCwKKwkJCQkJCSBkc3RfaXNfbG1lbSwKKwkJCQkJ
CSAmcnEpOworCQlpZiAocnEpIHsKKwkJCWlmIChpOTE1X3JlcXVlc3Rfd2FpdChycSwgMCwgTUFY
X1NDSEVEVUxFX1RJTUVPVVQpIDwgMCkKKwkJCQllcnIgPSAtRUlPOworCQkJaTkxNV9yZXF1ZXN0
X3B1dChycSk7CisJCX0KKwkJaWYgKGVycikKKwkJCWJyZWFrOworCisJCXQxID0ga3RpbWVfZ2V0
KCk7CisJCXRbcGFzc10gPSBrdGltZV9zdWIodDEsIHQwKTsKKwl9CisJaWYgKGVycikKKwkJcmV0
dXJuIGVycjsKKworCXNvcnQodCwgQVJSQVlfU0laRSh0KSwgc2l6ZW9mKCp0KSwgd3JhcF9rdGlt
ZV9jb21wYXJlLCBOVUxMKTsKKwlwcl9pbmZvKCIlczogJXpkIEtpQiBjb3B5OiAlbGxkIE1pQi9z
XG4iLAorCQljZS0+ZW5naW5lLT5uYW1lLCBzeiA+PiAxMCwKKwkJZGl2NjRfdTY0KG11bF91MzJf
dTMyKDQgKiBzeiwKKwkJCQkgICAgICAxMDAwICogMTAwMCAqIDEwMDApLAorCQkJICB0WzFdICsg
MiAqIHRbMl0gKyB0WzNdKSA+PiAyMCk7CisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgcGVy
Zl9jb3B5X2JsdCh2b2lkICphcmcpCit7CisJc3RydWN0IGludGVsX2d0ICpndCA9IGFyZzsKKwlz
dGF0aWMgY29uc3QgdW5zaWduZWQgbG9uZyBzaXplc1tdID0geworCQlTWl80SywKKwkJU1pfNjRL
LAorCQlTWl8yTSwKKwkJU1pfNjRNCisJfTsKKwlpbnQgaTsKKworCWZvciAoaSA9IDA7IGkgPCBB
UlJBWV9TSVpFKHNpemVzKTsgaSsrKSB7CisJCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpz
cmMsICpkc3Q7CisJCWludCBlcnI7CisKKwkJc3JjID0gY3JlYXRlX2luaXRfbG1lbV9pbnRlcm5h
bChndCwgc2l6ZXNbaV0sIHRydWUpOworCQlpZiAoSVNfRVJSKHNyYykpCisJCQlyZXR1cm4gUFRS
X0VSUihzcmMpOworCisJCWRzdCA9IGNyZWF0ZV9pbml0X2xtZW1faW50ZXJuYWwoZ3QsIHNpemVz
W2ldLCBmYWxzZSk7CisJCWlmIChJU19FUlIoZHN0KSkgeworCQkJZXJyID0gUFRSX0VSUihkc3Qp
OworCQkJZ290byBlcnJfc3JjOworCQl9CisKKwkJZXJyID0gX19wZXJmX2NvcHlfYmx0KGd0LT5t
aWdyYXRlLmNvbnRleHQsCisJCQkJICAgICAgc3JjLT5tbS5wYWdlcy0+c2dsLAorCQkJCSAgICAg
IEk5MTVfQ0FDSEVfTk9ORSwKKwkJCQkgICAgICBpOTE1X2dlbV9vYmplY3RfaXNfbG1lbShzcmMp
LAorCQkJCSAgICAgIGRzdC0+bW0ucGFnZXMtPnNnbCwKKwkJCQkgICAgICBJOTE1X0NBQ0hFX05P
TkUsCisJCQkJICAgICAgaTkxNV9nZW1fb2JqZWN0X2lzX2xtZW0oZHN0KSwKKwkJCQkgICAgICBz
aXplc1tpXSk7CisKKwkJaTkxNV9nZW1fb2JqZWN0X3VubG9jayhkc3QpOworCQlpOTE1X2dlbV9v
YmplY3RfcHV0KGRzdCk7CitlcnJfc3JjOgorCQlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKHNyYyk7
CisJCWk5MTVfZ2VtX29iamVjdF9wdXQoc3JjKTsKKwkJaWYgKGVycikKKwkJCXJldHVybiBlcnI7
CisJfQorCisJcmV0dXJuIDA7Cit9CisKK2ludCBpbnRlbF9taWdyYXRlX3BlcmZfc2VsZnRlc3Rz
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQoreworCXN0YXRpYyBjb25zdCBzdHJ1Y3Qg
aTkxNV9zdWJ0ZXN0IHRlc3RzW10gPSB7CisJCVNVQlRFU1QocGVyZl9jbGVhcl9ibHQpLAorCQlT
VUJURVNUKHBlcmZfY29weV9ibHQpLAorCX07CisJc3RydWN0IGludGVsX2d0ICpndCA9ICZpOTE1
LT5ndDsKKworCWlmIChpbnRlbF9ndF9pc193ZWRnZWQoZ3QpKQogCQlyZXR1cm4gMDsKIAotCWVy
ciA9IGk5MTVfc3VidGVzdHModGVzdHMsICZtKTsKLQlpbnRlbF9taWdyYXRlX2ZpbmkoJm0pOwor
CWlmICghZ3QtPm1pZ3JhdGUuY29udGV4dCkKKwkJcmV0dXJuIDA7CiAKLQlyZXR1cm4gZXJyOwor
CXJldHVybiBpbnRlbF9ndF9saXZlX3N1YnRlc3RzKHRlc3RzLCBndCk7CiB9CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9wZXJmX3NlbGZ0ZXN0cy5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfcGVyZl9zZWxmdGVzdHMuaAppbmRl
eCBjMjM4OWY4YTI1N2QuLjUwNzdkYzNjM2I4YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvc2VsZnRlc3RzL2k5MTVfcGVyZl9zZWxmdGVzdHMuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9wZXJmX3NlbGZ0ZXN0cy5oCkBAIC0xNyw1ICsxNyw2IEBA
CiAgKi8KIHNlbGZ0ZXN0KGVuZ2luZV9jcywgaW50ZWxfZW5naW5lX2NzX3BlcmZfc2VsZnRlc3Rz
KQogc2VsZnRlc3QocmVxdWVzdCwgaTkxNV9yZXF1ZXN0X3BlcmZfc2VsZnRlc3RzKQorc2VsZnRl
c3QobWlncmF0ZSwgaW50ZWxfbWlncmF0ZV9wZXJmX3NlbGZ0ZXN0cykKIHNlbGZ0ZXN0KGJsdCwg
aTkxNV9nZW1fb2JqZWN0X2JsdF9wZXJmX3NlbGZ0ZXN0cykKIHNlbGZ0ZXN0KHJlZ2lvbiwgaW50
ZWxfbWVtb3J5X3JlZ2lvbl9wZXJmX3NlbGZ0ZXN0cykKLS0gCjIuMzEuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
