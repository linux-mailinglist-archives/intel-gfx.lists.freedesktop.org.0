Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A02912C7F4
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 15:39:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E9BD89CCE;
	Tue, 28 May 2019 13:39:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A249E89CCE
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 13:39:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16706667-1500050 
 for multiple; Tue, 28 May 2019 14:37:58 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 May 2019 14:37:44 +0100
Message-Id: <20190528133750.12775-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528133750.12775-1-chris@chris-wilson.co.uk>
References: <20190528133750.12775-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/9] drm/i915: Stop retiring along engine
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

V2Ugbm8gbG9uZ2VyIHRyYWNrIHRoZSBleGVjdXRpb24gb3JkZXIgYWxvbmcgdGhlIGVuZ2luZSBh
bmQgc28gbm8gbG9uZ2VyCm5lZWQgdG8gZW5mb3JjZSBvcmRlcmluZyBvZiByZXRpcmUgYWxvbmcg
dGhlIGVuZ2luZS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIHwgMTI4
ICsrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1MiBpbnNlcnRp
b25zKCspLCA3NiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCmlu
ZGV4IGVhYzdjNjAwNzg0Ni4uMTk1OTU2YTc5NmExIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlcXVlc3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
cXVlc3QuYwpAQCAtMTgzLDcyICsxODMsMjMgQEAgc3RhdGljIHZvaWQgZnJlZV9jYXB0dXJlX2xp
c3Qoc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCkKIAl9CiB9CiAKLXN0YXRpYyB2b2lkIF9f
cmV0aXJlX2VuZ2luZV9yZXF1ZXN0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKLQkJ
CQkgICAgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCi17Ci0JR0VNX1RSQUNFKCIlcyglcykgZmVu
Y2UgJWxseDolbGxkLCBjdXJyZW50ICVkXG4iLAotCQkgIF9fZnVuY19fLCBlbmdpbmUtPm5hbWUs
Ci0JCSAgcnEtPmZlbmNlLmNvbnRleHQsIHJxLT5mZW5jZS5zZXFubywKLQkJICBod3NwX3NlcW5v
KHJxKSk7Ci0KLQlHRU1fQlVHX09OKCFpOTE1X3JlcXVlc3RfY29tcGxldGVkKHJxKSk7Ci0KLQls
b2NhbF9pcnFfZGlzYWJsZSgpOwotCi0Jc3Bpbl9sb2NrKCZlbmdpbmUtPnRpbWVsaW5lLmxvY2sp
OwotCUdFTV9CVUdfT04oIWxpc3RfaXNfZmlyc3QoJnJxLT5saW5rLCAmZW5naW5lLT50aW1lbGlu
ZS5yZXF1ZXN0cykpOwotCWxpc3RfZGVsX2luaXQoJnJxLT5saW5rKTsKLQlzcGluX3VubG9jaygm
ZW5naW5lLT50aW1lbGluZS5sb2NrKTsKLQotCXNwaW5fbG9jaygmcnEtPmxvY2spOwotCWk5MTVf
cmVxdWVzdF9tYXJrX2NvbXBsZXRlKHJxKTsKLQlpZiAoIWk5MTVfcmVxdWVzdF9zaWduYWxlZChy
cSkpCi0JCWRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKCZycS0+ZmVuY2UpOwotCWlmICh0ZXN0X2Jp
dChETUFfRkVOQ0VfRkxBR19FTkFCTEVfU0lHTkFMX0JJVCwgJnJxLT5mZW5jZS5mbGFncykpCi0J
CWk5MTVfcmVxdWVzdF9jYW5jZWxfYnJlYWRjcnVtYihycSk7Ci0JaWYgKHJxLT53YWl0Ym9vc3Qp
IHsKLQkJR0VNX0JVR19PTighYXRvbWljX3JlYWQoJnJxLT5pOTE1LT5ndF9wbS5ycHMubnVtX3dh
aXRlcnMpKTsKLQkJYXRvbWljX2RlYygmcnEtPmk5MTUtPmd0X3BtLnJwcy5udW1fd2FpdGVycyk7
Ci0JfQotCXNwaW5fdW5sb2NrKCZycS0+bG9jayk7Ci0KLQlsb2NhbF9pcnFfZW5hYmxlKCk7Ci19
Ci0KLXN0YXRpYyB2b2lkIF9fcmV0aXJlX2VuZ2luZV91cHRvKHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSwKLQkJCQkgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCi17Ci0Jc3RydWN0IGk5
MTVfcmVxdWVzdCAqdG1wOwotCi0JaWYgKGxpc3RfZW1wdHkoJnJxLT5saW5rKSkKLQkJcmV0dXJu
OwotCi0JZG8gewotCQl0bXAgPSBsaXN0X2ZpcnN0X2VudHJ5KCZlbmdpbmUtPnRpbWVsaW5lLnJl
cXVlc3RzLAotCQkJCSAgICAgICB0eXBlb2YoKnRtcCksIGxpbmspOwotCi0JCUdFTV9CVUdfT04o
dG1wLT5lbmdpbmUgIT0gZW5naW5lKTsKLQkJX19yZXRpcmVfZW5naW5lX3JlcXVlc3QoZW5naW5l
LCB0bXApOwotCX0gd2hpbGUgKHRtcCAhPSBycSk7Ci19Ci0KLXN0YXRpYyB2b2lkIGk5MTVfcmVx
dWVzdF9yZXRpcmUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCkKK3N0YXRpYyBib29sIGk5
MTVfcmVxdWVzdF9yZXRpcmUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiB7CiAJc3RydWN0IGk5
MTVfYWN0aXZlX3JlcXVlc3QgKmFjdGl2ZSwgKm5leHQ7CiAKLQlHRU1fVFJBQ0UoIiVzIGZlbmNl
ICVsbHg6JWxsZCwgY3VycmVudCAlZFxuIiwKLQkJICByZXF1ZXN0LT5lbmdpbmUtPm5hbWUsCi0J
CSAgcmVxdWVzdC0+ZmVuY2UuY29udGV4dCwgcmVxdWVzdC0+ZmVuY2Uuc2Vxbm8sCi0JCSAgaHdz
cF9zZXFubyhyZXF1ZXN0KSk7CisJbG9ja2RlcF9hc3NlcnRfaGVsZCgmcnEtPmk5MTUtPmRybS5z
dHJ1Y3RfbXV0ZXgpOworCWlmICghaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChycSkpCisJCXJldHVy
biBmYWxzZTsKIAotCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJnJlcXVlc3QtPmk5MTUtPmRybS5zdHJ1
Y3RfbXV0ZXgpOwotCUdFTV9CVUdfT04oIWk5MTVfc3dfZmVuY2Vfc2lnbmFsZWQoJnJlcXVlc3Qt
PnN1Ym1pdCkpOwotCUdFTV9CVUdfT04oIWk5MTVfcmVxdWVzdF9jb21wbGV0ZWQocmVxdWVzdCkp
OworCUdFTV9UUkFDRSgiJXMgZmVuY2UgJWxseDolbGxkLCBjdXJyZW50ICVkXG4iLAorCQkgIHJx
LT5lbmdpbmUtPm5hbWUsCisJCSAgcnEtPmZlbmNlLmNvbnRleHQsIHJxLT5mZW5jZS5zZXFubywK
KwkJICBod3NwX3NlcW5vKHJxKSk7CiAKLQl0cmFjZV9pOTE1X3JlcXVlc3RfcmV0aXJlKHJlcXVl
c3QpOworCUdFTV9CVUdfT04oIWk5MTVfc3dfZmVuY2Vfc2lnbmFsZWQoJnJxLT5zdWJtaXQpKTsK
Kwl0cmFjZV9pOTE1X3JlcXVlc3RfcmV0aXJlKHJxKTsKIAotCWFkdmFuY2VfcmluZyhyZXF1ZXN0
KTsKLQlmcmVlX2NhcHR1cmVfbGlzdChyZXF1ZXN0KTsKKwlhZHZhbmNlX3JpbmcocnEpOwogCiAJ
LyoKIAkgKiBXYWxrIHRocm91Z2ggdGhlIGFjdGl2ZSBsaXN0LCBjYWxsaW5nIHJldGlyZSBvbiBl
YWNoLiBUaGlzIGFsbG93cwpAQCAtMjYwLDcgKzIxMSw3IEBAIHN0YXRpYyB2b2lkIGk5MTVfcmVx
dWVzdF9yZXRpcmUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCkKIAkgKiBwYXNzIGFsb25n
IHRoZSBhdXhpbGlhcnkgaW5mb3JtYXRpb24gKHRvIGF2b2lkIGRlcmVmZXJlbmNpbmcKIAkgKiB0
aGUgbm9kZSBhZnRlciB0aGUgY2FsbGJhY2spLgogCSAqLwotCWxpc3RfZm9yX2VhY2hfZW50cnlf
c2FmZShhY3RpdmUsIG5leHQsICZyZXF1ZXN0LT5hY3RpdmVfbGlzdCwgbGluaykgeworCWxpc3Rf
Zm9yX2VhY2hfZW50cnlfc2FmZShhY3RpdmUsIG5leHQsICZycS0+YWN0aXZlX2xpc3QsIGxpbmsp
IHsKIAkJLyoKIAkJICogSW4gbWljcm9iZW5jaG1hcmtzIG9yIGZvY3VzaW5nIHVwb24gdGltZSBp
bnNpZGUgdGhlIGtlcm5lbCwKIAkJICogd2UgbWF5IHNwZW5kIGFuIGlub3JkaW5hdGUgYW1vdW50
IG9mIHRpbWUgc2ltcGx5IGhhbmRsaW5nCkBAIC0yNzYsMTggKzIyNywzOSBAQCBzdGF0aWMgdm9p
ZCBpOTE1X3JlcXVlc3RfcmV0aXJlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QpCiAJCUlO
SVRfTElTVF9IRUFEKCZhY3RpdmUtPmxpbmspOwogCQlSQ1VfSU5JVF9QT0lOVEVSKGFjdGl2ZS0+
cmVxdWVzdCwgTlVMTCk7CiAKLQkJYWN0aXZlLT5yZXRpcmUoYWN0aXZlLCByZXF1ZXN0KTsKKwkJ
YWN0aXZlLT5yZXRpcmUoYWN0aXZlLCBycSk7CisJfQorCisJbG9jYWxfaXJxX2Rpc2FibGUoKTsK
KworCXNwaW5fbG9jaygmcnEtPmVuZ2luZS0+dGltZWxpbmUubG9jayk7CisJbGlzdF9kZWwoJnJx
LT5saW5rKTsKKwlzcGluX3VubG9jaygmcnEtPmVuZ2luZS0+dGltZWxpbmUubG9jayk7CisKKwlz
cGluX2xvY2soJnJxLT5sb2NrKTsKKwlpOTE1X3JlcXVlc3RfbWFya19jb21wbGV0ZShycSk7CisJ
aWYgKCFpOTE1X3JlcXVlc3Rfc2lnbmFsZWQocnEpKQorCQlkbWFfZmVuY2Vfc2lnbmFsX2xvY2tl
ZCgmcnEtPmZlbmNlKTsKKwlpZiAodGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfRU5BQkxFX1NJR05B
TF9CSVQsICZycS0+ZmVuY2UuZmxhZ3MpKQorCQlpOTE1X3JlcXVlc3RfY2FuY2VsX2JyZWFkY3J1
bWIocnEpOworCWlmIChycS0+d2FpdGJvb3N0KSB7CisJCUdFTV9CVUdfT04oIWF0b21pY19yZWFk
KCZycS0+aTkxNS0+Z3RfcG0ucnBzLm51bV93YWl0ZXJzKSk7CisJCWF0b21pY19kZWMoJnJxLT5p
OTE1LT5ndF9wbS5ycHMubnVtX3dhaXRlcnMpOwogCX0KKwlzcGluX3VubG9jaygmcnEtPmxvY2sp
OworCisJbG9jYWxfaXJxX2VuYWJsZSgpOwogCi0JaTkxNV9yZXF1ZXN0X3JlbW92ZV9mcm9tX2Ns
aWVudChyZXF1ZXN0KTsKKwlpbnRlbF9jb250ZXh0X2V4aXQocnEtPmh3X2NvbnRleHQpOworCWlu
dGVsX2NvbnRleHRfdW5waW4ocnEtPmh3X2NvbnRleHQpOwogCi0JX19yZXRpcmVfZW5naW5lX3Vw
dG8ocmVxdWVzdC0+ZW5naW5lLCByZXF1ZXN0KTsKKwlpOTE1X3JlcXVlc3RfcmVtb3ZlX2Zyb21f
Y2xpZW50KHJxKTsKIAotCWludGVsX2NvbnRleHRfZXhpdChyZXF1ZXN0LT5od19jb250ZXh0KTsK
LQlpbnRlbF9jb250ZXh0X3VucGluKHJlcXVlc3QtPmh3X2NvbnRleHQpOworCWZyZWVfY2FwdHVy
ZV9saXN0KHJxKTsKKwlpOTE1X3NjaGVkX25vZGVfZmluaSgmcnEtPnNjaGVkKTsKKwlpOTE1X3Jl
cXVlc3RfcHV0KHJxKTsKIAotCWk5MTVfc2NoZWRfbm9kZV9maW5pKCZyZXF1ZXN0LT5zY2hlZCk7
Ci0JaTkxNV9yZXF1ZXN0X3B1dChyZXF1ZXN0KTsKKwlyZXR1cm4gdHJ1ZTsKIH0KIAogdm9pZCBp
OTE1X3JlcXVlc3RfcmV0aXJlX3VwdG8oc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCkBAIC0zMDks
OSArMjgxLDcgQEAgdm9pZCBpOTE1X3JlcXVlc3RfcmV0aXJlX3VwdG8oc3RydWN0IGk5MTVfcmVx
dWVzdCAqcnEpCiAJZG8gewogCQl0bXAgPSBsaXN0X2ZpcnN0X2VudHJ5KCZyaW5nLT5yZXF1ZXN0
X2xpc3QsCiAJCQkJICAgICAgIHR5cGVvZigqdG1wKSwgcmluZ19saW5rKTsKLQotCQlpOTE1X3Jl
cXVlc3RfcmV0aXJlKHRtcCk7Ci0JfSB3aGlsZSAodG1wICE9IHJxKTsKKwl9IHdoaWxlIChpOTE1
X3JlcXVlc3RfcmV0aXJlKHRtcCkgJiYgdG1wICE9IHJxKTsKIH0KIAogc3RhdGljIHZvaWQgaXJx
X2V4ZWN1dGVfY2Ioc3RydWN0IGlycV93b3JrICp3cmspCkBAIC02MDAsMTIgKzU3MCw5IEBAIHN0
YXRpYyB2b2lkIHJpbmdfcmV0aXJlX3JlcXVlc3RzKHN0cnVjdCBpbnRlbF9yaW5nICpyaW5nKQog
ewogCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCAqcm47CiAKLQlsaXN0X2Zvcl9lYWNoX2VudHJ5
X3NhZmUocnEsIHJuLCAmcmluZy0+cmVxdWVzdF9saXN0LCByaW5nX2xpbmspIHsKLQkJaWYgKCFp
OTE1X3JlcXVlc3RfY29tcGxldGVkKHJxKSkKKwlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUocnEs
IHJuLCAmcmluZy0+cmVxdWVzdF9saXN0LCByaW5nX2xpbmspCisJCWlmICghaTkxNV9yZXF1ZXN0
X3JldGlyZShycSkpCiAJCQlicmVhazsKLQotCQlpOTE1X3JlcXVlc3RfcmV0aXJlKHJxKTsKLQl9
CiB9CiAKIHN0YXRpYyBub2lubGluZSBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICoKQEAgLTYyMCw2ICs1
ODcsMTUgQEAgcmVxdWVzdF9hbGxvY19zbG93KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgZ2Zw
X3QgZ2ZwKQogCWlmICghZ2ZwZmxhZ3NfYWxsb3dfYmxvY2tpbmcoZ2ZwKSkKIAkJZ290byBvdXQ7
CiAKKwkvKiBNb3ZlIG91ciBvbGRlc3QgcmVxdWVzdCB0byB0aGUgc2xhYi1jYWNoZSAoaWYgbm90
IGluIHVzZSEpICovCisJcnEgPSBsaXN0X2ZpcnN0X2VudHJ5KCZyaW5nLT5yZXF1ZXN0X2xpc3Qs
IHR5cGVvZigqcnEpLCByaW5nX2xpbmspOworCWk5MTVfcmVxdWVzdF9yZXRpcmUocnEpOworCisJ
cnEgPSBrbWVtX2NhY2hlX2FsbG9jKGdsb2JhbC5zbGFiX3JlcXVlc3RzLAorCQkJICAgICAgZ2Zw
IHwgX19HRlBfUkVUUllfTUFZRkFJTCB8IF9fR0ZQX05PV0FSTik7CisJaWYgKHJxKQorCQlyZXR1
cm4gcnE7CisKIAkvKiBSYXRlbGltaXQgb3Vyc2VsdmVzIHRvIHByZXZlbnQgb29tIGZyb20gbWFs
aWNpb3VzIGNsaWVudHMgKi8KIAlycSA9IGxpc3RfbGFzdF9lbnRyeSgmcmluZy0+cmVxdWVzdF9s
aXN0LCB0eXBlb2YoKnJxKSwgcmluZ19saW5rKTsKIAljb25kX3N5bmNocm9uaXplX3JjdShycS0+
cmN1c3RhdGUpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
