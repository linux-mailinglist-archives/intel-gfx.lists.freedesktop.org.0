Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE453A7EF2
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 15:15:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 027C86E3B7;
	Tue, 15 Jun 2021 13:15:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEE4A6E30D
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 13:15:18 +0000 (UTC)
IronPort-SDR: RCRbVbg7SOASRvaNbaPkRMRWbtOgzB2hMdjYaPdrA/di99GleyXX5BPkHugO+lsVfHyoAuLWft
 m8VZFkmJRlNg==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="205804389"
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="205804389"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 06:15:18 -0700
IronPort-SDR: KPHXODw8mCcAFO16i/pGBG5gsPkrGC/KvANdZ/RWHKqeWleeGVluq4hhZjvEzI+o/QhAFdm8nT
 HTTyYhgQ8vcA==
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="554443381"
Received: from vgribano-mobl.ccr.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.53])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 06:15:17 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Jun 2021 15:14:47 +0200
Message-Id: <20210615131451.61023-9-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210615131451.61023-1-thomas.hellstrom@linux.intel.com>
References: <20210615131451.61023-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 08/12] drm/i915/gt: Pipelined clear
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

RnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpVcGRhdGUgdGhl
IFBURSBhbmQgZW1pdCBhIGNsZWFyIHdpdGhpbiBhIHNpbmdsZSB1bnByZWVtcHRpYmxlIHBhY2tl
dApzdWNoIHRoYXQgd2UgY2FuIHNjaGVkdWxlIGFuZCBwaXBlbGluZSBjbGVhcnMuCgpTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ28tZGV2ZWxv
cGVkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5j
b20+ClNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxp
bnV4LmludGVsLmNvbT4KLS0tCnYzOgotIEhhbmRsZSBlbmdpbmUgaW5zdGFuY2VzIGNvcnJlY3Rs
eSAoUmVwb3J0ZWQgYnkgTWF0dGhldyBBdWxkKQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX21pZ3JhdGUuYyAgICB8IDE0MyArKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX21pZ3JhdGUuaCAgICB8ICAyMCArKysKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3NlbGZ0ZXN0X21pZ3JhdGUuYyB8IDE2MyArKysrKysrKysrKysrKysrKysrKysK
IDMgZmlsZXMgY2hhbmdlZCwgMzI2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9taWdyYXRlLmMKaW5kZXggZTJlODYwMDYzZTdiLi5iYTQwMDkxMjBiMzMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21pZ3JhdGUuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlLmMKQEAgLTQ4OCw2ICs0ODgsMTE0IEBA
IGludGVsX2NvbnRleHRfbWlncmF0ZV9jb3B5KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKIAly
ZXR1cm4gZXJyOwogfQogCitzdGF0aWMgaW50IGVtaXRfY2xlYXIoc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnEsIGludCBzaXplLCB1MzIgdmFsdWUpCit7CisJY29uc3QgaW50IGdlbiA9IElOVEVMX0dF
TihycS0+ZW5naW5lLT5pOTE1KTsKKwl1MzIgaW5zdGFuY2UgPSBycS0+ZW5naW5lLT5pbnN0YW5j
ZTsKKwl1MzIgKmNzOworCisJR0VNX0JVR19PTihzaXplID4+IFBBR0VfU0hJRlQgPiBTMTZfTUFY
KTsKKworCWNzID0gaW50ZWxfcmluZ19iZWdpbihycSwgZ2VuID49IDggPyA4IDogNik7CisJaWYg
KElTX0VSUihjcykpCisJCXJldHVybiBQVFJfRVJSKGNzKTsKKworCWlmIChnZW4gPj0gOCkgewor
CQkqY3MrKyA9IFhZX0NPTE9SX0JMVF9DTUQgfCBCTFRfV1JJVEVfUkdCQSB8ICg3IC0gMik7CisJ
CSpjcysrID0gQkxUX0RFUFRIXzMyIHwgQkxUX1JPUF9DT0xPUl9DT1BZIHwgUEFHRV9TSVpFOwor
CQkqY3MrKyA9IDA7CisJCSpjcysrID0gc2l6ZSA+PiBQQUdFX1NISUZUIDw8IDE2IHwgUEFHRV9T
SVpFIC8gNDsKKwkJKmNzKysgPSAwOyAvKiBvZmZzZXQgKi8KKwkJKmNzKysgPSBpbnN0YW5jZTsK
KwkJKmNzKysgPSB2YWx1ZTsKKwkJKmNzKysgPSBNSV9OT09QOworCX0gZWxzZSB7CisJCUdFTV9C
VUdfT04oaW5zdGFuY2UpOworCQkqY3MrKyA9IFhZX0NPTE9SX0JMVF9DTUQgfCBCTFRfV1JJVEVf
UkdCQSB8ICg2IC0gMik7CisJCSpjcysrID0gQkxUX0RFUFRIXzMyIHwgQkxUX1JPUF9DT0xPUl9D
T1BZIHwgUEFHRV9TSVpFOworCQkqY3MrKyA9IDA7CisJCSpjcysrID0gc2l6ZSA+PiBQQUdFX1NI
SUZUIDw8IDE2IHwgUEFHRV9TSVpFIC8gNDsKKwkJKmNzKysgPSAwOworCQkqY3MrKyA9IHZhbHVl
OworCX0KKworCWludGVsX3JpbmdfYWR2YW5jZShycSwgY3MpOworCXJldHVybiAwOworfQorCitp
bnQKK2ludGVsX2NvbnRleHRfbWlncmF0ZV9jbGVhcihzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2Us
CisJCQkgICAgc3RydWN0IGRtYV9mZW5jZSAqYXdhaXQsCisJCQkgICAgc3RydWN0IHNjYXR0ZXJs
aXN0ICpzZywKKwkJCSAgICBlbnVtIGk5MTVfY2FjaGVfbGV2ZWwgY2FjaGVfbGV2ZWwsCisJCQkg
ICAgYm9vbCBpc19sbWVtLAorCQkJICAgIHUzMiB2YWx1ZSwKKwkJCSAgICBzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICoqb3V0KQoreworCXN0cnVjdCBzZ3RfZG1hIGl0ID0gc2dfc2d0KHNnKTsKKwlzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICpycTsKKwlpbnQgZXJyOworCisJKm91dCA9IE5VTEw7CisKKwlHRU1f
QlVHX09OKGNlLT5yaW5nLT5zaXplIDwgU1pfNjRLKTsKKworCWRvIHsKKwkJaW50IGxlbjsKKwor
CQlycSA9IGk5MTVfcmVxdWVzdF9jcmVhdGUoY2UpOworCQlpZiAoSVNfRVJSKHJxKSkgeworCQkJ
ZXJyID0gUFRSX0VSUihycSk7CisJCQlnb3RvIG91dF9jZTsKKwkJfQorCisJCWlmIChhd2FpdCkg
eworCQkJZXJyID0gaTkxNV9yZXF1ZXN0X2F3YWl0X2RtYV9mZW5jZShycSwgYXdhaXQpOworCQkJ
aWYgKGVycikKKwkJCQlnb3RvIG91dF9ycTsKKworCQkJaWYgKHJxLT5lbmdpbmUtPmVtaXRfaW5p
dF9icmVhZGNydW1iKSB7CisJCQkJZXJyID0gcnEtPmVuZ2luZS0+ZW1pdF9pbml0X2JyZWFkY3J1
bWIocnEpOworCQkJCWlmIChlcnIpCisJCQkJCWdvdG8gb3V0X3JxOworCQkJfQorCisJCQlhd2Fp
dCA9IE5VTEw7CisJCX0KKworCQkvKiBUaGUgUFRFIHVwZGF0ZXMgKyBjbGVhciBtdXN0IG5vdCBi
ZSBpbnRlcnJ1cHRlZC4gKi8KKwkJZXJyID0gZW1pdF9ub19hcmJpdHJhdGlvbihycSk7CisJCWlm
IChlcnIpCisJCQlnb3RvIG91dF9ycTsKKworCQlsZW4gPSBlbWl0X3B0ZShycSwgJml0LCBjYWNo
ZV9sZXZlbCwgaXNfbG1lbSwgMCwgQ0hVTktfU1opOworCQlpZiAobGVuIDw9IDApIHsKKwkJCWVy
ciA9IGxlbjsKKwkJCWdvdG8gb3V0X3JxOworCQl9CisKKwkJZXJyID0gcnEtPmVuZ2luZS0+ZW1p
dF9mbHVzaChycSwgRU1JVF9JTlZBTElEQVRFKTsKKwkJaWYgKGVycikKKwkJCWdvdG8gb3V0X3Jx
OworCisJCWVyciA9IGVtaXRfY2xlYXIocnEsIGxlbiwgdmFsdWUpOworCisJCS8qIEFyYml0cmF0
aW9uIGlzIHJlLWVuYWJsZWQgYmV0d2VlbiByZXF1ZXN0cy4gKi8KK291dF9ycToKKwkJaWYgKCpv
dXQpCisJCQlpOTE1X3JlcXVlc3RfcHV0KCpvdXQpOworCQkqb3V0ID0gaTkxNV9yZXF1ZXN0X2dl
dChycSk7CisJCWk5MTVfcmVxdWVzdF9hZGQocnEpOworCQlpZiAoZXJyIHx8ICFpdC5zZyB8fCAh
c2dfZG1hX2xlbihpdC5zZykpCisJCQlicmVhazsKKworCQljb25kX3Jlc2NoZWQoKTsKKwl9IHdo
aWxlICgxKTsKKworb3V0X2NlOgorCXJldHVybiBlcnI7Cit9CisKIGludCBpbnRlbF9taWdyYXRl
X2NvcHkoc3RydWN0IGludGVsX21pZ3JhdGUgKm0sCiAJCSAgICAgICBzdHJ1Y3QgaTkxNV9nZW1f
d3dfY3R4ICp3dywKIAkJICAgICAgIHN0cnVjdCBkbWFfZmVuY2UgKmF3YWl0LApAQCAtNTI2LDYg
KzYzNCw0MSBAQCBpbnQgaW50ZWxfbWlncmF0ZV9jb3B5KHN0cnVjdCBpbnRlbF9taWdyYXRlICpt
LAogCXJldHVybiBlcnI7CiB9CiAKK2ludAoraW50ZWxfbWlncmF0ZV9jbGVhcihzdHJ1Y3QgaW50
ZWxfbWlncmF0ZSAqbSwKKwkJICAgIHN0cnVjdCBpOTE1X2dlbV93d19jdHggKnd3LAorCQkgICAg
c3RydWN0IGRtYV9mZW5jZSAqYXdhaXQsCisJCSAgICBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnLAor
CQkgICAgZW51bSBpOTE1X2NhY2hlX2xldmVsIGNhY2hlX2xldmVsLAorCQkgICAgYm9vbCBpc19s
bWVtLAorCQkgICAgdTMyIHZhbHVlLAorCQkgICAgc3RydWN0IGk5MTVfcmVxdWVzdCAqKm91dCkK
K3sKKwlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7CisJaW50IGVycjsKKworCSpvdXQgPSBOVUxM
OworCWlmICghbS0+Y29udGV4dCkKKwkJcmV0dXJuIC1FTk9ERVY7CisKKwljZSA9IGludGVsX21p
Z3JhdGVfY3JlYXRlX2NvbnRleHQobSk7CisJaWYgKElTX0VSUihjZSkpCisJCWNlID0gaW50ZWxf
Y29udGV4dF9nZXQobS0+Y29udGV4dCk7CisJR0VNX0JVR19PTihJU19FUlIoY2UpKTsKKworCWVy
ciA9IGludGVsX2NvbnRleHRfcGluX3d3KGNlLCB3dyk7CisJaWYgKGVycikKKwkJZ290byBvdXQ7
CisKKwllcnIgPSBpbnRlbF9jb250ZXh0X21pZ3JhdGVfY2xlYXIoY2UsIGF3YWl0LCBzZywgY2Fj
aGVfbGV2ZWwsCisJCQkJCSAgaXNfbG1lbSwgdmFsdWUsIG91dCk7CisKKwlpbnRlbF9jb250ZXh0
X3VucGluKGNlKTsKK291dDoKKwlpbnRlbF9jb250ZXh0X3B1dChjZSk7CisJcmV0dXJuIGVycjsK
K30KKwogdm9pZCBpbnRlbF9taWdyYXRlX2Zpbmkoc3RydWN0IGludGVsX21pZ3JhdGUgKm0pCiB7
CiAJc3RydWN0IGludGVsX2NvbnRleHQgKmNlOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbWlncmF0ZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bWlncmF0ZS5oCmluZGV4IDMyYzYxMTkwZWQ3My4uNGUxOGU3NTVhMDBiIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlLmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbWlncmF0ZS5oCkBAIC02LDYgKzYsOCBAQAogI2lmbmRlZiBfX0lO
VEVMX01JR1JBVEVfXwogI2RlZmluZSBfX0lOVEVMX01JR1JBVEVfXwogCisjaW5jbHVkZSA8bGlu
dXgvdHlwZXMuaD4KKwogI2luY2x1ZGUgImludGVsX21pZ3JhdGVfdHlwZXMuaCIKIAogc3RydWN0
IGRtYV9mZW5jZTsKQEAgLTQwLDYgKzQyLDI0IEBAIGludCBpbnRlbF9jb250ZXh0X21pZ3JhdGVf
Y29weShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCiAJCQkgICAgICAgYm9vbCBkc3RfaXNfbG1l
bSwKIAkJCSAgICAgICBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICoqb3V0KTsKIAoraW50CitpbnRlbF9t
aWdyYXRlX2NsZWFyKHN0cnVjdCBpbnRlbF9taWdyYXRlICptLAorCQkgICAgc3RydWN0IGk5MTVf
Z2VtX3d3X2N0eCAqd3csCisJCSAgICBzdHJ1Y3QgZG1hX2ZlbmNlICphd2FpdCwKKwkJICAgIHN0
cnVjdCBzY2F0dGVybGlzdCAqc2csCisJCSAgICBlbnVtIGk5MTVfY2FjaGVfbGV2ZWwgY2FjaGVf
bGV2ZWwsCisJCSAgICBib29sIGlzX2xtZW0sCisJCSAgICB1MzIgdmFsdWUsCisJCSAgICBzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICoqb3V0KTsKK2ludAoraW50ZWxfY29udGV4dF9taWdyYXRlX2NsZWFy
KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKKwkJCSAgICBzdHJ1Y3QgZG1hX2ZlbmNlICphd2Fp
dCwKKwkJCSAgICBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnLAorCQkJICAgIGVudW0gaTkxNV9jYWNo
ZV9sZXZlbCBjYWNoZV9sZXZlbCwKKwkJCSAgICBib29sIGlzX2xtZW0sCisJCQkgICAgdTMyIHZh
bHVlLAorCQkJICAgIHN0cnVjdCBpOTE1X3JlcXVlc3QgKipvdXQpOworCiB2b2lkIGludGVsX21p
Z3JhdGVfZmluaShzdHJ1Y3QgaW50ZWxfbWlncmF0ZSAqbSk7CiAKICNlbmRpZiAvKiBfX0lOVEVM
X01JR1JBVEVfXyAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRl
c3RfbWlncmF0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbWlncmF0ZS5j
CmluZGV4IDk3ODRkMTQ5ZWJmMS4uMTU5Yzg2NTZlMWIwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9taWdyYXRlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3Qvc2VsZnRlc3RfbWlncmF0ZS5jCkBAIC0xMjksNiArMTI5LDgyIEBAIHN0YXRpYyBpbnQg
Y29weShzdHJ1Y3QgaW50ZWxfbWlncmF0ZSAqbWlncmF0ZSwKIAlyZXR1cm4gZXJyOwogfQogCitz
dGF0aWMgaW50IGNsZWFyKHN0cnVjdCBpbnRlbF9taWdyYXRlICptaWdyYXRlLAorCQkgaW50ICgq
Zm4pKHN0cnVjdCBpbnRlbF9taWdyYXRlICptaWdyYXRlLAorCQkJICAgc3RydWN0IGk5MTVfZ2Vt
X3d3X2N0eCAqd3csCisJCQkgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAorCQkJ
ICAgdTMyIHZhbHVlLAorCQkJICAgc3RydWN0IGk5MTVfcmVxdWVzdCAqKm91dCksCisJCSB1MzIg
c3osIHN0cnVjdCBybmRfc3RhdGUgKnBybmcpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUgPSBtaWdyYXRlLT5jb250ZXh0LT5lbmdpbmUtPmk5MTU7CisJc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iajsKKwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKKwlzdHJ1Y3QgaTkx
NV9nZW1fd3dfY3R4IHd3OworCXUzMiAqdmFkZHI7CisJaW50IGVyciA9IDA7CisJaW50IGk7CisK
KwlvYmogPSBjcmVhdGVfbG1lbV9vcl9pbnRlcm5hbChpOTE1LCBzeik7CisJaWYgKElTX0VSUihv
YmopKQorCQlyZXR1cm4gMDsKKworCWZvcl9pOTE1X2dlbV93dygmd3csIGVyciwgdHJ1ZSkgewor
CQllcnIgPSBpOTE1X2dlbV9vYmplY3RfbG9jayhvYmosICZ3dyk7CisJCWlmIChlcnIpCisJCQlj
b250aW51ZTsKKworCQl2YWRkciA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKG9iaiwgSTkxNV9N
QVBfV0MpOworCQlpZiAoSVNfRVJSKHZhZGRyKSkgeworCQkJZXJyID0gUFRSX0VSUih2YWRkcik7
CisJCQljb250aW51ZTsKKwkJfQorCisJCWZvciAoaSA9IDA7IGkgPCBzeiAvIHNpemVvZih1MzIp
OyBpKyspCisJCQl2YWRkcltpXSA9IH5pOworCQlpOTE1X2dlbV9vYmplY3RfZmx1c2hfbWFwKG9i
aik7CisKKwkJZXJyID0gZm4obWlncmF0ZSwgJnd3LCBvYmosIHN6LCAmcnEpOworCQlpZiAoIWVy
cikKKwkJCWNvbnRpbnVlOworCisJCWlmIChlcnIgIT0gLUVERUFETEsgJiYgZXJyICE9IC1FSU5U
UiAmJiBlcnIgIT0gLUVSRVNUQVJUU1lTKQorCQkJcHJfZXJyKCIlcHMgZmFpbGVkLCBzaXplOiAl
dVxuIiwgZm4sIHN6KTsKKwkJaWYgKHJxKSB7CisJCQlpOTE1X3JlcXVlc3Rfd2FpdChycSwgMCwg
SFopOworCQkJaTkxNV9yZXF1ZXN0X3B1dChycSk7CisJCX0KKwkJaTkxNV9nZW1fb2JqZWN0X3Vu
cGluX21hcChvYmopOworCX0KKwlpZiAoZXJyKQorCQlnb3RvIGVycl9vdXQ7CisKKwlpZiAocnEp
IHsKKwkJaWYgKGk5MTVfcmVxdWVzdF93YWl0KHJxLCAwLCBIWikgPCAwKSB7CisJCQlwcl9lcnIo
IiVwcyB0aW1lZCBvdXQsIHNpemU6ICV1XG4iLCBmbiwgc3opOworCQkJZXJyID0gLUVUSU1FOwor
CQl9CisJCWk5MTVfcmVxdWVzdF9wdXQocnEpOworCX0KKworCWZvciAoaSA9IDA7ICFlcnIgJiYg
aSA8IHN6IC8gUEFHRV9TSVpFOyBpKyspIHsKKwkJaW50IHggPSBpICogMTAyNCArIGk5MTVfcHJh
bmRvbV91MzJfbWF4X3N0YXRlKDEwMjQsIHBybmcpOworCisJCWlmICh2YWRkclt4XSAhPSBzeikg
eworCQkJcHJfZXJyKCIlcHMgZmFpbGVkLCBzaXplOiAldSwgb2Zmc2V0OiAlenVcbiIsCisJCQkg
ICAgICAgZm4sIHN6LCB4ICogc2l6ZW9mKHUzMikpOworCQkJaWd0X2hleGR1bXAodmFkZHIgKyBp
ICogMTAyNCwgNDA5Nik7CisJCQllcnIgPSAtRUlOVkFMOworCQl9CisJfQorCisJaTkxNV9nZW1f
b2JqZWN0X3VucGluX21hcChvYmopOworZXJyX291dDoKKwlpOTE1X2dlbV9vYmplY3RfcHV0KG9i
aik7CisKKwlyZXR1cm4gZXJyOworfQorCiBzdGF0aWMgaW50IF9fbWlncmF0ZV9jb3B5KHN0cnVj
dCBpbnRlbF9taWdyYXRlICptaWdyYXRlLAogCQkJICBzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICp3
dywKIAkJCSAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKnNyYywKQEAgLTE2OSw2ICsyNDUs
NDQgQEAgZ2xvYmFsX2NvcHkoc3RydWN0IGludGVsX21pZ3JhdGUgKm1pZ3JhdGUsIHUzMiBzeiwg
c3RydWN0IHJuZF9zdGF0ZSAqcHJuZykKIAlyZXR1cm4gY29weShtaWdyYXRlLCBfX2dsb2JhbF9j
b3B5LCBzeiwgcHJuZyk7CiB9CiAKK3N0YXRpYyBpbnQgX19taWdyYXRlX2NsZWFyKHN0cnVjdCBp
bnRlbF9taWdyYXRlICptaWdyYXRlLAorCQkJICAgc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCAqd3cs
CisJCQkgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAorCQkJICAgdTMyIHZhbHVl
LAorCQkJICAgc3RydWN0IGk5MTVfcmVxdWVzdCAqKm91dCkKK3sKKwlyZXR1cm4gaW50ZWxfbWln
cmF0ZV9jbGVhcihtaWdyYXRlLCB3dywgTlVMTCwKKwkJCQkgICBvYmotPm1tLnBhZ2VzLT5zZ2ws
CisJCQkJICAgb2JqLT5jYWNoZV9sZXZlbCwKKwkJCQkgICBpOTE1X2dlbV9vYmplY3RfaXNfbG1l
bShvYmopLAorCQkJCSAgIHZhbHVlLCBvdXQpOworfQorCitzdGF0aWMgaW50IF9fZ2xvYmFsX2Ns
ZWFyKHN0cnVjdCBpbnRlbF9taWdyYXRlICptaWdyYXRlLAorCQkJICBzdHJ1Y3QgaTkxNV9nZW1f
d3dfY3R4ICp3dywKKwkJCSAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKKwkJCSAg
dTMyIHZhbHVlLAorCQkJICBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICoqb3V0KQoreworCXJldHVybiBp
bnRlbF9jb250ZXh0X21pZ3JhdGVfY2xlYXIobWlncmF0ZS0+Y29udGV4dCwgTlVMTCwKKwkJCQkJ
ICAgb2JqLT5tbS5wYWdlcy0+c2dsLAorCQkJCQkgICBvYmotPmNhY2hlX2xldmVsLAorCQkJCQkg
ICBpOTE1X2dlbV9vYmplY3RfaXNfbG1lbShvYmopLAorCQkJCQkgICB2YWx1ZSwgb3V0KTsKK30K
Kworc3RhdGljIGludAorbWlncmF0ZV9jbGVhcihzdHJ1Y3QgaW50ZWxfbWlncmF0ZSAqbWlncmF0
ZSwgdTMyIHN6LCBzdHJ1Y3Qgcm5kX3N0YXRlICpwcm5nKQoreworCXJldHVybiBjbGVhcihtaWdy
YXRlLCBfX21pZ3JhdGVfY2xlYXIsIHN6LCBwcm5nKTsKK30KKworc3RhdGljIGludAorZ2xvYmFs
X2NsZWFyKHN0cnVjdCBpbnRlbF9taWdyYXRlICptaWdyYXRlLCB1MzIgc3osIHN0cnVjdCBybmRf
c3RhdGUgKnBybmcpCit7CisJcmV0dXJuIGNsZWFyKG1pZ3JhdGUsIF9fZ2xvYmFsX2NsZWFyLCBz
eiwgcHJuZyk7Cit9CisKIHN0YXRpYyBpbnQgbGl2ZV9taWdyYXRlX2NvcHkodm9pZCAqYXJnKQog
ewogCXN0cnVjdCBpbnRlbF9taWdyYXRlICptaWdyYXRlID0gYXJnOwpAQCAtMTkwLDYgKzMwNCwy
OCBAQCBzdGF0aWMgaW50IGxpdmVfbWlncmF0ZV9jb3B5KHZvaWQgKmFyZykKIAlyZXR1cm4gMDsK
IH0KIAorc3RhdGljIGludCBsaXZlX21pZ3JhdGVfY2xlYXIodm9pZCAqYXJnKQoreworCXN0cnVj
dCBpbnRlbF9taWdyYXRlICptaWdyYXRlID0gYXJnOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1ID0gbWlncmF0ZS0+Y29udGV4dC0+ZW5naW5lLT5pOTE1OworCUk5MTVfUk5EX1NUQVRF
KHBybmcpOworCWludCBpOworCisJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoc2l6ZXMpOyBp
KyspIHsKKwkJaW50IGVycjsKKworCQllcnIgPSBtaWdyYXRlX2NsZWFyKG1pZ3JhdGUsIHNpemVz
W2ldLCAmcHJuZyk7CisJCWlmIChlcnIgPT0gMCkKKwkJCWVyciA9IGdsb2JhbF9jbGVhcihtaWdy
YXRlLCBzaXplc1tpXSwgJnBybmcpOworCisJCWk5MTVfZ2VtX2RyYWluX2ZyZWVkX29iamVjdHMo
aTkxNSk7CisJCWlmIChlcnIpCisJCQlyZXR1cm4gZXJyOworCX0KKworCXJldHVybiAwOworfQor
CiBzdHJ1Y3QgdGhyZWFkZWRfbWlncmF0ZSB7CiAJc3RydWN0IGludGVsX21pZ3JhdGUgKm1pZ3Jh
dGU7CiAJc3RydWN0IHRhc2tfc3RydWN0ICp0c2s7CkBAIC0yNzEsMTIgKzQwNywzOSBAQCBzdGF0
aWMgaW50IHRocmVhZF9nbG9iYWxfY29weSh2b2lkICphcmcpCiAJcmV0dXJuIHRocmVhZGVkX21p
Z3JhdGUoYXJnLCBfX3RocmVhZF9nbG9iYWxfY29weSwgMCk7CiB9CiAKK3N0YXRpYyBpbnQgX190
aHJlYWRfbWlncmF0ZV9jbGVhcih2b2lkICphcmcpCit7CisJc3RydWN0IHRocmVhZGVkX21pZ3Jh
dGUgKnRtID0gYXJnOworCisJcmV0dXJuIG1pZ3JhdGVfY2xlYXIodG0tPm1pZ3JhdGUsIDIgKiBD
SFVOS19TWiwgJnRtLT5wcm5nKTsKK30KKworc3RhdGljIGludCBfX3RocmVhZF9nbG9iYWxfY2xl
YXIodm9pZCAqYXJnKQoreworCXN0cnVjdCB0aHJlYWRlZF9taWdyYXRlICp0bSA9IGFyZzsKKwor
CXJldHVybiBnbG9iYWxfY2xlYXIodG0tPm1pZ3JhdGUsIDIgKiBDSFVOS19TWiwgJnRtLT5wcm5n
KTsKK30KKworc3RhdGljIGludCB0aHJlYWRfbWlncmF0ZV9jbGVhcih2b2lkICphcmcpCit7CisJ
cmV0dXJuIHRocmVhZGVkX21pZ3JhdGUoYXJnLCBfX3RocmVhZF9taWdyYXRlX2NsZWFyLCAwKTsK
K30KKworc3RhdGljIGludCB0aHJlYWRfZ2xvYmFsX2NsZWFyKHZvaWQgKmFyZykKK3sKKwlyZXR1
cm4gdGhyZWFkZWRfbWlncmF0ZShhcmcsIF9fdGhyZWFkX2dsb2JhbF9jbGVhciwgMCk7Cit9CisK
IGludCBpbnRlbF9taWdyYXRlX2xpdmVfc2VsZnRlc3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KQogewogCXN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9zdWJ0ZXN0IHRlc3RzW10gPSB7
CiAJCVNVQlRFU1QobGl2ZV9taWdyYXRlX2NvcHkpLAorCQlTVUJURVNUKGxpdmVfbWlncmF0ZV9j
bGVhciksCiAJCVNVQlRFU1QodGhyZWFkX21pZ3JhdGVfY29weSksCisJCVNVQlRFU1QodGhyZWFk
X21pZ3JhdGVfY2xlYXIpLAogCQlTVUJURVNUKHRocmVhZF9nbG9iYWxfY29weSksCisJCVNVQlRF
U1QodGhyZWFkX2dsb2JhbF9jbGVhciksCiAJfTsKIAlzdHJ1Y3QgaW50ZWxfbWlncmF0ZSBtOwog
CWludCBlcnI7Ci0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
