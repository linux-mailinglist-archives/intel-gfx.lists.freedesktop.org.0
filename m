Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E3635E13
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 15:39:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 675858999C;
	Wed,  5 Jun 2019 13:39:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BA6F8997E
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 13:39:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jun 2019 06:39:12 -0700
X-ExtLoop1: 1
Received: from mkopansk-mobl1.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.139.46])
 by fmsmga008.fm.intel.com with ESMTP; 05 Jun 2019 06:39:10 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jun 2019 16:38:50 +0300
Message-Id: <20190605133852.4493-7-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190605133852.4493-1-lionel.g.landwerlin@intel.com>
References: <20190605133852.4493-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 6/7] drm/i915/perf: allow holding preemption
 on filtered ctx
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

V2Ugd291bGQgbGlrZSB0byBtYWtlIHVzZSBvZiBwZXJmIGluIFZ1bGthbi4gVGhlIFZ1bGthbiBB
UEkgaXMgbXVjaApsb3dlciBsZXZlbCB0aGFuIE9wZW5HTCwgd2l0aCBhcHBsaWNhdGlvbnMgZGly
ZWN0bHkgZXhwb3NlZCB0byB0aGUKY29uY2VwdCBvZiBjb21tYW5kIGJ1ZmZlcnMgKHByZXR0eSBt
dWNoIGVxdWl2YWxlbnQgdG8gb3VyIGJhdGNoCmJ1ZmZlcnMpLiBJbiBWdWxrYW4sIHF1ZXJpZXMg
YXJlIGFsd2F5cyBsaW1pdGVkIGluIHNjb3BlIHRvIGEgY29tbWFuZApidWZmZXIuIEluIE9wZW5H
TCwgdGhlIGxhY2sgb2YgY29tbWFuZCBidWZmZXIgY29uY2VwdCBtZWFudCB0aGF0CnF1ZXJpZXMn
IGR1cmF0aW9uIGNvdWxkIHNwYW4gbXVsdGlwbGUgY29tbWFuZCBidWZmZXJzLgoKV2l0aCB0aGF0
IHJlc3RyaWN0aW9uIGdvbmUgaW4gVnVsa2FuLCB3ZSB3b3VsZCBsaWtlIHRvIHNpbXBsaWZ5Cm1l
YXN1cmluZyBwZXJmb3JtYW5jZSBqdXN0IGJ5IG1lYXN1cmluZyB0aGUgZGVsdGFzIGJldHdlZW4g
dGhlIGNvdW50ZXIKc25hcHNob3RzIHdyaXR0ZW4gYnkgMiBNSV9SRUNPUkRfUEVSRl9DT1VOVCBj
b21tYW5kcywgcmF0aGVyIHRoYW4gdGhlCm1vcmUgY29tcGxleCBzY2hlbWUgd2UgY3VycmVudGx5
IGhhdmUgaW4gdGhlIEdMIGRyaXZlciwgdXNpbmcgMgpNSV9SRUNPUkRfUEVSRl9DT1VOVCBjb21t
YW5kcyBhbmQgZG9pbmcgc29tZSBwb3N0IHByb2Nlc3Npbmcgb24gdGhlCnN0cmVhbSBvZiBPQSBy
ZXBvcnRzLCBjb21pbmcgZnJvbSB0aGUgZ2xvYmFsIE9BIGJ1ZmZlciwgdG8gcmVtb3ZlIGFueQp1
bnJlbGF0ZWQgZGVsdGFzIGluIGJldHdlZW4gdGhlIDIgTUlfUkVDT1JEX1BFUkZfQ09VTlQuCgpE
aXNhYmxpbmcgcHJlZW1wdGlvbiBvbmx5IGFwcGx5IHRvIGEgc2luZ2xlIGNvbnRleHQgd2l0aCB3
aGljaCB3YW50IHRvCnF1ZXJ5IHBlcmZvcm1hbmNlIGNvdW50ZXJzIGZvciBhbmQgaXMgY29uc2lk
ZXJlZCBhIHByaXZpbGVnZWQKb3BlcmF0aW9uLCBieSBkZWZhdWx0IHByb3RlY3RlZCBieSBDQVBf
U1lTX0FETUlOLiBJdCBpcyBwb3NzaWJsZSB0bwplbmFibGUgaXQgZm9yIGEgbm9ybWFsIHVzZXIg
YnkgZGlzYWJsaW5nIHRoZSBwYXJhbm9pZCBzdHJlYW0gc2V0dGluZy4KCnYyOiBTdG9yZSBwcmVl
bXB0aW9uIHNldHRpbmcgaW4gaW50ZWxfY29udGV4dCAoQ2hyaXMpCgp2MzogVXNlIHByaW9yaXRp
ZXMgdG8gYXZvaWQgcHJlZW1wdGlvbiByYXRoZXIgdGhhbiB0aGUgSFcgbWVjaGFuaXNtCgp2NDog
SnVzdCBtb2RpZnkgdGhlIHBvcnQgcHJpb3JpdHkgcmVwb3J0aW5nIGZ1bmN0aW9uCgpTaWduZWQt
b2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAgICAgICB8ICA3ICsr
KysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICAgfCAgMiAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICB8IDEzICsrKysr
KysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgICAgICAgICAgICB8IDIy
ICsrKysrKysrKysrKysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wcmlvbGlz
dF90eXBlcy5oICB8ICA3ICsrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVz
dC5jICAgICAgICAgfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaCAg
ICAgICAgIHwgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3N1Ym1pc3Npb24u
YyB8IDEwICsrKysrKysrKy0KIGluY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCAgICAgICAgICAg
ICAgICAgfCAxMSArKysrKysrKysrKwogOSBmaWxlcyBjaGFuZ2VkLCA2OSBpbnNlcnRpb25zKCsp
LCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggZWQx
OWY0ZTUzZDMxLi5iMzJiMDRiMjY4ZWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
CkBAIC0yMzMsNyArMjMzLDEyIEBAIHN0YXRpYyBpbmxpbmUgaW50IHJxX3ByaW8oY29uc3Qgc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAKIHN0YXRpYyBpbnQgZWZmZWN0aXZlX3ByaW8oY29uc3Qg
c3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiB7Ci0JaW50IHByaW8gPSBycV9wcmlvKHJxKTsKKwlp
bnQgcHJpbzsKKworCWlmIChycS0+aGFzX3BlcmYpCisJCXByaW8gPSBJOTE1X1VTRVJfUFJJT1JJ
VFkoSTkxNV9QUklPUklUWV9QRVJGKTsKKwllbHNlCisJCXByaW8gPSBycV9wcmlvKHJxKTsKIAog
CS8qCiAJICogT24gdW53aW5kaW5nIHRoZSBhY3RpdmUgcmVxdWVzdCwgd2UgZ2l2ZSBpdCBhIHBy
aW9yaXR5IGJ1bXAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCmluZGV4IDc1MDI5ZDFhMzgwMi4uOTg0
Yjc2YTA5Y2ZhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTQ3Niw3ICs0NzYsNyBAQCBz
dGF0aWMgaW50IGk5MTVfZ2V0cGFyYW1faW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9p
ZCAqZGF0YSwKIAkJdmFsdWUgPSBJTlRFTF9JTkZPKGRldl9wcml2KS0+aGFzX2NvaGVyZW50X2dn
dHQ7CiAJCWJyZWFrOwogCWNhc2UgSTkxNV9QQVJBTV9QRVJGX1JFVklTSU9OOgotCQl2YWx1ZSA9
IDE7CisJCXZhbHVlID0gMjsKIAkJYnJlYWs7CiAJY2FzZSBJOTE1X1BBUkFNX0hBU19FWEVDX1BF
UkZfQ09ORklHOgogCQkvKiBPYnZpb3VzbHkgcmVxdWlyZXMgcGVyZiBzdXBwb3J0LiAqLwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggN2I4MmJiODVlNDVkLi4xY2I0MWYzOThjMDUgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMTI5Miw2ICsxMjkyLDE5IEBAIHN0cnVjdCBpOTE1X3Bl
cmZfc3RyZWFtIHsKIAkgKi8KIAlib29sIGVuYWJsZWQ7CiAKKwkvKioKKwkgKiBAaG9sZF9wcmVl
bXB0aW9uOiBXaGV0aGVyIHByZWVtcHRpb24gaXMgcHV0IG9uIGhvbGQgZm9yIGNvbW1hbmQKKwkg
KiBzdWJtaXNzaW9ucyBkb25lIG9uIHRoZSBAY3R4LiBUaGlzIGlzIHVzZWZ1bCBmb3Igc29tZSBk
cml2ZXJzIHRoYXQKKwkgKiBjYW5ub3QgZWFzaWx5IHBvc3QgcHJvY2VzcyB0aGUgT0EgYnVmZmVy
IGNvbnRleHQgdG8gc3VidHJhY3QgZGVsdGEKKwkgKiBvZiBwZXJmb3JtYW5jZSBjb3VudGVycyBu
b3QgYXNzb2NpYXRlZCB3aXRoIEBjdHguCisJICovCisJYm9vbCBob2xkX3ByZWVtcHRpb247CisK
KwkvKioKKwkgKiBAbGFzdF9jb25maWdfcmVxdWVzdAorCSAqLworCXN0cnVjdCBpOTE1X3JlcXVl
c3QgKmxhc3RfY29uZmlnX3JlcXVlc3Q7CisKIAkvKioKIAkgKiBAb3BzOiBUaGUgY2FsbGJhY2tz
IHByb3ZpZGluZyB0aGUgaW1wbGVtZW50YXRpb24gb2YgdGhpcyBzcGVjaWZpYwogCSAqIHR5cGUg
b2YgY29uZmlndXJlZCBzdHJlYW0uCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BlcmYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCmluZGV4IDRlNjky
NjZiYmE2MS4uMDc1NTc0NmQ0MTZlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BlcmYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwpAQCAtMzQz
LDYgKzM0Myw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9vYV9mb3JtYXQgZ2VuOF9wbHVz
X29hX2Zvcm1hdHNbSTkxNV9PQV9GT1JNQVRfTUFYXSA9IHsKICAqIHN0cnVjdCBwZXJmX29wZW5f
cHJvcGVydGllcyAtIGZvciB2YWxpZGF0ZWQgcHJvcGVydGllcyBnaXZlbiB0byBvcGVuIGEgc3Ry
ZWFtCiAgKiBAc2FtcGxlX2ZsYWdzOiBgRFJNX0k5MTVfUEVSRl9QUk9QX1NBTVBMRV8qYCBwcm9w
ZXJ0aWVzIGFyZSB0cmFja2VkIGFzIGZsYWdzCiAgKiBAc2luZ2xlX2NvbnRleHQ6IFdoZXRoZXIg
YSBzaW5nbGUgb3IgYWxsIGdwdSBjb250ZXh0cyBzaG91bGQgYmUgbW9uaXRvcmVkCisgKiBAaG9s
ZF9wcmVlbXB0aW9uOiBXaGV0aGVyIHRoZSBwcmVlbXB0aW9uIGlzIGRpc2FibGVkIGZvciB0aGUg
ZmlsdGVyZWQKKyAqICAgICAgICAgICAgICAgICAgIGNvbnRleHQKICAqIEBjdHhfaGFuZGxlOiBB
IGdlbSBjdHggaGFuZGxlIGZvciB1c2Ugd2l0aCBAc2luZ2xlX2NvbnRleHQKICAqIEBtZXRyaWNz
X3NldDogQW4gSUQgZm9yIGFuIE9BIHVuaXQgbWV0cmljIHNldCBhZHZlcnRpc2VkIHZpYSBzeXNm
cwogICogQG9hX2Zvcm1hdDogQW4gT0EgdW5pdCBIVyByZXBvcnQgZm9ybWF0CkBAIC0zNTcsNiAr
MzU5LDcgQEAgc3RydWN0IHBlcmZfb3Blbl9wcm9wZXJ0aWVzIHsKIAl1MzIgc2FtcGxlX2ZsYWdz
OwogCiAJdTY0IHNpbmdsZV9jb250ZXh0OjE7CisJdTY0IGhvbGRfcHJlZW1wdGlvbjoxOwogCXU2
NCBjdHhfaGFuZGxlOwogCiAJLyogT0Egc2FtcGxpbmcgc3RhdGUgKi8KQEAgLTIxNzEsNiArMjE3
NCw4IEBAIHN0YXRpYyBpbnQgaTkxNV9vYV9zdHJlYW1faW5pdChzdHJ1Y3QgaTkxNV9wZXJmX3N0
cmVhbSAqc3RyZWFtLAogCXN0cmVhbS0+c2FtcGxlX2ZsYWdzIHw9IFNBTVBMRV9PQV9SRVBPUlQ7
CiAJc3RyZWFtLT5zYW1wbGVfc2l6ZSArPSBmb3JtYXRfc2l6ZTsKIAorCXN0cmVhbS0+aG9sZF9w
cmVlbXB0aW9uID0gcHJvcHMtPmhvbGRfcHJlZW1wdGlvbjsKKwogCWRldl9wcml2LT5wZXJmLm9h
Lm9hX2J1ZmZlci5mb3JtYXRfc2l6ZSA9IGZvcm1hdF9zaXplOwogCWlmIChXQVJOX09OKGRldl9w
cml2LT5wZXJmLm9hLm9hX2J1ZmZlci5mb3JtYXRfc2l6ZSA9PSAwKSkKIAkJcmV0dXJuIC1FSU5W
QUw7CkBAIC0yNjk2LDYgKzI3MDEsMTUgQEAgaTkxNV9wZXJmX29wZW5faW9jdGxfbG9ja2VkKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJfQogCX0KIAorCWlmIChwcm9wcy0+
aG9sZF9wcmVlbXB0aW9uKSB7CisJCWlmICghcHJvcHMtPnNpbmdsZV9jb250ZXh0KSB7CisJCQlE
Uk1fREVCVUcoInByZWVtcHRpb24gZGlzYWJsZSB3aXRoIG5vIGNvbnRleHRcbiIpOworCQkJcmV0
ID0gLUVJTlZBTDsKKwkJCWdvdG8gZXJyOworCQl9CisJCXByaXZpbGVnZWRfb3AgPSB0cnVlOwor
CX0KKwogCS8qCiAJICogT24gSGFzd2VsbCB0aGUgT0EgdW5pdCBzdXBwb3J0cyBjbG9jayBnYXRp
bmcgb2ZmIGZvciBhIHNwZWNpZmljCiAJICogY29udGV4dCBhbmQgaW4gdGhpcyBtb2RlIHRoZXJl
J3Mgbm8gdmlzaWJpbGl0eSBvZiBtZXRyaWNzIGZvciB0aGUKQEAgLTI3MTAsOCArMjcyNCw5IEBA
IGk5MTVfcGVyZl9vcGVuX2lvY3RsX2xvY2tlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCiAJICogTUlfUkVQT1JUX1BFUkZfQ09VTlQgY29tbWFuZHMgYW5kIHNvIGNvbnNpZGVy
IGl0IGEgcHJpdmlsZWdlZCBvcCB0bwogCSAqIGVuYWJsZSB0aGUgT0EgdW5pdCBieSBkZWZhdWx0
LgogCSAqLwotCWlmIChJU19IQVNXRUxMKGRldl9wcml2KSAmJiBzcGVjaWZpY19jdHgpCisJaWYg
KElTX0hBU1dFTEwoZGV2X3ByaXYpICYmIHNwZWNpZmljX2N0eCAmJiAhcHJvcHMtPmhvbGRfcHJl
ZW1wdGlvbikgewogCQlwcml2aWxlZ2VkX29wID0gZmFsc2U7CisJfQogCiAJLyogU2ltaWxhciB0
byBwZXJmJ3Mga2VybmVsLnBlcmZfcGFyYW5vaWRfY3B1IHN5c2N0bCBvcHRpb24KIAkgKiB3ZSBj
aGVjayBhIGRldi5pOTE1LnBlcmZfc3RyZWFtX3BhcmFub2lkIHN5c2N0bCBvcHRpb24KQEAgLTI3
MjAsNyArMjczNSw3IEBAIGk5MTVfcGVyZl9vcGVuX2lvY3RsX2xvY2tlZChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJICovCiAJaWYgKHByaXZpbGVnZWRfb3AgJiYKIAkgICAg
aTkxNV9wZXJmX3N0cmVhbV9wYXJhbm9pZCAmJiAhY2FwYWJsZShDQVBfU1lTX0FETUlOKSkgewot
CQlEUk1fREVCVUcoIkluc3VmZmljaWVudCBwcml2aWxlZ2VzIHRvIG9wZW4gc3lzdGVtLXdpZGUg
aTkxNSBwZXJmIHN0cmVhbVxuIik7CisJCURSTV9ERUJVRygiSW5zdWZmaWNpZW50IHByaXZpbGVn
ZXMgdG8gb3BlbiBpOTE1IHBlcmYgc3RyZWFtXG4iKTsKIAkJcmV0ID0gLUVBQ0NFUzsKIAkJZ290
byBlcnJfY3R4OwogCX0KQEAgLTI5MTIsNiArMjkyNyw5IEBAIHN0YXRpYyBpbnQgcmVhZF9wcm9w
ZXJ0aWVzX3VubG9ja2VkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCXBy
b3BzLT5vYV9wZXJpb2RpYyA9IHRydWU7CiAJCQlwcm9wcy0+b2FfcGVyaW9kX2V4cG9uZW50ID0g
dmFsdWU7CiAJCQlicmVhazsKKwkJY2FzZSBEUk1fSTkxNV9QRVJGX1BST1BfSE9MRF9QUkVFTVBU
SU9OOgorCQkJcHJvcHMtPmhvbGRfcHJlZW1wdGlvbiA9IHZhbHVlICE9IDAgPyAxIDogMDsKKwkJ
CWJyZWFrOwogCQljYXNlIERSTV9JOTE1X1BFUkZfUFJPUF9NQVg6CiAJCQlNSVNTSU5HX0NBU0Uo
aWQpOwogCQkJcmV0dXJuIC1FSU5WQUw7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3ByaW9saXN0X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ByaW9s
aXN0X3R5cGVzLmgKaW5kZXggNDk3MDlkZTY5ODc1Li5mYzFjMWZlN2NlNTggMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcHJpb2xpc3RfdHlwZXMuaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3ByaW9saXN0X3R5cGVzLmgKQEAgLTE3LDYgKzE3LDEzIEBAIGVu
dW0gewogCUk5MTVfUFJJT1JJVFlfTk9STUFMID0gSTkxNV9DT05URVhUX0RFRkFVTFRfUFJJT1JJ
VFksCiAJSTkxNV9QUklPUklUWV9NQVggPSBJOTE1X0NPTlRFWFRfTUFYX1VTRVJfUFJJT1JJVFkg
KyAxLAogCisJLyogUmVxdWVzdHMgY29udGFpbmluZyBwZXJmb3JtYW5jZSBxdWVyaWVzIG11c3Qg
bm90IGJlIHByZWVtcHRlZCBieQorCSAqIGFub3RoZXIgY29udGV4dC4gVGhleSBnZXQgc2NoZWR1
bGVkIHdpdGggdGhlaXIgZGVmYXVsdCBwcmlvcml0eSBhbmQKKwkgKiBvbmNlIHRoZXkgcmVhY2gg
dGhlIGV4ZWNsaXN0IHBvcnRzIHdlIGJ1bXAgdGhlbSB0bworCSAqIEk5MTVfUFJJT1JJVFlfUEVS
RiBzbyB0aGF0IHRoZXkgc3RpY2sgdG8gdGhlIEhXIHVudGlsIHRoZXkgZmluaXNoLgorCSAqLwor
CUk5MTVfUFJJT1JJVFlfUEVSRiA9IEk5MTVfQ09OVEVYVF9NQVhfVVNFUl9QUklPUklUWSArIDIs
CisKIAlJOTE1X1BSSU9SSVRZX0lOVkFMSUQgPSBJTlRfTUlOCiB9OwogCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVxdWVzdC5jCmluZGV4IGRhMWU2OTg0YThjYy4uNDhkYmU5ODhkYjIzIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwpAQCAtNzI1LDYgKzcyNSw3IEBAIF9faTkxNV9yZXF1
ZXN0X2NyZWF0ZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsIGdmcF90IGdmcCkKIAlycS0+YmF0
Y2ggPSBOVUxMOwogCXJxLT5jYXB0dXJlX2xpc3QgPSBOVUxMOwogCXJxLT53YWl0Ym9vc3QgPSBm
YWxzZTsKKwlycS0+aGFzX3BlcmYgPSBmYWxzZTsKIAlycS0+ZXhlY3V0aW9uX21hc2sgPSBBTExf
RU5HSU5FUzsKIAogCUlOSVRfTElTVF9IRUFEKCZycS0+YWN0aXZlX2xpc3QpOwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlcXVlc3QuaAppbmRleCBjOWY3ZDA3OTkxYzguLmFiMDliNWJiODlmNyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmgKQEAgLTIxNiw2ICsyMTYsNyBAQCBzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0IHsKIAl1bnNpZ25lZCBsb25nIGVtaXR0ZWRfamlmZmllczsKIAogCWJvb2wg
d2FpdGJvb3N0OworCWJvb2wgaGFzX3BlcmY7CiAKIAkvKiogZW5naW5lLT5yZXF1ZXN0X2xpc3Qg
ZW50cnkgZm9yIHRoaXMgcmVxdWVzdCAqLwogCXN0cnVjdCBsaXN0X2hlYWQgbGluazsKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19zdWJtaXNzaW9uLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfc3VibWlzc2lvbi5jCmluZGV4IGE0Zjk4Y2NlZjBm
ZS4uZTU2YjM5ZTVlMzk0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9n
dWNfc3VibWlzc2lvbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19zdWJt
aXNzaW9uLmMKQEAgLTcyNyw3ICs3MjcsMTUgQEAgc3RhdGljIGlubGluZSBpbnQgcnFfcHJpbyhj
b25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIAogc3RhdGljIGlubGluZSBpbnQgcG9ydF9w
cmlvKGNvbnN0IHN0cnVjdCBleGVjbGlzdF9wb3J0ICpwb3J0KQogewotCXJldHVybiBycV9wcmlv
KHBvcnRfcmVxdWVzdChwb3J0KSkgfCBfX05PX1BSRUVNUFRJT047CisJY29uc3Qgc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEgPSBwb3J0X3JlcXVlc3QocG9ydCk7CisJaW50IHByaW87CisKKwlpZiAo
cnEtPmhhc19wZXJmKQorCQlwcmlvID0gSTkxNV9VU0VSX1BSSU9SSVRZKEk5MTVfUFJJT1JJVFlf
UEVSRik7CisJZWxzZQorCQlwcmlvID0gcnFfcHJpbyhycSk7CisKKwlyZXR1cm4gcHJpbyB8IF9f
Tk9fUFJFRU1QVElPTjsKIH0KIAogc3RhdGljIGJvb2wgX19ndWNfZGVxdWV1ZShzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUpCmRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVf
ZHJtLmggYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKaW5kZXggNTkzOGE3Mzk2M2ZlLi5l
M2M2YzcyMTkzZWQgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAorKysg
Yi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKQEAgLTE5ODIsNiArMTk4MiwxNyBAQCBlbnVt
IGRybV9pOTE1X3BlcmZfcHJvcGVydHlfaWQgewogCSAqLwogCURSTV9JOTE1X1BFUkZfUFJPUF9P
QV9FWFBPTkVOVCwKIAorCS8qKgorCSAqIFNwZWNpZnlpbmcgdGhpcyBwcm9wZXJ0eSBpcyBvbmx5
IHZhbGlkIHdoZW4gc3BlY2lmeSBhIGNvbnRleHQgdG8KKwkgKiBmaWx0ZXIgd2l0aCBEUk1fSTkx
NV9QRVJGX1BST1BfQ1RYX0hBTkRMRS4gU3BlY2lmeWluZyB0aGlzIHByb3BlcnR5CisJICogd2ls
bCBob2xkIHByZWVtcHRpb24gb2YgdGhlIHBhcnRpY3VsYXIgY29udGV4dCB3ZSB3YW50IHRvIGdh
dGhlcgorCSAqIHBlcmZvcm1hbmNlIGRhdGEgYWJvdXQuIFRoZSBleGVjYnVmMiBzdWJtaXNzaW9u
cyBtdXN0IGluY2x1ZGUgYQorCSAqIGRybV9pOTE1X2dlbV9leGVjYnVmZmVyX2V4dF9wZXJmIHBh
cmFtZXRlciBmb3IgdGhpcyB0byBhcHBseS4KKwkgKgorCSAqIFRoaXMgcHJvcGVydHkgaXMgYXZh
aWxhYmxlIGluIHBlcmYgcmV2aXNpb24gMi4KKwkgKi8KKwlEUk1fSTkxNV9QRVJGX1BST1BfSE9M
RF9QUkVFTVBUSU9OLAorCiAJRFJNX0k5MTVfUEVSRl9QUk9QX01BWCAvKiBub24tQUJJICovCiB9
OwogCi0tIAoyLjIxLjAuMzkyLmdmOGY2Nzg3MTU5ZQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
