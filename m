Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D7A608C1
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2019 17:07:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B4E26E4E8;
	Fri,  5 Jul 2019 15:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 656766E4E6
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2019 15:07:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17144926-1500050 
 for multiple; Fri, 05 Jul 2019 16:07:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Jul 2019 16:07:13 +0100
Message-Id: <20190705150713.23401-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190705142908.4921-4-mika.kuoppala@linux.intel.com>
References: <20190705142908.4921-4-mika.kuoppala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gtt: Introduce release_pd_entry
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

RnJvbTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpCeSBl
bmNhcHN1bGF0aW5nIHRoZSBsb2NraW5nIHVwcGVyIGxldmVsIGFuZCB1c2VkIGNoZWNrIGZvciBl
bnRyeQppbnRvIGEgaGVscGVyIGZ1bmN0aW9uLCB3ZSBjYW4gdXNlIGl0IGluIGFsbCBjYWxsc2l0
ZXMuCgp2MjogZ2V0IHJpZCBvZiBhdG9taWNfcmVhZHMgb24gbG93ZXIgbGV2ZWwgY2xlYXJzIChD
aHJpcykKCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVk
LW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAxMjEgKysrKysrKysrKyst
LS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQ3IGluc2VydGlvbnMoKyksIDc0IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0
dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggMGE1NWIwOTMy
Yzg2Li5kZDU4MWUwMzhmY2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC03
OTUsMTAgKzc5NSwxMCBAQCBfX3NldF9wZF9lbnRyeShzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9y
eSAqIGNvbnN0IHBkLAogfQogCiBzdGF0aWMgaW5saW5lIHZvaWQKLV9fY2xlYXJfcGRfZW50cnko
c3RydWN0IGk5MTVfcGFnZV9kaXJlY3RvcnkgKiBjb25zdCBwZCwKLQkJIGNvbnN0IHVuc2lnbmVk
IHNob3J0IHBkZSwKLQkJIHN0cnVjdCBpOTE1X3BhZ2VfZG1hICogY29uc3QgdG8sCi0JCSB1NjQg
KCplbmNvZGUpKGNvbnN0IGRtYV9hZGRyX3QsIGNvbnN0IGVudW0gaTkxNV9jYWNoZV9sZXZlbCkp
CitjbGVhcl9wZF9lbnRyeShzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAqIGNvbnN0IHBkLAor
CSAgICAgICBjb25zdCB1bnNpZ25lZCBzaG9ydCBwZGUsCisJICAgICAgIHN0cnVjdCBpOTE1X3Bh
Z2VfZG1hICogY29uc3QgdG8sCisJICAgICAgIHU2NCAoKmVuY29kZSkoY29uc3QgZG1hX2FkZHJf
dCwgY29uc3QgZW51bSBpOTE1X2NhY2hlX2xldmVsKSkKIHsKIAlHRU1fQlVHX09OKGF0b21pY19y
ZWFkKCZwZC0+dXNlZCkgPT0gMCk7CiAKQEAgLTgxMCw4ICs4MTAsMjMgQEAgX19jbGVhcl9wZF9l
bnRyeShzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAqIGNvbnN0IHBkLAogI2RlZmluZSBzZXRf
cGRfZW50cnkocGQsIHBkZSwgdG8pIFwKIAlfX3NldF9wZF9lbnRyeSgocGQpLCAocGRlKSwgcHhf
YmFzZSh0byksIGdlbjhfcGRlX2VuY29kZSkKIAotI2RlZmluZSBjbGVhcl9wZF9lbnRyeShwZCwg
cGRlLCB0bykgXAotCV9fY2xlYXJfcGRfZW50cnkoKHBkKSwgKHBkZSksIHB4X2Jhc2UodG8pLCBn
ZW44X3BkZV9lbmNvZGUpCitzdGF0aWMgYm9vbAorcmVsZWFzZV9wZF9lbnRyeShzdHJ1Y3QgaTkx
NV9wYWdlX2RpcmVjdG9yeSAqIGNvbnN0IHBkLAorCQkgY29uc3QgdW5zaWduZWQgc2hvcnQgcGRl
LAorCQkgYXRvbWljX3QgKmNvdW50ZXIsCisJCSBzdHJ1Y3QgaTkxNV9wYWdlX2RtYSAqIGNvbnN0
IHNjcmF0Y2gpCit7CisJYm9vbCBmcmVlID0gZmFsc2U7CisKKwlzcGluX2xvY2soJnBkLT5sb2Nr
KTsKKwlpZiAoYXRvbWljX2RlY19hbmRfdGVzdChjb3VudGVyKSkgeworCQljbGVhcl9wZF9lbnRy
eShwZCwgcGRlLCBzY3JhdGNoLCBnZW44X3BkZV9lbmNvZGUpOworCQlmcmVlID0gdHJ1ZTsKKwl9
CisJc3Bpbl91bmxvY2soJnBkLT5sb2NrKTsKKworCXJldHVybiBmcmVlOworfQogCiAvKgogICog
UERFIFRMQnMgYXJlIGEgcGFpbiB0byBpbnZhbGlkYXRlIG9uIEdFTjgrLiBXaGVuIHdlIG1vZGlm
eQpAQCAtODI3LDExICs4NDIsMTEgQEAgc3RhdGljIHZvaWQgbWFya190bGJzX2RpcnR5KHN0cnVj
dCBpOTE1X3BwZ3R0ICpwcGd0dCkKIC8qIFJlbW92ZXMgZW50cmllcyBmcm9tIGEgc2luZ2xlIHBh
Z2UgdGFibGUsIHJlbGVhc2luZyBpdCBpZiBpdCdzIGVtcHR5LgogICogQ2FsbGVyIGNhbiB1c2Ug
dGhlIHJldHVybiB2YWx1ZSB0byB1cGRhdGUgaGlnaGVyLWxldmVsIGVudHJpZXMuCiAgKi8KLXN0
YXRpYyBib29sIGdlbjhfcHBndHRfY2xlYXJfcHQoY29uc3Qgc3RydWN0IGk5MTVfYWRkcmVzc19z
cGFjZSAqdm0sCitzdGF0aWMgdm9pZCBnZW44X3BwZ3R0X2NsZWFyX3B0KGNvbnN0IHN0cnVjdCBp
OTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAogCQkJCXN0cnVjdCBpOTE1X3BhZ2VfdGFibGUgKnB0LAog
CQkJCXU2NCBzdGFydCwgdTY0IGxlbmd0aCkKIHsKLQl1bnNpZ25lZCBpbnQgbnVtX2VudHJpZXMg
PSBnZW44X3B0ZV9jb3VudChzdGFydCwgbGVuZ3RoKTsKKwljb25zdCB1bnNpZ25lZCBpbnQgbnVt
X2VudHJpZXMgPSBnZW44X3B0ZV9jb3VudChzdGFydCwgbGVuZ3RoKTsKIAlnZW44X3B0ZV90ICp2
YWRkcjsKIAogCXZhZGRyID0ga21hcF9hdG9taWNfcHgocHQpOwpAQCAtODM5LDEwICs4NTQsMTEg
QEAgc3RhdGljIGJvb2wgZ2VuOF9wcGd0dF9jbGVhcl9wdChjb25zdCBzdHJ1Y3QgaTkxNV9hZGRy
ZXNzX3NwYWNlICp2bSwKIAlrdW5tYXBfYXRvbWljKHZhZGRyKTsKIAogCUdFTV9CVUdfT04obnVt
X2VudHJpZXMgPiBhdG9taWNfcmVhZCgmcHQtPnVzZWQpKTsKLQlyZXR1cm4gIWF0b21pY19zdWJf
cmV0dXJuKG51bV9lbnRyaWVzLCAmcHQtPnVzZWQpOworCisJYXRvbWljX3N1YihudW1fZW50cmll
cywgJnB0LT51c2VkKTsKIH0KIAotc3RhdGljIGJvb2wgZ2VuOF9wcGd0dF9jbGVhcl9wZChzdHJ1
Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKK3N0YXRpYyB2b2lkIGdlbjhfcHBndHRfY2xlYXJf
cGQoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCiAJCQkJc3RydWN0IGk5MTVfcGFnZV9k
aXJlY3RvcnkgKnBkLAogCQkJCXU2NCBzdGFydCwgdTY0IGxlbmd0aCkKIHsKQEAgLTg1MCwzMCAr
ODY2LDIyIEBAIHN0YXRpYyBib29sIGdlbjhfcHBndHRfY2xlYXJfcGQoc3RydWN0IGk5MTVfYWRk
cmVzc19zcGFjZSAqdm0sCiAJdTMyIHBkZTsKIAogCWdlbjhfZm9yX2VhY2hfcGRlKHB0LCBwZCwg
c3RhcnQsIGxlbmd0aCwgcGRlKSB7Ci0JCWJvb2wgZnJlZSA9IGZhbHNlOwotCiAJCUdFTV9CVUdf
T04ocHQgPT0gdm0tPnNjcmF0Y2hfcHQpOwogCi0JCWlmICghZ2VuOF9wcGd0dF9jbGVhcl9wdCh2
bSwgcHQsIHN0YXJ0LCBsZW5ndGgpKQotCQkJY29udGludWU7CisJCWF0b21pY19pbmMoJnB0LT51
c2VkKTsKIAotCQlzcGluX2xvY2soJnBkLT5sb2NrKTsKLQkJaWYgKCFhdG9taWNfcmVhZCgmcHQt
PnVzZWQpKSB7Ci0JCQljbGVhcl9wZF9lbnRyeShwZCwgcGRlLCB2bS0+c2NyYXRjaF9wdCk7Ci0J
CQlmcmVlID0gdHJ1ZTsKLQkJfQotCQlzcGluX3VubG9jaygmcGQtPmxvY2spOwotCQlpZiAoZnJl
ZSkKKwkJZ2VuOF9wcGd0dF9jbGVhcl9wdCh2bSwgcHQsIHN0YXJ0LCBsZW5ndGgpOworCisJCWlm
IChyZWxlYXNlX3BkX2VudHJ5KHBkLCBwZGUsICZwdC0+dXNlZCwKKwkJCQkgICAgIHB4X2Jhc2Uo
dm0tPnNjcmF0Y2hfcHQpKSkKIAkJCWZyZWVfcHQodm0sIHB0KTsKIAl9Ci0KLQlyZXR1cm4gIWF0
b21pY19yZWFkKCZwZC0+dXNlZCk7CiB9CiAKIC8qIFJlbW92ZXMgZW50cmllcyBmcm9tIGEgc2lu
Z2xlIHBhZ2UgZGlyIHBvaW50ZXIsIHJlbGVhc2luZyBpdCBpZiBpdCdzIGVtcHR5LgogICogQ2Fs
bGVyIGNhbiB1c2UgdGhlIHJldHVybiB2YWx1ZSB0byB1cGRhdGUgaGlnaGVyLWxldmVsIGVudHJp
ZXMKICAqLwotc3RhdGljIGJvb2wgZ2VuOF9wcGd0dF9jbGVhcl9wZHAoc3RydWN0IGk5MTVfYWRk
cmVzc19zcGFjZSAqdm0sCitzdGF0aWMgdm9pZCBnZW44X3BwZ3R0X2NsZWFyX3BkcChzdHJ1Y3Qg
aTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIAkJCQkgc3RydWN0IGk5MTVfcGFnZV9kaXJlY3Rvcnkg
KiBjb25zdCBwZHAsCiAJCQkJIHU2NCBzdGFydCwgdTY0IGxlbmd0aCkKIHsKQEAgLTg4MSwyNCAr
ODg5LDE2IEBAIHN0YXRpYyBib29sIGdlbjhfcHBndHRfY2xlYXJfcGRwKHN0cnVjdCBpOTE1X2Fk
ZHJlc3Nfc3BhY2UgKnZtLAogCXVuc2lnbmVkIGludCBwZHBlOwogCiAJZ2VuOF9mb3JfZWFjaF9w
ZHBlKHBkLCBwZHAsIHN0YXJ0LCBsZW5ndGgsIHBkcGUpIHsKLQkJYm9vbCBmcmVlID0gZmFsc2U7
Ci0KIAkJR0VNX0JVR19PTihwZCA9PSB2bS0+c2NyYXRjaF9wZCk7CiAKLQkJaWYgKCFnZW44X3Bw
Z3R0X2NsZWFyX3BkKHZtLCBwZCwgc3RhcnQsIGxlbmd0aCkpCi0JCQljb250aW51ZTsKKwkJYXRv
bWljX2luYygmcGQtPnVzZWQpOwogCi0JCXNwaW5fbG9jaygmcGRwLT5sb2NrKTsKLQkJaWYgKCFh
dG9taWNfcmVhZCgmcGQtPnVzZWQpKSB7Ci0JCQljbGVhcl9wZF9lbnRyeShwZHAsIHBkcGUsIHZt
LT5zY3JhdGNoX3BkKTsKLQkJCWZyZWUgPSB0cnVlOwotCQl9Ci0JCXNwaW5fdW5sb2NrKCZwZHAt
PmxvY2spOwotCQlpZiAoZnJlZSkKKwkJZ2VuOF9wcGd0dF9jbGVhcl9wZCh2bSwgcGQsIHN0YXJ0
LCBsZW5ndGgpOworCisJCWlmIChyZWxlYXNlX3BkX2VudHJ5KHBkcCwgcGRwZSwgJnBkLT51c2Vk
LAorCQkJCSAgICAgcHhfYmFzZSh2bS0+c2NyYXRjaF9wZCkpKQogCQkJZnJlZV9wZCh2bSwgcGQp
OwogCX0KLQotCXJldHVybiAhYXRvbWljX3JlYWQoJnBkcC0+dXNlZCk7CiB9CiAKIHN0YXRpYyB2
b2lkIGdlbjhfcHBndHRfY2xlYXJfM2x2bChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwK
QEAgLTkyMiwxOSArOTIyLDE0IEBAIHN0YXRpYyB2b2lkIGdlbjhfcHBndHRfY2xlYXJfNGx2bChz
dHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIAlHRU1fQlVHX09OKCFpOTE1X3ZtX2lzXzRs
dmwodm0pKTsKIAogCWdlbjhfZm9yX2VhY2hfcG1sNGUocGRwLCBwbWw0LCBzdGFydCwgbGVuZ3Ro
LCBwbWw0ZSkgewotCQlib29sIGZyZWUgPSBmYWxzZTsKIAkJR0VNX0JVR19PTihwZHAgPT0gdm0t
PnNjcmF0Y2hfcGRwKTsKIAotCQlpZiAoIWdlbjhfcHBndHRfY2xlYXJfcGRwKHZtLCBwZHAsIHN0
YXJ0LCBsZW5ndGgpKQotCQkJY29udGludWU7CisJCWF0b21pY19pbmMoJnBkcC0+dXNlZCk7CiAK
LQkJc3Bpbl9sb2NrKCZwbWw0LT5sb2NrKTsKLQkJaWYgKCFhdG9taWNfcmVhZCgmcGRwLT51c2Vk
KSkgewotCQkJY2xlYXJfcGRfZW50cnkocG1sNCwgcG1sNGUsIHZtLT5zY3JhdGNoX3BkcCk7Ci0J
CQlmcmVlID0gdHJ1ZTsKLQkJfQotCQlzcGluX3VubG9jaygmcG1sNC0+bG9jayk7Ci0JCWlmIChm
cmVlKQorCQlnZW44X3BwZ3R0X2NsZWFyX3BkcCh2bSwgcGRwLCBzdGFydCwgbGVuZ3RoKTsKKwor
CQlpZiAocmVsZWFzZV9wZF9lbnRyeShwbWw0LCBwbWw0ZSwgJnBkcC0+dXNlZCwKKwkJCQkgICAg
IHB4X2Jhc2Uodm0tPnNjcmF0Y2hfcGRwKSkpCiAJCQlmcmVlX3BkKHZtLCBwZHApOwogCX0KIH0K
QEAgLTE0NTcsMTcgKzE0NTIsOCBAQCBzdGF0aWMgaW50IGdlbjhfcHBndHRfYWxsb2NfcGRwKHN0
cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAogCWdvdG8gb3V0OwogCiB1bndpbmRfcGQ6Ci0J
aWYgKGFsbG9jKSB7Ci0JCWZyZWVfcGQodm0sIGFsbG9jKTsKLQkJYWxsb2MgPSBOVUxMOwotCX0K
LQlzcGluX2xvY2soJnBkcC0+bG9jayk7Ci0JaWYgKGF0b21pY19kZWNfYW5kX3Rlc3QoJnBkLT51
c2VkKSkgewotCQlHRU1fQlVHX09OKGFsbG9jKTsKLQkJYWxsb2MgPSBwZDsgLyogZGVmZXIgdGhl
IGZyZWUgdG8gYWZ0ZXIgdGhlIGxvY2sgKi8KLQkJY2xlYXJfcGRfZW50cnkocGRwLCBwZHBlLCB2
bS0+c2NyYXRjaF9wZCk7Ci0JfQotCXNwaW5fdW5sb2NrKCZwZHAtPmxvY2spOworCWlmIChyZWxl
YXNlX3BkX2VudHJ5KHBkcCwgcGRwZSwgJnBkLT51c2VkLCBweF9iYXNlKHZtLT5zY3JhdGNoX3Bk
KSkpCisJCWZyZWVfcGQodm0sIHBkKTsKIHVud2luZDoKIAlnZW44X3BwZ3R0X2NsZWFyX3BkcCh2
bSwgcGRwLCBmcm9tLCBzdGFydCAtIGZyb20pOwogb3V0OgpAQCAtMTUzMCwxNyArMTUxNiw4IEBA
IHN0YXRpYyBpbnQgZ2VuOF9wcGd0dF9hbGxvY180bHZsKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3Bh
Y2UgKnZtLAogCWdvdG8gb3V0OwogCiB1bndpbmRfcGRwOgotCWlmIChhbGxvYykgewotCQlmcmVl
X3BkKHZtLCBhbGxvYyk7Ci0JCWFsbG9jID0gTlVMTDsKLQl9Ci0Jc3Bpbl9sb2NrKCZwbWw0LT5s
b2NrKTsKLQlpZiAoYXRvbWljX2RlY19hbmRfdGVzdCgmcGRwLT51c2VkKSkgewotCQlHRU1fQlVH
X09OKGFsbG9jKTsKLQkJYWxsb2MgPSBwZHA7IC8qIGRlZmVyIHRoZSBmcmVlIHVudGlsIGFmdGVy
IHRoZSBsb2NrICovCi0JCWNsZWFyX3BkX2VudHJ5KHBtbDQsIHBtbDRlLCB2bS0+c2NyYXRjaF9w
ZHApOwotCX0KLQlzcGluX3VubG9jaygmcG1sNC0+bG9jayk7CisJaWYgKHJlbGVhc2VfcGRfZW50
cnkocG1sNCwgcG1sNGUsICZwZHAtPnVzZWQsIHB4X2Jhc2Uodm0tPnNjcmF0Y2hfcGRwKSkpCisJ
CWZyZWVfcGQodm0sIHBkcCk7CiB1bndpbmQ6CiAJZ2VuOF9wcGd0dF9jbGVhcl80bHZsKHZtLCBm
cm9tLCBzdGFydCAtIGZyb20pOwogb3V0OgpAQCAtMTU3MCwxMSArMTU0Nyw3IEBAIHN0YXRpYyBp
bnQgZ2VuOF9wcmVhbGxvY2F0ZV90b3BfbGV2ZWxfcGRwKHN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0
dCkKIAlyZXR1cm4gMDsKIAogdW53aW5kOgotCXN0YXJ0IC09IGZyb207Ci0JZ2VuOF9mb3JfZWFj
aF9wZHBlKHBkLCBwZHAsIGZyb20sIHN0YXJ0LCBwZHBlKSB7Ci0JCWNsZWFyX3BkX2VudHJ5KHBk
cCwgcGRwZSwgdm0tPnNjcmF0Y2hfcGQpOwotCQlmcmVlX3BkKHZtLCBwZCk7Ci0JfQorCWdlbjhf
cHBndHRfY2xlYXJfcGRwKHZtLCBwZHAsIGZyb20sIHN0YXJ0IC0gZnJvbSk7CiAJYXRvbWljX3Nl
dCgmcGRwLT51c2VkLCAwKTsKIAlyZXR1cm4gLUVOT01FTTsKIH0KLS0gCjIuMjAuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
