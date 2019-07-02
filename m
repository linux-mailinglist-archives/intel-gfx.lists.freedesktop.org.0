Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E965D136
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 16:10:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69EAA89951;
	Tue,  2 Jul 2019 14:10:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FF3889951
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 14:10:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17100815-1500050 
 for multiple; Tue, 02 Jul 2019 15:09:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Jul 2019 15:09:50 +0100
Message-Id: <20190702140950.7069-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190702123326.11454-1-chris@chris-wilson.co.uk>
References: <20190702123326.11454-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Handle lost primary_port
 across suspend
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

aWNsLWRzaSBpcyBkeWluZyBvbiBzdXNwZW5kL3Jlc3VtZSBhdAoKCVJJUDogMDAxMDppY2xfdXBk
YXRlX2FjdGl2ZV9kcGxsKzB4MmMvMHhhMCBbaTkxNV0KCndoaWNoIGFwcGVhcnMgZHVlIHRvIHRo
ZSBsb3NzIG9mIHRoZSB0aW1lIHByaW1hcnlfcG9ydCBhY3Jvc3Mgc3VzcGVuZC4KUHJvdGVjdCBh
Z2FpbnN0IHRoZSBwb3RlbnRpYWwgTlVMTCBkZXJlZmVyZW5jZSBieSBhc3N1bWluZwpJQ0xfUE9S
VF9EUExMX0RFRkFVTFQgdW5sZXNzIHRoZSBwb3J0IGlzIGFjdGl2ZWx5IHNwZWNpZmllZCBvdGhl
cndpc2UuCgpGaXhlczogMjRhN2JmZTBjMmQ3ICgiZHJtL2k5MTU6IEtlZXAgdGhlIFR5cGVDIHBv
cnQgbW9kZSBmaXhlZCB3aGVuIHRoZSBwb3J0IGlzIGFjdGl2ZSIpClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogSW1yZSBE
ZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgotLS0KV2l0aCBhIGNoYW5jZSB0aGF0IHRoaXMgbWln
aHQgYmUgYSBnb29kIGVub3VnaCBmaXgsIHRpZHkgdXAgdGhlCmNoYW5nZWxvZyBpbiBwcmVwYXJh
dGlvbiEKLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMg
fCAxMyArKysrLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA5IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBsbF9tZ3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9t
Z3IuYwppbmRleCA3NmEyYzg3OWVmYzIuLmY5NTM5NzFlN2MzYiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwpAQCAtMjg4MywyMSArMjg4MywxNiBA
QCBzdGF0aWMgdm9pZCBpY2xfdXBkYXRlX2FjdGl2ZV9kcGxsKHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlLAogCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0KIAkJ
aW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7CiAJc3RydWN0IGlu
dGVsX2RpZ2l0YWxfcG9ydCAqcHJpbWFyeV9wb3J0OwotCWVudW0gaWNsX3BvcnRfZHBsbF9pZCBw
b3J0X2RwbGxfaWQ7CisJZW51bSBpY2xfcG9ydF9kcGxsX2lkIHBvcnRfZHBsbF9pZCA9IElDTF9Q
T1JUX0RQTExfREVGQVVMVDsKIAogCXByaW1hcnlfcG9ydCA9IGVuY29kZXItPnR5cGUgPT0gSU5U
RUxfT1VUUFVUX0RQX01TVCA/CiAJCWVuY190b19tc3QoJmVuY29kZXItPmJhc2UpLT5wcmltYXJ5
IDoKIAkJZW5jX3RvX2RpZ19wb3J0KCZlbmNvZGVyLT5iYXNlKTsKIAotCXN3aXRjaCAocHJpbWFy
eV9wb3J0LT50Y19tb2RlKSB7Ci0JY2FzZSBUQ19QT1JUX1RCVF9BTFQ6Ci0JCXBvcnRfZHBsbF9p
ZCA9IElDTF9QT1JUX0RQTExfREVGQVVMVDsKLQkJYnJlYWs7Ci0JY2FzZSBUQ19QT1JUX0RQX0FM
VDoKLQljYXNlIFRDX1BPUlRfTEVHQUNZOgorCWlmIChwcmltYXJ5X3BvcnQgJiYKKwkgICAgKHBy
aW1hcnlfcG9ydC0+dGNfbW9kZSA9PSBUQ19QT1JUX0RQX0FMVCB8fAorCSAgICAgcHJpbWFyeV9w
b3J0LT50Y19tb2RlID09IFRDX1BPUlRfTEVHQUNZKSkKIAkJcG9ydF9kcGxsX2lkID0gSUNMX1BP
UlRfRFBMTF9NR19QSFk7Ci0JCWJyZWFrOwotCX0KIAogCWljbF9zZXRfYWN0aXZlX3BvcnRfZHBs
bChjcnRjX3N0YXRlLCBwb3J0X2RwbGxfaWQpOwogfQotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
