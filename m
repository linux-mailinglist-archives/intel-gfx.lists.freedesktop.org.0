Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C607CC144
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 19:05:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E15376EBEA;
	Fri,  4 Oct 2019 17:05:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FA296EBE5
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 17:05:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 10:05:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="222216015"
Received: from bkokkula-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.7.77])
 by fmsmga002.fm.intel.com with ESMTP; 04 Oct 2019 10:04:59 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 18:04:35 +0100
Message-Id: <20191004170452.15410-5-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004170452.15410-1-matthew.auld@intel.com>
References: <20191004170452.15410-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 04/21] drm/i915/region: support volatile
 objects
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

Vm9sYXRpbGUgb2JqZWN0cyBhcmUgbWFya2VkIGFzIERPTlRORUVEIHdoaWxlIHBpbm5lZCwgdGhl
cmVmb3JlIG9uY2UKdW5waW5uZWQgdGhlIGJhY2tpbmcgc3RvcmUgY2FuIGJlIGRpc2NhcmRlZC4g
VGhpcyBpcyBsaW1pdGVkIHRvIGtlcm5lbAppbnRlcm5hbCBvYmplY3RzLgoKU2lnbmVkLW9mZi1i
eTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBD
USBUYW5nIDxjcS50YW5nQGludGVsLmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxh
aHRpbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVs
Z3VlQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1faW50ZXJuYWwuYyAgICB8IDE3ICsrKysrKysrKy0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmggICAgICB8IDEyICsrKysrKysrKysrKwogLi4uL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggICAgfCAgOSArKysrKysrKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jICAgICAgIHwgIDYgKysr
KysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcmVnaW9uLmMgICAgICB8IDEz
ICsrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9w
YWdlcy5jIHwgMTIgKysrKy0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1v
cnlfcmVnaW9uLmMgICAgICB8ICA0ICsrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21l
bW9yeV9yZWdpb24uaCAgICAgIHwgIDUgKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0
ZXN0cy9pOTE1X2dlbV9ndHQuYyAgIHwgIDUgKystLS0KIDkgZmlsZXMgY2hhbmdlZCwgNjMgaW5z
ZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2ludGVybmFsLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1faW50ZXJuYWwuYwppbmRleCAwYzQxZTA0YWI4ZmEuLjVhZTY5NGMyNGRmNCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2ludGVybmFsLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2ludGVybmFsLmMKQEAgLTExNywx
MyArMTE3LDYgQEAgc3RhdGljIGludCBpOTE1X2dlbV9vYmplY3RfZ2V0X3BhZ2VzX2ludGVybmFs
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiAJCWdvdG8gZXJyOwogCX0KIAotCS8q
IE1hcmsgdGhlIHBhZ2VzIGFzIGRvbnRuZWVkIHdoaWxzdCB0aGV5IGFyZSBzdGlsbCBwaW5uZWQu
IEFzIHNvb24KLQkgKiBhcyB0aGV5IGFyZSB1bnBpbm5lZCB0aGV5IGFyZSBhbGxvd2VkIHRvIGJl
IHJlYXBlZCBieSB0aGUgc2hyaW5rZXIsCi0JICogYW5kIHRoZSBjYWxsZXIgaXMgZXhwZWN0ZWQg
dG8gcmVwb3B1bGF0ZSAtIHRoZSBjb250ZW50cyBvZiB0aGlzCi0JICogb2JqZWN0IGFyZSBvbmx5
IHZhbGlkIHdoaWxzdCBhY3RpdmUgYW5kIHBpbm5lZC4KLQkgKi8KLQlvYmotPm1tLm1hZHYgPSBJ
OTE1X01BRFZfRE9OVE5FRUQ7Ci0KIAlfX2k5MTVfZ2VtX29iamVjdF9zZXRfcGFnZXMob2JqLCBz
dCwgc2dfcGFnZV9zaXplcyk7CiAKIAlyZXR1cm4gMDsKQEAgLTE0Myw3ICsxMzYsNiBAQCBzdGF0
aWMgdm9pZCBpOTE1X2dlbV9vYmplY3RfcHV0X3BhZ2VzX2ludGVybmFsKHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmosCiAJaW50ZXJuYWxfZnJlZV9wYWdlcyhwYWdlcyk7CiAKIAlvYmot
Pm1tLmRpcnR5ID0gZmFsc2U7Ci0Jb2JqLT5tbS5tYWR2ID0gSTkxNV9NQURWX1dJTExORUVEOwog
fQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3BzIGk5MTVfZ2Vt
X29iamVjdF9pbnRlcm5hbF9vcHMgPSB7CkBAIC0xODgsNiArMTgwLDE1IEBAIGk5MTVfZ2VtX29i
amVjdF9jcmVhdGVfaW50ZXJuYWwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJZHJt
X2dlbV9wcml2YXRlX29iamVjdF9pbml0KCZpOTE1LT5kcm0sICZvYmotPmJhc2UsIHNpemUpOwog
CWk5MTVfZ2VtX29iamVjdF9pbml0KG9iaiwgJmk5MTVfZ2VtX29iamVjdF9pbnRlcm5hbF9vcHMp
OwogCisJLyoKKwkgKiBNYXJrIHRoZSBvYmplY3QgYXMgdm9sYXRpbGUsIHN1Y2ggdGhhdCB0aGUg
cGFnZXMgYXJlIG1hcmtlZCBhcworCSAqIGRvbnRuZWVkIHdoaWxzdCB0aGV5IGFyZSBzdGlsbCBw
aW5uZWQuIEFzIHNvb24gYXMgdGhleSBhcmUgdW5waW5uZWQKKwkgKiB0aGV5IGFyZSBhbGxvd2Vk
IHRvIGJlIHJlYXBlZCBieSB0aGUgc2hyaW5rZXIsIGFuZCB0aGUgY2FsbGVyIGlzCisJICogZXhw
ZWN0ZWQgdG8gcmVwb3B1bGF0ZSAtIHRoZSBjb250ZW50cyBvZiB0aGlzIG9iamVjdCBhcmUgb25s
eSB2YWxpZAorCSAqIHdoaWxzdCBhY3RpdmUgYW5kIHBpbm5lZC4KKwkgKi8KKwlpOTE1X2dlbV9v
YmplY3Rfc2V0X3ZvbGF0aWxlKG9iaik7CisKIAlvYmotPnJlYWRfZG9tYWlucyA9IEk5MTVfR0VN
X0RPTUFJTl9DUFU7CiAJb2JqLT53cml0ZV9kb21haW4gPSBJOTE1X0dFTV9ET01BSU5fQ1BVOwog
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0Lmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKaW5kZXggZGZkMTZk
NjU2MzBmLi5jNWUxNGM5YzgwNWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3QuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0LmgKQEAgLTE0NSw2ICsxNDUsMTggQEAgaTkxNV9nZW1fb2JqZWN0X2lzX2NvbnRp
Z3VvdXMoY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIAlyZXR1cm4gb2Jq
LT5mbGFncyAmIEk5MTVfQk9fQUxMT0NfQ09OVElHVU9VUzsKIH0KIAorc3RhdGljIGlubGluZSBi
b29sCitpOTE1X2dlbV9vYmplY3RfaXNfdm9sYXRpbGUoY29uc3Qgc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaikKK3sKKwlyZXR1cm4gb2JqLT5mbGFncyAmIEk5MTVfQk9fQUxMT0NfVk9M
QVRJTEU7Cit9CisKK3N0YXRpYyBpbmxpbmUgdm9pZAoraTkxNV9nZW1fb2JqZWN0X3NldF92b2xh
dGlsZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQoreworCW9iai0+ZmxhZ3MgfD0g
STkxNV9CT19BTExPQ19WT0xBVElMRTsKK30KKwogc3RhdGljIGlubGluZSBib29sCiBpOTE1X2dl
bV9vYmplY3RfdHlwZV9oYXMoY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwK
IAkJCSB1bnNpZ25lZCBsb25nIGZsYWdzKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdF90eXBlcy5oCmluZGV4IGM2YTcxMmNmN2Q3YS4uYTM4N2UzZWU3Mjhi
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5
cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBl
cy5oCkBAIC0xMjEsNyArMTIxLDggQEAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgewogCiAJ
dW5zaWduZWQgbG9uZyBmbGFnczsKICNkZWZpbmUgSTkxNV9CT19BTExPQ19DT05USUdVT1VTIEJJ
VCgwKQotI2RlZmluZSBJOTE1X0JPX0FMTE9DX0ZMQUdTIChJOTE1X0JPX0FMTE9DX0NPTlRJR1VP
VVMpCisjZGVmaW5lIEk5MTVfQk9fQUxMT0NfVk9MQVRJTEUgICBCSVQoMSkKKyNkZWZpbmUgSTkx
NV9CT19BTExPQ19GTEFHUyAoSTkxNV9CT19BTExPQ19DT05USUdVT1VTIHwgSTkxNV9CT19BTExP
Q19WT0xBVElMRSkKIAogCS8qCiAJICogSXMgdGhlIG9iamVjdCB0byBiZSBtYXBwZWQgYXMgcmVh
ZC1vbmx5IHRvIHRoZSBHUFUKQEAgLTE3Miw2ICsxNzMsMTIgQEAgc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgewogCQkgKiBMaXN0IG9mIG1lbW9yeSByZWdpb24gYmxvY2tzIGFsbG9jYXRlZCBm
b3IgdGhpcyBvYmplY3QuCiAJCSAqLwogCQlzdHJ1Y3QgbGlzdF9oZWFkIGJsb2NrczsKKwkJLyoq
CisJCSAqIEVsZW1lbnQgd2l0aGluIG1lbW9yeV9yZWdpb24tPm9iamVjdHMgb3IgcmVnaW9uLT5w
dXJnZWFibGUKKwkJICogaWYgdGhlIG9iamVjdCBpcyBtYXJrZWQgYXMgRE9OVE5FRUQuIEFjY2Vz
cyBpcyBwcm90ZWN0ZWQgYnkKKwkJICogcmVnaW9uLT5vYmpfbG9jay4KKwkJICovCisJCXN0cnVj
dCBsaXN0X2hlYWQgcmVnaW9uX2xpbms7CiAKIAkJc3RydWN0IHNnX3RhYmxlICpwYWdlczsKIAkJ
dm9pZCAqbWFwcGluZzsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9wYWdlcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMK
aW5kZXggMmU5NDFmMDkzYTIwLi5iMGVjMDk1OWMxM2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9wYWdlcy5jCkBAIC0xOCw2ICsxOCw5IEBAIHZvaWQgX19pOTE1X2dlbV9v
YmplY3Rfc2V0X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAKIAlsb2Nr
ZGVwX2Fzc2VydF9oZWxkKCZvYmotPm1tLmxvY2spOwogCisJaWYgKGk5MTVfZ2VtX29iamVjdF9p
c192b2xhdGlsZShvYmopKQorCQlvYmotPm1tLm1hZHYgPSBJOTE1X01BRFZfRE9OVE5FRUQ7CisK
IAkvKiBNYWtlIHRoZSBwYWdlcyBjb2hlcmVudCB3aXRoIHRoZSBHUFUgKGZsdXNoaW5nIGFueSBz
d2FwaW4pLiAqLwogCWlmIChvYmotPmNhY2hlX2RpcnR5KSB7CiAJCW9iai0+d3JpdGVfZG9tYWlu
ID0gMDsKQEAgLTE2MCw2ICsxNjMsOSBAQCBfX2k5MTVfZ2VtX29iamVjdF91bnNldF9wYWdlcyhz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogCWlmIChJU19FUlJfT1JfTlVMTChwYWdl
cykpCiAJCXJldHVybiBwYWdlczsKIAorCWlmIChpOTE1X2dlbV9vYmplY3RfaXNfdm9sYXRpbGUo
b2JqKSkKKwkJb2JqLT5tbS5tYWR2ID0gSTkxNV9NQURWX1dJTExORUVEOworCiAJaTkxNV9nZW1f
b2JqZWN0X21ha2VfdW5zaHJpbmthYmxlKG9iaik7CiAKIAlpZiAob2JqLT5tbS5tYXBwaW5nKSB7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcmVnaW9uLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcmVnaW9uLmMKaW5kZXggMDRjYjlm
NzI5NDVlLi42NjMyNTRiM2RhMjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9yZWdpb24uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fcmVnaW9uLmMKQEAgLTEwOSwxMCArMTA5LDIzIEBAIHZvaWQgaTkxNV9nZW1fb2JqZWN0X2lu
aXRfbWVtb3J5X3JlZ2lvbihzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCUlOSVRf
TElTVF9IRUFEKCZvYmotPm1tLmJsb2Nrcyk7CiAJb2JqLT5tbS5yZWdpb24gPSBpbnRlbF9tZW1v
cnlfcmVnaW9uX2dldChtZW0pOwogCW9iai0+ZmxhZ3MgPSBmbGFnczsKKworCW11dGV4X2xvY2so
Jm1lbS0+b2JqX2xvY2spOworCisJaWYgKG9iai0+ZmxhZ3MgJiBJOTE1X0JPX0FMTE9DX1ZPTEFU
SUxFKQorCQlsaXN0X2FkZCgmb2JqLT5tbS5yZWdpb25fbGluaywgJm1lbS0+cHVyZ2VhYmxlKTsK
KwllbHNlCisJCWxpc3RfYWRkKCZvYmotPm1tLnJlZ2lvbl9saW5rLCAmbWVtLT5vYmplY3RzKTsK
KworCW11dGV4X3VubG9jaygmbWVtLT5vYmpfbG9jayk7CiB9CiAKIHZvaWQgaTkxNV9nZW1fb2Jq
ZWN0X3JlbGVhc2VfbWVtb3J5X3JlZ2lvbihzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
KQogeworCW11dGV4X2xvY2soJm9iai0+bW0ucmVnaW9uLT5vYmpfbG9jayk7CisJbGlzdF9kZWwo
Jm9iai0+bW0ucmVnaW9uX2xpbmspOworCW11dGV4X3VubG9jaygmb2JqLT5tbS5yZWdpb24tPm9i
al9sb2NrKTsKKwogCWludGVsX21lbW9yeV9yZWdpb25fcHV0KG9iai0+bW0ucmVnaW9uKTsKIH0K
IApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3Bh
Z2VzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYwpp
bmRleCA2M2E0NzQzZTVmNTQuLmYyNzc3MmY2Nzc5YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMKQEAgLTExNSw4ICsxMTUsNiBAQCBzdGF0
aWMgaW50IGdldF9odWdlX3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiAJ
aWYgKGk5MTVfZ2VtX2d0dF9wcmVwYXJlX3BhZ2VzKG9iaiwgc3QpKQogCQlnb3RvIGVycjsKIAot
CW9iai0+bW0ubWFkdiA9IEk5MTVfTUFEVl9ET05UTkVFRDsKLQogCUdFTV9CVUdfT04oc2dfcGFn
ZV9zaXplcyAhPSBvYmotPm1tLnBhZ2VfbWFzayk7CiAJX19pOTE1X2dlbV9vYmplY3Rfc2V0X3Bh
Z2VzKG9iaiwgc3QsIHNnX3BhZ2Vfc2l6ZXMpOwogCkBAIC0xMzcsNyArMTM1LDYgQEAgc3RhdGlj
IHZvaWQgcHV0X2h1Z2VfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAlo
dWdlX3BhZ2VzX2ZyZWVfcGFnZXMocGFnZXMpOwogCiAJb2JqLT5tbS5kaXJ0eSA9IGZhbHNlOwot
CW9iai0+bW0ubWFkdiA9IEk5MTVfTUFEVl9XSUxMTkVFRDsKIH0KIAogc3RhdGljIGNvbnN0IHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0X29wcyBodWdlX3BhZ2Vfb3BzID0gewpAQCAtMTcwLDYg
KzE2Nyw4IEBAIGh1Z2VfcGFnZXNfb2JqZWN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
LAogCWRybV9nZW1fcHJpdmF0ZV9vYmplY3RfaW5pdCgmaTkxNS0+ZHJtLCAmb2JqLT5iYXNlLCBz
aXplKTsKIAlpOTE1X2dlbV9vYmplY3RfaW5pdChvYmosICZodWdlX3BhZ2Vfb3BzKTsKIAorCWk5
MTVfZ2VtX29iamVjdF9zZXRfdm9sYXRpbGUob2JqKTsKKwogCW9iai0+d3JpdGVfZG9tYWluID0g
STkxNV9HRU1fRE9NQUlOX0NQVTsKIAlvYmotPnJlYWRfZG9tYWlucyA9IEk5MTVfR0VNX0RPTUFJ
Tl9DUFU7CiAJb2JqLT5jYWNoZV9sZXZlbCA9IEk5MTVfQ0FDSEVfTk9ORTsKQEAgLTIyOSw4ICsy
MjgsNiBAQCBzdGF0aWMgaW50IGZha2VfZ2V0X2h1Z2VfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaikKIAogCWk5MTVfc2dfdHJpbShzdCk7CiAKLQlvYmotPm1tLm1hZHYgPSBJ
OTE1X01BRFZfRE9OVE5FRUQ7Ci0KIAlfX2k5MTVfZ2VtX29iamVjdF9zZXRfcGFnZXMob2JqLCBz
dCwgc2dfcGFnZV9zaXplcyk7CiAKIAlyZXR1cm4gMDsKQEAgLTI2Myw4ICsyNjAsNiBAQCBzdGF0
aWMgaW50IGZha2VfZ2V0X2h1Z2VfcGFnZXNfc2luZ2xlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmopCiAJc2dfZG1hX2xlbihzZykgPSBvYmotPmJhc2Uuc2l6ZTsKIAlzZ19kbWFfYWRk
cmVzcyhzZykgPSBwYWdlX3NpemU7CiAKLQlvYmotPm1tLm1hZHYgPSBJOTE1X01BRFZfRE9OVE5F
RUQ7Ci0KIAlfX2k5MTVfZ2VtX29iamVjdF9zZXRfcGFnZXMob2JqLCBzdCwgc2ctPmxlbmd0aCk7
CiAKIAlyZXR1cm4gMDsKQEAgLTI4Myw3ICsyNzgsNiBAQCBzdGF0aWMgdm9pZCBmYWtlX3B1dF9o
dWdlX3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiB7CiAJZmFrZV9mcmVl
X2h1Z2VfcGFnZXMob2JqLCBwYWdlcyk7CiAJb2JqLT5tbS5kaXJ0eSA9IGZhbHNlOwotCW9iai0+
bW0ubWFkdiA9IEk5MTVfTUFEVl9XSUxMTkVFRDsKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0X29wcyBmYWtlX29wcyA9IHsKQEAgLTMyMyw2ICszMTcsOCBAQCBm
YWtlX2h1Z2VfcGFnZXNfb2JqZWN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1NjQg
c2l6ZSwgYm9vbCBzaW5nbGUpCiAJZWxzZQogCQlpOTE1X2dlbV9vYmplY3RfaW5pdChvYmosICZm
YWtlX29wcyk7CiAKKwlpOTE1X2dlbV9vYmplY3Rfc2V0X3ZvbGF0aWxlKG9iaik7CisKIAlvYmot
PndyaXRlX2RvbWFpbiA9IEk5MTVfR0VNX0RPTUFJTl9DUFU7CiAJb2JqLT5yZWFkX2RvbWFpbnMg
PSBJOTE1X0dFTV9ET01BSU5fQ1BVOwogCW9iai0+Y2FjaGVfbGV2ZWwgPSBJOTE1X0NBQ0hFX05P
TkU7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9u
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMKaW5kZXggOTgw
MDY2MThlODcxLi5mZTgwODg5OWNiZjggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX21lbW9yeV9yZWdpb24uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9t
ZW1vcnlfcmVnaW9uLmMKQEAgLTE1Miw2ICsxNTIsMTAgQEAgaW50ZWxfbWVtb3J5X3JlZ2lvbl9j
cmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJbWVtLT5taW5fcGFnZV9zaXpl
ID0gbWluX3BhZ2Vfc2l6ZTsKIAltZW0tPm9wcyA9IG9wczsKIAorCW11dGV4X2luaXQoJm1lbS0+
b2JqX2xvY2spOworCUlOSVRfTElTVF9IRUFEKCZtZW0tPm9iamVjdHMpOworCUlOSVRfTElTVF9I
RUFEKCZtZW0tPnB1cmdlYWJsZSk7CisKIAltdXRleF9pbml0KCZtZW0tPm1tX2xvY2spOwogCiAJ
aWYgKG9wcy0+aW5pdCkgewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
bWVtb3J5X3JlZ2lvbi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lv
bi5oCmluZGV4IDI5Yjg2Y2ExN2RkOS4uMzIzMjcwYTFlZjY3IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5oCkBAIC01Miw2ICs1MiwxMSBAQCBzdHJ1Y3QgaW50
ZWxfbWVtb3J5X3JlZ2lvbiB7CiAJdW5zaWduZWQgaW50IHR5cGU7CiAJdW5zaWduZWQgaW50IGlu
c3RhbmNlOwogCXVuc2lnbmVkIGludCBpZDsKKworCS8qIFByb3RlY3RzIGFjY2VzcyB0byBvYmpl
Y3RzIGFuZCBwdXJnZWFibGUgKi8KKwlzdHJ1Y3QgbXV0ZXggb2JqX2xvY2s7CisJc3RydWN0IGxp
c3RfaGVhZCBvYmplY3RzOworCXN0cnVjdCBsaXN0X2hlYWQgcHVyZ2VhYmxlOwogfTsKIAogaW50
IGludGVsX21lbW9yeV9yZWdpb25faW5pdF9idWRkeShzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lv
biAqbWVtKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1
X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9ndHQu
YwppbmRleCAxNjViM2E3Zjk3NDQuLmViZTczNWRmNjUwNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9ndHQuYwpAQCAtODIsOCArODIsNiBAQCBzdGF0aWMg
aW50IGZha2VfZ2V0X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiAJfQog
CUdFTV9CVUdfT04ocmVtKTsKIAotCW9iai0+bW0ubWFkdiA9IEk5MTVfTUFEVl9ET05UTkVFRDsK
LQogCV9faTkxNV9nZW1fb2JqZWN0X3NldF9wYWdlcyhvYmosIHBhZ2VzLCBzZ19wYWdlX3NpemVz
KTsKIAogCXJldHVybiAwOwpAQCAtOTUsNyArOTMsNiBAQCBzdGF0aWMgdm9pZCBmYWtlX3B1dF9w
YWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogewogCWZha2VfZnJlZV9wYWdl
cyhvYmosIHBhZ2VzKTsKIAlvYmotPm1tLmRpcnR5ID0gZmFsc2U7Ci0Jb2JqLT5tbS5tYWR2ID0g
STkxNV9NQURWX1dJTExORUVEOwogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3Rfb3BzIGZha2Vfb3BzID0gewpAQCAtMTIyLDYgKzExOSw4IEBAIGZha2VfZG1hX29i
amVjdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTY0IHNpemUpCiAJZHJtX2dlbV9w
cml2YXRlX29iamVjdF9pbml0KCZpOTE1LT5kcm0sICZvYmotPmJhc2UsIHNpemUpOwogCWk5MTVf
Z2VtX29iamVjdF9pbml0KG9iaiwgJmZha2Vfb3BzKTsKIAorCWk5MTVfZ2VtX29iamVjdF9zZXRf
dm9sYXRpbGUob2JqKTsKKwogCW9iai0+d3JpdGVfZG9tYWluID0gSTkxNV9HRU1fRE9NQUlOX0NQ
VTsKIAlvYmotPnJlYWRfZG9tYWlucyA9IEk5MTVfR0VNX0RPTUFJTl9DUFU7CiAJb2JqLT5jYWNo
ZV9sZXZlbCA9IEk5MTVfQ0FDSEVfTk9ORTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
