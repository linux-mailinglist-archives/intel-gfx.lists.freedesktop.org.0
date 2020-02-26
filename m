Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F64216F539
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 02:45:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29F846E088;
	Wed, 26 Feb 2020 01:45:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FB9C6E077
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 01:45:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 17:45:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,486,1574150400"; d="scan'208";a="438261741"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.234])
 by fmsmga006.fm.intel.com with ESMTP; 25 Feb 2020 17:45:18 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 17:45:50 -0800
Message-Id: <20200226014603.42190-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 01/14] drm/i915/tgl: Split GT and display
 workarounds
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3BsaXRpbmcgR1QgYW5kIGRpc3BsYXkgcmV2aXNpb25zIGlkIHRvIGNvcnJlY3RseSBhcHBseSB3
b3JrYXJvdW5kcwpiZWNhdXNlIHdlIGhhdmUgc29tZSBpc3N1ZXMgdGhhdCB3ZXJlIGZpeGVkIGlu
IGRpc3BsYXkgQjAgYnV0IG5vCmhhcmR3YXJlIHdhcyBtYWRlIHdpdGggQjAgc3RlcHBpbmcsIHNv
IHRvIGtlZXAgY29uc2lzdGVudCB3aXRoIEJTcGVjCnNwbGl0dGluZyBpdCBmcm9tIEdUIGFuZCBh
ZGRpbmcgdGhpcyBhZGl0dGlvbmFsIGhhbmRsaW5nLgoKQlNwZWM6IDUyODkwCkJTcGVjOiA0NDQ1
NQpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KQ2M6IEphbWVzIEF1
c211cyA8amFtZXMuYXVzbXVzQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogLi4uL2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jICAgfCAxMCArKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8IDM2ICsrKysrKysrKysrKysrKysrLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgICAgICAgICAgICAgICB8ICAyICstCiA1IGZpbGVz
IGNoYW5nZWQsIDQyIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKaW5kZXggNmUy
NWExMzE3MTYxLi44MmFmOTYzMTA2YWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCkBAIC01MDEwLDcgKzUwMTAsNyBAQCBzdGF0
aWMgdm9pZCB0Z2xfYndfYnVkZHlfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCiAJY29uc3Qgc3RydWN0IGJ1ZGR5X3BhZ2VfbWFzayAqdGFibGU7CiAJaW50IGk7CiAKLQlp
ZiAoSVNfVEdMX1JFVklEKGRldl9wcml2LCBUR0xfUkVWSURfQTAsIFRHTF9SRVZJRF9BMCkpCisJ
aWYgKElTX1RHTF9ESVNQX1JFVklEKGRldl9wcml2LCBUR0xfRElTUF9SRVZJRF9BMCwgVEdMX0RJ
U1BfUkVWSURfQTApKQogCQkvKiBXYV8xNDA5NzY3MTA4OiB0Z2wgKi8KIAkJdGFibGUgPSB3YV8x
NDA5NzY3MTA4X2J1ZGR5X3BhZ2VfbWFza3M7CiAJZWxzZQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYwppbmRleCAzOWIwMTI1YjcxNDMuLjg1Mjk4MWQ1MzNhOCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTQxMjQsNyArNDEyNCw3IEBAIHN0YXRpYyBpbnQgZ2VuMTJf
ZW1pdF9mbHVzaF9yZW5kZXIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCwKIAkJLyoKIAkJ
ICogV2FfMTYwNDU0NDg4OTp0Z2wKIAkJICovCi0JCWlmIChJU19UR0xfUkVWSUQocmVxdWVzdC0+
aTkxNSwgVEdMX1JFVklEX0EwLCBUR0xfUkVWSURfQTApKSB7CisJCWlmIChJU19UR0xfR1RfUkVW
SUQocmVxdWVzdC0+aTkxNSwgVEdMX0dUX1JFVklEX0EwLCBUR0xfR1RfUkVWSURfQTApKSB7CiAJ
CQlmbGFncyA9IDA7CiAJCQlmbGFncyB8PSBQSVBFX0NPTlRST0xfQ1NfU1RBTEw7CiAJCQlmbGFn
cyB8PSBQSVBFX0NPTlRST0xfSERDX1BJUEVMSU5FX0ZMVVNIOwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggODg3ZTBkYzcwMWY3Li5iYzYxMTRiNmRj
OGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAt
NTk2LDggKzU5Niw4IEBAIHN0YXRpYyB2b2lkIHRnbF9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAJICogdGhlIHJlYWQgb2YgRkZfTU9ERTIuCiAJ
ICovCiAJd2FfYWRkKHdhbCwgRkZfTU9ERTIsIEZGX01PREUyX1REU19USU1FUl9NQVNLLCB2YWws
Ci0JICAgICAgIElTX1RHTF9SRVZJRChlbmdpbmUtPmk5MTUsIFRHTF9SRVZJRF9BMCwgVEdMX1JF
VklEX0EwKSA/IDAgOgotCQkJICAgIEZGX01PREUyX1REU19USU1FUl9NQVNLKTsKKwkgICAgICAg
SVNfVEdMX0dUX1JFVklEKGVuZ2luZS0+aTkxNSwgVEdMX0dUX1JFVklEX0EwLAorCQkJICAgICAg
IFRHTF9HVF9SRVZJRF9BMCkgPyAwIDogRkZfTU9ERTJfVERTX1RJTUVSX01BU0spOwogfQogCiBz
dGF0aWMgdm9pZApAQCAtOTMxLDEzICs5MzEsMTMgQEAgc3RhdGljIHZvaWQKIHRnbF9ndF93b3Jr
YXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93
YV9saXN0ICp3YWwpCiB7CiAJLyogV2FfMTQwOTQyMDYwNDp0Z2wgKi8KLQlpZiAoSVNfVEdMX1JF
VklEKGk5MTUsIFRHTF9SRVZJRF9BMCwgVEdMX1JFVklEX0EwKSkKKwlpZiAoSVNfVEdMX0dUX1JF
VklEKGk5MTUsIFRHTF9HVF9SRVZJRF9BMCwgVEdMX0dUX1JFVklEX0EwKSkKIAkJd2Ffd3JpdGVf
b3Iod2FsLAogCQkJICAgIFNVQlNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURTIsCiAJCQkgICAgQ1BT
U1VOSVRfQ0xLR0FURV9ESVMpOwogCiAJLyogV2FfMTQwOTE4MDMzODp0Z2wgKi8KLQlpZiAoSVNf
VEdMX1JFVklEKGk5MTUsIFRHTF9SRVZJRF9BMCwgVEdMX1JFVklEX0EwKSkKKwlpZiAoSVNfVEdM
X0dUX1JFVklEKGk5MTUsIFRHTF9HVF9SRVZJRF9BMCwgVEdMX0dUX1JFVklEX0EwKSkKIAkJd2Ff
d3JpdGVfb3Iod2FsLAogCQkJICAgIFNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURSwKIAkJCSAgICBM
M19DTEtHQVRFX0RJUyB8IEwzX0NSMlhfQ0xLR0FURV9ESVMpOwpAQCAtMTMyOSw3ICsxMzI5LDcg
QEAgcmNzX2VuZ2luZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3Ry
dWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gZW5naW5lLT5pOTE1OwogCi0JaWYgKElTX1RHTF9SRVZJRChpOTE1LCBUR0xfUkVWSURfQTAs
IFRHTF9SRVZJRF9BMCkpIHsKKwlpZiAoSVNfVEdMX0dUX1JFVklEKGk5MTUsIFRHTF9HVF9SRVZJ
RF9BMCwgVEdMX0dUX1JFVklEX0EwKSkgewogCQkvKiBXYV8xNjA2NzAwNjE3OnRnbCAqLwogCQl3
YV9tYXNrZWRfZW4od2FsLAogCQkJICAgICBHRU45X0NTX0RFQlVHX01PREUxLApkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgKaW5kZXggZWExM2ZjMGI0MDliLi40ZmEwMWY4ZDNmMzMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaApAQCAtMTU3NCwxMSArMTU3NCw0MyBAQCBJU19TVUJQTEFURk9STShjb25z
dCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKICNkZWZpbmUgSVNfSUNMX1JFVklEKHAs
IHNpbmNlLCB1bnRpbCkgXAogCShJU19JQ0VMQUtFKHApICYmIElTX1JFVklEKHAsIHNpbmNlLCB1
bnRpbCkpCiAKLSNkZWZpbmUgVEdMX1JFVklEX0EwCQkweDAKKyNkZWZpbmUgVEdMX0dUX1JFVklE
X0EwCQkweDAKIAotI2RlZmluZSBJU19UR0xfUkVWSUQocCwgc2luY2UsIHVudGlsKSBcCisjZGVm
aW5lIElTX1RHTF9HVF9SRVZJRChwLCBzaW5jZSwgdW50aWwpIFwKIAkoSVNfVElHRVJMQUtFKHAp
ICYmIElTX1JFVklEKHAsIHNpbmNlLCB1bnRpbCkpCiAKKy8qCisgKiByZXZpZD0weDAgPSBESVNQ
X1JFVklEX0EwCisgKiByZXZpZD0weDEgPSBESVNQX1JFVklEX0MwCisgKiByZXZpZD0weDIgPSBE
SVNQX1JFVklEX0QwCisgKgorICogU28gaWRzIGJlbGxvdyB3aWxsIG5vdCBtYXRjaCBQQ0kgcmV2
aWQgYW5kIHRoZSBmdW5jdGlvbiBiZWxsb3cgaXMgdXNlZC4KKyAqLworI2RlZmluZSBUR0xfRElT
UF9SRVZJRF9BMCAweDAKKyNkZWZpbmUgVEdMX0RJU1BfUkVWSURfQjAgMHgxCisjZGVmaW5lIFRH
TF9ESVNQX1JFVklEX0MwIDB4MgorI2RlZmluZSBUR0xfRElTUF9SRVZJRF9EMCAweDMKKworc3Rh
dGljIGlubGluZSBib29sCitfdGdsX2Rpc3BfcmV2aWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KnAsIHU4IHNpbmNlLCB1OCB1bnRpbCkKK3sKKwljb25zdCB1OCBndDJfZGlzcF9yZXZpZFtdID0g
eworCQlUR0xfRElTUF9SRVZJRF9BMCwKKwkJVEdMX0RJU1BfUkVWSURfQzAsCisJCVRHTF9ESVNQ
X1JFVklEX0QwCisJfTsKKwl1OCBkaXNwX3JldmlkOworCisJaWYgKElOVEVMX1JFVklEKHApID49
IEFSUkFZX1NJWkUoZ3QyX2Rpc3BfcmV2aWQpKQorCQlkaXNwX3JldmlkID0gVEdMX0RJU1BfUkVW
SURfRDA7CisJZWxzZQorCQlkaXNwX3JldmlkID0gZ3QyX2Rpc3BfcmV2aWRbSU5URUxfUkVWSUQo
cCldOworCisJcmV0dXJuIElTX1RJR0VSTEFLRShwKSAmJiBkaXNwX3JldmlkID49IHNpbmNlICYm
IGRpc3BfcmV2aWQgPD0gdW50aWw7Cit9CisKKyNkZWZpbmUgSVNfVEdMX0RJU1BfUkVWSUQocCwg
c2luY2UsIHVudGlsKSBfdGdsX2Rpc3BfcmV2aWQocCwgc2luY2UsIHVudGlsKQorCiAjZGVmaW5l
IElTX0xQKGRldl9wcml2KQkoSU5URUxfSU5GTyhkZXZfcHJpdiktPmlzX2xwKQogI2RlZmluZSBJ
U19HRU45X0xQKGRldl9wcml2KQkoSVNfR0VOKGRldl9wcml2LCA5KSAmJiBJU19MUChkZXZfcHJp
dikpCiAjZGVmaW5lIElTX0dFTjlfQkMoZGV2X3ByaXYpCShJU19HRU4oZGV2X3ByaXYsIDkpICYm
ICFJU19MUChkZXZfcHJpdikpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCAyMmFhMjA1Nzkz
ZTUuLjQ5NDg0ZDVmNWY4NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC02ODUyLDcgKzY4
NTIsNyBAQCBzdGF0aWMgdm9pZCB0Z2xfaW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQogCQkgICBJOTE1X1JFQUQoUE9XRVJHQVRFX0VOQUJMRSkgfCB2
ZF9wZ19lbmFibGUpOwogCiAJLyogV2FfMTQwOTgyNTM3Njp0Z2wgKHByZS1wcm9kKSovCi0JaWYg
KElTX1RHTF9SRVZJRChkZXZfcHJpdiwgVEdMX1JFVklEX0EwLCBUR0xfUkVWSURfQTApKQorCWlm
IChJU19UR0xfRElTUF9SRVZJRChkZXZfcHJpdiwgVEdMX0RJU1BfUkVWSURfQTAsIFRHTF9ESVNQ
X1JFVklEX0EwKSkKIAkJSTkxNV9XUklURShHRU45X0NMS0dBVEVfRElTXzMsIEk5MTVfUkVBRChH
RU45X0NMS0dBVEVfRElTXzMpIHwKIAkJCSAgIFRHTF9WUkhfR0FUSU5HX0RJUyk7CiB9Ci0tIAoy
LjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
