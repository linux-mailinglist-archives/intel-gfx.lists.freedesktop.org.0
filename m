Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06EC7AB4EB
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 11:33:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E95526E204;
	Fri,  6 Sep 2019 09:33:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1CFF6E204
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 09:33:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 02:33:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,472,1559545200"; d="scan'208";a="185737716"
Received: from chlopez-mobl1.amr.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.36.202])
 by orsmga003.jf.intel.com with ESMTP; 06 Sep 2019 02:33:11 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Sep 2019 12:32:45 +0300
Message-Id: <20190906093256.26198-3-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190906093256.26198-1-lionel.g.landwerlin@intel.com>
References: <20190906093256.26198-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v15 02/13] drm/i915: add syncobj timeline support
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW50cm9kdWNlcyBhIG5ldyBwYXJhbWV0ZXJzIHRvIGV4ZWNidWYgc28gdGhhdCB3ZSBjYW4gc3Bl
Y2lmeSBzeW5jb2JqCmhhbmRsZXMgYXMgd2VsbCBhcyB0aW1lbGluZSBwb2ludHMuCgp2MjogUmV1
c2UgaTkxNV91c2VyX2V4dGVuc2lvbl9mbgoKdjM6IENoZWNrIHRoYXQgdGhlIGNoYWluZWQgZXh0
ZW5zaW9uIGlzIG9ubHkgcHJlc2VudCBvbmNlIChDaHJpcykKCnY0OiBDaGVjayB0aGF0IGRtYV9m
ZW5jZV9jaGFpbl9maW5kX3NlcW5vIHJldHVybnMgYSBub24gTlVMTCBmZW5jZSAoTGlvbmVsKQoK
djU6IFVzZSBCSVRfVUxMIChDaHJpcykKCnY2OiBGaXggaXNzdWUgd2l0aCBhbHJlYWR5IHNpZ25h
bGVkIHRpbWVsaW5lIHBvaW50cywKICAgIGRtYV9mZW5jZV9jaGFpbl9maW5kX3NlcW5vKCkgc2V0
dGluZyBmZW5jZSB0byBOVUxMIChDaHJpcykKCnY3OiBSZXBvcnQgRU5PRU5UIHdpdGggaW52YWxp
ZCBzeW5jb2JqIGhhbmRsZSAoTGlvbmVsKQoKdjg6IENoZWNrIGZvciBvdXQgb2Ygb3JkZXIgdGlt
ZWxpbmUgcG9pbnQgaW5zZXJ0aW9uIChDaHJpcykKCnY5OiBBZnRlciBleHBsYW5hdGlvbnMgb24K
ICAgIGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL2FyY2hpdmVzL2RyaS1kZXZlbC8yMDE5
LUF1Z3VzdC8yMjkyODcuaHRtbAogICAgZHJvcCB0aGUgb3JkZXJpbmcgY2hlY2sgZnJvbSB2OCAo
TGlvbmVsKQoKdjEwOiBTZXQgZmlyc3QgZXh0ZW5zaW9uIGVudW0gaXRlbSB0byAxIChKYXNvbikK
ClNpZ25lZC1vZmYtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGlu
dGVsLmNvbT4KLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMg
ICAgfCAzMDcgKysrKysrKysrKysrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5jICAgICAgICAgICAgICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2V0
cGFyYW0uYyAgICAgICAgICB8ICAgMSArCiBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggICAg
ICAgICAgICAgICAgICAgfCAgMzkgKysrCiA0IGZpbGVzIGNoYW5nZWQsIDI5MyBpbnNlcnRpb25z
KCspLCA1NyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2V4ZWNidWZmZXIuYwppbmRleCA0ZjVmZDk0NmFiMjguLjQ2YWQ4ZDk2NDJkMSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCkBAIC0yMTQs
NiArMjE0LDEzIEBAIGVudW0gewogICogdGhlIGJhdGNoYnVmZmVyIGluIHRydXN0ZWQgbW9kZSwg
b3RoZXJ3aXNlIHRoZSBpb2N0bCBpcyByZWplY3RlZC4KICAqLwogCitzdHJ1Y3QgaTkxNV9lYl9m
ZW5jZXMgeworCXN0cnVjdCBkcm1fc3luY29iaiAqc3luY29iajsgLyogVXNlIHdpdGggcHRyX21h
c2tfYml0cygpICovCisJc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlOworCXU2NCB2YWx1ZTsK
KwlzdHJ1Y3QgZG1hX2ZlbmNlX2NoYWluICpjaGFpbl9mZW5jZTsKK307CisKIHN0cnVjdCBpOTE1
X2V4ZWNidWZmZXIgewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1OyAvKiogaTkxNSBi
YWNrcG9pbnRlciAqLwogCXN0cnVjdCBkcm1fZmlsZSAqZmlsZTsgLyoqIHBlci1maWxlIGxvb2t1
cCB0YWJsZXMgYW5kIGxpbWl0cyAqLwpAQCAtMjc2LDYgKzI4Myw3IEBAIHN0cnVjdCBpOTE1X2V4
ZWNidWZmZXIgewogCiAJc3RydWN0IHsKIAkJdTY0IGZsYWdzOyAvKiogQXZhaWxhYmxlIGV4dGVu
c2lvbnMgcGFyYW1ldGVycyAqLworCQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNidWZmZXJfZXh0
X3RpbWVsaW5lX2ZlbmNlcyB0aW1lbGluZV9mZW5jZXM7CiAJfSBleHRlbnNpb25zOwogfTsKIApA
QCAtMjMyMCw2NyArMjMyOCwyMTcgQEAgZWJfcGluX2VuZ2luZShzdHJ1Y3QgaTkxNV9leGVjYnVm
ZmVyICplYiwKIH0KIAogc3RhdGljIHZvaWQKLV9fZnJlZV9mZW5jZV9hcnJheShzdHJ1Y3QgZHJt
X3N5bmNvYmogKipmZW5jZXMsIHVuc2lnbmVkIGludCBuKQorX19mcmVlX2ZlbmNlX2FycmF5KHN0
cnVjdCBpOTE1X2ViX2ZlbmNlcyAqZmVuY2VzLCB1bnNpZ25lZCBpbnQgbikKIHsKLQl3aGlsZSAo
bi0tKQotCQlkcm1fc3luY29ial9wdXQocHRyX21hc2tfYml0cyhmZW5jZXNbbl0sIDIpKTsKKwl3
aGlsZSAobi0tKSB7CisJCWRybV9zeW5jb2JqX3B1dChwdHJfbWFza19iaXRzKGZlbmNlc1tuXS5z
eW5jb2JqLCAyKSk7CisJCWRtYV9mZW5jZV9wdXQoZmVuY2VzW25dLmRtYV9mZW5jZSk7CisJCWtm
cmVlKGZlbmNlc1tuXS5jaGFpbl9mZW5jZSk7CisJfQogCWt2ZnJlZShmZW5jZXMpOwogfQogCi1z
dGF0aWMgc3RydWN0IGRybV9zeW5jb2JqICoqCi1nZXRfZmVuY2VfYXJyYXkoc3RydWN0IGRybV9p
OTE1X2dlbV9leGVjYnVmZmVyMiAqYXJncywKLQkJc3RydWN0IGRybV9maWxlICpmaWxlKQorc3Rh
dGljIHN0cnVjdCBpOTE1X2ViX2ZlbmNlcyAqCitnZXRfdGltZWxpbmVfZmVuY2VfYXJyYXkoc3Ry
dWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsIGludCAqb3V0X25fZmVuY2VzKQoreworCXN0cnVjdCBk
cm1faTkxNV9nZW1fZXhlY2J1ZmZlcl9leHRfdGltZWxpbmVfZmVuY2VzICp0aW1lbGluZV9mZW5j
ZXMgPQorCQkmZWItPmV4dGVuc2lvbnMudGltZWxpbmVfZmVuY2VzOworCXN0cnVjdCBkcm1faTkx
NV9nZW1fZXhlY19mZW5jZSBfX3VzZXIgKnVzZXJfZmVuY2VzOworCXN0cnVjdCBpOTE1X2ViX2Zl
bmNlcyAqZmVuY2VzOworCXU2NCBfX3VzZXIgKnVzZXJfdmFsdWVzOworCXU2NCBudW1fZmVuY2Vz
LCBudW1fdXNlcl9mZW5jZXMgPSB0aW1lbGluZV9mZW5jZXMtPmZlbmNlX2NvdW50OworCXVuc2ln
bmVkIGxvbmcgbjsKKwlpbnQgZXJyOworCisJLyogQ2hlY2sgbXVsdGlwbGljYXRpb24gb3ZlcmZs
b3cgZm9yIGFjY2Vzc19vaygpIGFuZCBrdm1hbGxvY19hcnJheSgpICovCisJQlVJTERfQlVHX09O
KHNpemVvZihzaXplX3QpID4gc2l6ZW9mKHVuc2lnbmVkIGxvbmcpKTsKKwlpZiAobnVtX3VzZXJf
ZmVuY2VzID4gbWluX3QodW5zaWduZWQgbG9uZywKKwkJCQkgICAgVUxPTkdfTUFYIC8gc2l6ZW9m
KCp1c2VyX2ZlbmNlcyksCisJCQkJICAgIFNJWkVfTUFYIC8gc2l6ZW9mKCpmZW5jZXMpKSkKKwkJ
cmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7CisKKwl1c2VyX2ZlbmNlcyA9IHU2NF90b191c2VyX3B0
cih0aW1lbGluZV9mZW5jZXMtPmhhbmRsZXNfcHRyKTsKKwlpZiAoIWFjY2Vzc19vayh1c2VyX2Zl
bmNlcywgbnVtX3VzZXJfZmVuY2VzICogc2l6ZW9mKCp1c2VyX2ZlbmNlcykpKQorCQlyZXR1cm4g
RVJSX1BUUigtRUZBVUxUKTsKKworCXVzZXJfdmFsdWVzID0gdTY0X3RvX3VzZXJfcHRyKHRpbWVs
aW5lX2ZlbmNlcy0+dmFsdWVzX3B0cik7CisJaWYgKCFhY2Nlc3Nfb2sodXNlcl92YWx1ZXMsIG51
bV91c2VyX2ZlbmNlcyAqIHNpemVvZigqdXNlcl92YWx1ZXMpKSkKKwkJcmV0dXJuIEVSUl9QVFIo
LUVGQVVMVCk7CisKKwlmZW5jZXMgPSBrdm1hbGxvY19hcnJheShudW1fdXNlcl9mZW5jZXMsIHNp
emVvZigqZmVuY2VzKSwKKwkJCQlfX0dGUF9OT1dBUk4gfCBHRlBfS0VSTkVMKTsKKwlpZiAoIWZl
bmNlcykKKwkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7CisKKwlCVUlMRF9CVUdfT04ofihBUkNI
X0tNQUxMT0NfTUlOQUxJR04gLSAxKSAmCisJCSAgICAgfl9fSTkxNV9FWEVDX0ZFTkNFX1VOS05P
V05fRkxBR1MpOworCisJZm9yIChuID0gMCwgbnVtX2ZlbmNlcyA9IDA7IG4gPCB0aW1lbGluZV9m
ZW5jZXMtPmZlbmNlX2NvdW50OyBuKyspIHsKKwkJc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX2Zl
bmNlIHVzZXJfZmVuY2U7CisJCXN0cnVjdCBkcm1fc3luY29iaiAqc3luY29iajsKKwkJc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UgPSBOVUxMOworCQl1NjQgcG9pbnQ7CisKKwkJaWYgKF9fY29weV9m
cm9tX3VzZXIoJnVzZXJfZmVuY2UsIHVzZXJfZmVuY2VzKyssIHNpemVvZih1c2VyX2ZlbmNlKSkp
IHsKKwkJCWVyciA9IC1FRkFVTFQ7CisJCQlnb3RvIGVycjsKKwkJfQorCisJCWlmICh1c2VyX2Zl
bmNlLmZsYWdzICYgX19JOTE1X0VYRUNfRkVOQ0VfVU5LTk9XTl9GTEFHUykgeworCQkJZXJyID0g
LUVJTlZBTDsKKwkJCWdvdG8gZXJyOworCQl9CisKKwkJaWYgKF9fZ2V0X3VzZXIocG9pbnQsIHVz
ZXJfdmFsdWVzKyspKSB7CisJCQllcnIgPSAtRUZBVUxUOworCQkJZ290byBlcnI7CisJCX0KKwor
CQlzeW5jb2JqID0gZHJtX3N5bmNvYmpfZmluZChlYi0+ZmlsZSwgdXNlcl9mZW5jZS5oYW5kbGUp
OworCQlpZiAoIXN5bmNvYmopIHsKKwkJCURSTV9ERUJVRygiSW52YWxpZCBzeW5jb2JqIGhhbmRs
ZSBwcm92aWRlZFxuIik7CisJCQllcnIgPSAtRU5PRU5UOworCQkJZ290byBlcnI7CisJCX0KKwor
CQlpZiAodXNlcl9mZW5jZS5mbGFncyAmIEk5MTVfRVhFQ19GRU5DRV9XQUlUKSB7CisJCQlmZW5j
ZSA9IGRybV9zeW5jb2JqX2ZlbmNlX2dldChzeW5jb2JqKTsKKwkJCWlmICghZmVuY2UpIHsKKwkJ
CQlEUk1fREVCVUcoIlN5bmNvYmogaGFuZGxlIGhhcyBubyBmZW5jZVxuIik7CisJCQkJZHJtX3N5
bmNvYmpfcHV0KHN5bmNvYmopOworCQkJCWVyciA9IC1FSU5WQUw7CisJCQkJZ290byBlcnI7CisJ
CQl9CisKKwkJCWVyciA9IGRtYV9mZW5jZV9jaGFpbl9maW5kX3NlcW5vKCZmZW5jZSwgcG9pbnQp
OworCQkJaWYgKGVycikgeworCQkJCURSTV9ERUJVRygiU3luY29iaiBoYW5kbGUgbWlzc2luZyBy
ZXF1ZXN0ZWQgcG9pbnQgJWxsdVxuIiwgcG9pbnQpOworCQkJCWRybV9zeW5jb2JqX3B1dChzeW5j
b2JqKTsKKwkJCQlnb3RvIGVycjsKKwkJCX0KKworCQkJLyogQSBwb2ludCBtaWdodCBoYXZlIGJl
ZW4gc2lnbmFsZWQgYWxyZWFkeSBhbmQKKwkJCSAqIGdhcmJhZ2UgY29sbGVjdGVkIGZyb20gdGhl
IHRpbWVsaW5lLiBJbiB0aGlzIGNhc2UKKwkJCSAqIGp1c3QgaWdub3JlIHRoZSBwb2ludCBhbmQg
Y2Fycnkgb24uCisJCQkgKi8KKwkJCWlmICghZmVuY2UpIHsKKwkJCQlkcm1fc3luY29ial9wdXQo
c3luY29iaik7CisJCQkJY29udGludWU7CisJCQl9CisJCX0KKworCQkvKgorCQkgKiBGb3IgdGlt
ZWxpbmUgc3luY29ianMgd2UgbmVlZCB0byBwcmVhbGxvY2F0ZSBjaGFpbnMgZm9yCisJCSAqIGxh
dGVyIHNpZ25hbGluZy4KKwkJICovCisJCWlmIChwb2ludCAhPSAwICYmIHVzZXJfZmVuY2UuZmxh
Z3MgJiBJOTE1X0VYRUNfRkVOQ0VfU0lHTkFMKSB7CisJCQkvKgorCQkJICogV2FpdGluZyBhbmQg
c2lnbmFsaW5nIHRoZSBzYW1lIHBvaW50ICh3aGVuIHBvaW50ICE9CisJCQkgKiAwKSB3b3VsZCBi
cmVhayB0aGUgdGltZWxpbmUuCisJCQkgKi8KKwkJCWlmICh1c2VyX2ZlbmNlLmZsYWdzICYgSTkx
NV9FWEVDX0ZFTkNFX1dBSVQpIHsKKwkJCQlEUk1fREVCVUcoIlRyaW5nIHRvIHdhaXQgJiBzaWdu
YWwgdGhlIHNhbWUgdGltZWxpbmUgcG9pbnQuXG4iKTsKKwkJCQllcnIgPSAtRUlOVkFMOworCQkJ
CWRybV9zeW5jb2JqX3B1dChzeW5jb2JqKTsKKwkJCQlnb3RvIGVycjsKKwkJCX0KKworCQkJZmVu
Y2VzW251bV9mZW5jZXNdLmNoYWluX2ZlbmNlID0KKwkJCQlrbWFsbG9jKHNpemVvZigqZmVuY2Vz
W251bV9mZW5jZXNdLmNoYWluX2ZlbmNlKSwKKwkJCQkJR0ZQX0tFUk5FTCk7CisJCQlpZiAoIWZl
bmNlc1tudW1fZmVuY2VzXS5jaGFpbl9mZW5jZSkgeworCQkJCWRybV9zeW5jb2JqX3B1dChzeW5j
b2JqKTsKKwkJCQllcnIgPSAtRU5PTUVNOworCQkJCURSTV9ERUJVRygiVW5hYmxlIHRvIGFsbG9j
IGNoYWluX2ZlbmNlXG4iKTsKKwkJCQlnb3RvIGVycjsKKwkJCX0KKwkJfSBlbHNlIHsKKwkJCWZl
bmNlc1tudW1fZmVuY2VzXS5jaGFpbl9mZW5jZSA9IE5VTEw7CisJCX0KKworCQlmZW5jZXNbbnVt
X2ZlbmNlc10uc3luY29iaiA9IHB0cl9wYWNrX2JpdHMoc3luY29iaiwgdXNlcl9mZW5jZS5mbGFn
cywgMik7CisJCWZlbmNlc1tudW1fZmVuY2VzXS5kbWFfZmVuY2UgPSBmZW5jZTsKKwkJZmVuY2Vz
W251bV9mZW5jZXNdLnZhbHVlID0gcG9pbnQ7CisJCW51bV9mZW5jZXMrKzsKKwl9CisKKwkqb3V0
X25fZmVuY2VzID0gbnVtX2ZlbmNlczsKKworCXJldHVybiBmZW5jZXM7CisKK2VycjoKKwlfX2Zy
ZWVfZmVuY2VfYXJyYXkoZmVuY2VzLCBudW1fZmVuY2VzKTsKKwlyZXR1cm4gRVJSX1BUUihlcnIp
OworfQorCitzdGF0aWMgc3RydWN0IGk5MTVfZWJfZmVuY2VzICoKK2dldF9sZWdhY3lfZmVuY2Vf
YXJyYXkoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCisJCSAgICAgICBpbnQgKm91dF9uX2Zl
bmNlcykKIHsKLQljb25zdCB1bnNpZ25lZCBsb25nIG5mZW5jZXMgPSBhcmdzLT5udW1fY2xpcHJl
Y3RzOworCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcjIgKmFyZ3MgPSBlYi0+YXJnczsK
IAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfZmVuY2UgX191c2VyICp1c2VyOwotCXN0cnVjdCBk
cm1fc3luY29iaiAqKmZlbmNlczsKKwlzdHJ1Y3QgaTkxNV9lYl9mZW5jZXMgKmZlbmNlczsKKwlj
b25zdCB1MzIgbnVtX2ZlbmNlcyA9IGFyZ3MtPm51bV9jbGlwcmVjdHM7CiAJdW5zaWduZWQgbG9u
ZyBuOwogCWludCBlcnI7CiAKLQlpZiAoIShhcmdzLT5mbGFncyAmIEk5MTVfRVhFQ19GRU5DRV9B
UlJBWSkpCi0JCXJldHVybiBOVUxMOworCSpvdXRfbl9mZW5jZXMgPSBudW1fZmVuY2VzOwogCiAJ
LyogQ2hlY2sgbXVsdGlwbGljYXRpb24gb3ZlcmZsb3cgZm9yIGFjY2Vzc19vaygpIGFuZCBrdm1h
bGxvY19hcnJheSgpICovCiAJQlVJTERfQlVHX09OKHNpemVvZihzaXplX3QpID4gc2l6ZW9mKHVu
c2lnbmVkIGxvbmcpKTsKLQlpZiAobmZlbmNlcyA+IG1pbl90KHVuc2lnbmVkIGxvbmcsCi0JCQkg
ICAgVUxPTkdfTUFYIC8gc2l6ZW9mKCp1c2VyKSwKLQkJCSAgICBTSVpFX01BWCAvIHNpemVvZigq
ZmVuY2VzKSkpCisJaWYgKCpvdXRfbl9mZW5jZXMgPiBtaW5fdCh1bnNpZ25lZCBsb25nLAorCQkJ
CSAgVUxPTkdfTUFYIC8gc2l6ZW9mKCp1c2VyKSwKKwkJCQkgIFNJWkVfTUFYIC8gc2l6ZW9mKCpm
ZW5jZXMpKSkKIAkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7CiAKIAl1c2VyID0gdTY0X3RvX3Vz
ZXJfcHRyKGFyZ3MtPmNsaXByZWN0c19wdHIpOwotCWlmICghYWNjZXNzX29rKHVzZXIsIG5mZW5j
ZXMgKiBzaXplb2YoKnVzZXIpKSkKKwlpZiAoIWFjY2Vzc19vayh1c2VyLCAqb3V0X25fZmVuY2Vz
ICogc2l6ZW9mKCp1c2VyKSkpCiAJCXJldHVybiBFUlJfUFRSKC1FRkFVTFQpOwogCi0JZmVuY2Vz
ID0ga3ZtYWxsb2NfYXJyYXkobmZlbmNlcywgc2l6ZW9mKCpmZW5jZXMpLAorCWZlbmNlcyA9IGt2
bWFsbG9jX2FycmF5KCpvdXRfbl9mZW5jZXMsIHNpemVvZigqZmVuY2VzKSwKIAkJCQlfX0dGUF9O
T1dBUk4gfCBHRlBfS0VSTkVMKTsKIAlpZiAoIWZlbmNlcykKIAkJcmV0dXJuIEVSUl9QVFIoLUVO
T01FTSk7CiAKLQlmb3IgKG4gPSAwOyBuIDwgbmZlbmNlczsgbisrKSB7Ci0JCXN0cnVjdCBkcm1f
aTkxNV9nZW1fZXhlY19mZW5jZSBmZW5jZTsKKwlmb3IgKG4gPSAwOyBuIDwgKm91dF9uX2ZlbmNl
czsgbisrKSB7CisJCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19mZW5jZSB1c2VyX2ZlbmNlOwog
CQlzdHJ1Y3QgZHJtX3N5bmNvYmogKnN5bmNvYmo7CisJCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
ID0gTlVMTDsKIAotCQlpZiAoX19jb3B5X2Zyb21fdXNlcigmZmVuY2UsIHVzZXIrKywgc2l6ZW9m
KGZlbmNlKSkpIHsKKwkJaWYgKF9fY29weV9mcm9tX3VzZXIoJnVzZXJfZmVuY2UsIHVzZXIrKywg
c2l6ZW9mKHVzZXJfZmVuY2UpKSkgewogCQkJZXJyID0gLUVGQVVMVDsKIAkJCWdvdG8gZXJyOwog
CQl9CiAKLQkJaWYgKGZlbmNlLmZsYWdzICYgX19JOTE1X0VYRUNfRkVOQ0VfVU5LTk9XTl9GTEFH
UykgeworCQlpZiAodXNlcl9mZW5jZS5mbGFncyAmIF9fSTkxNV9FWEVDX0ZFTkNFX1VOS05PV05f
RkxBR1MpIHsKIAkJCWVyciA9IC1FSU5WQUw7CiAJCQlnb3RvIGVycjsKIAkJfQogCi0JCXN5bmNv
YmogPSBkcm1fc3luY29ial9maW5kKGZpbGUsIGZlbmNlLmhhbmRsZSk7CisJCXN5bmNvYmogPSBk
cm1fc3luY29ial9maW5kKGViLT5maWxlLCB1c2VyX2ZlbmNlLmhhbmRsZSk7CiAJCWlmICghc3lu
Y29iaikgewogCQkJRFJNX0RFQlVHKCJJbnZhbGlkIHN5bmNvYmogaGFuZGxlIHByb3ZpZGVkXG4i
KTsKIAkJCWVyciA9IC1FTk9FTlQ7CiAJCQlnb3RvIGVycjsKIAkJfQogCisJCWlmICh1c2VyX2Zl
bmNlLmZsYWdzICYgSTkxNV9FWEVDX0ZFTkNFX1dBSVQpIHsKKwkJCWZlbmNlID0gZHJtX3N5bmNv
YmpfZmVuY2VfZ2V0KHN5bmNvYmopOworCQkJaWYgKCFmZW5jZSkgeworCQkJCURSTV9ERUJVRygi
U3luY29iaiBoYW5kbGUgaGFzIG5vIGZlbmNlXG4iKTsKKwkJCQlkcm1fc3luY29ial9wdXQoc3lu
Y29iaik7CisJCQkJZXJyID0gLUVJTlZBTDsKKwkJCQlnb3RvIGVycjsKKwkJCX0KKwkJfQorCiAJ
CUJVSUxEX0JVR19PTih+KEFSQ0hfS01BTExPQ19NSU5BTElHTiAtIDEpICYKIAkJCSAgICAgfl9f
STkxNV9FWEVDX0ZFTkNFX1VOS05PV05fRkxBR1MpOwogCi0JCWZlbmNlc1tuXSA9IHB0cl9wYWNr
X2JpdHMoc3luY29iaiwgZmVuY2UuZmxhZ3MsIDIpOworCQlmZW5jZXNbbl0uc3luY29iaiA9IHB0
cl9wYWNrX2JpdHMoc3luY29iaiwgdXNlcl9mZW5jZS5mbGFncywgMik7CisJCWZlbmNlc1tuXS5k
bWFfZmVuY2UgPSBmZW5jZTsKKwkJZmVuY2VzW25dLnZhbHVlID0gMDsKKwkJZmVuY2VzW25dLmNo
YWluX2ZlbmNlID0gTlVMTDsKIAl9CiAKIAlyZXR1cm4gZmVuY2VzOwpAQCAtMjM5MCwzNyArMjU0
OCw0NCBAQCBnZXRfZmVuY2VfYXJyYXkoc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiAq
YXJncywKIAlyZXR1cm4gRVJSX1BUUihlcnIpOwogfQogCitzdGF0aWMgc3RydWN0IGk5MTVfZWJf
ZmVuY2VzICoKK2dldF9mZW5jZV9hcnJheShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwgaW50
ICpvdXRfbl9mZW5jZXMpCit7CisJaWYgKGViLT5hcmdzLT5mbGFncyAmIEk5MTVfRVhFQ19GRU5D
RV9BUlJBWSkKKwkJcmV0dXJuIGdldF9sZWdhY3lfZmVuY2VfYXJyYXkoZWIsIG91dF9uX2ZlbmNl
cyk7CisKKwlpZiAoZWItPmV4dGVuc2lvbnMuZmxhZ3MgJiBCSVRfVUxMKERSTV9JOTE1X0dFTV9F
WEVDQlVGRkVSX0VYVF9USU1FTElORV9GRU5DRVMpKQorCQlyZXR1cm4gZ2V0X3RpbWVsaW5lX2Zl
bmNlX2FycmF5KGViLCBvdXRfbl9mZW5jZXMpOworCisJKm91dF9uX2ZlbmNlcyA9IDA7CisJcmV0
dXJuIE5VTEw7Cit9CisKIHN0YXRpYyB2b2lkCi1wdXRfZmVuY2VfYXJyYXkoc3RydWN0IGRybV9p
OTE1X2dlbV9leGVjYnVmZmVyMiAqYXJncywKLQkJc3RydWN0IGRybV9zeW5jb2JqICoqZmVuY2Vz
KQorcHV0X2ZlbmNlX2FycmF5KHN0cnVjdCBpOTE1X2ViX2ZlbmNlcyAqZmVuY2VzLCBpbnQgbmZl
bmNlcykKIHsKIAlpZiAoZmVuY2VzKQotCQlfX2ZyZWVfZmVuY2VfYXJyYXkoZmVuY2VzLCBhcmdz
LT5udW1fY2xpcHJlY3RzKTsKKwkJX19mcmVlX2ZlbmNlX2FycmF5KGZlbmNlcywgbmZlbmNlcyk7
CiB9CiAKIHN0YXRpYyBpbnQKIGF3YWl0X2ZlbmNlX2FycmF5KHN0cnVjdCBpOTE1X2V4ZWNidWZm
ZXIgKmViLAotCQkgIHN0cnVjdCBkcm1fc3luY29iaiAqKmZlbmNlcykKKwkJICBzdHJ1Y3QgaTkx
NV9lYl9mZW5jZXMgKmZlbmNlcywKKwkJICBpbnQgbmZlbmNlcykKIHsKLQljb25zdCB1bnNpZ25l
ZCBpbnQgbmZlbmNlcyA9IGViLT5hcmdzLT5udW1fY2xpcHJlY3RzOwogCXVuc2lnbmVkIGludCBu
OwogCWludCBlcnI7CiAKIAlmb3IgKG4gPSAwOyBuIDwgbmZlbmNlczsgbisrKSB7CiAJCXN0cnVj
dCBkcm1fc3luY29iaiAqc3luY29iajsKLQkJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7CiAJCXVu
c2lnbmVkIGludCBmbGFnczsKIAotCQlzeW5jb2JqID0gcHRyX3VucGFja19iaXRzKGZlbmNlc1tu
XSwgJmZsYWdzLCAyKTsKKwkJc3luY29iaiA9IHB0cl91bnBhY2tfYml0cyhmZW5jZXNbbl0uc3lu
Y29iaiwgJmZsYWdzLCAyKTsKIAkJaWYgKCEoZmxhZ3MgJiBJOTE1X0VYRUNfRkVOQ0VfV0FJVCkp
CiAJCQljb250aW51ZTsKIAotCQlmZW5jZSA9IGRybV9zeW5jb2JqX2ZlbmNlX2dldChzeW5jb2Jq
KTsKLQkJaWYgKCFmZW5jZSkKLQkJCXJldHVybiAtRUlOVkFMOwotCi0JCWVyciA9IGk5MTVfcmVx
dWVzdF9hd2FpdF9kbWFfZmVuY2UoZWItPnJlcXVlc3QsIGZlbmNlKTsKLQkJZG1hX2ZlbmNlX3B1
dChmZW5jZSk7CisJCWVyciA9IGk5MTVfcmVxdWVzdF9hd2FpdF9kbWFfZmVuY2UoZWItPnJlcXVl
c3QsCisJCQkJCQkgICBmZW5jZXNbbl0uZG1hX2ZlbmNlKTsKIAkJaWYgKGVyciA8IDApCiAJCQly
ZXR1cm4gZXJyOwogCX0KQEAgLTI0MzAsOSArMjU5NSw5IEBAIGF3YWl0X2ZlbmNlX2FycmF5KHN0
cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAogCiBzdGF0aWMgdm9pZAogc2lnbmFsX2ZlbmNlX2Fy
cmF5KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAotCQkgICBzdHJ1Y3QgZHJtX3N5bmNvYmog
KipmZW5jZXMpCisJCSAgIHN0cnVjdCBpOTE1X2ViX2ZlbmNlcyAqZmVuY2VzLAorCQkgICBpbnQg
bmZlbmNlcykKIHsKLQljb25zdCB1bnNpZ25lZCBpbnQgbmZlbmNlcyA9IGViLT5hcmdzLT5udW1f
Y2xpcHJlY3RzOwogCXN0cnVjdCBkbWFfZmVuY2UgKiBjb25zdCBmZW5jZSA9ICZlYi0+cmVxdWVz
dC0+ZmVuY2U7CiAJdW5zaWduZWQgaW50IG47CiAKQEAgLTI0NDAsMTUgKzI2MDUsNDYgQEAgc2ln
bmFsX2ZlbmNlX2FycmF5KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAogCQlzdHJ1Y3QgZHJt
X3N5bmNvYmogKnN5bmNvYmo7CiAJCXVuc2lnbmVkIGludCBmbGFnczsKIAotCQlzeW5jb2JqID0g
cHRyX3VucGFja19iaXRzKGZlbmNlc1tuXSwgJmZsYWdzLCAyKTsKKwkJc3luY29iaiA9IHB0cl91
bnBhY2tfYml0cyhmZW5jZXNbbl0uc3luY29iaiwgJmZsYWdzLCAyKTsKIAkJaWYgKCEoZmxhZ3Mg
JiBJOTE1X0VYRUNfRkVOQ0VfU0lHTkFMKSkKIAkJCWNvbnRpbnVlOwogCi0JCWRybV9zeW5jb2Jq
X3JlcGxhY2VfZmVuY2Uoc3luY29iaiwgZmVuY2UpOworCQlpZiAoZmVuY2VzW25dLmNoYWluX2Zl
bmNlKSB7CisJCQlkcm1fc3luY29ial9hZGRfcG9pbnQoc3luY29iaiwgZmVuY2VzW25dLmNoYWlu
X2ZlbmNlLAorCQkJCQkgICAgICBmZW5jZSwgZmVuY2VzW25dLnZhbHVlKTsKKwkJCS8qCisJCQkg
KiBUaGUgY2hhaW4ncyBvd25lcnNoaXAgaXMgdHJhbnNmZXJlZCB0byB0aGUKKwkJCSAqIHRpbWVs
aW5lLgorCQkJICovCisJCQlmZW5jZXNbbl0uY2hhaW5fZmVuY2UgPSBOVUxMOworCQl9IGVsc2Ug
eworCQkJZHJtX3N5bmNvYmpfcmVwbGFjZV9mZW5jZShzeW5jb2JqLCBmZW5jZSk7CisJCX0KIAl9
CiB9CiAKK3N0YXRpYyBpbnQgcGFyc2VfdGltZWxpbmVfZmVuY2VzKHN0cnVjdCBpOTE1X3VzZXJf
ZXh0ZW5zaW9uIF9fdXNlciAqZXh0LCB2b2lkICpkYXRhKQoreworCXN0cnVjdCBpOTE1X2V4ZWNi
dWZmZXIgKmViID0gZGF0YTsKKworCS8qIFRpbWVsaW5lIGZlbmNlcyBhcmUgaW5jb21wYXRpYmxl
IHdpdGggdGhlIGZlbmNlIGFycmF5IGZsYWcuICovCisJaWYgKGViLT5hcmdzLT5mbGFncyAmIEk5
MTVfRVhFQ19GRU5DRV9BUlJBWSkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwlpZiAoZWItPmV4dGVu
c2lvbnMuZmxhZ3MgJiBCSVRfVUxMKERSTV9JOTE1X0dFTV9FWEVDQlVGRkVSX0VYVF9USU1FTElO
RV9GRU5DRVMpKQorCQlyZXR1cm4gLUVJTlZBTDsKKworCWlmIChjb3B5X2Zyb21fdXNlcigmZWIt
PmV4dGVuc2lvbnMudGltZWxpbmVfZmVuY2VzLCBleHQsCisJCQkgICBzaXplb2YoZWItPmV4dGVu
c2lvbnMudGltZWxpbmVfZmVuY2VzKSkpCisJCXJldHVybiAtRUZBVUxUOworCisJZWItPmV4dGVu
c2lvbnMuZmxhZ3MgfD0gQklUX1VMTChEUk1fSTkxNV9HRU1fRVhFQ0JVRkZFUl9FWFRfVElNRUxJ
TkVfRkVOQ0VTKTsKKworCXJldHVybiAwOworfQorCiBzdGF0aWMgY29uc3QgaTkxNV91c2VyX2V4
dGVuc2lvbl9mbiBleGVjYnVmX2V4dGVuc2lvbnNbXSA9IHsKKyAgICAgICAgW0RSTV9JOTE1X0dF
TV9FWEVDQlVGRkVSX0VYVF9USU1FTElORV9GRU5DRVNdID0gcGFyc2VfdGltZWxpbmVfZmVuY2Vz
LAogfTsKIAogc3RhdGljIGludApAQCAtMjQ3OSwxNCArMjY3NSwxNSBAQCBzdGF0aWMgaW50CiBp
OTE1X2dlbV9kb19leGVjYnVmZmVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCSAgICAgICBz
dHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCiAJCSAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNi
dWZmZXIyICphcmdzLAotCQkgICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX29iamVjdDIg
KmV4ZWMsCi0JCSAgICAgICBzdHJ1Y3QgZHJtX3N5bmNvYmogKipmZW5jZXMpCisJCSAgICAgICBz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiAqZXhlYykKIHsKIAlzdHJ1Y3QgaTkxNV9l
eGVjYnVmZmVyIGViOwogCXN0cnVjdCBkbWFfZmVuY2UgKmluX2ZlbmNlID0gTlVMTDsKIAlzdHJ1
Y3QgZG1hX2ZlbmNlICpleGVjX2ZlbmNlID0gTlVMTDsKIAlzdHJ1Y3Qgc3luY19maWxlICpvdXRf
ZmVuY2UgPSBOVUxMOworCXN0cnVjdCBpOTE1X2ViX2ZlbmNlcyAqZmVuY2VzID0gTlVMTDsKIAlp
bnQgb3V0X2ZlbmNlX2ZkID0gLTE7CisJaW50IG5mZW5jZXMgPSAwOwogCWludCBlcnI7CiAKIAlC
VUlMRF9CVUdfT04oX19FWEVDX0lOVEVSTkFMX0ZMQUdTICYgfl9fSTkxNV9FWEVDX0lMTEVHQUxf
RkxBR1MpOwpAQCAtMjUyNSwxMCArMjcyMiwxNiBAQCBpOTE1X2dlbV9kb19leGVjYnVmZmVyKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJaWYgKGVycikKIAkJcmV0dXJuIGVycjsKIAorCWZlbmNl
cyA9IGdldF9mZW5jZV9hcnJheSgmZWIsICZuZmVuY2VzKTsKKwlpZiAoSVNfRVJSKGZlbmNlcykp
CisJCXJldHVybiBQVFJfRVJSKGZlbmNlcyk7CisKIAlpZiAoYXJncy0+ZmxhZ3MgJiBJOTE1X0VY
RUNfRkVOQ0VfSU4pIHsKIAkJaW5fZmVuY2UgPSBzeW5jX2ZpbGVfZ2V0X2ZlbmNlKGxvd2VyXzMy
X2JpdHMoYXJncy0+cnN2ZDIpKTsKLQkJaWYgKCFpbl9mZW5jZSkKLQkJCXJldHVybiAtRUlOVkFM
OworCQlpZiAoIWluX2ZlbmNlKSB7CisJCQllcnIgPSAtRUlOVkFMOworCQkJZ290byBlcnJfZmVu
Y2VzOworCQl9CiAJfQogCiAJaWYgKGFyZ3MtPmZsYWdzICYgSTkxNV9FWEVDX0ZFTkNFX1NVQk1J
VCkgewpAQCAtMjY3Myw3ICsyODc2LDcgQEAgaTkxNV9nZW1fZG9fZXhlY2J1ZmZlcihzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LAogCX0KIAogCWlmIChmZW5jZXMpIHsKLQkJZXJyID0gYXdhaXRfZmVu
Y2VfYXJyYXkoJmViLCBmZW5jZXMpOworCQllcnIgPSBhd2FpdF9mZW5jZV9hcnJheSgmZWIsIGZl
bmNlcywgbmZlbmNlcyk7CiAJCWlmIChlcnIpCiAJCQlnb3RvIGVycl9yZXF1ZXN0OwogCX0KQEAg
LTI3MDQsNyArMjkwNyw3IEBAIGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIoc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwKIAlpOTE1X3JlcXVlc3RfYWRkKGViLnJlcXVlc3QpOwogCiAJaWYgKGZlbmNlcykK
LQkJc2lnbmFsX2ZlbmNlX2FycmF5KCZlYiwgZmVuY2VzKTsKKwkJc2lnbmFsX2ZlbmNlX2FycmF5
KCZlYiwgZmVuY2VzLCBuZmVuY2VzKTsKIAogCWlmIChvdXRfZmVuY2UpIHsKIAkJaWYgKGVyciA9
PSAwKSB7CkBAIC0yNzM5LDYgKzI5NDIsOCBAQCBpOTE1X2dlbV9kb19leGVjYnVmZmVyKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsCiAJZG1hX2ZlbmNlX3B1dChleGVjX2ZlbmNlKTsKIGVycl9pbl9m
ZW5jZToKIAlkbWFfZmVuY2VfcHV0KGluX2ZlbmNlKTsKK2Vycl9mZW5jZXM6CisJcHV0X2ZlbmNl
X2FycmF5KGZlbmNlcywgbmZlbmNlcyk7CiAJcmV0dXJuIGVycjsKIH0KIApAQCAtMjgzMiw3ICsz
MDM3LDcgQEAgaTkxNV9nZW1fZXhlY2J1ZmZlcl9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCB2b2lkICpkYXRhLAogCQkJZXhlYzJfbGlzdFtpXS5mbGFncyA9IDA7CiAJfQogCi0JZXJyID0g
aTkxNV9nZW1fZG9fZXhlY2J1ZmZlcihkZXYsIGZpbGUsICZleGVjMiwgZXhlYzJfbGlzdCwgTlVM
TCk7CisJZXJyID0gaTkxNV9nZW1fZG9fZXhlY2J1ZmZlcihkZXYsIGZpbGUsICZleGVjMiwgZXhl
YzJfbGlzdCk7CiAJaWYgKGV4ZWMyLmZsYWdzICYgX19FWEVDX0hBU19SRUxPQykgewogCQlzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0IF9fdXNlciAqdXNlcl9leGVjX2xpc3QgPQogCQkJ
dTY0X3RvX3VzZXJfcHRyKGFyZ3MtPmJ1ZmZlcnNfcHRyKTsKQEAgLTI4NjMsNyArMzA2OCw2IEBA
IGk5MTVfZ2VtX2V4ZWNidWZmZXIyX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQg
KmRhdGEsCiB7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiAqYXJncyA9IGRhdGE7
CiAJc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX29iamVjdDIgKmV4ZWMyX2xpc3Q7Ci0Jc3RydWN0
IGRybV9zeW5jb2JqICoqZmVuY2VzID0gTlVMTDsKIAljb25zdCBzaXplX3QgY291bnQgPSBhcmdz
LT5idWZmZXJfY291bnQ7CiAJaW50IGVycjsKIApAQCAtMjg5MSwxNSArMzA5NSw3IEBAIGk5MTVf
Z2VtX2V4ZWNidWZmZXIyX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEs
CiAJCXJldHVybiAtRUZBVUxUOwogCX0KIAotCWlmIChhcmdzLT5mbGFncyAmIEk5MTVfRVhFQ19G
RU5DRV9BUlJBWSkgewotCQlmZW5jZXMgPSBnZXRfZmVuY2VfYXJyYXkoYXJncywgZmlsZSk7Ci0J
CWlmIChJU19FUlIoZmVuY2VzKSkgewotCQkJa3ZmcmVlKGV4ZWMyX2xpc3QpOwotCQkJcmV0dXJu
IFBUUl9FUlIoZmVuY2VzKTsKLQkJfQotCX0KLQotCWVyciA9IGk5MTVfZ2VtX2RvX2V4ZWNidWZm
ZXIoZGV2LCBmaWxlLCBhcmdzLCBleGVjMl9saXN0LCBmZW5jZXMpOworCWVyciA9IGk5MTVfZ2Vt
X2RvX2V4ZWNidWZmZXIoZGV2LCBmaWxlLCBhcmdzLCBleGVjMl9saXN0KTsKIAogCS8qCiAJICog
Tm93IHRoYXQgd2UgaGF2ZSBiZWd1biBleGVjdXRpb24gb2YgdGhlIGJhdGNoYnVmZmVyLCB3ZSBp
Z25vcmUKQEAgLTI5MzksNyArMzEzNSw2IEBAIGVuZDo7CiAJfQogCiAJYXJncy0+ZmxhZ3MgJj0g
fl9fSTkxNV9FWEVDX1VOS05PV05fRkxBR1M7Ci0JcHV0X2ZlbmNlX2FycmF5KGFyZ3MsIGZlbmNl
cyk7CiAJa3ZmcmVlKGV4ZWMyX2xpc3QpOwogCXJldHVybiBlcnI7CiB9CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuYwppbmRleCBiZWMyNTk0MmQ3N2QuLjRlMjE4NThmZTExMCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jCkBAIC0yODIwLDcgKzI4MjAsOCBAQCBzdGF0aWMgc3RydWN0IGRybV9kcml2ZXIg
ZHJpdmVyID0gewogCSAqLwogCS5kcml2ZXJfZmVhdHVyZXMgPQogCSAgICBEUklWRVJfR0VNIHwK
LQkgICAgRFJJVkVSX1JFTkRFUiB8IERSSVZFUl9NT0RFU0VUIHwgRFJJVkVSX0FUT01JQyB8IERS
SVZFUl9TWU5DT0JKLAorCSAgICBEUklWRVJfUkVOREVSIHwgRFJJVkVSX01PREVTRVQgfCBEUklW
RVJfQVRPTUlDIHwgRFJJVkVSX1NZTkNPQkogfAorCSAgICBEUklWRVJfU1lOQ09CSl9USU1FTElO
RSwKIAkucmVsZWFzZSA9IGk5MTVfZHJpdmVyX3JlbGVhc2UsCiAJLm9wZW4gPSBpOTE1X2RyaXZl
cl9vcGVuLAogCS5sYXN0Y2xvc2UgPSBpOTE1X2RyaXZlcl9sYXN0Y2xvc2UsCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dldHBhcmFtLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dldHBhcmFtLmMKaW5kZXggNWQ5MTAxMzc2YTNkLi5kYTZmYWE4NGU1YjggMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2V0cGFyYW0uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dldHBhcmFtLmMKQEAgLTEzMCw2ICsxMzAsNyBAQCBpbnQg
aTkxNV9nZXRwYXJhbV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAog
CWNhc2UgSTkxNV9QQVJBTV9IQVNfRVhFQ19CQVRDSF9GSVJTVDoKIAljYXNlIEk5MTVfUEFSQU1f
SEFTX0VYRUNfRkVOQ0VfQVJSQVk6CiAJY2FzZSBJOTE1X1BBUkFNX0hBU19FWEVDX1NVQk1JVF9G
RU5DRToKKwljYXNlIEk5MTVfUEFSQU1fSEFTX0VYRUNfVElNRUxJTkVfRkVOQ0VTOgogCQkvKiBG
b3IgdGhlIHRpbWUgYmVpbmcgYWxsIG9mIHRoZXNlIGFyZSBhbHdheXMgdHJ1ZTsKIAkJICogaWYg
c29tZSBzdXBwb3J0ZWQgaGFyZHdhcmUgZG9lcyBub3QgaGF2ZSBvbmUgb2YgdGhlc2UKIAkJICog
ZmVhdHVyZXMgdGhpcyB2YWx1ZSBuZWVkcyB0byBiZSBwcm92aWRlZCBmcm9tCmRpZmYgLS1naXQg
YS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJt
LmgKaW5kZXggMGE5OWMyNjczMGUxLi4zZDAzMWU4MTY0OGIgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUv
dWFwaS9kcm0vaTkxNV9kcm0uaAorKysgYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKQEAg
LTYxMSw2ICs2MTEsMTMgQEAgdHlwZWRlZiBzdHJ1Y3QgZHJtX2k5MTVfaXJxX3dhaXQgewogICog
U2VlIEk5MTVfRVhFQ19GRU5DRV9PVVQgYW5kIEk5MTVfRVhFQ19GRU5DRV9TVUJNSVQuCiAgKi8K
ICNkZWZpbmUgSTkxNV9QQVJBTV9IQVNfRVhFQ19TVUJNSVRfRkVOQ0UgNTMKKworLyogUXVlcnkg
d2hldGhlciBEUk1fSTkxNV9HRU1fRVhFQ0JVRkZFUjIgc3VwcG9ydHMgc3VwcGx5aW5nIGFuIGFy
cmF5IG9mCisgKiB0aW1lbGluZSBzeW5jb2JqIHRocm91Z2ggZHJtX2k5MTVfZ2VtX2V4ZWNidWZf
ZXh0X3RpbWVsaW5lX2ZlbmNlcy4gU2VlCisgKiBJOTE1X0VYRUNfVVNFX0VYVEVOU0lPTlMuCisg
Ki8KKyNkZWZpbmUgSTkxNV9QQVJBTV9IQVNfRVhFQ19USU1FTElORV9GRU5DRVMgNTQKKwogLyog
TXVzdCBiZSBrZXB0IGNvbXBhY3QgLS0gbm8gaG9sZXMgYW5kIHdlbGwgZG9jdW1lbnRlZCAqLwog
CiB0eXBlZGVmIHN0cnVjdCBkcm1faTkxNV9nZXRwYXJhbSB7CkBAIC0xMDA4LDkgKzEwMTUsNDEg
QEAgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX2ZlbmNlIHsKIH07CiAKIGVudW0gZHJtX2k5MTVf
Z2VtX2V4ZWNidWZmZXJfZXh0IHsKKwkvKioKKwkgKiBTZWUgZHJtX2k5MTVfZ2VtX2V4ZWNidWZf
ZXh0X3RpbWVsaW5lX2ZlbmNlcy4KKwkgKi8KKwlEUk1fSTkxNV9HRU1fRVhFQ0JVRkZFUl9FWFRf
VElNRUxJTkVfRkVOQ0VTID0gMSwKKwogCURSTV9JOTE1X0dFTV9FWEVDQlVGRkVSX0VYVF9NQVgg
Lyogbm9uLUFCSSAqLwogfTsKIAorLyoqCisgKiBUaGlzIHN0cnVjdHVyZSBkZXNjcmliZXMgYW4g
YXJyYXkgb2YgZHJtX3N5bmNvYmogYW5kIGFzc29jaWF0ZWQgcG9pbnRzIGZvcgorICogdGltZWxp
bmUgdmFyaWFudHMgb2YgZHJtX3N5bmNvYmouIEl0IGlzIGludmFsaWQgdG8gYXBwZW5kIHRoaXMg
c3RydWN0dXJlIHRvCisgKiB0aGUgZXhlY2J1ZiBpZiBJOTE1X0VYRUNfRkVOQ0VfQVJSQVkgaXMg
c2V0LgorICovCitzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNidWZmZXJfZXh0X3RpbWVsaW5lX2Zl
bmNlcyB7CisJc3RydWN0IGk5MTVfdXNlcl9leHRlbnNpb24gYmFzZTsKKworCS8qKgorCSAqIE51
bWJlciBvZiBlbGVtZW50IGluIHRoZSBoYW5kbGVzX3B0ciAmIHZhbHVlX3B0ciBhcnJheXMuCisJ
ICovCisJX191NjQgZmVuY2VfY291bnQ7CisKKwkvKioKKwkgKiBQb2ludGVyIHRvIGFuIGFycmF5
IG9mIHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19mZW5jZSBvZiBsZW5ndGgKKwkgKiBmZW5jZV9j
b3VudC4KKwkgKi8KKwlfX3U2NCBoYW5kbGVzX3B0cjsKKworCS8qKgorCSAqIFBvaW50ZXIgdG8g
YW4gYXJyYXkgb2YgdTY0IHZhbHVlcyBvZiBsZW5ndGggZmVuY2VfY291bnQuIFZhbHVlcworCSAq
IG11c3QgYmUgMCBmb3IgYSBiaW5hcnkgZHJtX3N5bmNvYmouIEEgVmFsdWUgb2YgMCBmb3IgYSB0
aW1lbGluZQorCSAqIGRybV9zeW5jb2JqIGlzIGludmFsaWQgYXMgaXQgdHVybnMgYSBkcm1fc3lu
Y29iaiBpbnRvIGEgYmluYXJ5IG9uZS4KKwkgKi8KKwlfX3U2NCB2YWx1ZXNfcHRyOworfTsKKwog
c3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiB7CiAJLyoqCiAJICogTGlzdCBvZiBnZW1f
ZXhlY19vYmplY3QyIHN0cnVjdHMKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
