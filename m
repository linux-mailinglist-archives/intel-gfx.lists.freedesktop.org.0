Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 790D21DAC57
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 09:35:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B9216E5AE;
	Wed, 20 May 2020 07:35:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A608D6E5A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 07:35:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21236361-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 08:35:00 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 08:34:59 +0100
Message-Id: <20200520073459.9787-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/selftests: Measure CS_TIMESTAMP
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

Q291bnQgdGhlIG51bWJlciBvZiBDU19USU1FU1RBTVAgdGlja3MgYW5kIGNoZWNrIHRoYXQgaXQg
bWF0Y2hlcyBvdXIKZXhwZWN0YXRpb25zLgoKdjI6IERvdWJsZSByZWFkIHRoZSBUSU1FU1RBTVAg
YXMgdGhlcmUgaXMgYSB0ZW5kZW5jeSBmb3IgaXQgdG8gc3RpY2sgb24Kb2xkZXIgSFcuCgpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2d0X3BtLmMgfCAxMTUgKysrKysrKysrKysr
KysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMTUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2d0X3BtLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ndF9wbS5jCmluZGV4IDI0MjE4MWE1MjE0Yy4uOTg2MGVm
ZTk3YjMxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ndF9w
bS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2d0X3BtLmMKQEAgLTUs
MTAgKzUsMTI0IEBACiAgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgogICov
CiAKKyNpbmNsdWRlIDxsaW51eC9zb3J0Lmg+CisKKyNpbmNsdWRlICJpbnRlbF9ndF9jbG9ja191
dGlscy5oIgorCiAjaW5jbHVkZSAic2VsZnRlc3RfbGxjLmgiCiAjaW5jbHVkZSAic2VsZnRlc3Rf
cmM2LmgiCiAjaW5jbHVkZSAic2VsZnRlc3RfcnBzLmgiCiAKK3N0YXRpYyBpbnQgY21wX3U2NChj
b25zdCB2b2lkICpBLCBjb25zdCB2b2lkICpCKQoreworCWNvbnN0IHU2NCAqYSA9IEEsICpiID0g
QjsKKworCWlmIChhIDwgYikKKwkJcmV0dXJuIC0xOworCWVsc2UgaWYgKGEgPiBiKQorCQlyZXR1
cm4gMTsKKwllbHNlCisJCXJldHVybiAwOworfQorCitzdGF0aWMgaW50IGNtcF91MzIoY29uc3Qg
dm9pZCAqQSwgY29uc3Qgdm9pZCAqQikKK3sKKwljb25zdCB1MzIgKmEgPSBBLCAqYiA9IEI7CisK
KwlpZiAoYSA8IGIpCisJCXJldHVybiAtMTsKKwllbHNlIGlmIChhID4gYikKKwkJcmV0dXJuIDE7
CisJZWxzZQorCQlyZXR1cm4gMDsKK30KKworc3RhdGljIHZvaWQgbWVhc3VyZV9jbG9ja3Moc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAorCQkJICAgdTMyICpvdXRfY3ljbGVzLCBrdGlt
ZV90ICpvdXRfZHQpCit7CisJa3RpbWVfdCBkdFs1XTsKKwl1MzIgY3ljbGVzWzVdOworCWludCBp
OworCisJZm9yIChpID0gMDsgaSA8IDU7IGkrKykgeworCQlwcmVlbXB0X2Rpc2FibGUoKTsKKwkJ
RU5HSU5FX1BPU1RJTkdfUkVBRChlbmdpbmUsIFJJTkdfVElNRVNUQU1QKTsKKwkJY3ljbGVzW2ld
ID0gLUVOR0lORV9SRUFEX0ZXKGVuZ2luZSwgUklOR19USU1FU1RBTVApOworCQlkdFtpXSA9IGt0
aW1lX2dldCgpOworCisJCXVkZWxheSgxMDAwKTsKKworCQlkdFtpXSA9IGt0aW1lX3N1YihrdGlt
ZV9nZXQoKSwgZHRbaV0pOworCQlFTkdJTkVfUE9TVElOR19SRUFEKGVuZ2luZSwgUklOR19USU1F
U1RBTVApOworCQljeWNsZXNbaV0gKz0gRU5HSU5FX1JFQURfRlcoZW5naW5lLCBSSU5HX1RJTUVT
VEFNUCk7CisJCXByZWVtcHRfZW5hYmxlKCk7CisJfQorCisJLyogVXNlIHRoZSBtZWRpYW4gb2Yg
Ym90aCBjeWNsZS9kdDsgY2xvc2UgZW5vdWdoICovCisJc29ydChjeWNsZXMsIDUsIHNpemVvZigq
Y3ljbGVzKSwgY21wX3UzMiwgTlVMTCk7CisJKm91dF9jeWNsZXMgPSAoY3ljbGVzWzFdICsgMiAq
IGN5Y2xlc1syXSArIGN5Y2xlc1szXSkgLyA0OworCisJc29ydChkdCwgNSwgc2l6ZW9mKCpkdCks
IGNtcF91NjQsIE5VTEwpOworCSpvdXRfZHQgPSBkaXZfdTY0KGR0WzFdICsgMiAqIGR0WzJdICsg
ZHRbM10sIDQpOworfQorCitzdGF0aWMgaW50IGxpdmVfZ3RfY2xvY2tzKHZvaWQgKmFyZykKK3sK
KwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gYXJnOworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZTsKKwllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKKwlpbnQgZXJyID0gMDsKKworCWlmICgh
UlVOVElNRV9JTkZPKGd0LT5pOTE1KS0+Y3NfdGltZXN0YW1wX2ZyZXF1ZW5jeV9oeikgeyAvKiB1
bmtub3duICovCisJCXByX2luZm8oIkNTX1RJTUVTVEFNUCBmcmVxdWVuY3kgdW5rbm93blxuIik7
CisJCXJldHVybiAwOworCX0KKworCWlmIChJTlRFTF9HRU4oZ3QtPmk5MTUpIDwgNCkgLyogQW55
IENTX1RJTUVTVEFNUD8gKi8KKwkJcmV0dXJuIDA7CisKKwlpbnRlbF9ndF9wbV9nZXQoZ3QpOwor
CWludGVsX3VuY29yZV9mb3JjZXdha2VfZ2V0KGd0LT51bmNvcmUsIEZPUkNFV0FLRV9BTEwpOwor
CisJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgZ3QsIGlkKSB7CisJCXUzMiBjeWNsZXM7CisJCXUz
MiBleHBlY3RlZDsKKwkJdTY0IHRpbWU7CisJCXU2NCBkdDsKKworCQlpZiAoSU5URUxfR0VOKGVu
Z2luZS0+aTkxNSkgPCA3ICYmIGVuZ2luZS0+aWQgIT0gUkNTMCkKKwkJCWNvbnRpbnVlOworCisJ
CW1lYXN1cmVfY2xvY2tzKGVuZ2luZSwgJmN5Y2xlcywgJmR0KTsKKworCQl0aW1lID0gaTkxNV9j
c190aW1lc3RhbXBfdGlja3NfdG9fbnMoZW5naW5lLT5pOTE1LCBjeWNsZXMpOworCQlleHBlY3Rl
ZCA9IGk5MTVfY3NfdGltZXN0YW1wX25zX3RvX3RpY2tzKGVuZ2luZS0+aTkxNSwgZHQpOworCisJ
CXByX2luZm8oIiVzOiBUSU1FU1RBTVAgJWQgY3ljbGVzIFslbGxkbnNdIGluICVsbGRucyBbJWQg
Y3ljbGVzXSwgdXNpbmcgQ1MgY2xvY2sgZnJlcXVlbmN5IG9mICV1S0h6XG4iLAorCQkJZW5naW5l
LT5uYW1lLCBjeWNsZXMsIHRpbWUsIGR0LCBleHBlY3RlZCwKKwkJCVJVTlRJTUVfSU5GTyhlbmdp
bmUtPmk5MTUpLT5jc190aW1lc3RhbXBfZnJlcXVlbmN5X2h6IC8gMTAwMCk7CisKKwkJaWYgKDkg
KiB0aW1lIDwgOCAqIGR0IHx8IDggKiB0aW1lID4gOSAqIGR0KSB7CisJCQlwcl9lcnIoIiVzOiBD
UyB0aWNrcyBkaWQgbm90IG1hdGNoIHdhbGx0aW1lIVxuIiwKKwkJCSAgICAgICBlbmdpbmUtPm5h
bWUpOworCQkJZXJyID0gLUVJTlZBTDsKKwkJCWJyZWFrOworCQl9CisKKwkJaWYgKDkgKiBleHBl
Y3RlZCA8IDggKiBjeWNsZXMgfHwgOCAqIGV4cGVjdGVkID4gOSAqIGN5Y2xlcykgeworCQkJcHJf
ZXJyKCIlczogd2FsbHRpbWUgZGlkIG5vdCBtYXRjaCBDUyB0aWNrcyFcbiIsCisJCQkgICAgICAg
ZW5naW5lLT5uYW1lKTsKKwkJCWVyciA9IC1FSU5WQUw7CisJCQlicmVhazsKKwkJfQorCX0KKwor
CWludGVsX3VuY29yZV9mb3JjZXdha2VfcHV0KGd0LT51bmNvcmUsIEZPUkNFV0FLRV9BTEwpOwor
CWludGVsX2d0X3BtX3B1dChndCk7CisKKwlyZXR1cm4gZXJyOworfQorCiBzdGF0aWMgaW50IGxp
dmVfZ3RfcmVzdW1lKHZvaWQgKmFyZykKIHsKIAlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gYXJnOwpA
QCAtNTIsNiArMTY2LDcgQEAgc3RhdGljIGludCBsaXZlX2d0X3Jlc3VtZSh2b2lkICphcmcpCiBp
bnQgaW50ZWxfZ3RfcG1fbGl2ZV9zZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpCiB7CiAJc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVzdHNbXSA9IHsKKwkJ
U1VCVEVTVChsaXZlX2d0X2Nsb2NrcyksCiAJCVNVQlRFU1QobGl2ZV9yYzZfbWFudWFsKSwKIAkJ
U1VCVEVTVChsaXZlX3Jwc19jbG9ja19pbnRlcnZhbCksCiAJCVNVQlRFU1QobGl2ZV9ycHNfY29u
dHJvbCksCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
