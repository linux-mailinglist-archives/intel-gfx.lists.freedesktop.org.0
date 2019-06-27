Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C340357D9B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 10:01:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE69D6E82D;
	Thu, 27 Jun 2019 08:01:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2E7D6E826
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 08:00:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 01:00:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="313709850"
Received: from lswidere-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.140.121])
 by orsmga004.jf.intel.com with ESMTP; 27 Jun 2019 01:00:57 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 11:00:41 +0300
Message-Id: <20190627080045.8814-7-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190627080045.8814-1-lionel.g.landwerlin@intel.com>
References: <20190627080045.8814-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 06/10] drm/i915: add syncobj timeline support
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
c2UgaTkxNV91c2VyX2V4dGVuc2lvbl9mbgoKU2lnbmVkLW9mZi1ieTogTGlvbmVsIExhbmR3ZXJs
aW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgotLS0KIC4uLi9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8IDI4MCArKysrKysrKysrKysrKy0tLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICAgICB8ICAgMiArCiBpbmNs
dWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggICAgICAgICAgICAgICAgICAgfCAgMzcgKysrCiAzIGZp
bGVzIGNoYW5nZWQsIDI2MyBpbnNlcnRpb25zKCspLCA1NiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwppbmRleCAxOTcwZGQ4
Y2JhYzMuLjQ3NmZhZGU2ZmNhYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fZXhlY2J1ZmZlci5jCkBAIC0yMTMsNiArMjEzLDEzIEBAIGVudW0gewogICogdGhlIGJh
dGNoYnVmZmVyIGluIHRydXN0ZWQgbW9kZSwgb3RoZXJ3aXNlIHRoZSBpb2N0bCBpcyByZWplY3Rl
ZC4KICAqLwogCitzdHJ1Y3QgaTkxNV9kcm1fZG1hX2ZlbmNlcyB7CisJc3RydWN0IGRybV9zeW5j
b2JqICpzeW5jb2JqOyAvKiBVc2Ugd2l0aCBwdHJfbWFza19iaXRzKCkgKi8KKwlzdHJ1Y3QgZG1h
X2ZlbmNlICpkbWFfZmVuY2U7CisJdTY0IHZhbHVlOworCXN0cnVjdCBkbWFfZmVuY2VfY2hhaW4g
KmNoYWluX2ZlbmNlOworfTsKKwogc3RydWN0IGk5MTVfZXhlY2J1ZmZlciB7CiAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTU7IC8qKiBpOTE1IGJhY2twb2ludGVyICovCiAJc3RydWN0IGRy
bV9maWxlICpmaWxlOyAvKiogcGVyLWZpbGUgbG9va3VwIHRhYmxlcyBhbmQgbGltaXRzICovCkBA
IC0yNzUsNiArMjgyLDcgQEAgc3RydWN0IGk5MTVfZXhlY2J1ZmZlciB7CiAKIAlzdHJ1Y3Qgewog
CQl1NjQgZmxhZ3M7IC8qKiBBdmFpbGFibGUgZXh0ZW5zaW9ucyBwYXJhbWV0ZXJzICovCisJCXN0
cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcl9leHRfdGltZWxpbmVfZmVuY2VzIHRpbWVsaW5l
X2ZlbmNlczsKIAl9IGV4dGVuc2lvbnM7CiB9OwogCkBAIC0yMjI0LDY3ICsyMjMyLDE5MyBAQCBl
Yl9zZWxlY3RfZW5naW5lKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAogfQogCiBzdGF0aWMg
dm9pZAotX19mcmVlX2ZlbmNlX2FycmF5KHN0cnVjdCBkcm1fc3luY29iaiAqKmZlbmNlcywgdW5z
aWduZWQgaW50IG4pCitfX2ZyZWVfZmVuY2VfYXJyYXkoc3RydWN0IGk5MTVfZHJtX2RtYV9mZW5j
ZXMgKmZlbmNlcywgdW5zaWduZWQgaW50IG4pCiB7Ci0Jd2hpbGUgKG4tLSkKLQkJZHJtX3N5bmNv
YmpfcHV0KHB0cl9tYXNrX2JpdHMoZmVuY2VzW25dLCAyKSk7CisJd2hpbGUgKG4tLSkgeworCQlk
cm1fc3luY29ial9wdXQocHRyX21hc2tfYml0cyhmZW5jZXNbbl0uc3luY29iaiwgMikpOworCQlk
bWFfZmVuY2VfcHV0KGZlbmNlc1tuXS5kbWFfZmVuY2UpOworCQlrZnJlZShmZW5jZXNbbl0uY2hh
aW5fZmVuY2UpOworCX0KIAlrdmZyZWUoZmVuY2VzKTsKIH0KIAotc3RhdGljIHN0cnVjdCBkcm1f
c3luY29iaiAqKgotZ2V0X2ZlbmNlX2FycmF5KHN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZl
cjIgKmFyZ3MsCi0JCXN0cnVjdCBkcm1fZmlsZSAqZmlsZSkKK3N0YXRpYyBzdHJ1Y3QgaTkxNV9k
cm1fZG1hX2ZlbmNlcyAqCitnZXRfdGltZWxpbmVfZmVuY2VfYXJyYXkoc3RydWN0IGk5MTVfZXhl
Y2J1ZmZlciAqZWIsIGludCAqb3V0X25fZmVuY2VzKQogewotCWNvbnN0IHVuc2lnbmVkIGxvbmcg
bmZlbmNlcyA9IGFyZ3MtPm51bV9jbGlwcmVjdHM7CisJc3RydWN0IGRybV9pOTE1X2dlbV9leGVj
YnVmZmVyX2V4dF90aW1lbGluZV9mZW5jZXMgKnRpbWVsaW5lX2ZlbmNlcyA9CisJCSZlYi0+ZXh0
ZW5zaW9ucy50aW1lbGluZV9mZW5jZXM7CisJc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX2ZlbmNl
IF9fdXNlciAqdXNlcl9mZW5jZXM7CisJc3RydWN0IGk5MTVfZHJtX2RtYV9mZW5jZXMgKmZlbmNl
czsKKwl1NjQgX191c2VyICp1c2VyX3ZhbHVlczsKKwl1bnNpZ25lZCBsb25nIG47CisJaW50IGVy
cjsKKworCSpvdXRfbl9mZW5jZXMgPSB0aW1lbGluZV9mZW5jZXMtPmhhbmRsZV9jb3VudDsKKwor
CS8qIENoZWNrIG11bHRpcGxpY2F0aW9uIG92ZXJmbG93IGZvciBhY2Nlc3Nfb2soKSBhbmQga3Zt
YWxsb2NfYXJyYXkoKSAqLworCUJVSUxEX0JVR19PTihzaXplb2Yoc2l6ZV90KSA+IHNpemVvZih1
bnNpZ25lZCBsb25nKSk7CisJaWYgKCpvdXRfbl9mZW5jZXMgPiBtaW5fdCh1bnNpZ25lZCBsb25n
LAorCQkJCSAgVUxPTkdfTUFYIC8gc2l6ZW9mKCp1c2VyX2ZlbmNlcyksCisJCQkJICBTSVpFX01B
WCAvIHNpemVvZigqZmVuY2VzKSkpCisJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOworCisJdXNl
cl9mZW5jZXMgPSB1NjRfdG9fdXNlcl9wdHIodGltZWxpbmVfZmVuY2VzLT5oYW5kbGVzX3B0cik7
CisJaWYgKCFhY2Nlc3Nfb2sodXNlcl9mZW5jZXMsICpvdXRfbl9mZW5jZXMgKiBzaXplb2YoKnVz
ZXJfZmVuY2VzKSkpCisJCXJldHVybiBFUlJfUFRSKC1FRkFVTFQpOworCisJdXNlcl92YWx1ZXMg
PSB1NjRfdG9fdXNlcl9wdHIodGltZWxpbmVfZmVuY2VzLT52YWx1ZXNfcHRyKTsKKwlpZiAoIWFj
Y2Vzc19vayh1c2VyX3ZhbHVlcywgKm91dF9uX2ZlbmNlcyAqIHNpemVvZigqdXNlcl92YWx1ZXMp
KSkKKwkJcmV0dXJuIEVSUl9QVFIoLUVGQVVMVCk7CisKKwlmZW5jZXMgPSBrdm1hbGxvY19hcnJh
eSgqb3V0X25fZmVuY2VzLCBzaXplb2YoKmZlbmNlcyksCisJCQkJX19HRlBfTk9XQVJOIHwgR0ZQ
X0tFUk5FTCk7CisJaWYgKCFmZW5jZXMpCisJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOworCisJ
QlVJTERfQlVHX09OKH4oQVJDSF9LTUFMTE9DX01JTkFMSUdOIC0gMSkgJgorCQkgICAgIH5fX0k5
MTVfRVhFQ19GRU5DRV9VTktOT1dOX0ZMQUdTKTsKKworCWZvciAobiA9IDA7IG4gPCAqb3V0X25f
ZmVuY2VzOyBuKyspIHsKKwkJc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX2ZlbmNlIHVzZXJfZmVu
Y2U7CisJCXN0cnVjdCBkcm1fc3luY29iaiAqc3luY29iajsKKwkJc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UgPSBOVUxMOworCQl1NjQgcG9pbnQ7CisKKwkJaWYgKF9fY29weV9mcm9tX3VzZXIoJnVz
ZXJfZmVuY2UsIHVzZXJfZmVuY2VzKyssIHNpemVvZih1c2VyX2ZlbmNlKSkpIHsKKwkJCWVyciA9
IC1FRkFVTFQ7CisJCQlnb3RvIGVycjsKKwkJfQorCisJCWlmICh1c2VyX2ZlbmNlLmZsYWdzICYg
X19JOTE1X0VYRUNfRkVOQ0VfVU5LTk9XTl9GTEFHUykgeworCQkJZXJyID0gLUVJTlZBTDsKKwkJ
CWdvdG8gZXJyOworCQl9CisKKwkJaWYgKF9fZ2V0X3VzZXIocG9pbnQsIHVzZXJfdmFsdWVzKysp
KSB7CisJCQllcnIgPSAtRUZBVUxUOworCQkJZ290byBlcnI7CisJCX0KKworCQlzeW5jb2JqID0g
ZHJtX3N5bmNvYmpfZmluZChlYi0+ZmlsZSwgdXNlcl9mZW5jZS5oYW5kbGUpOworCQlpZiAoIXN5
bmNvYmopIHsKKwkJCURSTV9ERUJVRygiSW52YWxpZCBzeW5jb2JqIGhhbmRsZSBwcm92aWRlZFxu
Iik7CisJCQllcnIgPSAtRUlOVkFMOworCQkJZ290byBlcnI7CisJCX0KKworCQlpZiAodXNlcl9m
ZW5jZS5mbGFncyAmIEk5MTVfRVhFQ19GRU5DRV9XQUlUKSB7CisJCQlmZW5jZSA9IGRybV9zeW5j
b2JqX2ZlbmNlX2dldChzeW5jb2JqKTsKKwkJCWlmICghZmVuY2UpIHsKKwkJCQlEUk1fREVCVUco
IlN5bmNvYmogaGFuZGxlIGhhcyBubyBmZW5jZVxuIik7CisJCQkJZHJtX3N5bmNvYmpfcHV0KHN5
bmNvYmopOworCQkJCWVyciA9IC1FSU5WQUw7CisJCQkJZ290byBlcnI7CisJCQl9CisKKwkJCWVy
ciA9IGRtYV9mZW5jZV9jaGFpbl9maW5kX3NlcW5vKCZmZW5jZSwgcG9pbnQpOworCQkJaWYgKGVy
cikgeworCQkJCURSTV9ERUJVRygiU3luY29iaiBoYW5kbGUgbWlzc2luZyByZXF1ZXN0ZWQgcG9p
bnRcbiIpOworCQkJCWdvdG8gZXJyOworCQkJfQorCQl9CisKKwkJLyoKKwkJICogRm9yIHRpbWVs
aW5lIHN5bmNvYmpzIHdlIG5lZWQgdG8gY3JlYXRlIGEgY2hhaW4uCisJCSAqLworCQlpZiAocG9p
bnQgIT0gMCAmJiB1c2VyX2ZlbmNlLmZsYWdzICYgSTkxNV9FWEVDX0ZFTkNFX1NJR05BTCkgewor
CQkJZmVuY2VzW25dLmNoYWluX2ZlbmNlID0KKwkJCQlrbWFsbG9jKHNpemVvZigqZmVuY2VzW25d
LmNoYWluX2ZlbmNlKSwKKwkJCQkJR0ZQX0tFUk5FTCk7CisJCQlpZiAoIWZlbmNlc1tuXS5jaGFp
bl9mZW5jZSkgeworCQkJCWRtYV9mZW5jZV9wdXQoZmVuY2UpOworCQkJCWRybV9zeW5jb2JqX3B1
dChzeW5jb2JqKTsKKwkJCQllcnIgPSAtRU5PTUVNOworCQkJCURSTV9ERUJVRygiVW5hYmxlIHRv
IGFsbG9jIGNoYWluX2ZlbmNlXG4iKTsKKwkJCQlnb3RvIGVycjsKKwkJCX0KKwkJfSBlbHNlIHsK
KwkJCWZlbmNlc1tuXS5jaGFpbl9mZW5jZSA9IE5VTEw7CisJCX0KKworCQlmZW5jZXNbbl0uc3lu
Y29iaiA9IHB0cl9wYWNrX2JpdHMoc3luY29iaiwgdXNlcl9mZW5jZS5mbGFncywgMik7CisJCWZl
bmNlc1tuXS5kbWFfZmVuY2UgPSBmZW5jZTsKKwkJZmVuY2VzW25dLnZhbHVlID0gcG9pbnQ7CisJ
fQorCisJcmV0dXJuIGZlbmNlczsKKworZXJyOgorCV9fZnJlZV9mZW5jZV9hcnJheShmZW5jZXMs
IG4pOworCXJldHVybiBFUlJfUFRSKGVycik7Cit9CisKK3N0YXRpYyBzdHJ1Y3QgaTkxNV9kcm1f
ZG1hX2ZlbmNlcyAqCitnZXRfbGVnYWN5X2ZlbmNlX2FycmF5KHN0cnVjdCBpOTE1X2V4ZWNidWZm
ZXIgKmViLAorCQkgICAgICAgaW50ICpvdXRfbl9mZW5jZXMpCit7CisJc3RydWN0IGRybV9pOTE1
X2dlbV9leGVjYnVmZmVyMiAqYXJncyA9IGViLT5hcmdzOwogCXN0cnVjdCBkcm1faTkxNV9nZW1f
ZXhlY19mZW5jZSBfX3VzZXIgKnVzZXI7Ci0Jc3RydWN0IGRybV9zeW5jb2JqICoqZmVuY2VzOwor
CXN0cnVjdCBpOTE1X2RybV9kbWFfZmVuY2VzICpmZW5jZXM7CiAJdW5zaWduZWQgbG9uZyBuOwog
CWludCBlcnI7CiAKLQlpZiAoIShhcmdzLT5mbGFncyAmIEk5MTVfRVhFQ19GRU5DRV9BUlJBWSkp
Ci0JCXJldHVybiBOVUxMOworCSpvdXRfbl9mZW5jZXMgPSBhcmdzLT5udW1fY2xpcHJlY3RzOwog
CiAJLyogQ2hlY2sgbXVsdGlwbGljYXRpb24gb3ZlcmZsb3cgZm9yIGFjY2Vzc19vaygpIGFuZCBr
dm1hbGxvY19hcnJheSgpICovCiAJQlVJTERfQlVHX09OKHNpemVvZihzaXplX3QpID4gc2l6ZW9m
KHVuc2lnbmVkIGxvbmcpKTsKLQlpZiAobmZlbmNlcyA+IG1pbl90KHVuc2lnbmVkIGxvbmcsCi0J
CQkgICAgVUxPTkdfTUFYIC8gc2l6ZW9mKCp1c2VyKSwKLQkJCSAgICBTSVpFX01BWCAvIHNpemVv
ZigqZmVuY2VzKSkpCisJaWYgKCpvdXRfbl9mZW5jZXMgPiBtaW5fdCh1bnNpZ25lZCBsb25nLAor
CQkJCSAgVUxPTkdfTUFYIC8gc2l6ZW9mKCp1c2VyKSwKKwkJCQkgIFNJWkVfTUFYIC8gc2l6ZW9m
KCpmZW5jZXMpKSkKIAkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7CiAKIAl1c2VyID0gdTY0X3Rv
X3VzZXJfcHRyKGFyZ3MtPmNsaXByZWN0c19wdHIpOwotCWlmICghYWNjZXNzX29rKHVzZXIsIG5m
ZW5jZXMgKiBzaXplb2YoKnVzZXIpKSkKKwlpZiAoIWFjY2Vzc19vayh1c2VyLCAqb3V0X25fZmVu
Y2VzICogc2l6ZW9mKCp1c2VyKSkpCiAJCXJldHVybiBFUlJfUFRSKC1FRkFVTFQpOwogCi0JZmVu
Y2VzID0ga3ZtYWxsb2NfYXJyYXkobmZlbmNlcywgc2l6ZW9mKCpmZW5jZXMpLAorCWZlbmNlcyA9
IGt2bWFsbG9jX2FycmF5KCpvdXRfbl9mZW5jZXMsIHNpemVvZigqZmVuY2VzKSwKIAkJCQlfX0dG
UF9OT1dBUk4gfCBHRlBfS0VSTkVMKTsKIAlpZiAoIWZlbmNlcykKIAkJcmV0dXJuIEVSUl9QVFIo
LUVOT01FTSk7CiAKLQlmb3IgKG4gPSAwOyBuIDwgbmZlbmNlczsgbisrKSB7Ci0JCXN0cnVjdCBk
cm1faTkxNV9nZW1fZXhlY19mZW5jZSBmZW5jZTsKKwlmb3IgKG4gPSAwOyBuIDwgKm91dF9uX2Zl
bmNlczsgbisrKSB7CisJCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19mZW5jZSB1c2VyX2ZlbmNl
OwogCQlzdHJ1Y3QgZHJtX3N5bmNvYmogKnN5bmNvYmo7CisJCXN0cnVjdCBkbWFfZmVuY2UgKmZl
bmNlID0gTlVMTDsKIAotCQlpZiAoX19jb3B5X2Zyb21fdXNlcigmZmVuY2UsIHVzZXIrKywgc2l6
ZW9mKGZlbmNlKSkpIHsKKwkJaWYgKF9fY29weV9mcm9tX3VzZXIoJnVzZXJfZmVuY2UsIHVzZXIr
Kywgc2l6ZW9mKHVzZXJfZmVuY2UpKSkgewogCQkJZXJyID0gLUVGQVVMVDsKIAkJCWdvdG8gZXJy
OwogCQl9CiAKLQkJaWYgKGZlbmNlLmZsYWdzICYgX19JOTE1X0VYRUNfRkVOQ0VfVU5LTk9XTl9G
TEFHUykgeworCQlpZiAodXNlcl9mZW5jZS5mbGFncyAmIF9fSTkxNV9FWEVDX0ZFTkNFX1VOS05P
V05fRkxBR1MpIHsKIAkJCWVyciA9IC1FSU5WQUw7CiAJCQlnb3RvIGVycjsKIAkJfQogCi0JCXN5
bmNvYmogPSBkcm1fc3luY29ial9maW5kKGZpbGUsIGZlbmNlLmhhbmRsZSk7CisJCXN5bmNvYmog
PSBkcm1fc3luY29ial9maW5kKGViLT5maWxlLCB1c2VyX2ZlbmNlLmhhbmRsZSk7CiAJCWlmICgh
c3luY29iaikgewogCQkJRFJNX0RFQlVHKCJJbnZhbGlkIHN5bmNvYmogaGFuZGxlIHByb3ZpZGVk
XG4iKTsKIAkJCWVyciA9IC1FTk9FTlQ7CiAJCQlnb3RvIGVycjsKIAkJfQogCisJCWlmICh1c2Vy
X2ZlbmNlLmZsYWdzICYgSTkxNV9FWEVDX0ZFTkNFX1dBSVQpIHsKKwkJCWZlbmNlID0gZHJtX3N5
bmNvYmpfZmVuY2VfZ2V0KHN5bmNvYmopOworCQkJaWYgKCFmZW5jZSkgeworCQkJCURSTV9ERUJV
RygiU3luY29iaiBoYW5kbGUgaGFzIG5vIGZlbmNlXG4iKTsKKwkJCQlkcm1fc3luY29ial9wdXQo
c3luY29iaik7CisJCQkJZXJyID0gLUVJTlZBTDsKKwkJCQlnb3RvIGVycjsKKwkJCX0KKwkJfQor
CiAJCUJVSUxEX0JVR19PTih+KEFSQ0hfS01BTExPQ19NSU5BTElHTiAtIDEpICYKIAkJCSAgICAg
fl9fSTkxNV9FWEVDX0ZFTkNFX1VOS05PV05fRkxBR1MpOwogCi0JCWZlbmNlc1tuXSA9IHB0cl9w
YWNrX2JpdHMoc3luY29iaiwgZmVuY2UuZmxhZ3MsIDIpOworCQlmZW5jZXNbbl0uc3luY29iaiA9
IHB0cl9wYWNrX2JpdHMoc3luY29iaiwgdXNlcl9mZW5jZS5mbGFncywgMik7CisJCWZlbmNlc1tu
XS5kbWFfZmVuY2UgPSBmZW5jZTsKKwkJZmVuY2VzW25dLnZhbHVlID0gMDsKKwkJZmVuY2VzW25d
LmNoYWluX2ZlbmNlID0gTlVMTDsKIAl9CiAKIAlyZXR1cm4gZmVuY2VzOwpAQCAtMjI5NCwzNyAr
MjQyOCw0NCBAQCBnZXRfZmVuY2VfYXJyYXkoc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVy
MiAqYXJncywKIAlyZXR1cm4gRVJSX1BUUihlcnIpOwogfQogCitzdGF0aWMgc3RydWN0IGk5MTVf
ZHJtX2RtYV9mZW5jZXMgKgorZ2V0X2ZlbmNlX2FycmF5KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIg
KmViLCBpbnQgKm91dF9uX2ZlbmNlcykKK3sKKwlpZiAoZWItPmFyZ3MtPmZsYWdzICYgSTkxNV9F
WEVDX0ZFTkNFX0FSUkFZKQorCQlyZXR1cm4gZ2V0X2xlZ2FjeV9mZW5jZV9hcnJheShlYiwgb3V0
X25fZmVuY2VzKTsKKwlpZiAoZWItPmV4dGVuc2lvbnMuZmxhZ3MgJiBCSVQoRFJNX0k5MTVfR0VN
X0VYRUNCVUZGRVJfRVhUX1RJTUVMSU5FX0ZFTkNFUykpCisJCXJldHVybiBnZXRfdGltZWxpbmVf
ZmVuY2VfYXJyYXkoZWIsIG91dF9uX2ZlbmNlcyk7CisKKwkqb3V0X25fZmVuY2VzID0gMDsKKwor
CXJldHVybiBOVUxMOworfQorCiBzdGF0aWMgdm9pZAotcHV0X2ZlbmNlX2FycmF5KHN0cnVjdCBk
cm1faTkxNV9nZW1fZXhlY2J1ZmZlcjIgKmFyZ3MsCi0JCXN0cnVjdCBkcm1fc3luY29iaiAqKmZl
bmNlcykKK3B1dF9mZW5jZV9hcnJheShzdHJ1Y3QgaTkxNV9kcm1fZG1hX2ZlbmNlcyAqZmVuY2Vz
LCBpbnQgbmZlbmNlcykKIHsKIAlpZiAoZmVuY2VzKQotCQlfX2ZyZWVfZmVuY2VfYXJyYXkoZmVu
Y2VzLCBhcmdzLT5udW1fY2xpcHJlY3RzKTsKKwkJX19mcmVlX2ZlbmNlX2FycmF5KGZlbmNlcywg
bmZlbmNlcyk7CiB9CiAKIHN0YXRpYyBpbnQKIGF3YWl0X2ZlbmNlX2FycmF5KHN0cnVjdCBpOTE1
X2V4ZWNidWZmZXIgKmViLAotCQkgIHN0cnVjdCBkcm1fc3luY29iaiAqKmZlbmNlcykKKwkJICBz
dHJ1Y3QgaTkxNV9kcm1fZG1hX2ZlbmNlcyAqZmVuY2VzLAorCQkgIGludCBuZmVuY2VzKQogewot
CWNvbnN0IHVuc2lnbmVkIGludCBuZmVuY2VzID0gZWItPmFyZ3MtPm51bV9jbGlwcmVjdHM7CiAJ
dW5zaWduZWQgaW50IG47CiAJaW50IGVycjsKIAogCWZvciAobiA9IDA7IG4gPCBuZmVuY2VzOyBu
KyspIHsKIAkJc3RydWN0IGRybV9zeW5jb2JqICpzeW5jb2JqOwotCQlzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZTsKIAkJdW5zaWduZWQgaW50IGZsYWdzOwogCi0JCXN5bmNvYmogPSBwdHJfdW5wYWNr
X2JpdHMoZmVuY2VzW25dLCAmZmxhZ3MsIDIpOworCQlzeW5jb2JqID0gcHRyX3VucGFja19iaXRz
KGZlbmNlc1tuXS5zeW5jb2JqLCAmZmxhZ3MsIDIpOwogCQlpZiAoIShmbGFncyAmIEk5MTVfRVhF
Q19GRU5DRV9XQUlUKSkKIAkJCWNvbnRpbnVlOwogCi0JCWZlbmNlID0gZHJtX3N5bmNvYmpfZmVu
Y2VfZ2V0KHN5bmNvYmopOwotCQlpZiAoIWZlbmNlKQotCQkJcmV0dXJuIC1FSU5WQUw7Ci0KLQkJ
ZXJyID0gaTkxNV9yZXF1ZXN0X2F3YWl0X2RtYV9mZW5jZShlYi0+cmVxdWVzdCwgZmVuY2UpOwot
CQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKKwkJZXJyID0gaTkxNV9yZXF1ZXN0X2F3YWl0X2RtYV9m
ZW5jZShlYi0+cmVxdWVzdCwKKwkJCQkJCSAgIGZlbmNlc1tuXS5kbWFfZmVuY2UpOwogCQlpZiAo
ZXJyIDwgMCkKIAkJCXJldHVybiBlcnI7CiAJfQpAQCAtMjMzNCw5ICsyNDc1LDkgQEAgYXdhaXRf
ZmVuY2VfYXJyYXkoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCiAKIHN0YXRpYyB2b2lkCiBz
aWduYWxfZmVuY2VfYXJyYXkoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCi0JCSAgIHN0cnVj
dCBkcm1fc3luY29iaiAqKmZlbmNlcykKKwkJICAgc3RydWN0IGk5MTVfZHJtX2RtYV9mZW5jZXMg
KmZlbmNlcywKKwkJICAgaW50IG5mZW5jZXMpCiB7Ci0JY29uc3QgdW5zaWduZWQgaW50IG5mZW5j
ZXMgPSBlYi0+YXJncy0+bnVtX2NsaXByZWN0czsKIAlzdHJ1Y3QgZG1hX2ZlbmNlICogY29uc3Qg
ZmVuY2UgPSAmZWItPnJlcXVlc3QtPmZlbmNlOwogCXVuc2lnbmVkIGludCBuOwogCkBAIC0yMzQ0
LDE1ICsyNDg1LDQzIEBAIHNpZ25hbF9mZW5jZV9hcnJheShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVy
ICplYiwKIAkJc3RydWN0IGRybV9zeW5jb2JqICpzeW5jb2JqOwogCQl1bnNpZ25lZCBpbnQgZmxh
Z3M7CiAKLQkJc3luY29iaiA9IHB0cl91bnBhY2tfYml0cyhmZW5jZXNbbl0sICZmbGFncywgMik7
CisJCXN5bmNvYmogPSBwdHJfdW5wYWNrX2JpdHMoZmVuY2VzW25dLnN5bmNvYmosICZmbGFncywg
Mik7CiAJCWlmICghKGZsYWdzICYgSTkxNV9FWEVDX0ZFTkNFX1NJR05BTCkpCiAJCQljb250aW51
ZTsKIAotCQlkcm1fc3luY29ial9yZXBsYWNlX2ZlbmNlKHN5bmNvYmosIGZlbmNlKTsKKwkJaWYg
KGZlbmNlc1tuXS5jaGFpbl9mZW5jZSkgeworCQkJZHJtX3N5bmNvYmpfYWRkX3BvaW50KHN5bmNv
YmosIGZlbmNlc1tuXS5jaGFpbl9mZW5jZSwKKwkJCQkJICAgICAgZmVuY2UsIGZlbmNlc1tuXS52
YWx1ZSk7CisJCQkvKgorCQkJICogVGhlIGNoYWluJ3Mgb3duZXJzaGlwIGlzIHRyYW5zZmVyZWQg
dG8gdGhlCisJCQkgKiB0aW1lbGluZS4KKwkJCSAqLworCQkJZmVuY2VzW25dLmNoYWluX2ZlbmNl
ID0gTlVMTDsKKwkJfSBlbHNlIHsKKwkJCWRybV9zeW5jb2JqX3JlcGxhY2VfZmVuY2Uoc3luY29i
aiwgZmVuY2UpOworCQl9CiAJfQogfQogCitzdGF0aWMgaW50IHBhcnNlX3RpbWVsaW5lX2ZlbmNl
cyhzdHJ1Y3QgaTkxNV91c2VyX2V4dGVuc2lvbiBfX3VzZXIgKmV4dCwgdm9pZCAqZGF0YSkKK3sK
KwlzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiA9IGRhdGE7CisKKwkvKiBUaW1lbGluZSBmZW5j
ZXMgYXJlIGluY29tcGF0aWJsZSB3aXRoIHRoZSBmZW5jZSBhcnJheSBmbGFnLiAqLworCWlmIChl
Yi0+YXJncy0+ZmxhZ3MgJiBJOTE1X0VYRUNfRkVOQ0VfQVJSQVkpCisJCXJldHVybiAtRUlOVkFM
OworCisJaWYgKGNvcHlfZnJvbV91c2VyKCZlYi0+ZXh0ZW5zaW9ucy50aW1lbGluZV9mZW5jZXMs
IGV4dCwKKwkJCSAgIHNpemVvZihlYi0+ZXh0ZW5zaW9ucy50aW1lbGluZV9mZW5jZXMpKSkKKwkJ
cmV0dXJuIC1FRkFVTFQ7CisKKwllYi0+ZXh0ZW5zaW9ucy5mbGFncyB8PSBCSVQoRFJNX0k5MTVf
R0VNX0VYRUNCVUZGRVJfRVhUX1RJTUVMSU5FX0ZFTkNFUyk7CisKKwlyZXR1cm4gMDsKK30KKwog
c3RhdGljIGNvbnN0IGk5MTVfdXNlcl9leHRlbnNpb25fZm4gZXhlY2J1Zl9leHRlbnNpb25zW10g
PSB7CisgICAgICAgIFtEUk1fSTkxNV9HRU1fRVhFQ0JVRkZFUl9FWFRfVElNRUxJTkVfRkVOQ0VT
XSA9IHBhcnNlX3RpbWVsaW5lX2ZlbmNlcywKIH07CiAKIHN0YXRpYyBpbnQKQEAgLTIzNzIsMTQg
KzI1NDEsMTUgQEAgc3RhdGljIGludAogaTkxNV9nZW1fZG9fZXhlY2J1ZmZlcihzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2LAogCQkgICAgICAgc3RydWN0IGRybV9maWxlICpmaWxlLAogCQkgICAgICAg
c3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiAqYXJncywKLQkJICAgICAgIHN0cnVjdCBk
cm1faTkxNV9nZW1fZXhlY19vYmplY3QyICpleGVjLAotCQkgICAgICAgc3RydWN0IGRybV9zeW5j
b2JqICoqZmVuY2VzKQorCQkgICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX29iamVjdDIg
KmV4ZWMpCiB7CiAJc3RydWN0IGk5MTVfZXhlY2J1ZmZlciBlYjsKIAlzdHJ1Y3QgZG1hX2ZlbmNl
ICppbl9mZW5jZSA9IE5VTEw7CiAJc3RydWN0IGRtYV9mZW5jZSAqZXhlY19mZW5jZSA9IE5VTEw7
CiAJc3RydWN0IHN5bmNfZmlsZSAqb3V0X2ZlbmNlID0gTlVMTDsKKwlzdHJ1Y3QgaTkxNV9kcm1f
ZG1hX2ZlbmNlcyAqZmVuY2VzID0gTlVMTDsKIAlpbnQgb3V0X2ZlbmNlX2ZkID0gLTE7CisJaW50
IG5mZW5jZXMgPSAwOwogCWludCBlcnI7CiAKIAlCVUlMRF9CVUdfT04oX19FWEVDX0lOVEVSTkFM
X0ZMQUdTICYgfl9fSTkxNV9FWEVDX0lMTEVHQUxfRkxBR1MpOwpAQCAtMjQyMSwxMCArMjU5MSwx
NiBAQCBpOTE1X2dlbV9kb19leGVjYnVmZmVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCQly
ZXR1cm4gZXJyOwogCX0KIAorCWZlbmNlcyA9IGdldF9mZW5jZV9hcnJheSgmZWIsICZuZmVuY2Vz
KTsKKwlpZiAoSVNfRVJSKGZlbmNlcykpCisJCXJldHVybiBQVFJfRVJSKGZlbmNlcyk7CisKIAlp
ZiAoYXJncy0+ZmxhZ3MgJiBJOTE1X0VYRUNfRkVOQ0VfSU4pIHsKIAkJaW5fZmVuY2UgPSBzeW5j
X2ZpbGVfZ2V0X2ZlbmNlKGxvd2VyXzMyX2JpdHMoYXJncy0+cnN2ZDIpKTsKLQkJaWYgKCFpbl9m
ZW5jZSkKLQkJCXJldHVybiAtRUlOVkFMOworCQlpZiAoIWluX2ZlbmNlKSB7CisJCQllcnIgPSAt
RUlOVkFMOworCQkJZ290byBlcnJfZmVuY2VzOworCQl9CiAJfQogCiAJaWYgKGFyZ3MtPmZsYWdz
ICYgSTkxNV9FWEVDX0ZFTkNFX1NVQk1JVCkgewpAQCAtMjU4Miw3ICsyNzU4LDcgQEAgaTkxNV9n
ZW1fZG9fZXhlY2J1ZmZlcihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCX0KIAogCWlmIChmZW5j
ZXMpIHsKLQkJZXJyID0gYXdhaXRfZmVuY2VfYXJyYXkoJmViLCBmZW5jZXMpOworCQllcnIgPSBh
d2FpdF9mZW5jZV9hcnJheSgmZWIsIGZlbmNlcywgbmZlbmNlcyk7CiAJCWlmIChlcnIpCiAJCQln
b3RvIGVycl9yZXF1ZXN0OwogCX0KQEAgLTI2MTEsNyArMjc4Nyw3IEBAIGk5MTVfZ2VtX2RvX2V4
ZWNidWZmZXIoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAlpOTE1X3JlcXVlc3RfYWRkKGViLnJl
cXVlc3QpOwogCiAJaWYgKGZlbmNlcykKLQkJc2lnbmFsX2ZlbmNlX2FycmF5KCZlYiwgZmVuY2Vz
KTsKKwkJc2lnbmFsX2ZlbmNlX2FycmF5KCZlYiwgZmVuY2VzLCBuZmVuY2VzKTsKIAogCWlmIChv
dXRfZmVuY2UpIHsKIAkJaWYgKGVyciA9PSAwKSB7CkBAIC0yNjQ2LDYgKzI4MjIsOCBAQCBpOTE1
X2dlbV9kb19leGVjYnVmZmVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJZG1hX2ZlbmNlX3B1
dChleGVjX2ZlbmNlKTsKIGVycl9pbl9mZW5jZToKIAlkbWFfZmVuY2VfcHV0KGluX2ZlbmNlKTsK
K2Vycl9mZW5jZXM6CisJcHV0X2ZlbmNlX2FycmF5KGZlbmNlcywgbmZlbmNlcyk7CiAJcmV0dXJu
IGVycjsKIH0KIApAQCAtMjczOSw3ICsyOTE3LDcgQEAgaTkxNV9nZW1fZXhlY2J1ZmZlcl9pb2N0
bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAogCQkJZXhlYzJfbGlzdFtpXS5m
bGFncyA9IDA7CiAJfQogCi0JZXJyID0gaTkxNV9nZW1fZG9fZXhlY2J1ZmZlcihkZXYsIGZpbGUs
ICZleGVjMiwgZXhlYzJfbGlzdCwgTlVMTCk7CisJZXJyID0gaTkxNV9nZW1fZG9fZXhlY2J1ZmZl
cihkZXYsIGZpbGUsICZleGVjMiwgZXhlYzJfbGlzdCk7CiAJaWYgKGV4ZWMyLmZsYWdzICYgX19F
WEVDX0hBU19SRUxPQykgewogCQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0IF9fdXNl
ciAqdXNlcl9leGVjX2xpc3QgPQogCQkJdTY0X3RvX3VzZXJfcHRyKGFyZ3MtPmJ1ZmZlcnNfcHRy
KTsKQEAgLTI3NzAsNyArMjk0OCw2IEBAIGk5MTVfZ2VtX2V4ZWNidWZmZXIyX2lvY3RsKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiB7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9l
eGVjYnVmZmVyMiAqYXJncyA9IGRhdGE7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX29iamVj
dDIgKmV4ZWMyX2xpc3Q7Ci0Jc3RydWN0IGRybV9zeW5jb2JqICoqZmVuY2VzID0gTlVMTDsKIAlj
b25zdCBzaXplX3QgY291bnQgPSBhcmdzLT5idWZmZXJfY291bnQ7CiAJaW50IGVycjsKIApAQCAt
Mjc5OCwxNSArMjk3NSw3IEBAIGk5MTVfZ2VtX2V4ZWNidWZmZXIyX2lvY3RsKHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJCXJldHVybiAtRUZBVUxUOwogCX0KIAotCWlmIChh
cmdzLT5mbGFncyAmIEk5MTVfRVhFQ19GRU5DRV9BUlJBWSkgewotCQlmZW5jZXMgPSBnZXRfZmVu
Y2VfYXJyYXkoYXJncywgZmlsZSk7Ci0JCWlmIChJU19FUlIoZmVuY2VzKSkgewotCQkJa3ZmcmVl
KGV4ZWMyX2xpc3QpOwotCQkJcmV0dXJuIFBUUl9FUlIoZmVuY2VzKTsKLQkJfQotCX0KLQotCWVy
ciA9IGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIoZGV2LCBmaWxlLCBhcmdzLCBleGVjMl9saXN0LCBm
ZW5jZXMpOworCWVyciA9IGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIoZGV2LCBmaWxlLCBhcmdzLCBl
eGVjMl9saXN0KTsKIAogCS8qCiAJICogTm93IHRoYXQgd2UgaGF2ZSBiZWd1biBleGVjdXRpb24g
b2YgdGhlIGJhdGNoYnVmZmVyLCB3ZSBpZ25vcmUKQEAgLTI4NDYsNyArMzAxNSw2IEBAIGVuZDo7
CiAJfQogCiAJYXJncy0+ZmxhZ3MgJj0gfl9fSTkxNV9FWEVDX1VOS05PV05fRkxBR1M7Ci0JcHV0
X2ZlbmNlX2FycmF5KGFyZ3MsIGZlbmNlcyk7CiAJa3ZmcmVlKGV4ZWMyX2xpc3QpOwogCXJldHVy
biBlcnI7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwppbmRleCA3YzNjM2I4YWIzMzkuLjQ4Zjkw
MDlhNjMxOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCkBAIC00NTYsNiArNDU2LDcgQEAgc3Rh
dGljIGludCBpOTE1X2dldHBhcmFtX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQg
KmRhdGEsCiAJY2FzZSBJOTE1X1BBUkFNX0hBU19FWEVDX0JBVENIX0ZJUlNUOgogCWNhc2UgSTkx
NV9QQVJBTV9IQVNfRVhFQ19GRU5DRV9BUlJBWToKIAljYXNlIEk5MTVfUEFSQU1fSEFTX0VYRUNf
U1VCTUlUX0ZFTkNFOgorCWNhc2UgSTkxNV9QQVJBTV9IQVNfRVhFQ19USU1FTElORV9GRU5DRVM6
CiAJCS8qIEZvciB0aGUgdGltZSBiZWluZyBhbGwgb2YgdGhlc2UgYXJlIGFsd2F5cyB0cnVlOwog
CQkgKiBpZiBzb21lIHN1cHBvcnRlZCBoYXJkd2FyZSBkb2VzIG5vdCBoYXZlIG9uZSBvZiB0aGVz
ZQogCQkgKiBmZWF0dXJlcyB0aGlzIHZhbHVlIG5lZWRzIHRvIGJlIHByb3ZpZGVkIGZyb20KQEAg
LTMyMjAsNiArMzIyMSw3IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX2RyaXZlciBkcml2ZXIgPSB7CiAJ
LmRyaXZlcl9mZWF0dXJlcyA9CiAJICAgIERSSVZFUl9HRU0gfAogCSAgICBEUklWRVJfUkVOREVS
IHwgRFJJVkVSX01PREVTRVQgfCBEUklWRVJfQVRPTUlDIHwgRFJJVkVSX1NZTkNPQkosCisJICAg
IERSSVZFUl9TWU5DT0JKX1RJTUVMSU5FLAogCS5yZWxlYXNlID0gaTkxNV9kcml2ZXJfcmVsZWFz
ZSwKIAkub3BlbiA9IGk5MTVfZHJpdmVyX29wZW4sCiAJLmxhc3RjbG9zZSA9IGk5MTVfZHJpdmVy
X2xhc3RjbG9zZSwKZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCBiL2lu
Y2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAppbmRleCBlZmExOTVkNjk5NGUuLmI3ZmUxOTE1ZTM0
ZCAxMDA2NDQKLS0tIGEvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oCisrKyBiL2luY2x1ZGUv
dWFwaS9kcm0vaTkxNV9kcm0uaApAQCAtNjE3LDYgKzYxNywxMiBAQCB0eXBlZGVmIHN0cnVjdCBk
cm1faTkxNV9pcnFfd2FpdCB7CiAgKi8KICNkZWZpbmUgSTkxNV9QQVJBTV9QRVJGX1JFVklTSU9O
CTU0CiAKKy8qIFF1ZXJ5IHdoZXRoZXIgRFJNX0k5MTVfR0VNX0VYRUNCVUZGRVIyIHN1cHBvcnRz
IHN1cHBseWluZyBhbiBhcnJheSBvZgorICogdGltZWxpbmUgc3luY29iaiB0aHJvdWdoIGRybV9p
OTE1X2dlbV9leGVjYnVmX2V4dF90aW1lbGluZV9mZW5jZXMuIFNlZQorICogSTkxNV9FWEVDX0VY
VC4KKyAqLworI2RlZmluZSBJOTE1X1BBUkFNX0hBU19FWEVDX1RJTUVMSU5FX0ZFTkNFUyA1NQor
CiAvKiBNdXN0IGJlIGtlcHQgY29tcGFjdCAtLSBubyBob2xlcyBhbmQgd2VsbCBkb2N1bWVudGVk
ICovCiAKIHR5cGVkZWYgc3RydWN0IGRybV9pOTE1X2dldHBhcmFtIHsKQEAgLTEwMTQsOSArMTAy
MCw0MCBAQCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfZmVuY2UgewogfTsKIAogZW51bSBkcm1f
aTkxNV9nZW1fZXhlY2J1ZmZlcl9leHQgeworCS8qKgorCSAqIFRoaXMgaWRlbnRpZmllciBpcyBh
c3NvY2lhdGVkIHdpdGgKKwkgKiBkcm1faTkxNV9nZW1fZXhlY2J1Zl9leHRfdGltZWxpbmVfZmVu
Y2VzLgorCSAqLworCURSTV9JOTE1X0dFTV9FWEVDQlVGRkVSX0VYVF9USU1FTElORV9GRU5DRVMs
CisKIAlEUk1fSTkxNV9HRU1fRVhFQ0JVRkZFUl9FWFRfTUFYIC8qIG5vbi1BQkkgKi8KIH07CiAK
Ky8qKgorICogVGhpcyBzdHJ1Y3R1cmUgZGVzY3JpYmVzIGFuIGFycmF5IG9mIGRybV9zeW5jb2Jq
IGFuZCBhc3NvY2lhdGVkIHBvaW50cyBmb3IKKyAqIHRpbWVsaW5lIHZhcmlhbnRzIG9mIGRybV9z
eW5jb2JqLiBJdCBpcyBpbnZhbGlkIHRvIGFwcGVuZCB0aGlzIHN0cnVjdHVyZSB0bworICogdGhl
IGV4ZWNidWYgaWYgSTkxNV9FWEVDX0ZFTkNFX0FSUkFZIGlzIHNldC4KKyAqLworc3RydWN0IGRy
bV9pOTE1X2dlbV9leGVjYnVmZmVyX2V4dF90aW1lbGluZV9mZW5jZXMgeworCXN0cnVjdCBpOTE1
X3VzZXJfZXh0ZW5zaW9uIGJhc2U7CisKKwkvKioKKwkgKiBOdW1iZXIgb2YgZWxlbWVudCBpbiB0
aGUgaGFuZGxlc19wdHIgJiB2YWx1ZV9wdHIgYXJyYXlzLgorCSAqLworCV9fdTY0IGhhbmRsZV9j
b3VudDsKKworCS8qKgorCSAqIFBvaW50ZXIgdG8gYW4gYXJyYXkgb2Ygc3RydWN0IGRybV9pOTE1
X2dlbV9leGVjX2ZlbmNlIG9mIHNpemUgaGFuZGxlX2NvdW50LgorCSAqLworCV9fdTY0IGhhbmRs
ZXNfcHRyOworCisJLyoqCisJICogUG9pbnRlciB0byBhbiBhcnJheSBvZiB1NjQgdmFsdWVzIG9m
IHNpemUgaGFuZGxlX2NvdW50LiBWYWx1ZXMgbXVzdAorCSAqIGJlIDAgZm9yIGEgYmluYXJ5IGRy
bV9zeW5jb2JqLgorCSAqLworCV9fdTY0IHZhbHVlc19wdHI7Cit9OworCiBzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX2V4ZWNidWZmZXIyIHsKIAkvKioKIAkgKiBMaXN0IG9mIGdlbV9leGVjX29iamVjdDIg
c3RydWN0cwotLSAKMi4yMS4wLjM5Mi5nZjhmNjc4NzE1OWUKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
