Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5649E081F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 17:59:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5912C6E879;
	Tue, 22 Oct 2019 15:59:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFA496E86B
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 15:59:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18927715-1500050 
 for multiple; Tue, 22 Oct 2019 16:59:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 16:58:58 +0100
Message-Id: <20191022155907.32203-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 01/10] i915: Exercise hostile context
 execution
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

VmVyaWZ5IHRoYXQgY29udGV4dHMgYXJlIGF1dG9tYXRpY2FsbHkgc2hvdGRvd24gb24gY2xvc2Ug
aWYgaGFuZ2NoZWNraW5nCmlzIGRpc2FibGVkLgoKQmFzaWMgZW52aXJvbm1lbnRhbCByb2J1c3Ru
ZXNzIHRlc3Qgc3RvbGVuIGZyb20gZ2VtX2N0eF9wZXJzaXN0ZW5jZS4KClNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogSm9uIEJsb29tZmll
bGQgPGpvbi5ibG9vbWZpZWxkQGludGVsLmNvbT4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28u
dXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogdGVzdHMvaTkxNS9nZW1fY3R4X2V4ZWMuYyB8IDQxICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDQx
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9jdHhfZXhlYy5jIGIv
dGVzdHMvaTkxNS9nZW1fY3R4X2V4ZWMuYwppbmRleCA2MTRhOWY0MDEuLjkyZTg5OTg2OSAxMDA2
NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fY3R4X2V4ZWMuYworKysgYi90ZXN0cy9pOTE1L2dlbV9j
dHhfZXhlYy5jCkBAIC00MCw2ICs0MCw4IEBACiAKICNpbmNsdWRlIDxkcm0uaD4KIAorI2luY2x1
ZGUgImlndF9kdW1teWxvYWQuaCIKKyNpbmNsdWRlICJpZ3Rfc3lzZnMuaCIKIAogSUdUX1RFU1Rf
REVTQ1JJUFRJT04oIlRlc3QgY29udGV4dCBiYXRjaCBidWZmZXIgZXhlY3V0aW9uLiIpOwogCkBA
IC0xOTYsNiArMTk4LDQyIEBAIHN0YXRpYyB2b2lkIG5vcmVjb3ZlcnkoaW50IGk5MTUpCiAJIGln
dF9kaXNhbGxvd19oYW5nKGk5MTUsIGhhbmcpOwogfQogCitzdGF0aWMgYm9vbCBfX2VuYWJsZV9o
YW5nY2hlY2soaW50IGRpciwgYm9vbCBzdGF0ZSkKK3sKKwlyZXR1cm4gaWd0X3N5c2ZzX3NldChk
aXIsICJlbmFibGVfaGFuZ2NoZWNrIiwgc3RhdGUgPyAiMSIgOiAiMCIpOworfQorCitzdGF0aWMg
dm9pZCBub2hhbmdjaGVja19ob3N0aWxlKGludCBpOTE1KQoreworCWludDY0X3QgdGltZW91dCA9
IE5TRUNfUEVSX1NFQyAvIDI7CisJaWd0X3NwaW5fdCAqc3BpbjsKKwl1aW50MzJfdCBjdHg7CisJ
aW50IGRpcjsKKworCS8qCisJICogRXZlbiBpZiB0aGUgdXNlciBkaXNhYmxlcyBoYW5nY2hlY2sg
ZHVyaW5nIHRoZWlyIGNvbnRleHQsCisJICogd2UgZm9yY2libHkgdGVybWluYXRlIHRoYXQgY29u
dGV4dC4KKwkgKi8KKworCWRpciA9IGlndF9zeXNmc19vcGVuX3BhcmFtZXRlcnMoaTkxNSk7CisJ
aWd0X3JlcXVpcmUoZGlyICE9IC0xKTsKKworCWN0eCA9IGdlbV9jb250ZXh0X2NyZWF0ZShpOTE1
KTsKKworCWlndF9yZXF1aXJlKF9fZW5hYmxlX2hhbmdjaGVjayhkaXIsIGZhbHNlKSk7CisKKwlz
cGluID0gaWd0X3NwaW5fbmV3KGk5MTUsIGN0eCwgLmZsYWdzID0gSUdUX1NQSU5fTk9fUFJFRU1Q
VElPTik7CisJZ2VtX2NvbnRleHRfZGVzdHJveShpOTE1LCBjdHgpOworCisJaWd0X2Fzc2VydF9l
cShnZW1fd2FpdChpOTE1LCBzcGluLT5oYW5kbGUsICZ0aW1lb3V0KSwgMCk7CisKKwlpZ3RfcmVx
dWlyZShfX2VuYWJsZV9oYW5nY2hlY2soZGlyLCB0cnVlKSk7CisKKwlpZ3Rfc3Bpbl9mcmVlKGk5
MTUsIHNwaW4pOworCWdlbV9xdWllc2NlbnRfZ3B1KGk5MTUpOworCWNsb3NlKGRpcik7Cit9CisK
IGlndF9tYWluCiB7CiAJY29uc3QgdWludDMyX3QgYmF0Y2hbMl0gPSB7IDAsIE1JX0JBVENIX0JV
RkZFUl9FTkQgfTsKQEAgLTIzOSw2ICsyNzcsOSBAQCBpZ3RfbWFpbgogCWlndF9zdWJ0ZXN0KCJi
YXNpYy1ub3JlY292ZXJ5IikKIAkJbm9yZWNvdmVyeShmZCk7CiAKKwlpZ3Rfc3VidGVzdCgiYmFz
aWMtbm9oYW5nY2hlY2siKQorCQlub2hhbmdjaGVja19ob3N0aWxlKGZkKTsKKwogCWlndF9zdWJ0
ZXN0KCJyZXNldC1waW4tbGVhayIpIHsKIAkJaW50IGk7CiAKLS0gCjIuMjQuMC5yYzAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
