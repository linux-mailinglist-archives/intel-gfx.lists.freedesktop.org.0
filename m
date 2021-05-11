Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DD737A786
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 15:26:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94C4D6EA3D;
	Tue, 11 May 2021 13:26:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 006066EA3C;
 Tue, 11 May 2021 13:26:18 +0000 (UTC)
IronPort-SDR: LfZxtojGUuTKzRhnuYiSLrtEFh/xSEYi8WTs5VZxVIhCRNj3Z/CBbItA7oFxHcmieoY9VlHyFA
 I63bXmokkM0Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="196345417"
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="196345417"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 06:26:18 -0700
IronPort-SDR: OsMYZ0cbbp5SlmZJEY88ZOOUWYIIqDsCbevHE2iDtFpfo3suD1dtAWQhZnpiDkZU9KDZwAnJbI
 KPUK4gCl3eSQ==
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="468905441"
Received: from kjeldbeg-mobl2.ger.corp.intel.com (HELO
 thellst-mobl1.intel.com) ([10.249.254.168])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 06:26:17 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 11 May 2021 15:25:25 +0200
Message-Id: <20210511132525.377190-8-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210511132525.377190-1-thomas.hellstrom@linux.intel.com>
References: <20210511132525.377190-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/lmem: Verify checks for lmem
 residency
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2Ugb2JqZWN0cyBjYW4gYmUgbWlncmF0ZWQgb3IgZXZpY3RlZCB3aGVuIG5vdCBwaW5uZWQg
b3IgbG9ja2VkLAp1cGRhdGUgdGhlIGNoZWNrcyBmb3IgbG1lbSByZXNpZGVuY3kgb3IgZnV0dXJl
IHJlc2lkZW5jeSBzbyB0aGF0CnRoZSB2YWx1ZSByZXR1cm5lZCBpcyBub3QgaW1tZWRpYXRlbHkg
c3RhbGUuCgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJv
bUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2xt
ZW0uYyAgICAgfCA0MiArKysrKysrKysrKysrKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX29iamVjdC5jICAgfCAyOSArKysrKysrKysrKysrKwogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oICAgfCAgNCArKwogNCBmaWxlcyBjaGFuZ2Vk
LCA3NSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggZGUxZjEzZDIwM2I1Li5iOTVkZWYyZDVh
ZjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBA
IC0xMTYxNSw3ICsxMTYxNSw3IEBAIGludGVsX3VzZXJfZnJhbWVidWZmZXJfY3JlYXRlKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsCiAKIAkvKiBvYmplY3QgaXMgYmFja2VkIHdpdGggTE1FTSBmb3Ig
ZGlzY3JldGUgKi8KIAlpOTE1ID0gdG9faTkxNShvYmotPmJhc2UuZGV2KTsKLQlpZiAoSEFTX0xN
RU0oaTkxNSkgJiYgIWk5MTVfZ2VtX29iamVjdF9pc19sbWVtKG9iaikpIHsKKwlpZiAoSEFTX0xN
RU0oaTkxNSkgJiYgIWk5MTVfZ2VtX29iamVjdF92YWxpZGF0ZXNfdG9fbG1lbShvYmopKSB7CiAJ
CS8qIG9iamVjdCBpcyAicmVtb3RlIiwgbm90IGluIGxvY2FsIG1lbW9yeSAqLwogCQlpOTE1X2dl
bV9vYmplY3RfcHV0KG9iaik7CiAJCXJldHVybiBFUlJfUFRSKC1FUkVNT1RFKTsKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9sbWVtLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbG1lbS5jCmluZGV4IDJiOGNkMTVkZTFkOS4uZDUzOWRm
ZmExNTU0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbG1l
bS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9sbWVtLmMKQEAgLTIz
LDEwICsyMyw1MCBAQCBpOTE1X2dlbV9vYmplY3RfbG1lbV9pb19tYXAoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiwKIAlyZXR1cm4gaW9fbWFwcGluZ19tYXBfd2MoJm9iai0+bW0ucmVn
aW9uLT5pb21hcCwgb2Zmc2V0LCBzaXplKTsKIH0KIAorLyoqCisgKiBpOTE1X2dlbV9vYmplY3Rf
dmFsaWRhdGVzX3RvX2xtZW0gLSBXaGV0aGVyIHRoZSBvYmplY3QgaXMgcmVzaWRlbnQgaW4KKyAq
IGxtZW0gd2hlbiBwYWdlcyBhcmUgcHJlc2VudC4KKyAqIEBvYmo6IFRoZSBvYmplY3QgdG8gY2hl
Y2suCisgKgorICogTWlncmF0YWJsZSBvYmplY3RzIHJlc2lkZW5jeSBtYXkgY2hhbmdlIGZyb20g
dW5kZXIgdXMgaWYgdGhlIG9iamVjdCBpcworICogbm90IHBpbm5lZCBvciBsb2NrZWQuIFRoaXMg
ZnVuY3Rpb24gaXMgaW50ZW5kZWQgdG8gYmUgdXNlZCB0byBjaGVjayB3aGV0aGVyCisgKiB0aGUg
b2JqZWN0IGNhbiBvbmx5IHJlc2lkZSBpbiBsbWVtIHdoZW4gcGFnZXMgYXJlIHByZXNlbnQuCisg
KgorICogUmV0dXJuOiBXaGV0aGVyIHRoZSBvYmplY3QgaXMgYWx3YXlzIHJlc2lkZW50IGluIGxt
ZW0gd2hlbiBwYWdlcyBhcmUKKyAqIHByZXNlbnQuCisgKi8KK2Jvb2wgaTkxNV9nZW1fb2JqZWN0
X3ZhbGlkYXRlc190b19sbWVtKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCit7CisJ
c3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1yID0gUkVBRF9PTkNFKG9iai0+bW0ucmVnaW9u
KTsKKworCXJldHVybiAhaTkxNV9nZW1fb2JqZWN0X21pZ3JhdGFibGUob2JqKSAmJgorCQltciAm
JiAobXItPnR5cGUgPT0gSU5URUxfTUVNT1JZX0xPQ0FMIHx8CisJCSAgICAgICBtci0+dHlwZSA9
PSBJTlRFTF9NRU1PUllfU1RPTEVOX0xPQ0FMKTsKK30KKworLyoqCisgKiBpOTE1X2dlbV9vYmpl
Y3RfaXNfbG1lbSAtIFdoZXRoZXIgdGhlIG9iamVjdCBpcyByZXNpZGVudCBpbgorICogbG1lbQor
ICogQG9iajogVGhlIG9iamVjdCB0byBjaGVjay4KKyAqCisgKiBFdmVuIGlmIGFuIG9iamVjdCBp
cyBhbGxvd2VkIHRvIG1pZ3JhdGUgYW5kIGNoYW5nZSBtZW1vcnkgcmVnaW9uLAorICogdGhpcyBm
dW5jdGlvbiBjaGVja3Mgd2hldGhlciBpdCB3aWxsIGFsd2F5cyBiZSBwcmVzZW50IGluIGxtZW0g
d2hlbgorICogdmFsaWQgKm9yKiBpZiB0aGF0J3Mgbm90IHRoZSBjYXNlLCB3aGV0aGVyIGl0J3Mg
Y3VycmVudGx5IHJlc2lkZW50IGluIGxtZW0uCisgKiBGb3IgbWlncmF0YWJsZSBhbmQgZXZpY3Rh
YmxlIG9iamVjdHMsIHRoZSBsYXR0ZXIgb25seSBtYWtlcyBzZW5zZSB3aGVuCisgKiB0aGUgb2Jq
ZWN0IGlzIGxvY2tlZC4KKyAqCisgKiBSZXR1cm46IFdoZXRoZXIgdGhlIG9iamVjdCBtaWdyYXRh
YmxlIGJ1dCByZXNpZGVudCBpbiBsbWVtLCBvciBub3QKKyAqIG1pZ3JhdGFibGUgYW5kIHdpbGwg
YmUgcHJlc2VudCBpbiBsbWVtIHdoZW4gdmFsaWQuCisgKi8KIGJvb2wgaTkxNV9nZW1fb2JqZWN0
X2lzX2xtZW0oc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIHsKLQlzdHJ1Y3QgaW50
ZWxfbWVtb3J5X3JlZ2lvbiAqbXIgPSBvYmotPm1tLnJlZ2lvbjsKKwlzdHJ1Y3QgaW50ZWxfbWVt
b3J5X3JlZ2lvbiAqbXIgPSBSRUFEX09OQ0Uob2JqLT5tbS5yZWdpb24pOwogCisjaWZkZWYgQ09O
RklHX0xPQ0tERVAKKwlpZiAoaTkxNV9nZW1fb2JqZWN0X21pZ3JhdGFibGUob2JqKSAmJgorCSAg
ICBpOTE1X2dlbV9vYmplY3RfZXZpY3RhYmxlKG9iaikpCisJCWFzc2VydF9vYmplY3RfaGVsZChv
YmopOworI2VuZGlmCiAJcmV0dXJuIG1yICYmIChtci0+dHlwZSA9PSBJTlRFTF9NRU1PUllfTE9D
QUwgfHwKIAkJICAgICAgbXItPnR5cGUgPT0gSU5URUxfTUVNT1JZX1NUT0xFTl9MT0NBTCk7CiB9
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKaW5kZXggYzUzNDg4
ZjM5MWRkLi4wNDc1YjFjOTQ0NTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0LmMKQEAgLTQ1OCw2ICs0NTgsMzUgQEAgYm9vbCBpOTE1X2dlbV9vYmplY3RfZXZp
Y3RhYmxlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiAJcmV0dXJuIHBpbl9jb3Vu
dCA9PSAwOwogfQogCisvKioKKyAqIGk5MTVfZ2VtX29iamVjdF9taWdyYXRhYmxlIC0gV2hldGhl
ciB0aGUgb2JqZWN0IGlzIG1pZ3JhdGFibGUgb3V0IG9mIHRoZQorICogY3VycmVudCByZWdpb24u
CisgKiBAb2JqOiBQb2ludGVyIHRvIHRoZSBvYmplY3QuCisgKgorICogUmV0dXJuOiBXaGV0aGVy
IHRoZSBvYmplY3QgaXMgYWxsb3dlZCB0byBiZSByZXNpZGVudCBpbiBvdGhlcgorICogcmVnaW9u
cyB0aGFuIHRoZSBjdXJyZW50IHdoaWxlIHBhZ2VzIGFyZSBwcmVzZW50LgorICovCitib29sIGk5
MTVfZ2VtX29iamVjdF9taWdyYXRhYmxlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmop
Cit7CisJc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1yID0gUkVBRF9PTkNFKG9iai0+bW0u
cmVnaW9uKTsKKwlzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqcGxhY2VtZW50OworCWludCBp
OworCisJaWYgKCFtcikKKwkJcmV0dXJuIGZhbHNlOworCisJaWYgKCFvYmotPm1tLm5fcGxhY2Vt
ZW50cykKKwkJcmV0dXJuIGZhbHNlOworCisJZm9yIChpID0gMDsgaSA8IG9iai0+bW0ubl9wbGFj
ZW1lbnRzOyArK2kpIHsKKwkJcGxhY2VtZW50ID0gb2JqLT5tbS5wbGFjZW1lbnRzW2ldOworCQlp
ZiAocGxhY2VtZW50ICE9IG1yKQorCQkJcmV0dXJuIHRydWU7CisJfQorCisJcmV0dXJuIGZhbHNl
OworfQorCiB2b2lkIGk5MTVfZ2VtX2luaXRfX29iamVjdHMoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCiB7CiAJSU5JVF9XT1JLKCZpOTE1LT5tbS5mcmVlX3dvcmssIF9faTkxNV9nZW1f
ZnJlZV93b3JrKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9vYmplY3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaApp
bmRleCBhZTU5MzBlMzA3ZDUuLmEzYWQ4Y2Y0ZWVmZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3QuaApAQCAtNTk2LDYgKzU5NiwxMCBAQCB2b2lkIF9faTkxNV9n
ZW1fZnJlZV9vYmplY3Qoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaik7CiAKIGJvb2wg
aTkxNV9nZW1fb2JqZWN0X2V2aWN0YWJsZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
KTsKIAorYm9vbCBpOTE1X2dlbV9vYmplY3RfbWlncmF0YWJsZShzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqKTsKKworYm9vbCBpOTE1X2dlbV9vYmplY3RfdmFsaWRhdGVzX3RvX2xtZW0o
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaik7CisKICNpZmRlZiBDT05GSUdfTU1VX05P
VElGSUVSCiBzdGF0aWMgaW5saW5lIGJvb2wKIGk5MTVfZ2VtX29iamVjdF9pc191c2VycHRyKHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCi0tIAoyLjMwLjIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
