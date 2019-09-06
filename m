Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7167FAB4F6
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 11:33:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A25746E222;
	Fri,  6 Sep 2019 09:33:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66D396E1F8
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 09:33:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 02:33:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,472,1559545200"; d="scan'208";a="185737796"
Received: from chlopez-mobl1.amr.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.36.202])
 by orsmga003.jf.intel.com with ESMTP; 06 Sep 2019 02:33:27 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Sep 2019 12:32:56 +0300
Message-Id: <20190906093256.26198-14-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190906093256.26198-1-lionel.g.landwerlin@intel.com>
References: <20190906093256.26198-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v15 13/13] drm/i915: add support for perf
 configuration queries
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

TGlzdGluZyBjb25maWd1cmF0aW9ucyBhdCB0aGUgbW9tZW50IGlzIHN1cHBvcnRlZCBvbmx5IHRo
cm91Z2ggc3lzZnMuClRoaXMgbWlnaHQgY2F1c2UgaXNzdWVzIGZvciBhcHBsaWNhdGlvbnMgd2Fu
dGluZyB0byBsaXN0CmNvbmZpZ3VyYXRpb25zIGZyb20gYSBjb250YWluZXIgd2hlcmUgc3lzZnMg
aXNuJ3QgYXZhaWxhYmxlLgoKVGhpcyBjaGFuZ2UgYWRkcyBhIHdheSB0byBxdWVyeSB0aGUgbnVt
YmVyIG9mIGNvbmZpZ3VyYXRpb25zIGFuZCB0aGVpcgpjb250ZW50IHRocm91Z2ggdGhlIGk5MTUg
cXVlcnkgdUFQSS4KCnYyOiBGaXggc3BhcnNlIHdhcm5pbmdzIChMaW9uZWwpCiAgICBBZGQgc3Vw
cG9ydCB0byBxdWVyeSBjb25maWd1cmF0aW9uIHVzaW5nIHV1aWQgKExpb25lbCkKCnYzOiBGaXgg
c29tZSBpbmNvbnNpc3RlbmN5IGluIHVhcGkgaGVhZGVyIChMaW9uZWwpCiAgICBGaXggdW5sb2Nr
aW5nIHdoZW4gbm90IGxvY2tlZCBpc3N1ZSAoTGlvbmVsKQogICAgQWRkIGRlYnVnIG1lc3NhZ2Vz
IChMaW9uZWwpCgp2NDogRml4IG1pc3NpbmcgdW5sb2NrIChEYW4pCgp2NTogRHJvcCBsb2NrIHdo
ZW4gY29weWluZyBjb25maWcgY29udGVudCB0byB1c2Vyc3BhY2UgKENocmlzKQoKdjY6IERyb3Ag
bG9jayB3aGVuIGNvcHlpbmcgY29uZmlnIGxpc3QgdG8gdXNlcnNwYWNlIChDaHJpcykKICAgIEZp
eCBkZWFkbG9jayB3aGVuIGNhbGxpbmcgaTkxNV9wZXJmX2dldF9vYV9jb25maWcoKSB1bmRlcgog
ICAgcGVyZi5tZXRyaWNzX2xvY2sgKExpb25lbCkKICAgIEFkZCBpOTE1X29hX2NvbmZpZ19nZXQo
KSAoQ2hyaXMpCgpTaWduZWQtb2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFu
ZHdlcmxpbkBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgfCAg
IDYgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgIHwgICAzICsKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcXVlcnkuYyB8IDI4MyArKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysKIGluY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCAgICAgICB8ICA2NSArKysrKystCiA0
IGZpbGVzIGNoYW5nZWQsIDM1NCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oCmluZGV4IDJjNmYzNzIxOWRmZi4uZWFiNDIyNjlmYzViIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTEzNjgsNiArMTM2OCwxMiBAQCBzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSB7CiAJCSAqLwogCQlzdHJ1Y3QgaWRyIG1ldHJpY3NfaWRyOwogCisJCS8qCisJCSAq
IE51bWJlciBvZiBkeW5hbWljIGNvbmZpZ3VyYXRpb25zLCB5b3UgbmVlZCB0byBob2xkCisJCSAq
IGRldl9wcml2LT5wZXJmLm1ldHJpY3NfbG9jayB0byBhY2Nlc3MgaXQuCisJCSAqLworCQl1MzIg
bl9tZXRyaWNzOworCiAJCS8qCiAJCSAqIExvY2sgYXNzb2NpYXRlZCB3aXRoIGFueXRoaW5nIGJl
bG93IHdpdGhpbiB0aGlzIHN0cnVjdHVyZQogCQkgKiBleGNlcHQgZXhjbHVzaXZlX3N0cmVhbS4K
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKaW5kZXggN2FkYzUxODkxMmJiLi4zNzJjZGYyZTdlYzgg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCkBAIC0zOTE1LDYgKzM5MTUsOCBAQCBpbnQgaTkx
NV9wZXJmX2FkZF9jb25maWdfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0
YSwKIAkJZ290byBzeXNmc19lcnI7CiAJfQogCisJZGV2X3ByaXYtPnBlcmYubl9tZXRyaWNzKys7
CisKIAltdXRleF91bmxvY2soJmRldl9wcml2LT5wZXJmLm1ldHJpY3NfbG9jayk7CiAKIAlEUk1f
REVCVUcoIkFkZGVkIGNvbmZpZyAlcyBpZD0laVxuIiwgb2FfY29uZmlnLT51dWlkLCBvYV9jb25m
aWctPmlkKTsKQEAgLTM5NzUsNiArMzk3Nyw3IEBAIGludCBpOTE1X3BlcmZfcmVtb3ZlX2NvbmZp
Z19pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAogCQkJICAgJm9hX2Nv
bmZpZy0+c3lzZnNfbWV0cmljKTsKIAogCWlkcl9yZW1vdmUoJmRldl9wcml2LT5wZXJmLm1ldHJp
Y3NfaWRyLCAqYXJnKTsKKwlkZXZfcHJpdi0+cGVyZi5uX21ldHJpY3MtLTsKIAogCW11dGV4X3Vu
bG9jaygmZGV2X3ByaXYtPnBlcmYubWV0cmljc19sb2NrKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9xdWVyeS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9x
dWVyeS5jCmluZGV4IGFiYWM1MDQyZGEyYi4uODliMjgyMWJlNGEwIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3F1ZXJ5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9xdWVyeS5jCkBAIC03LDYgKzcsNyBAQAogI2luY2x1ZGUgPGxpbnV4L25vc3BlYy5oPgog
CiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKKyNpbmNsdWRlICJpOTE1X3BlcmYuaCIKICNpbmNsdWRl
ICJpOTE1X3F1ZXJ5LmgiCiAjaW5jbHVkZSA8dWFwaS9kcm0vaTkxNV9kcm0uaD4KIApAQCAtMTQw
LDEwICsxNDEsMjkyIEBAIHF1ZXJ5X2VuZ2luZV9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1LAogCXJldHVybiBsZW47CiB9CiAKK3N0YXRpYyBpbnQgY2FuX2NvcHlfcGVyZl9jb25m
aWdfcmVnaXN0ZXJzX29yX251bWJlcih1MzIgdXNlcl9uX3JlZ3MsCisJCQkJCQkgICAgdTY0IHVz
ZXJfcmVnc19wdHIsCisJCQkJCQkgICAgdTMyIGtlcm5lbF9uX3JlZ3MpCit7CisJLyoKKwkgKiBX
ZSdsbCBqdXN0IHB1dCB0aGUgbnVtYmVyIG9mIHJlZ2lzdGVycywgYW5kIHdvbid0IGNvcHkgdGhl
CisJICogcmVnaXN0ZXIuCisJICovCisJaWYgKHVzZXJfbl9yZWdzID09IDApCisJCXJldHVybiAw
OworCisJaWYgKHVzZXJfbl9yZWdzIDwga2VybmVsX25fcmVncykKKwkJcmV0dXJuIC1FSU5WQUw7
CisKKwlpZiAoIWFjY2Vzc19vayh1NjRfdG9fdXNlcl9wdHIodXNlcl9yZWdzX3B0ciksCisJCSAg
ICAgICAyICogc2l6ZW9mKHUzMikgKiBrZXJuZWxfbl9yZWdzKSkKKwkJcmV0dXJuIC1FRkFVTFQ7
CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCBjb3B5X3BlcmZfY29uZmlnX3JlZ2lzdGVy
c19vcl9udW1iZXIoY29uc3Qgc3RydWN0IGk5MTVfb2FfcmVnICprZXJuZWxfcmVncywKKwkJCQkJ
CXUzMiBrZXJuZWxfbl9yZWdzLAorCQkJCQkJdTY0IHVzZXJfcmVnc19wdHIsCisJCQkJCQl1MzIg
KnVzZXJfbl9yZWdzKQoreworCXUzMiByOworCisJaWYgKCp1c2VyX25fcmVncyA9PSAwKSB7CisJ
CSp1c2VyX25fcmVncyA9IGtlcm5lbF9uX3JlZ3M7CisJCXJldHVybiAwOworCX0KKworCSp1c2Vy
X25fcmVncyA9IGtlcm5lbF9uX3JlZ3M7CisKKwlmb3IgKHIgPSAwOyByIDwga2VybmVsX25fcmVn
czsgcisrKSB7CisJCXUzMiBfX3VzZXIgKnVzZXJfcmVnX3B0ciA9CisJCQl1NjRfdG9fdXNlcl9w
dHIodXNlcl9yZWdzX3B0ciArIHNpemVvZih1MzIpICogciAqIDIpOworCQl1MzIgX191c2VyICp1
c2VyX3ZhbF9wdHIgPQorCQkJdTY0X3RvX3VzZXJfcHRyKHVzZXJfcmVnc19wdHIgKyBzaXplb2Yo
dTMyKSAqIHIgKiAyICsKKwkJCQkJc2l6ZW9mKHUzMikpOworCQlpbnQgcmV0OworCisJCXJldCA9
IF9fcHV0X3VzZXIoaTkxNV9tbWlvX3JlZ19vZmZzZXQoa2VybmVsX3JlZ3Nbcl0uYWRkciksCisJ
CQkJIHVzZXJfcmVnX3B0cik7CisJCWlmIChyZXQpCisJCQlyZXR1cm4gLUVGQVVMVDsKKworCQly
ZXQgPSBfX3B1dF91c2VyKGtlcm5lbF9yZWdzW3JdLnZhbHVlLCB1c2VyX3ZhbF9wdHIpOworCQlp
ZiAocmV0KQorCQkJcmV0dXJuIC1FRkFVTFQ7CisJfQorCisJcmV0dXJuIDA7Cit9CisKK3N0YXRp
YyBpbnQgcXVlcnlfcGVyZl9jb25maWdfZGF0YShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwKKwkJCQkgIHN0cnVjdCBkcm1faTkxNV9xdWVyeV9pdGVtICpxdWVyeV9pdGVtLAorCQkJCSAg
Ym9vbCB1c2VfdXVpZCkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfcGVyZl9jb25maWcgX191
c2VyICp1c2VyX3F1ZXJ5X2NvbmZpZ19wdHIgPQorCQl1NjRfdG9fdXNlcl9wdHIocXVlcnlfaXRl
bS0+ZGF0YV9wdHIpOworCXN0cnVjdCBkcm1faTkxNV9wZXJmX29hX2NvbmZpZyBfX3VzZXIgKnVz
ZXJfY29uZmlnX3B0ciA9CisJCXU2NF90b191c2VyX3B0cihxdWVyeV9pdGVtLT5kYXRhX3B0ciAr
CisJCQkJc2l6ZW9mKHN0cnVjdCBkcm1faTkxNV9xdWVyeV9wZXJmX2NvbmZpZykpOworCXN0cnVj
dCBkcm1faTkxNV9wZXJmX29hX2NvbmZpZyB1c2VyX2NvbmZpZzsKKwlzdHJ1Y3QgaTkxNV9vYV9j
b25maWcgKm9hX2NvbmZpZyA9IE5VTEw7CisJY2hhciB1dWlkW1VVSURfU1RSSU5HX0xFTiArIDFd
OworCXU2NCBjb25maWdfaWQ7CisJdTMyIGZsYWdzLCB0b3RhbF9zaXplOworCWludCByZXQ7CisK
KwlpZiAoIWk5MTUtPnBlcmYuaW5pdGlhbGl6ZWQpCisJCXJldHVybiAtRU5PREVWOworCisJdG90
YWxfc2l6ZSA9IHNpemVvZihzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfcGVyZl9jb25maWcpICsKKwkJ
c2l6ZW9mKHN0cnVjdCBkcm1faTkxNV9wZXJmX29hX2NvbmZpZyk7CisKKwlpZiAocXVlcnlfaXRl
bS0+bGVuZ3RoID09IDApCisJCXJldHVybiB0b3RhbF9zaXplOworCisJaWYgKHF1ZXJ5X2l0ZW0t
Pmxlbmd0aCA8IHRvdGFsX3NpemUpIHsKKwkJRFJNX0RFQlVHKCJJbnZhbGlkIHF1ZXJ5IGNvbmZp
ZyBkYXRhIGl0ZW0gc2l6ZT0ldSBleHBlY3RlZD0ldVxuIiwKKwkJCSAgcXVlcnlfaXRlbS0+bGVu
Z3RoLCB0b3RhbF9zaXplKTsKKwkJcmV0dXJuIC1FSU5WQUw7CisJfQorCisJaWYgKCFhY2Nlc3Nf
b2sodXNlcl9xdWVyeV9jb25maWdfcHRyLCB0b3RhbF9zaXplKSkKKwkJcmV0dXJuIC1FRkFVTFQ7
CisKKwlpZiAoX19nZXRfdXNlcihmbGFncywgJnVzZXJfcXVlcnlfY29uZmlnX3B0ci0+ZmxhZ3Mp
KQorCQlyZXR1cm4gLUVGQVVMVDsKKworCWlmIChmbGFncyAhPSAwKQorCQlyZXR1cm4gLUVJTlZB
TDsKKworCWlmICh1c2VfdXVpZCkgeworCQlCVUlMRF9CVUdfT04oc2l6ZW9mKHVzZXJfcXVlcnlf
Y29uZmlnX3B0ci0+dXVpZCkgPj0gc2l6ZW9mKHV1aWQpKTsKKworCQltZW1zZXQoJnV1aWQsIDAs
IHNpemVvZih1dWlkKSk7CisJCWlmIChfX2NvcHlfZnJvbV91c2VyKHV1aWQsIHVzZXJfcXVlcnlf
Y29uZmlnX3B0ci0+dXVpZCwKKwkJCQkgICAgIHNpemVvZih1c2VyX3F1ZXJ5X2NvbmZpZ19wdHIt
PnV1aWQpKSkKKwkJCXJldHVybiAtRUZBVUxUOworCX0gZWxzZSB7CisJCWlmIChfX2dldF91c2Vy
KGNvbmZpZ19pZCwgJnVzZXJfcXVlcnlfY29uZmlnX3B0ci0+Y29uZmlnKSkgeworCQkJcmV0dXJu
IC1FRkFVTFQ7CisJCX0KKwl9CisKKwlpZiAodXNlX3V1aWQpIHsKKwkJc3RydWN0IGk5MTVfb2Ff
Y29uZmlnICp0bXA7CisJCWludCBpZDsKKworCQlyZXQgPSBtdXRleF9sb2NrX2ludGVycnVwdGli
bGUoJmk5MTUtPnBlcmYubWV0cmljc19sb2NrKTsKKwkJaWYgKHJldCkKKwkJCXJldHVybiByZXQ7
CisKKwkJaWRyX2Zvcl9lYWNoX2VudHJ5KCZpOTE1LT5wZXJmLm1ldHJpY3NfaWRyLCB0bXAsIGlk
KSB7CisJCQlpZiAoIXN0cmNtcCh0bXAtPnV1aWQsIHV1aWQpKSB7CisJCQkJb2FfY29uZmlnID0g
aTkxNV9vYV9jb25maWdfZ2V0KHRtcCk7CisJCQkJYnJlYWs7CisJCQl9CisJCX0KKworCQltdXRl
eF91bmxvY2soJmk5MTUtPnBlcmYubWV0cmljc19sb2NrKTsKKwl9IGVsc2UgeworCQlyZXQgPSBp
OTE1X3BlcmZfZ2V0X29hX2NvbmZpZyhpOTE1LCBjb25maWdfaWQsICZvYV9jb25maWcpOworCX0K
KworCWlmIChyZXQgfHwgIW9hX2NvbmZpZykKKwkJcmV0dXJuIC1FTk9FTlQ7CisKKwlpZiAoX19j
b3B5X2Zyb21fdXNlcigmdXNlcl9jb25maWcsIHVzZXJfY29uZmlnX3B0ciwKKwkJCSAgICAgc2l6
ZW9mKHVzZXJfY29uZmlnKSkpIHsKKwkJcmV0ID0gLUVGQVVMVDsKKwkJZ290byBvdXQ7CisJfQor
CisJcmV0ID0gY2FuX2NvcHlfcGVyZl9jb25maWdfcmVnaXN0ZXJzX29yX251bWJlcih1c2VyX2Nv
bmZpZy5uX2Jvb2xlYW5fcmVncywKKwkJCQkJCSAgICAgICB1c2VyX2NvbmZpZy5ib29sZWFuX3Jl
Z3NfcHRyLAorCQkJCQkJICAgICAgIG9hX2NvbmZpZy0+Yl9jb3VudGVyX3JlZ3NfbGVuKTsKKwlp
ZiAocmV0KQorCQlnb3RvIG91dDsKKworCXJldCA9IGNhbl9jb3B5X3BlcmZfY29uZmlnX3JlZ2lz
dGVyc19vcl9udW1iZXIodXNlcl9jb25maWcubl9mbGV4X3JlZ3MsCisJCQkJCQkgICAgICAgdXNl
cl9jb25maWcuZmxleF9yZWdzX3B0ciwKKwkJCQkJCSAgICAgICBvYV9jb25maWctPmZsZXhfcmVn
c19sZW4pOworCWlmIChyZXQpCisJCWdvdG8gb3V0OworCisJcmV0ID0gY2FuX2NvcHlfcGVyZl9j
b25maWdfcmVnaXN0ZXJzX29yX251bWJlcih1c2VyX2NvbmZpZy5uX211eF9yZWdzLAorCQkJCQkJ
ICAgICAgIHVzZXJfY29uZmlnLm11eF9yZWdzX3B0ciwKKwkJCQkJCSAgICAgICBvYV9jb25maWct
Pm11eF9yZWdzX2xlbik7CisJaWYgKHJldCkKKwkJZ290byBvdXQ7CisKKwlyZXQgPSBjb3B5X3Bl
cmZfY29uZmlnX3JlZ2lzdGVyc19vcl9udW1iZXIob2FfY29uZmlnLT5iX2NvdW50ZXJfcmVncywK
KwkJCQkJCSAgIG9hX2NvbmZpZy0+Yl9jb3VudGVyX3JlZ3NfbGVuLAorCQkJCQkJICAgdXNlcl9j
b25maWcuYm9vbGVhbl9yZWdzX3B0ciwKKwkJCQkJCSAgICZ1c2VyX2NvbmZpZy5uX2Jvb2xlYW5f
cmVncyk7CisJaWYgKHJldCkKKwkJZ290byBvdXQ7CisKKwlyZXQgPSBjb3B5X3BlcmZfY29uZmln
X3JlZ2lzdGVyc19vcl9udW1iZXIob2FfY29uZmlnLT5mbGV4X3JlZ3MsCisJCQkJCQkgICBvYV9j
b25maWctPmZsZXhfcmVnc19sZW4sCisJCQkJCQkgICB1c2VyX2NvbmZpZy5mbGV4X3JlZ3NfcHRy
LAorCQkJCQkJICAgJnVzZXJfY29uZmlnLm5fZmxleF9yZWdzKTsKKwlpZiAocmV0KQorCQlnb3Rv
IG91dDsKKworCXJldCA9IGNvcHlfcGVyZl9jb25maWdfcmVnaXN0ZXJzX29yX251bWJlcihvYV9j
b25maWctPm11eF9yZWdzLAorCQkJCQkJICAgb2FfY29uZmlnLT5tdXhfcmVnc19sZW4sCisJCQkJ
CQkgICB1c2VyX2NvbmZpZy5tdXhfcmVnc19wdHIsCisJCQkJCQkgICAmdXNlcl9jb25maWcubl9t
dXhfcmVncyk7CisJaWYgKHJldCkKKwkJZ290byBvdXQ7CisKKwltZW1jcHkodXNlcl9jb25maWcu
dXVpZCwgb2FfY29uZmlnLT51dWlkLCBzaXplb2YodXNlcl9jb25maWcudXVpZCkpOworCisJaWYg
KF9fY29weV90b191c2VyKHVzZXJfY29uZmlnX3B0ciwgJnVzZXJfY29uZmlnLAorCQkJICAgc2l6
ZW9mKHVzZXJfY29uZmlnKSkpIHsKKwkJcmV0ID0gLUVGQVVMVDsKKwkJZ290byBvdXQ7CisJfQor
CisJcmV0ID0gdG90YWxfc2l6ZTsKKworb3V0OgorCWk5MTVfb2FfY29uZmlnX3B1dChvYV9jb25m
aWcpOworCisJcmV0dXJuIHJldDsKK30KKworc3RhdGljIGludCBxdWVyeV9wZXJmX2NvbmZpZ19s
aXN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAorCQkJCSAgc3RydWN0IGRybV9pOTE1
X3F1ZXJ5X2l0ZW0gKnF1ZXJ5X2l0ZW0pCit7CisJc3RydWN0IGRybV9pOTE1X3F1ZXJ5X3BlcmZf
Y29uZmlnIF9fdXNlciAqdXNlcl9xdWVyeV9jb25maWdfcHRyID0KKwkJdTY0X3RvX3VzZXJfcHRy
KHF1ZXJ5X2l0ZW0tPmRhdGFfcHRyKTsKKwlzdHJ1Y3QgaTkxNV9vYV9jb25maWcgKm9hX2NvbmZp
ZzsKKwl1MzIgZmxhZ3MsIHRvdGFsX3NpemU7CisJdTY0IGksIG5fY29uZmlncywgKm9hX2NvbmZp
Z19pZHM7CisJaW50IHJldCwgaWQ7CisKKwlpZiAoIWk5MTUtPnBlcmYuaW5pdGlhbGl6ZWQpCisJ
CXJldHVybiAtRU5PREVWOworCisJLyogQ291bnQgdGhlIGRlZmF1bHQgdGVzdCBjb25maWd1cmF0
aW9uICovCisJbl9jb25maWdzID0gaTkxNS0+cGVyZi5uX21ldHJpY3MgKyAxOworCXRvdGFsX3Np
emUgPSBzaXplb2Yoc3RydWN0IGRybV9pOTE1X3F1ZXJ5X3BlcmZfY29uZmlnKSArCisJCXNpemVv
Zih1NjQpICogbl9jb25maWdzOworCisJaWYgKHF1ZXJ5X2l0ZW0tPmxlbmd0aCA9PSAwKQorCQly
ZXR1cm4gdG90YWxfc2l6ZTsKKworCWlmIChxdWVyeV9pdGVtLT5sZW5ndGggPCB0b3RhbF9zaXpl
KSB7CisJCURSTV9ERUJVRygiSW52YWxpZCBxdWVyeSBjb25maWcgbGlzdCBpdGVtIHNpemU9JXUg
ZXhwZWN0ZWQ9JXVcbiIsCisJCQkgIHF1ZXJ5X2l0ZW0tPmxlbmd0aCwgdG90YWxfc2l6ZSk7CisJ
CXJldHVybiAtRUlOVkFMOworCX0KKworCWlmICghYWNjZXNzX29rKHVzZXJfcXVlcnlfY29uZmln
X3B0ciwgdG90YWxfc2l6ZSkpCisJCXJldHVybiAtRUZBVUxUOworCisJaWYgKF9fZ2V0X3VzZXIo
ZmxhZ3MsICZ1c2VyX3F1ZXJ5X2NvbmZpZ19wdHItPmZsYWdzKSkKKwkJcmV0dXJuIC1FRkFVTFQ7
CisKKwlpZiAoZmxhZ3MgIT0gMCkKKwkJcmV0dXJuIC1FSU5WQUw7CisKKwlpZiAoX19wdXRfdXNl
cihuX2NvbmZpZ3MsICZ1c2VyX3F1ZXJ5X2NvbmZpZ19wdHItPmNvbmZpZykpCisJCXJldHVybiAt
RUZBVUxUOworCisJcmV0ID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZpOTE1LT5wZXJmLm1l
dHJpY3NfbG9jayk7CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsKKworCS8qIENvdW50IHRoZSBj
b25maWdzLiAqLworCW5fY29uZmlncyA9IDE7CisJaWRyX2Zvcl9lYWNoX2VudHJ5KCZpOTE1LT5w
ZXJmLm1ldHJpY3NfaWRyLCBvYV9jb25maWcsIGlkKQorCQluX2NvbmZpZ3MrKzsKKworCW9hX2Nv
bmZpZ19pZHMgPQorCQlrbWFsbG9jX2FycmF5KG5fY29uZmlncywgc2l6ZW9mKCpvYV9jb25maWdf
aWRzKSwgR0ZQX0tFUk5FTCk7CisJaWYgKCFvYV9jb25maWdfaWRzKSB7CisJCW11dGV4X3VubG9j
aygmaTkxNS0+cGVyZi5tZXRyaWNzX2xvY2spOworCQlyZXR1cm4gLUVOT01FTTsKKwl9CisKKwlp
ID0gMDsKKwlvYV9jb25maWdfaWRzW2krK10gPSAxdWxsOworCWlkcl9mb3JfZWFjaF9lbnRyeSgm
aTkxNS0+cGVyZi5tZXRyaWNzX2lkciwgb2FfY29uZmlnLCBpZCkKKwkJb2FfY29uZmlnX2lkc1tp
KytdID0gaWQ7CisKKwltdXRleF91bmxvY2soJmk5MTUtPnBlcmYubWV0cmljc19sb2NrKTsKKwor
CXJldCA9IGNvcHlfdG9fdXNlcih1NjRfdG9fdXNlcl9wdHIocXVlcnlfaXRlbS0+ZGF0YV9wdHIg
KworCQkJCQkgICBzaXplb2Yoc3RydWN0IGRybV9pOTE1X3F1ZXJ5X3BlcmZfY29uZmlnKSksCisJ
CQkgICBvYV9jb25maWdfaWRzLAorCQkJICAgbl9jb25maWdzICogc2l6ZW9mKCpvYV9jb25maWdf
aWRzKSk7CisJa2ZyZWUob2FfY29uZmlnX2lkcyk7CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsK
KworCXJldHVybiB0b3RhbF9zaXplOworfQorCitzdGF0aWMgaW50IHF1ZXJ5X3BlcmZfY29uZmln
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAorCQkJICAgICBzdHJ1Y3QgZHJtX2k5MTVf
cXVlcnlfaXRlbSAqcXVlcnlfaXRlbSkKK3sKKwlzd2l0Y2ggKHF1ZXJ5X2l0ZW0tPmZsYWdzKSB7
CisJY2FzZSBEUk1fSTkxNV9RVUVSWV9QRVJGX0NPTkZJR19MSVNUOgorCQlyZXR1cm4gcXVlcnlf
cGVyZl9jb25maWdfbGlzdChpOTE1LCBxdWVyeV9pdGVtKTsKKwljYXNlIERSTV9JOTE1X1FVRVJZ
X1BFUkZfQ09ORklHX0RBVEFfRk9SX1VVSUQ6CisJCXJldHVybiBxdWVyeV9wZXJmX2NvbmZpZ19k
YXRhKGk5MTUsIHF1ZXJ5X2l0ZW0sIHRydWUpOworCWNhc2UgRFJNX0k5MTVfUVVFUllfUEVSRl9D
T05GSUdfREFUQV9GT1JfSUQ6CisJCXJldHVybiBxdWVyeV9wZXJmX2NvbmZpZ19kYXRhKGk5MTUs
IHF1ZXJ5X2l0ZW0sIGZhbHNlKTsKKwlkZWZhdWx0OgorCQlyZXR1cm4gLUVJTlZBTDsKKwl9Cit9
CisKIHN0YXRpYyBpbnQgKCogY29uc3QgaTkxNV9xdWVyeV9mdW5jc1tdKShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQkJCXN0cnVjdCBkcm1faTkxNV9xdWVyeV9pdGVtICpx
dWVyeV9pdGVtKSA9IHsKIAlxdWVyeV90b3BvbG9neV9pbmZvLAogCXF1ZXJ5X2VuZ2luZV9pbmZv
LAorCXF1ZXJ5X3BlcmZfY29uZmlnLAogfTsKIAogaW50IGk5MTVfcXVlcnlfaW9jdGwoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwgc3RydWN0IGRybV9maWxlICpmaWxlKQpkaWZm
IC0tZ2l0IGEvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oIGIvaW5jbHVkZS91YXBpL2RybS9p
OTE1X2RybS5oCmluZGV4IDU4NTBkNjgzMjdlYy4uMmU3MjE1OTg5ZGYyIDEwMDY0NAotLS0gYS9p
bmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKKysrIGIvaW5jbHVkZS91YXBpL2RybS9pOTE1X2Ry
bS5oCkBAIC0xMDM3LDggKzEwMzcsNyBAQCBlbnVtIGRybV9pOTE1X2dlbV9leGVjYnVmZmVyX2V4
dCB7CiAJRFJNX0k5MTVfR0VNX0VYRUNCVUZGRVJfRVhUX1RJTUVMSU5FX0ZFTkNFUyA9IDEsCiAK
IAkvKioKLQkgKiBUaGlzIGlkZW50aWZpZXIgaXMgYXNzb2NpYXRlZCB3aXRoCi0JICogZHJtX2k5
MTVfZ2VtX2V4ZWNidWZmZXJfcGVyZl9leHQuCisJICogU2VlIGRybV9pOTE1X2dlbV9leGVjYnVm
ZmVyX3BlcmZfZXh0LgogCSAqLwogCURSTV9JOTE1X0dFTV9FWEVDQlVGRkVSX0VYVF9QRVJGLAog
CkBAIC0yMTEzLDYgKzIxMTIsNyBAQCBzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfaXRlbSB7CiAJX191
NjQgcXVlcnlfaWQ7CiAjZGVmaW5lIERSTV9JOTE1X1FVRVJZX1RPUE9MT0dZX0lORk8gICAgMQog
I2RlZmluZSBEUk1fSTkxNV9RVUVSWV9FTkdJTkVfSU5GTwkyCisjZGVmaW5lIERSTV9JOTE1X1FV
RVJZX1BFUkZfQ09ORklHICAgICAgMwogLyogTXVzdCBiZSBrZXB0IGNvbXBhY3QgLS0gbm8gaG9s
ZXMgYW5kIHdlbGwgZG9jdW1lbnRlZCAqLwogCiAJLyoKQEAgLTIxMjQsOSArMjEyNCwxOCBAQCBz
dHJ1Y3QgZHJtX2k5MTVfcXVlcnlfaXRlbSB7CiAJX19zMzIgbGVuZ3RoOwogCiAJLyoKLQkgKiBV
bnVzZWQgZm9yIG5vdy4gTXVzdCBiZSBjbGVhcmVkIHRvIHplcm8uCisJICogV2hlbiBxdWVyeV9p
ZCA9PSBEUk1fSTkxNV9RVUVSWV9UT1BPTE9HWV9JTkZPLCBtdXN0IGJlIDAuCisJICoKKwkgKiBX
aGVuIHF1ZXJ5X2lkID09IERSTV9JOTE1X1FVRVJZX1BFUkZfQ09ORklHLCBtdXN0IGJlIG9uZSBv
ZiB0aGUKKwkgKiBmb2xsb3dpbmcgOgorCSAqICAgICAgICAgLSBEUk1fSTkxNV9RVUVSWV9QRVJG
X0NPTkZJR19MSVNUCisJICogICAgICAgICAtIERSTV9JOTE1X1FVRVJZX1BFUkZfQ09ORklHX0RB
VEFfRk9SX1VVSUQKKwkgKiAgICAgICAgIC0gRFJNX0k5MTVfUVVFUllfUEVSRl9DT05GSUdfRk9S
X1VVSUQKIAkgKi8KIAlfX3UzMiBmbGFnczsKKyNkZWZpbmUgRFJNX0k5MTVfUVVFUllfUEVSRl9D
T05GSUdfTElTVCAgICAgICAgICAxCisjZGVmaW5lIERSTV9JOTE1X1FVRVJZX1BFUkZfQ09ORklH
X0RBVEFfRk9SX1VVSUQgMgorI2RlZmluZSBEUk1fSTkxNV9RVUVSWV9QRVJGX0NPTkZJR19EQVRB
X0ZPUl9JRCAgIDMKIAogCS8qCiAJICogRGF0YSB3aWxsIGJlIHdyaXR0ZW4gYXQgdGhlIGxvY2F0
aW9uIHBvaW50ZWQgYnkgZGF0YV9wdHIgd2hlbiB0aGUKQEAgLTIyNTIsNiArMjI2MSw1NiBAQCBz
dHJ1Y3QgZHJtX2k5MTVfcXVlcnlfZW5naW5lX2luZm8gewogCXN0cnVjdCBkcm1faTkxNV9lbmdp
bmVfaW5mbyBlbmdpbmVzW107CiB9OwogCisvKgorICogRGF0YSB3cml0dGVuIGJ5IHRoZSBrZXJu
ZWwgd2l0aCBxdWVyeSBEUk1fSTkxNV9RVUVSWV9QRVJGX0NPTkZJRy4KKyAqLworc3RydWN0IGRy
bV9pOTE1X3F1ZXJ5X3BlcmZfY29uZmlnIHsKKwl1bmlvbiB7CisJCS8qCisJCSAqIFdoZW4gcXVl
cnlfaXRlbS5mbGFncyA9PSBEUk1fSTkxNV9RVUVSWV9QRVJGX0NPTkZJR19MSVNULCBpOTE1IHNl
dHMKKwkJICogdGhpcyBmaWVsZHMgdG8gdGhlIG51bWJlciBvZiBjb25maWd1cmF0aW9ucyBhdmFp
bGFibGUuCisJCSAqLworCQlfX3U2NCBuX2NvbmZpZ3M7CisKKwkJLyoKKwkJICogV2hlbiBxdWVy
eV9pZCA9PSBEUk1fSTkxNV9RVUVSWV9QRVJGX0NPTkZJR19EQVRBX0ZPUl9JRCwKKwkJICogaTkx
NSB3aWxsIHVzZSB0aGUgdmFsdWUgaW4gdGhpcyBmaWVsZCBhcyBjb25maWd1cmF0aW9uCisJCSAq
IGlkZW50aWZpZXIgdG8gZGVjaWRlIHdoYXQgZGF0YSB0byB3cml0ZSBpbnRvIGNvbmZpZ19wdHIu
CisJCSAqLworCQlfX3U2NCBjb25maWc7CisKKwkJLyoKKwkJICogV2hlbiBxdWVyeV9pZCA9PSBE
Uk1fSTkxNV9RVUVSWV9QRVJGX0NPTkZJR19EQVRBX0ZPUl9VVUlELAorCQkgKiBpOTE1IHdpbGwg
dXNlIHRoZSB2YWx1ZSBpbiB0aGlzIGZpZWxkIGFzIGNvbmZpZ3VyYXRpb24KKwkJICogaWRlbnRp
ZmllciB0byBkZWNpZGUgd2hhdCBkYXRhIHRvIHdyaXRlIGludG8gY29uZmlnX3B0ci4KKwkJICoK
KwkJICogU3RyaW5nIGZvcm1hdHRlZCBsaWtlICIlMDh4LSUwNHgtJTA0eC0lMDR4LSUwMTJ4Igor
CQkgKi8KKwkJY2hhciB1dWlkWzM2XTsKKwl9OworCisJLyoKKwkgKiBVbnVzZWQgZm9yIG5vdy4g
TXVzdCBiZSBjbGVhcmVkIHRvIHplcm8uCisJICovCisJX191MzIgZmxhZ3M7CisKKwkvKgorCSAq
IFdoZW4gcXVlcnlfaXRlbS5mbGFncyA9PSBEUk1fSTkxNV9RVUVSWV9QRVJGX0NPTkZJR19MSVNU
LCBpOTE1IHdpbGwKKwkgKiB3cml0ZSBhbiBhcnJheSBvZiBfX3U2NCBvZiBjb25maWd1cmF0aW9u
IGlkZW50aWZpZXJzLgorCSAqCisJICogV2hlbiBxdWVyeV9pdGVtLmZsYWdzID09IERSTV9JOTE1
X1FVRVJZX1BFUkZfQ09ORklHX0RBVEEsIGk5MTUgd2lsbAorCSAqIHdyaXRlIGEgc3RydWN0IGRy
bV9pOTE1X3BlcmZfb2FfY29uZmlnLiBJZiB0aGUgZm9sbG93aW5nIGZpZWxkcyBvZgorCSAqIGRy
bV9pOTE1X3BlcmZfb2FfY29uZmlnIGFyZSBzZXQgbm90IHNldCB0byAwLCBpOTE1IHdpbGwgd3Jp
dGUgaW50bworCSAqIHRoZSBhc3NvY2lhdGVkIHBvaW50ZXJzIHRoZSB2YWx1ZXMgb2Ygc3VibWl0
dGVkIHdoZW4gdGhlCisJICogY29uZmlndXJhdGlvbiB3YXMgY3JlYXRlZCA6CisJICoKKwkgKiAg
ICAgICAgIC0gbl9tdXhfcmVncworCSAqICAgICAgICAgLSBuX2Jvb2xlYW5fcmVncworCSAqICAg
ICAgICAgLSBuX2ZsZXhfcmVncworCSAqLworCV9fdTggZGF0YVtdOworfTsKKwogI2lmIGRlZmlu
ZWQoX19jcGx1c3BsdXMpCiB9CiAjZW5kaWYKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
