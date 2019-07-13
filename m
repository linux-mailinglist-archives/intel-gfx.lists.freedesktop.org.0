Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EA56776B
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 03:09:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 047886E3BB;
	Sat, 13 Jul 2019 01:09:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C28FF6E3AA
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 01:09:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 18:09:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,484,1557212400"; d="scan'208";a="341850945"
Received: from dhoyan-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.252.197.100])
 by orsmga005.jf.intel.com with ESMTP; 12 Jul 2019 18:09:46 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 18:09:33 -0700
Message-Id: <20190713010940.17711-16-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190713010940.17711-1-lucas.demarchi@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/22] drm/i915/tgl: Introduce initial Tigerlake
 Workarounds
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KCkluaGVyaXQg
d29ya2Fyb3VuZHMgZnJvbSBwcmV2aW91cyBwbGF0Zm9ybXMgdGhhdCBhcmUgc3RpbGwgdmFsaWQg
Zm9yClRpZ2VybGFrZS4KCiAgV2FQaXBlbGluZUZsdXNoQ29oZXJlbnRMaW5lczp0Z2wgKGNoYW5n
ZWQgcmVnaXN0ZXIgYnV0IGhhcyBzYW1lIG5hbWUpCiAgV2FTZW5kUHVzaENvbnN0YW50c0Zyb21N
TUlPOnRnbAogIFdhQWxsb3dVTURUb01vZGlmeVNhbXBsZXJNb2RlOnRnbAogIFdhUnNGb3JjZXdh
a2VBZGREZWxheUZvckFjazp0Z2wKCkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxl
LmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNaWNoZWwgVGhpZXJyeSA8
bWljaGVsLnRoaWVycnlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkg
PGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYyAgICAgICAgIHwgIDIgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3dvcmthcm91bmRzLmMgfCA0MCArKysrKysrKysrKysrKysrKysrLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgfCAgMyArKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICB8ICA0ICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfdW5jb3JlLmMgICAgICAgICB8ICAyICstCiA1IGZpbGVzIGNoYW5nZWQsIDQ2IGluc2Vy
dGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpp
bmRleCA5ZTA5OTI0OTgwODcuLjIzOWQyYmM0MWUzMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMKQEAgLTIwNDUsNiArMjA0NSw4IEBAIHN0YXRpYyBpbnQgaW50ZWxfaW5pdF93b3Jr
YXJvdW5kX2JiKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkJcmV0dXJuIDA7CiAK
IAlzd2l0Y2ggKElOVEVMX0dFTihlbmdpbmUtPmk5MTUpKSB7CisJY2FzZSAxMjoKKwkJcmV0dXJu
IDA7CiAJY2FzZSAxMToKIAkJcmV0dXJuIDA7CiAJY2FzZSAxMDoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IDNiMWZjN2M4ZmFhOC4uZWQ5MjczOGEw
NzM1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKQEAg
LTU4Miw2ICs1ODIsMTEgQEAgc3RhdGljIHZvaWQgaWNsX2N0eF93b3JrYXJvdW5kc19pbml0KHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAkJCSAgR0VOMTFfU0FNUExFUl9FTkFCTEVf
SEVBRExFU1NfTVNHKTsKIH0KIAorc3RhdGljIHZvaWQgdGdsX2N0eF93b3JrYXJvdW5kc19pbml0
KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKKwkJCQkgICAgIHN0cnVjdCBpOTE1X3dh
X2xpc3QgKndhbCkKK3sKK30KKwogc3RhdGljIHZvaWQKIF9faW50ZWxfZW5naW5lX2luaXRfY3R4
X3dhKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAkJCSAgIHN0cnVjdCBpOTE1X3dh
X2xpc3QgKndhbCwKQEAgLTU5NCw3ICs1OTksOSBAQCBfX2ludGVsX2VuZ2luZV9pbml0X2N0eF93
YShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAKIAl3YV9pbml0X3N0YXJ0KHdhbCwg
bmFtZSwgZW5naW5lLT5uYW1lKTsKIAotCWlmIChJU19HRU4oaTkxNSwgMTEpKQorCWlmIChJU19H
RU4oaTkxNSwgMTIpKQorCQl0Z2xfY3R4X3dvcmthcm91bmRzX2luaXQoZW5naW5lLCB3YWwpOwor
CWVsc2UgaWYgKElTX0dFTihpOTE1LCAxMSkpCiAJCWljbF9jdHhfd29ya2Fyb3VuZHNfaW5pdChl
bmdpbmUsIHdhbCk7CiAJZWxzZSBpZiAoSVNfQ0FOTk9OTEFLRShpOTE1KSkKIAkJY25sX2N0eF93
b3JrYXJvdW5kc19pbml0KGVuZ2luZSwgd2FsKTsKQEAgLTg5NSwxMCArOTAyLDE3IEBAIGljbF9n
dF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3Qg
aTkxNV93YV9saXN0ICp3YWwpCiAJCSAgICBHQU1UX0NIS05fRElTQUJMRV9MM19DT0hfUElQRSk7
CiB9CiAKK3N0YXRpYyB2b2lkCit0Z2xfZ3Rfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQoreworfQorCiBzdGF0
aWMgdm9pZAogZ3RfaW5pdF93b3JrYXJvdW5kcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogewotCWlmIChJU19HRU4oaTkxNSwgMTEpKQor
CWlmIChJU19HRU4oaTkxNSwgMTIpKQorCQl0Z2xfZ3Rfd29ya2Fyb3VuZHNfaW5pdChpOTE1LCB3
YWwpOworCWVsc2UgaWYgKElTX0dFTihpOTE1LCAxMSkpCiAJCWljbF9ndF93b3JrYXJvdW5kc19p
bml0KGk5MTUsIHdhbCk7CiAJZWxzZSBpZiAoSVNfQ0FOTk9OTEFLRShpOTE1KSkKIAkJY25sX2d0
X3dvcmthcm91bmRzX2luaXQoaTkxNSwgd2FsKTsKQEAgLTExODgsNiArMTIwMiwxNyBAQCBzdGF0
aWMgdm9pZCBpY2xfd2hpdGVsaXN0X2J1aWxkKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSkKIAl9CiB9CiAKK3N0YXRpYyB2b2lkIHRnbF93aGl0ZWxpc3RfYnVpbGQoc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lKQoreworCXN0cnVjdCBpOTE1X3dhX2xpc3QgKncgPSAmZW5naW5l
LT53aGl0ZWxpc3Q7CisKKwkvKiBXYVNlbmRQdXNoQ29uc3RhbnRzRnJvbU1NSU86dGdsICovCisJ
d2hpdGVsaXN0X3JlZyh3LCBDT01NT05fU0xJQ0VfQ0hJQ0tFTjIpOworCisJLyogV2FBbGxvd1VN
RFRvTW9kaWZ5U2FtcGxlck1vZGU6dGdsICovCisJd2hpdGVsaXN0X3JlZyh3LCBHRU4xMF9TQU1Q
TEVSX01PREUpOworfQorCiB2b2lkIGludGVsX2VuZ2luZV9pbml0X3doaXRlbGlzdChzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSBlbmdpbmUtPmk5MTU7CkBAIC0xMTk1LDcgKzEyMjAsOSBAQCB2b2lkIGludGVsX2VuZ2lu
ZV9pbml0X3doaXRlbGlzdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAKIAl3YV9p
bml0X3N0YXJ0KHcsICJ3aGl0ZWxpc3QiLCBlbmdpbmUtPm5hbWUpOwogCi0JaWYgKElTX0dFTihp
OTE1LCAxMSkpCisJaWYgKElTX0dFTihpOTE1LCAxMikpCisJCXRnbF93aGl0ZWxpc3RfYnVpbGQo
ZW5naW5lKTsKKwllbHNlIGlmIChJU19HRU4oaTkxNSwgMTEpKQogCQlpY2xfd2hpdGVsaXN0X2J1
aWxkKGVuZ2luZSk7CiAJZWxzZSBpZiAoSVNfQ0FOTk9OTEFLRShpOTE1KSkKIAkJY25sX3doaXRl
bGlzdF9idWlsZChlbmdpbmUpOwpAQCAtMTI0NSw2ICsxMjcyLDEzIEBAIHJjc19lbmdpbmVfd2Ff
aW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3dhX2xpc3Qg
KndhbCkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGVuZ2luZS0+aTkxNTsK
IAorCWlmIChJU19HRU4oaTkxNSwgMTIpKSB7CisJCS8qIFdhUGlwZWxpbmVGbHVzaENvaGVyZW50
TGluZXM6dGdsICovCisJCXdhX3dyaXRlX29yKHdhbCwKKwkJCSAgICBHRU4xMl9MM1NRQ1JFRzIs
CisJCQkgICAgR0VOMTJfTFFTQ19GTFVTSF9DT0hFUkVOVF9MSU5FUyk7CisJfQorCiAJaWYgKElT
X0dFTihpOTE1LCAxMSkpIHsKIAkJLyogVGhpcyBpcyBub3QgYW4gV2EuIEVuYWJsZSBmb3IgYmV0
dGVyIGltYWdlIHF1YWxpdHkgKi8KIAkJd2FfbWFza2VkX2VuKHdhbCwKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oCmluZGV4IDcwODcyYzkzOTFmZi4uMGEyNjU3Y2UyODRmIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKQEAgLTc3NDcsNiArNzc0Nyw5IEBAIGVudW0gewogI2RlZmluZSAgR0VOOF9MUVND
X1JPX1BFUkZfRElTCQkJKDEgPDwgMjcpCiAjZGVmaW5lICBHRU44X0xRU0NfRkxVU0hfQ09IRVJF
TlRfTElORVMJCSgxIDw8IDIxKQogCisjZGVmaW5lIEdFTjEyX0wzU1FDUkVHMgkJCQlfTU1JTygw
eGIxMDQpCisjZGVmaW5lICBHRU4xMl9MUVNDX0ZMVVNIX0NPSEVSRU5UX0xJTkVTCSgxIDw8IDI0
KQorCiAvKiBHRU44IGNoaWNrZW4gKi8KICNkZWZpbmUgSERDX0NISUNLRU4wCQkJCV9NTUlPKDB4
NzMwMCkKICNkZWZpbmUgQ05MX0hEQ19DSElDS0VOMAkJCV9NTUlPKDB4RTVGMCkKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5jCmluZGV4IDIyNDcyZjJiZDMxYi4uYjk2NmM3MzZkYTY5IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMKQEAgLTk2MDgsNyArOTYwOCw5IEBAIHN0YXRpYyB2b2lkIG5vcF9pbml0
X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAgKi8KIHZv
aWQgaW50ZWxfaW5pdF9jbG9ja19nYXRpbmdfaG9va3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQogewotCWlmIChJU19HRU4oZGV2X3ByaXYsIDExKSkKKwlpZiAoSVNfR0VOKGRl
dl9wcml2LCAxMikpCisJCWRldl9wcml2LT5kaXNwbGF5LmluaXRfY2xvY2tfZ2F0aW5nID0gbm9w
X2luaXRfY2xvY2tfZ2F0aW5nOworCWVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpKQogCQlk
ZXZfcHJpdi0+ZGlzcGxheS5pbml0X2Nsb2NrX2dhdGluZyA9IGljbF9pbml0X2Nsb2NrX2dhdGlu
ZzsKIAllbHNlIGlmIChJU19DQU5OT05MQUtFKGRldl9wcml2KSkKIAkJZGV2X3ByaXYtPmRpc3Bs
YXkuaW5pdF9jbG9ja19nYXRpbmcgPSBjbmxfaW5pdF9jbG9ja19nYXRpbmc7CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3VuY29yZS5jCmluZGV4IDJiODM5YWNmYTBmNi4uOTQwNDQ1ZDA1MmE0IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYwpAQCAtMTQ0LDcgKzE0NCw3IEBAIGZ3X2RvbWFp
bl93YWl0X2Fja193aXRoX2ZhbGxiYWNrKGNvbnN0IHN0cnVjdCBpbnRlbF91bmNvcmVfZm9yY2V3
YWtlX2RvbWFpbiAqZCwKIAkgKiB0aGUgZmFsbGJhY2sgYWNrLgogCSAqCiAJICogVGhpcyB3b3Jr
YXJvdW5kIGlzIGRlc2NyaWJlZCBpbiBIU0RFUyAjMTYwNDI1NDUyNCBhbmQgaXQncyBrbm93biBh
czoKLQkgKiBXYVJzRm9yY2V3YWtlQWRkRGVsYXlGb3JBY2s6c2tsLGJ4dCxrYmwsZ2xrLGNmbCxj
bmwsaWNsCisJICogV2FSc0ZvcmNld2FrZUFkZERlbGF5Rm9yQWNrOnNrbCxieHQsa2JsLGdsayxj
ZmwsY25sLGljbCx0Z2wKIAkgKiBhbHRob3VnaCB0aGUgbmFtZSBpcyBhIGJpdCBtaXNsZWFkaW5n
LgogCSAqLwogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
