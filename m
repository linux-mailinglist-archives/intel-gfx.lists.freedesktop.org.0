Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68564714B6
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 11:12:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9FA86E2CA;
	Tue, 23 Jul 2019 09:12:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDC1E6E2BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 09:12:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17528074-1500050 
 for multiple; Tue, 23 Jul 2019 10:12:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jul 2019 10:12:18 +0100
Message-Id: <20190723091218.5886-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Squelch nop wait-for-idle trace
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

SWYgdGhlIHN5c3RlbSBpcyBhbHJlYWR5IGlkbGUsIG9taXQgdGhlIEdFTV9UUkFDRSBzYXlpbmcg
d2UgYXJlIGFib3V0IHRvCndhaXQgZm9yIGlkbGUuIEl0IGxvb2tzIGNvbmZ1c2luZyBpbiB0aGUg
bG9ncyB0byBzZWUgYSBjb250aW51YWwgc3RyZWFtCm9mIHdhaXQtZm9yLWlkbGUsIGFzIG9uZSBp
bW1lZGlhdGVseSBhc3N1bWVzIGl0IGlzIHN0dWNrIGluIGEgbG9vcC4KClNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmMgfCA4ICsrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCmluZGV4IGM2
YmEzNTBlNmU0Zi4uMDFkZDBkMWQ5YmY2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKQEAgLTk1
MSwxNSArOTUxLDE1IEBAIHdhaXRfZm9yX3RpbWVsaW5lcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwKIGludCBpOTE1X2dlbV93YWl0X2Zvcl9pZGxlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LAogCQkJICAgdW5zaWduZWQgaW50IGZsYWdzLCBsb25nIHRpbWVvdXQpCiB7CisJ
LyogSWYgdGhlIGRldmljZSBpcyBhc2xlZXAsIHdlIGhhdmUgbm8gcmVxdWVzdHMgb3V0c3RhbmRp
bmcgKi8KKwlpZiAoIVJFQURfT05DRShpOTE1LT5ndC5hd2FrZSkpCisJCXJldHVybiAwOworCiAJ
R0VNX1RSQUNFKCJmbGFncz0leCAoJXMpLCB0aW1lb3V0PSVsZCVzLCBhd2FrZT89JXNcbiIsCiAJ
CSAgZmxhZ3MsIGZsYWdzICYgSTkxNV9XQUlUX0xPQ0tFRCA/ICJsb2NrZWQiIDogInVubG9ja2Vk
IiwKIAkJICB0aW1lb3V0LCB0aW1lb3V0ID09IE1BWF9TQ0hFRFVMRV9USU1FT1VUID8gIiAoZm9y
ZXZlcikiIDogIiIsCiAJCSAgeWVzbm8oaTkxNS0+Z3QuYXdha2UpKTsKIAotCS8qIElmIHRoZSBk
ZXZpY2UgaXMgYXNsZWVwLCB3ZSBoYXZlIG5vIHJlcXVlc3RzIG91dHN0YW5kaW5nICovCi0JaWYg
KCFSRUFEX09OQ0UoaTkxNS0+Z3QuYXdha2UpKQotCQlyZXR1cm4gMDsKLQogCXRpbWVvdXQgPSB3
YWl0X2Zvcl90aW1lbGluZXMoaTkxNSwgZmxhZ3MsIHRpbWVvdXQpOwogCWlmICh0aW1lb3V0IDwg
MCkKIAkJcmV0dXJuIHRpbWVvdXQ7Ci0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
