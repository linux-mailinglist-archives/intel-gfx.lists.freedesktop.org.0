Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B5FA55E9
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 14:26:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 357B589BB3;
	Mon,  2 Sep 2019 12:26:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDEDC89BD5
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2019 12:26:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Sep 2019 05:26:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,459,1559545200"; d="scan'208";a="183297670"
Received: from shmuelle-mobl2.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.38.87])
 by fmsmga007.fm.intel.com with ESMTP; 02 Sep 2019 05:26:40 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Sep 2019 15:26:22 +0300
Message-Id: <20190902122624.31902-10-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190902122624.31902-1-lionel.g.landwerlin@intel.com>
References: <20190902122624.31902-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v13 09/11] drm/i915: add a new perf
 configuration execbuf parameter
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

V2Ugd2FudCB0aGUgYWJpbGl0eSB0byBkaXNwYXRjaCBhIHNldCBvZiBjb21tYW5kIGJ1ZmZlciB0
byB0aGUKaGFyZHdhcmUsIGVhY2ggd2l0aCBhIGRpZmZlcmVudCBPQSBjb25maWd1cmF0aW9uLiBU
byBhY2hpZXZlIHRoaXMsIHdlCnJldXNlIGEgY291cGxlIG9mIGZpZWxkcyBmcm9tIHRoZSBleGVj
YnVmMiBzdHJ1Y3QgKEkgQ0FOIEhBWgpleGVjYnVmMz8pIHRvIG5vdGlmeSB3aGF0IE9BIGNvbmZp
Z3VyYXRpb24gc2hvdWxkIGJlIHVzZWQgZm9yIGEgYmF0Y2gKYnVmZmVyLiBUaGlzIHJlcXVpcmVz
IHRoZSBwcm9jZXNzIG1ha2luZyB0aGUgZXhlY2J1ZiB3aXRoIHRoaXMgZmxhZyB0bwphbHNvIG93
biB0aGUgcGVyZiBmZCBhdCB0aGUgdGltZSBvZiBleGVjYnVmLgoKdjI6IEFkZCBhIGVtaXRfb2Ff
Y29uZmlnKCkgdmZ1bmMgaW4gdGhlIGludGVsX2VuZ2luZV9jcyAoQ2hyaXMpCiAgICBNb3ZlIG9h
X2NvbmZpZyB2bWEgdG8gYWN0aXZlIChDaHJpcykKCnYzOiBEb24ndCBkcm9wIHRoZSBsb2NrIGZv
ciBlbmdpbmUgbG9va3VwIChDaHJpcykKICAgIE1vdmUgT0EgY29uZmlnIHZtYSB0byBhY3RpdmUg
YmVmb3JlIHdyaXRpbmcgdGhlIHJpbmdidWZmZXIgKENocmlzKQoKdjQ6IFJldXNlIGk5MTVfdXNl
cl9leHRlbnNpb25fZm4KICAgIFNlcmlhbGl6ZSByZXF1ZXN0cyB3aXRoIE9BIGNvbmZpZyB1cGRh
dGVzCgp2NTogQ2hlY2sgdGhhdCB0aGUgY2hhaW5lZCBleHRlbnNpb24gaXMgb25seSBwcmVzZW50
IG9uY2UgKENocmlzKQogICAgVW5waW4gb2Ffdm1hIGluIG1haW4gcGF0aCAoQ2hyaXMpCgp2Njog
VXNlIEJJVF9VTEwgKENocmlzKQoKdjc6IEhvbGQgZHJtLnN0cnVjdF9tdXRleCB3aGVuIHNlcmlh
bGl6aW5nIHRoZSByZXF1ZXN0IHdpdGggT0EgY29uZmlnIChDaHJpcykKCnY4OiBSZW1vdmUgYWN0
aXZlIHJlcXVlc3QgZnJvbSBlbmdpbmUgKExpb25lbCkKCnY5OiBNb3ZlIGZldGNoaW5nIE9BIGNv
bmZpZ3VyYXRpb24gcGFzcyBlbmdpbmUgcGlubmluZyAoTGlvbmVsKQogICAgTG9jayBWTUEgYmVm
b3JlIG1vdmluZyB0byBhY3RpdmUgKENocmlzKQoKU2lnbmVkLW9mZi1ieTogTGlvbmVsIExhbmR3
ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgotLS0KIC4uLi9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8IDE0NiArKysrKysrKysrKysrKysrKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2V0cGFyYW0uYyAgICAgICAgICB8ICAgNCArCiBp
bmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggICAgICAgICAgICAgICAgICAgfCAgMzkgKysrKysK
IDMgZmlsZXMgY2hhbmdlZCwgMTg4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwppbmRleCA0NmFk
OGQ5NjQyZDEuLjE3ODU3Y2YzMWJhZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZXhlY2J1ZmZlci5jCkBAIC0yNCw2ICsyNCw3IEBACiAjaW5jbHVkZSAiaTkxNV9n
ZW1fY2xmbHVzaC5oIgogI2luY2x1ZGUgImk5MTVfZ2VtX2NvbnRleHQuaCIKICNpbmNsdWRlICJp
OTE1X2dlbV9pb2N0bHMuaCIKKyNpbmNsdWRlICJpOTE1X3BlcmYuaCIKICNpbmNsdWRlICJpOTE1
X3RyYWNlLmgiCiAjaW5jbHVkZSAiaTkxNV91c2VyX2V4dGVuc2lvbnMuaCIKIApAQCAtMjg0LDcg
KzI4NSwxMiBAQCBzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyIHsKIAlzdHJ1Y3QgewogCQl1NjQgZmxh
Z3M7IC8qKiBBdmFpbGFibGUgZXh0ZW5zaW9ucyBwYXJhbWV0ZXJzICovCiAJCXN0cnVjdCBkcm1f
aTkxNV9nZW1fZXhlY2J1ZmZlcl9leHRfdGltZWxpbmVfZmVuY2VzIHRpbWVsaW5lX2ZlbmNlczsK
KwkJc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyX2V4dF9wZXJmIHBlcmZfY29uZmlnOwog
CX0gZXh0ZW5zaW9uczsKKworCXN0cnVjdCBmaWxlICpwZXJmX2ZpbGU7CisJc3RydWN0IGk5MTVf
b2FfY29uZmlnICpvYV9jb25maWc7IC8qKiBIVyBjb25maWd1cmF0aW9uIGZvciBPQSwgTlVMTCBp
cyBub3QgbmVlZGVkLiAqLworCXN0cnVjdCBpOTE1X3ZtYSAqb2Ffdm1hOwogfTsKIAogI2RlZmlu
ZSBleGVjX2VudHJ5KEVCLCBWTUEpICgmKEVCKS0+ZXhlY1soVk1BKS0+ZXhlY19mbGFncyAtIChF
QiktPmZsYWdzXSkKQEAgLTExNTIsNiArMTE1OCw1OCBAQCBzdGF0aWMgaW50IHJlbG9jX21vdmVf
dG9fZ3B1KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCBzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKIAly
ZXR1cm4gZXJyOwogfQogCisKK3N0YXRpYyBpbnQKK2dldF9leGVjYnVmX29hX2NvbmZpZyhzdHJ1
Y3QgaTkxNV9leGVjYnVmZmVyICplYikKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2FfYm87CisJaW50IGVyciA9IDA7CisKKwllYi0+cGVyZl9maWxlID0gTlVMTDsKKwllYi0+b2Ff
Y29uZmlnID0gTlVMTDsKKwllYi0+b2Ffdm1hID0gTlVMTDsKKworCWlmICgoZWItPmV4dGVuc2lv
bnMuZmxhZ3MgJiBCSVRfVUxMKERSTV9JOTE1X0dFTV9FWEVDQlVGRkVSX0VYVF9QRVJGKSkgPT0g
MCkKKwkJcmV0dXJuIDA7CisKKwllYi0+cGVyZl9maWxlID0gZmdldChlYi0+ZXh0ZW5zaW9ucy5w
ZXJmX2NvbmZpZy5wZXJmX2ZkKTsKKwlpZiAoIWViLT5wZXJmX2ZpbGUpCisJCXJldHVybiAtRUlO
VkFMOworCisJZXJyID0gaTkxNV9tdXRleF9sb2NrX2ludGVycnVwdGlibGUoJmViLT5pOTE1LT5k
cm0pOworCWlmIChlcnIpCisJCXJldHVybiBlcnI7CisKKwlpZiAoZWItPnBlcmZfZmlsZS0+cHJp
dmF0ZV9kYXRhICE9IGViLT5pOTE1LT5wZXJmLmV4Y2x1c2l2ZV9zdHJlYW0pCisJCWVyciA9IC1F
SU5WQUw7CisKKwltdXRleF91bmxvY2soJmViLT5pOTE1LT5kcm0uc3RydWN0X211dGV4KTsKKwor
CWlmIChlcnIpCisJCXJldHVybiBlcnI7CisKKwlpZiAoZWItPmk5MTUtPnBlcmYuZXhjbHVzaXZl
X3N0cmVhbS0+ZW5naW5lICE9IGViLT5lbmdpbmUpCisJCXJldHVybiAtRUlOVkFMOworCisJZXJy
ID0gaTkxNV9wZXJmX2dldF9vYV9jb25maWdfYW5kX2JvKAorCQllYi0+aTkxNS0+cGVyZi5leGNs
dXNpdmVfc3RyZWFtLAorCQllYi0+ZXh0ZW5zaW9ucy5wZXJmX2NvbmZpZy5vYV9jb25maWcsCisJ
CSZlYi0+b2FfY29uZmlnLCAmb2FfYm8pOworCWlmIChlcnIpCisJCXJldHVybiBlcnI7CisKKwll
Yi0+b2Ffdm1hID0gaTkxNV92bWFfaW5zdGFuY2Uob2FfYm8sCisJCQkJICAgICAgICZlYi0+ZW5n
aW5lLT5ndC0+Z2d0dC0+dm0sIE5VTEwpOworCWk5MTVfZ2VtX29iamVjdF9wdXQob2FfYm8pOwor
CWlmIChJU19FUlIoZWItPm9hX3ZtYSkpIHsKKwkJZXJyID0gUFRSX0VSUihlYi0+b2Ffdm1hKTsK
KwkJZWItPm9hX3ZtYSA9IE5VTEw7CisJCXJldHVybiBlcnI7CisJfQorCisJcmV0dXJuIDA7Cit9
CisKIHN0YXRpYyBpbnQgX19yZWxvY19ncHVfYWxsb2Moc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAq
ZWIsCiAJCQkgICAgIHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAogCQkJICAgICB1bnNpZ25lZCBpbnQg
bGVuKQpAQCAtMjA1MSw2ICsyMTA5LDU0IEBAIGFkZF90b19jbGllbnQoc3RydWN0IGk5MTVfcmVx
dWVzdCAqcnEsIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSkKIAlzcGluX3VubG9jaygmZmlsZV9wcml2
LT5tbS5sb2NrKTsKIH0KIAorc3RhdGljIGludCBlYl9vYV9jb25maWcoc3RydWN0IGk5MTVfZXhl
Y2J1ZmZlciAqZWIpCit7CisJc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnBlcmZfc3RyZWFtOwor
CWludCBlcnI7CisKKwlpZiAoIWViLT5vYV9jb25maWcpCisJCXJldHVybiAwOworCisJcGVyZl9z
dHJlYW0gPSBlYi0+cGVyZl9maWxlLT5wcml2YXRlX2RhdGE7CisKKwllcnIgPSBtdXRleF9sb2Nr
X2ludGVycnVwdGlibGUoJnBlcmZfc3RyZWFtLT5jb25maWdfbXV0ZXgpOworCWlmIChlcnIpCisJ
CXJldHVybiBlcnI7CisKKwllcnIgPSBpOTE1X2FjdGl2ZV9yZXF1ZXN0X3NldCgmcGVyZl9zdHJl
YW0tPmFjdGl2ZV9jb25maWdfcnEsCisJCQkJICAgICAgZWItPnJlcXVlc3QpOworCWlmIChlcnIp
CisJCWdvdG8gb3V0OworCisJLyoKKwkgKiBJZiB0aGUgY29uZmlnIGhhc24ndCBjaGFuZ2VkLCBz
a2lwIHJlY29uZmlndXJpbmcgdGhlIEhXICh0aGlzIGlzCisJICogc3ViamVjdCB0byBhIGRlbGF5
IHdlIHdhbnQgdG8gYXZvaWQgaGFzIG11Y2ggYXMgcG9zc2libGUpLgorCSAqLworCWlmIChlYi0+
b2FfY29uZmlnID09IHBlcmZfc3RyZWFtLT5vYV9jb25maWcpCisJCWdvdG8gb3V0OworCisJaTkx
NV92bWFfbG9jayhlYi0+b2Ffdm1hKTsKKwllcnIgPSBpOTE1X3JlcXVlc3RfYXdhaXRfb2JqZWN0
KGViLT5yZXF1ZXN0LCBlYi0+b2Ffdm1hLT5vYmosIGZhbHNlKTsgLyogYXdhaXRfcmVzdiBhbHJl
YWR5ISAqLworCWlmICghZXJyKQorCQllcnIgPSBpOTE1X3ZtYV9tb3ZlX3RvX2FjdGl2ZShlYi0+
b2Ffdm1hLCBlYi0+cmVxdWVzdCwgMCk7CisJaTkxNV92bWFfdW5sb2NrKGViLT5vYV92bWEpOwor
CWlmIChlcnIpCisJCWdvdG8gb3V0OworCisJZXJyID0gZWItPmVuZ2luZS0+ZW1pdF9iYl9zdGFy
dChlYi0+cmVxdWVzdCwKKwkJCQkJZWItPm9hX3ZtYS0+bm9kZS5zdGFydCwKKwkJCQkJMCwgSTkx
NV9ESVNQQVRDSF9TRUNVUkUpOworCWlmIChlcnIpCisJCWdvdG8gb3V0OworCisJc3dhcChlYi0+
b2FfY29uZmlnLCBwZXJmX3N0cmVhbS0+b2FfY29uZmlnKTsKKworb3V0OgorCW11dGV4X3VubG9j
aygmcGVyZl9zdHJlYW0tPmNvbmZpZ19tdXRleCk7CisKKwlyZXR1cm4gZXJyOworfQorCiBzdGF0
aWMgaW50IGViX3N1Ym1pdChzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKIHsKIAlpbnQgZXJy
OwpAQCAtMjA3Nyw2ICsyMTgzLDEwIEBAIHN0YXRpYyBpbnQgZWJfc3VibWl0KHN0cnVjdCBpOTE1
X2V4ZWNidWZmZXIgKmViKQogCQkJcmV0dXJuIGVycjsKIAl9CiAKKwllcnIgPSBlYl9vYV9jb25m
aWcoZWIpOworCWlmIChlcnIpCisJCXJldHVybiBlcnI7CisKIAllcnIgPSBlYi0+ZW5naW5lLT5l
bWl0X2JiX3N0YXJ0KGViLT5yZXF1ZXN0LAogCQkJCQllYi0+YmF0Y2gtPm5vZGUuc3RhcnQgKwog
CQkJCQllYi0+YmF0Y2hfc3RhcnRfb2Zmc2V0LApAQCAtMjY0Myw4ICsyNzUzLDI1IEBAIHN0YXRp
YyBpbnQgcGFyc2VfdGltZWxpbmVfZmVuY2VzKHN0cnVjdCBpOTE1X3VzZXJfZXh0ZW5zaW9uIF9f
dXNlciAqZXh0LCB2b2lkICpkCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyBpbnQgcGFyc2VfcGVy
Zl9jb25maWcoc3RydWN0IGk5MTVfdXNlcl9leHRlbnNpb24gX191c2VyICpleHQsIHZvaWQgKmRh
dGEpCit7CisJc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIgPSBkYXRhOworCisJaWYgKGViLT5l
eHRlbnNpb25zLmZsYWdzICYgQklUX1VMTChEUk1fSTkxNV9HRU1fRVhFQ0JVRkZFUl9FWFRfUEVS
RikpCisJCXJldHVybiAtRUlOVkFMOworCisJaWYgKGNvcHlfZnJvbV91c2VyKCZlYi0+ZXh0ZW5z
aW9ucy5wZXJmX2NvbmZpZywgZXh0LAorCQkJICAgc2l6ZW9mKGViLT5leHRlbnNpb25zLnBlcmZf
Y29uZmlnKSkpCisJCXJldHVybiAtRUZBVUxUOworCisJZWItPmV4dGVuc2lvbnMuZmxhZ3MgfD0g
QklUX1VMTChEUk1fSTkxNV9HRU1fRVhFQ0JVRkZFUl9FWFRfUEVSRik7CisKKwlyZXR1cm4gMDsK
K30KKwogc3RhdGljIGNvbnN0IGk5MTVfdXNlcl9leHRlbnNpb25fZm4gZXhlY2J1Zl9leHRlbnNp
b25zW10gPSB7CiAgICAgICAgIFtEUk1fSTkxNV9HRU1fRVhFQ0JVRkZFUl9FWFRfVElNRUxJTkVf
RkVOQ0VTXSA9IHBhcnNlX3RpbWVsaW5lX2ZlbmNlcywKKyAgICAgICAgW0RSTV9JOTE1X0dFTV9F
WEVDQlVGRkVSX0VYVF9QRVJGXSA9IHBhcnNlX3BlcmZfY29uZmlnLAogfTsKIAogc3RhdGljIGlu
dApAQCAtMjc2OSwxMCArMjg5NiwxNCBAQCBpOTE1X2dlbV9kb19leGVjYnVmZmVyKHN0cnVjdCBk
cm1fZGV2aWNlICpkZXYsCiAJaWYgKHVubGlrZWx5KGVycikpCiAJCWdvdG8gZXJyX2NvbnRleHQ7
CiAKLQllcnIgPSBpOTE1X211dGV4X2xvY2tfaW50ZXJydXB0aWJsZShkZXYpOworCWVyciA9IGdl
dF9leGVjYnVmX29hX2NvbmZpZygmZWIpOwogCWlmIChlcnIpCiAJCWdvdG8gZXJyX2VuZ2luZTsK
IAorCWVyciA9IGk5MTVfbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKGRldik7CisJaWYgKGVycikK
KwkJZ290byBlcnJfb2FfY29uZmlnOworCiAJZXJyID0gZWJfcmVsb2NhdGUoJmViKTsKIAlpZiAo
ZXJyKSB7CiAJCS8qCkBAIC0yODg5LDYgKzMwMjAsMTIgQEAgaTkxNV9nZW1fZG9fZXhlY2J1ZmZl
cihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCQl9CiAJfQogCisJaWYgKGViLm9hX3ZtYSkgewor
CQllcnIgPSBpOTE1X3ZtYV9waW4oZWIub2Ffdm1hLCAwLCAwLCBQSU5fR0xPQkFMKTsKKwkJaWYg
KGVycikKKwkJCWdvdG8gZXJyX3JlcXVlc3Q7CisJfQorCiAJLyoKIAkgKiBXaGlsc3QgdGhpcyBy
ZXF1ZXN0IGV4aXN0cywgYmF0Y2hfb2JqIHdpbGwgYmUgb24gdGhlCiAJICogYWN0aXZlX2xpc3Qs
IGFuZCBzbyB3aWxsIGhvbGQgdGhlIGFjdGl2ZSByZWZlcmVuY2UuIE9ubHkgd2hlbiB0aGlzCkBA
IC0yOTI5LDYgKzMwNjYsMTMgQEAgaTkxNV9nZW1fZG9fZXhlY2J1ZmZlcihzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LAogCWlmIChlYi5leGVjKQogCQllYl9yZWxlYXNlX3ZtYXMoJmViKTsKIAltdXRl
eF91bmxvY2soJmRldi0+c3RydWN0X211dGV4KTsKK2Vycl9vYV9jb25maWc6CisJaWYgKGViLnBl
cmZfZmlsZSkKKwkJZnB1dChlYi5wZXJmX2ZpbGUpOworCWlmIChlYi5vYV9jb25maWcpCisJCWk5
MTVfb2FfY29uZmlnX3B1dChlYi5vYV9jb25maWcpOworCWlmIChlYi5vYV92bWEpCisJCWk5MTVf
dm1hX3VucGluKGViLm9hX3ZtYSk7CiBlcnJfZW5naW5lOgogCWViX3VucGluX2VuZ2luZSgmZWIp
OwogZXJyX2NvbnRleHQ6CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
dHBhcmFtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dldHBhcmFtLmMKaW5kZXggYmQ0
MWNjNWNlOTA2Li4zOWQ0YzJjMmUwZjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2V0cGFyYW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dldHBhcmFt
LmMKQEAgLTE2MSw2ICsxNjEsMTAgQEAgaW50IGk5MTVfZ2V0cGFyYW1faW9jdGwoc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAljYXNlIEk5MTVfUEFSQU1fUEVSRl9SRVZJU0lP
TjoKIAkJdmFsdWUgPSBpOTE1X3BlcmZfaW9jdGxfdmVyc2lvbigpOwogCQlicmVhazsKKwljYXNl
IEk5MTVfUEFSQU1fSEFTX0VYRUNfUEVSRl9DT05GSUc6CisJCS8qIE9idmlvdXNseSByZXF1aXJl
cyBwZXJmIHN1cHBvcnQuICovCisJCXZhbHVlID0gaTkxNS0+cGVyZi5pbml0aWFsaXplZDsKKwkJ
YnJlYWs7CiAJZGVmYXVsdDoKIAkJRFJNX0RFQlVHKCJVbmtub3duIHBhcmFtZXRlciAlZFxuIiwg
cGFyYW0tPnBhcmFtKTsKIAkJcmV0dXJuIC1FSU5WQUw7CmRpZmYgLS1naXQgYS9pbmNsdWRlL3Vh
cGkvZHJtL2k5MTVfZHJtLmggYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKaW5kZXggZTk4
YzlhN2JhYTkxLi4zMTY2YzljYTg1ZjMgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vaTkx
NV9kcm0uaAorKysgYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKQEAgLTYyNCw2ICs2MjQs
MTYgQEAgdHlwZWRlZiBzdHJ1Y3QgZHJtX2k5MTVfaXJxX3dhaXQgewogICovCiAjZGVmaW5lIEk5
MTVfUEFSQU1fUEVSRl9SRVZJU0lPTgk1NQogCisvKgorICogUmVxdWVzdCBhbiBpOTE1L3BlcmYg
cGVyZm9ybWFuY2UgY29uZmlndXJhdGlvbiBjaGFuZ2UgYmVmb3JlIHJ1bm5pbmcgdGhlCisgKiBj
b21tYW5kcyBnaXZlbiBpbiBhbiBleGVjYnVmLgorICoKKyAqIFBlcmZvcm1hbmNlIGNvbmZpZ3Vy
YXRpb24gSUQgYW5kIHRoZSBmaWxlIGRlc2NyaXB0b3Igb2YgdGhlIGk5MTUgcGVyZgorICogc3Ry
ZWFtIGFyZSBnaXZlbiB0aHJvdWdoIGRybV9pOTE1X2dlbV9leGVjYnVmZmVyX2V4dF9wZXJmLiBT
ZWUKKyAqIEk5MTVfRVhFQ19FWFQuCisgKi8KKyNkZWZpbmUgSTkxNV9QQVJBTV9IQVNfRVhFQ19Q
RVJGX0NPTkZJRyA1NgorCiAvKiBNdXN0IGJlIGtlcHQgY29tcGFjdCAtLSBubyBob2xlcyBhbmQg
d2VsbCBkb2N1bWVudGVkICovCiAKIHR5cGVkZWYgc3RydWN0IGRybV9pOTE1X2dldHBhcmFtIHsK
QEAgLTEwMjYsNiArMTAzNiwxMiBAQCBlbnVtIGRybV9pOTE1X2dlbV9leGVjYnVmZmVyX2V4dCB7
CiAJICovCiAJRFJNX0k5MTVfR0VNX0VYRUNCVUZGRVJfRVhUX1RJTUVMSU5FX0ZFTkNFUyA9IDEs
CiAKKwkvKioKKwkgKiBUaGlzIGlkZW50aWZpZXIgaXMgYXNzb2NpYXRlZCB3aXRoCisJICogZHJt
X2k5MTVfZ2VtX2V4ZWNidWZmZXJfcGVyZl9leHQuCisJICovCisJRFJNX0k5MTVfR0VNX0VYRUNC
VUZGRVJfRVhUX1BFUkYsCisKIAlEUk1fSTkxNV9HRU1fRVhFQ0JVRkZFUl9FWFRfTUFYIC8qIG5v
bi1BQkkgKi8KIH07CiAKQEAgLTEwNTYsNiArMTA3MiwyOSBAQCBzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X2V4ZWNidWZmZXJfZXh0X3RpbWVsaW5lX2ZlbmNlcyB7CiAJX191NjQgdmFsdWVzX3B0cjsKIH07
CiAKK3N0cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcl9leHRfcGVyZiB7CisJc3RydWN0IGk5
MTVfdXNlcl9leHRlbnNpb24gYmFzZTsKKworCS8qKgorCSAqIFBlcmZvcm1hbmNlIGZpbGUgZGVz
Y3JpcHRvciByZXR1cm5lZCBieSBEUk1fSU9DVExfSTkxNV9QRVJGX09QRU4uCisJICogVGhpcyBp
cyB1c2VkIHRvIGlkZW50aWZ5IHRoYXQgdGhlIGFwcGxpY2F0aW9uIHJlcXVlc3RpbmcgYSBIVwor
CSAqIHBlcmZvcm1hbmNlIGNvbmZpZ3VyYXRpb24gY2hhbmdlIGFjdHVhbGx5IGhhcyBhIHJpZ2h0
IHRvIGRvIHNvCisJICogYmVjYXVzZSBpdCBhbHNvIGhhcyBhY2Nlc3MgdGhlIGk5MTUtcGVyZiBz
dHJlYW0uCisJICovCisJX19zMzIgcGVyZl9mZDsKKworCS8qKgorCSAqIFVudXNlZCBmb3Igbm93
LiBNdXN0IGJlIGNsZWFyZWQgdG8gemVyby4KKwkgKi8KKwlfX3UzMiBwYWQ7CisKKwkvKioKKwkg
KiBPQSBjb25maWd1cmF0aW9uIElEIHRvIHN3aXRjaCB0byBiZWZvcmUgZXhlY3V0aW5nIHRoZSBj
b21tYW5kcworCSAqIGFzc29jaWF0ZWQgdG8gdGhlIGV4ZWNidWYuCisJICovCisJX191NjQgb2Ff
Y29uZmlnOworfTsKKwogc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiB7CiAJLyoqCiAJ
ICogTGlzdCBvZiBnZW1fZXhlY19vYmplY3QyIHN0cnVjdHMKLS0gCjIuMjMuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
