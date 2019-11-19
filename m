Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7AC1021C3
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 11:10:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81D756F4A0;
	Tue, 19 Nov 2019 10:10:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B46AB6E918
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 10:09:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19255156-1500050 
 for multiple; Tue, 19 Nov 2019 10:09:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Nov 2019 10:09:17 +0000
Message-Id: <20191119100929.2628356-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191119100929.2628356-1-chris@chris-wilson.co.uk>
References: <20191119100929.2628356-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/17] drm/i915: Mark up the calling context for
 intel_wakeref_put()
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

UHJldmlvdXNseSwgd2UgYXNzdW1lZCB3ZSBjb3VsZCB1c2UgbXV0ZXhfdHJ5bG9jaygpIHdpdGhp
biBhbiBhdG9taWMKY29udGV4dCwgZmFsbGluZyBiYWNrIHRvIGEgd29ya2luZyBpZiBjb250ZW5k
ZWQuIEhvd2V2ZXIsIHN1Y2ggdHJpY2tlcnkKaXMgaWxsZWdhbCBpbnNpZGUgaW50ZXJydXB0IGNv
bnRleHQsIGFuZCBzbyB3ZSBuZWVkIHRvIGFsd2F5cyB1c2UgYQp3b3JrZXIgdW5kZXIgc3VjaCBj
aXJjdW1zdGFuY2VzLiBBcyB3ZSBub3JtYWxseSBhcmUgaW4gcHJvY2VzcyBjb250ZXh0LAp3ZSBj
YW4gdHlwaWNhbGx5IHVzZSBhIHBsYWluIG11dGV4LCBhbmQgb25seSBkZWZlciB0byBhIHdvcmsg
d2hlbiB3ZQprbm93IHdlIGFyZSBjYWxsZXIgZnJvbSBhbiBpbnRlcnJ1cHQgcGF0aC4KCkZpeGVz
OiA1MWZiZDhkZTg3ZGMgKCJkcm0vaTkxNS9wbXU6IEF0b21pY2FsbHkgYWNxdWlyZSB0aGUgZ3Rf
cG0gd2FrZXJlZiIpClJlZmVyZW5jZXM6IGEwODU1ZDI0ZmMyMmQgKCJsb2NraW5nL211dGV4OiBD
b21wbGFpbiB1cG9uIG11dGV4IEFQSSBtaXN1c2UgaW4gSVJRIGNvbnRleHRzIikKUmVmZXJlbmNl
czogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNjI2ClNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYyAgICB8ICAzICstCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uaCAgICB8IDEwICsrKysrCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jICAgICAgICB8ICAxIC0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2d0X3BtLmggICAgICAgIHwgIDUgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYyAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9yZXNldC5jICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9z
ZWxmdGVzdF9lbmdpbmVfcG0uYyB8ICA3ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
YWN0aXZlLmMgICAgICAgICAgIHwgIDUgKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bt
dS5jICAgICAgICAgICAgICB8ICA2ICstLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2Fr
ZXJlZi5jICAgICAgICAgfCAgOCArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtl
cmVmLmggICAgICAgICB8IDQ0ICsrKysrKysrKysrKysrKystLS0tCiAxMSBmaWxlcyBjaGFuZ2Vk
LCA2OCBpbnNlcnRpb25zKCspLCAyNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZV9wbS5jCmluZGV4IDcyMmQzZWVjMjI2ZS4uNDg3OGQxNjE3NmQ1IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYwpAQCAtMTgwLDcgKzE4
MCw4IEBAIHN0YXRpYyBpbnQgX19lbmdpbmVfcGFyayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2Yp
CiAKIAllbmdpbmUtPmV4ZWNsaXN0cy5ub19wcmlvbGlzdCA9IGZhbHNlOwogCi0JaW50ZWxfZ3Rf
cG1fcHV0KGVuZ2luZS0+Z3QpOworCS8qIFdoaWxlIHdlIGNhbGwgaTkxNV92bWFfcGFya2VkLCB3
ZSBoYXZlIHRvIGJyZWFrIHRoZSBsb2NrIGN5Y2xlICovCisJaW50ZWxfZ3RfcG1fcHV0X2FzeW5j
KGVuZ2luZS0+Z3QpOwogCXJldHVybiAwOwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9wbS5oCmluZGV4IDczOWM1MGZlZmNlZi4uNDY3NDc1ZmNlOWM2IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uaApAQCAtMzEsNiArMzEsMTYgQEAg
c3RhdGljIGlubGluZSB2b2lkIGludGVsX2VuZ2luZV9wbV9wdXQoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lKQogCWludGVsX3dha2VyZWZfcHV0KCZlbmdpbmUtPndha2VyZWYpOwogfQog
CitzdGF0aWMgaW5saW5lIHZvaWQgaW50ZWxfZW5naW5lX3BtX3B1dF9hc3luYyhzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUpCit7CisJaW50ZWxfd2FrZXJlZl9wdXRfYXN5bmMoJmVuZ2lu
ZS0+d2FrZXJlZik7Cit9CisKK3N0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF9lbmdpbmVfcG1fdW5s
b2NrX3dhaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCWludGVsX3dha2Vy
ZWZfdW5sb2NrX3dhaXQoJmVuZ2luZS0+d2FrZXJlZik7Cit9CisKIHZvaWQgaW50ZWxfZW5naW5l
X2luaXRfX3BtKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7CiAKICNlbmRpZiAvKiBJ
TlRFTF9FTkdJTkVfUE1fSCAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3RfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKaW5k
ZXggZTYxZjc1MmEzY2Q1Li43YTkwNDRhYzRiNzUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3RfcG0uYwpAQCAtMTA1LDcgKzEwNSw2IEBAIHN0YXRpYyBpbnQgX19ndF9wYXJrKHN0cnVj
dCBpbnRlbF93YWtlcmVmICp3ZikKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfd2FrZXJlZl9v
cHMgd2Zfb3BzID0gewogCS5nZXQgPSBfX2d0X3VucGFyaywKIAkucHV0ID0gX19ndF9wYXJrLAot
CS5mbGFncyA9IElOVEVMX1dBS0VSRUZfUFVUX0FTWU5DLAogfTsKIAogdm9pZCBpbnRlbF9ndF9w
bV9pbml0X2Vhcmx5KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3RfcG0uaAppbmRleCBiM2UxNzM5OWJlOWIuLjk5MGVmYzI3YTRlNCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5oCkBAIC0zMiw2ICszMiwxMSBAQCBzdGF0aWMgaW5saW5l
IHZvaWQgaW50ZWxfZ3RfcG1fcHV0KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiAJaW50ZWxfd2FrZXJl
Zl9wdXQoJmd0LT53YWtlcmVmKTsKIH0KIAorc3RhdGljIGlubGluZSB2b2lkIGludGVsX2d0X3Bt
X3B1dF9hc3luYyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQoreworCWludGVsX3dha2VyZWZfcHV0X2Fz
eW5jKCZndC0+d2FrZXJlZik7Cit9CisKIHN0YXRpYyBpbmxpbmUgaW50IGludGVsX2d0X3BtX3dh
aXRfZm9yX2lkbGUoc3RydWN0IGludGVsX2d0ICpndCkKIHsKIAlyZXR1cm4gaW50ZWxfd2FrZXJl
Zl93YWl0X2Zvcl9pZGxlKCZndC0+d2FrZXJlZik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jCmluZGV4IDMzY2UyNThkNDg0Zi4uYjY1YmMwNjg1NWIwIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYwpAQCAtMTE3Miw3ICsxMTcyLDcgQEAgX19leGVjbGlzdHNfc2NoZWR1bGVf
b3V0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAogCiAJaW50ZWxfZW5naW5lX2NvbnRleHRfb3V0
KGVuZ2luZSk7CiAJZXhlY2xpc3RzX2NvbnRleHRfc3RhdHVzX2NoYW5nZShycSwgSU5URUxfQ09O
VEVYVF9TQ0hFRFVMRV9PVVQpOwotCWludGVsX2d0X3BtX3B1dChlbmdpbmUtPmd0KTsKKwlpbnRl
bF9ndF9wbV9wdXRfYXN5bmMoZW5naW5lLT5ndCk7CiAKIAkvKgogCSAqIElmIHRoaXMgaXMgcGFy
dCBvZiBhIHZpcnR1YWwgZW5naW5lLCBpdHMgbmV4dCByZXF1ZXN0IG1heQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3Jlc2V0LmMKaW5kZXggYjcwMDdjZDc4YzZmLi4wMzg4ZjkzNzUzNjYgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwpAQCAtMTEyNSw3ICsxMTI1LDcgQEAg
aW50IGludGVsX2VuZ2luZV9yZXNldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGNv
bnN0IGNoYXIgKm1zZykKIG91dDoKIAlpbnRlbF9lbmdpbmVfY2FuY2VsX3N0b3BfY3MoZW5naW5l
KTsKIAlyZXNldF9maW5pc2hfZW5naW5lKGVuZ2luZSk7Ci0JaW50ZWxfZW5naW5lX3BtX3B1dChl
bmdpbmUpOworCWludGVsX2VuZ2luZV9wbV9wdXRfYXN5bmMoZW5naW5lKTsKIAlyZXR1cm4gcmV0
OwogfQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdp
bmVfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9wbS5jCmlu
ZGV4IDIwYjljODNmNDNhZC4uODUxYTZjNGY2NWM2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmVfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9zZWxmdGVzdF9lbmdpbmVfcG0uYwpAQCAtNTEsMTEgKzUxLDEyIEBAIHN0YXRpYyBpbnQg
bGl2ZV9lbmdpbmVfcG0odm9pZCAqYXJnKQogCQkJCXByX2VycigiaW50ZWxfZW5naW5lX3BtX2dl
dF9pZl9hd2FrZSglcykgZmFpbGVkIHVuZGVyICVzXG4iLAogCQkJCSAgICAgICBlbmdpbmUtPm5h
bWUsIHAtPm5hbWUpOwogCQkJZWxzZQotCQkJCWludGVsX2VuZ2luZV9wbV9wdXQoZW5naW5lKTsK
LQkJCWludGVsX2VuZ2luZV9wbV9wdXQoZW5naW5lKTsKKwkJCQlpbnRlbF9lbmdpbmVfcG1fcHV0
X2FzeW5jKGVuZ2luZSk7CisJCQlpbnRlbF9lbmdpbmVfcG1fcHV0X2FzeW5jKGVuZ2luZSk7CiAJ
CQlwLT5jcml0aWNhbF9zZWN0aW9uX2VuZCgpOwogCi0JCQkvKiBlbmdpbmUgd2FrZXJlZiBpcyBz
eW5jIChpbnN0YW50KSAqLworCQkJaW50ZWxfZW5naW5lX3BtX3VubG9ja193YWl0KGVuZ2luZSk7
CisKIAkJCWlmIChpbnRlbF9lbmdpbmVfcG1faXNfYXdha2UoZW5naW5lKSkgewogCQkJCXByX2Vy
cigiJXMgaXMgc3RpbGwgYXdha2UgYWZ0ZXIgZmx1c2hpbmcgcG1cbiIsCiAJCQkJICAgICAgIGVu
Z2luZS0+bmFtZSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2
ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwppbmRleCA1NDQ4ZjM3Yzgx
MDIuLmRjYTE1YWNlODhmNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9h
Y3RpdmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCkBAIC02NzIs
MTIgKzY3MiwxMyBAQCB2b2lkIGk5MTVfYWN0aXZlX2FjcXVpcmVfYmFycmllcihzdHJ1Y3QgaTkx
NV9hY3RpdmUgKnJlZikKIAkgKiBwb3B1bGF0ZWQgYnkgaTkxNV9yZXF1ZXN0X2FkZF9hY3RpdmVf
YmFycmllcnMoKSB0byBwb2ludCB0byB0aGUKIAkgKiByZXF1ZXN0IHRoYXQgd2lsbCBldmVudHVh
bGx5IHJlbGVhc2UgdGhlbS4KIAkgKi8KLQlzcGluX2xvY2tfaXJxc2F2ZV9uZXN0ZWQoJnJlZi0+
dHJlZV9sb2NrLCBmbGFncywgU0lOR0xFX0RFUFRIX05FU1RJTkcpOwogCWxsaXN0X2Zvcl9lYWNo
X3NhZmUocG9zLCBuZXh0LCB0YWtlX3ByZWFsbG9jYXRlZF9iYXJyaWVycyhyZWYpKSB7CiAJCXN0
cnVjdCBhY3RpdmVfbm9kZSAqbm9kZSA9IGJhcnJpZXJfZnJvbV9sbChwb3MpOwogCQlzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUgPSBiYXJyaWVyX3RvX2VuZ2luZShub2RlKTsKIAkJc3Ry
dWN0IHJiX25vZGUgKipwLCAqcGFyZW50OwogCisJCXNwaW5fbG9ja19pcnFzYXZlX25lc3RlZCgm
cmVmLT50cmVlX2xvY2ssIGZsYWdzLAorCQkJCQkgU0lOR0xFX0RFUFRIX05FU1RJTkcpOwogCQlw
YXJlbnQgPSBOVUxMOwogCQlwID0gJnJlZi0+dHJlZS5yYl9ub2RlOwogCQl3aGlsZSAoKnApIHsK
QEAgLTY5MywxMiArNjk0LDEyIEBAIHZvaWQgaTkxNV9hY3RpdmVfYWNxdWlyZV9iYXJyaWVyKHN0
cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogCQl9CiAJCXJiX2xpbmtfbm9kZSgmbm9kZS0+bm9kZSwg
cGFyZW50LCBwKTsKIAkJcmJfaW5zZXJ0X2NvbG9yKCZub2RlLT5ub2RlLCAmcmVmLT50cmVlKTsK
KwkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmcmVmLT50cmVlX2xvY2ssIGZsYWdzKTsKIAogCQlH
RU1fQlVHX09OKCFpbnRlbF9lbmdpbmVfcG1faXNfYXdha2UoZW5naW5lKSk7CiAJCWxsaXN0X2Fk
ZChiYXJyaWVyX3RvX2xsKG5vZGUpLCAmZW5naW5lLT5iYXJyaWVyX3Rhc2tzKTsKIAkJaW50ZWxf
ZW5naW5lX3BtX3B1dChlbmdpbmUpOwogCX0KLQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZyZWYt
PnRyZWVfbG9jaywgZmxhZ3MpOwogfQogCiB2b2lkIGk5MTVfcmVxdWVzdF9hZGRfYWN0aXZlX2Jh
cnJpZXJzKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wbXUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMKaW5k
ZXggOWIwMmJlMGFkNGU2Li45NWU4MjRhNzhkNGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcG11LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYwpA
QCAtMTkwLDcgKzE5MCw3IEBAIHN0YXRpYyB1NjQgZ2V0X3JjNihzdHJ1Y3QgaW50ZWxfZ3QgKmd0
KQogCXZhbCA9IDA7CiAJaWYgKGludGVsX2d0X3BtX2dldF9pZl9hd2FrZShndCkpIHsKIAkJdmFs
ID0gX19nZXRfcmM2KGd0KTsKLQkJaW50ZWxfZ3RfcG1fcHV0KGd0KTsKKwkJaW50ZWxfZ3RfcG1f
cHV0X2FzeW5jKGd0KTsKIAl9CiAKIAlzcGluX2xvY2tfaXJxc2F2ZSgmcG11LT5sb2NrLCBmbGFn
cyk7CkBAIC0zNjAsNyArMzYwLDcgQEAgZW5naW5lc19zYW1wbGUoc3RydWN0IGludGVsX2d0ICpn
dCwgdW5zaWduZWQgaW50IHBlcmlvZF9ucykKIHNraXA6CiAJCWlmICh1bmxpa2VseShtbWlvX2xv
Y2spKQogCQkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZShtbWlvX2xvY2ssIGZsYWdzKTsKLQkJaW50
ZWxfZW5naW5lX3BtX3B1dChlbmdpbmUpOworCQlpbnRlbF9lbmdpbmVfcG1fcHV0X2FzeW5jKGVu
Z2luZSk7CiAJfQogfQogCkBAIC0zOTgsNyArMzk4LDcgQEAgZnJlcXVlbmN5X3NhbXBsZShzdHJ1
Y3QgaW50ZWxfZ3QgKmd0LCB1bnNpZ25lZCBpbnQgcGVyaW9kX25zKQogCQkJaWYgKHN0YXQpCiAJ
CQkJdmFsID0gaW50ZWxfZ2V0X2NhZ2YocnBzLCBzdGF0KTsKIAotCQkJaW50ZWxfZ3RfcG1fcHV0
KGd0KTsKKwkJCWludGVsX2d0X3BtX3B1dF9hc3luYyhndCk7CiAJCX0KIAogCQlhZGRfc2FtcGxl
X211bHQoJnBtdS0+c2FtcGxlW19fSTkxNV9TQU1QTEVfRlJFUV9BQ1RdLApkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfd2FrZXJlZi5jCmluZGV4IDg2OGNjNzgwNDhkMC4uOWIyOTE3NmNjMWNhIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtlcmVmLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5jCkBAIC01NCw3ICs1NCw4IEBAIGludCBfX2lu
dGVsX3dha2VyZWZfZ2V0X2ZpcnN0KHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKIAogc3RhdGlj
IHZvaWQgX19fX2ludGVsX3dha2VyZWZfcHV0X2xhc3Qoc3RydWN0IGludGVsX3dha2VyZWYgKndm
KQogewotCWlmICghYXRvbWljX2RlY19hbmRfdGVzdCgmd2YtPmNvdW50KSkKKwlJTlRFTF9XQUtF
UkVGX0JVR19PTihhdG9taWNfcmVhZCgmd2YtPmNvdW50KSA8PSAwKTsKKwlpZiAodW5saWtlbHko
IWF0b21pY19kZWNfYW5kX3Rlc3QoJndmLT5jb3VudCkpKQogCQlnb3RvIHVubG9jazsKIAogCS8q
IG9wcy0+cHV0KCkgbXVzdCByZXNjaGVkdWxlIGl0cyBvd24gcmVsZWFzZSBvbiBlcnJvci9kZWZl
cnJhbCAqLwpAQCAtNjcsMTMgKzY4LDEyIEBAIHN0YXRpYyB2b2lkIF9fX19pbnRlbF93YWtlcmVm
X3B1dF9sYXN0KHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKIAltdXRleF91bmxvY2soJndmLT5t
dXRleCk7CiB9CiAKLXZvaWQgX19pbnRlbF93YWtlcmVmX3B1dF9sYXN0KHN0cnVjdCBpbnRlbF93
YWtlcmVmICp3ZikKK3ZvaWQgX19pbnRlbF93YWtlcmVmX3B1dF9sYXN0KHN0cnVjdCBpbnRlbF93
YWtlcmVmICp3ZiwgdW5zaWduZWQgbG9uZyBmbGFncykKIHsKIAlJTlRFTF9XQUtFUkVGX0JVR19P
Tih3b3JrX3BlbmRpbmcoJndmLT53b3JrKSk7CiAKIAkvKiBBc3N1bWUgd2UgYXJlIG5vdCBpbiBw
cm9jZXNzIGNvbnRleHQgYW5kIHNvIGNhbm5vdCBzbGVlcC4gKi8KLQlpZiAod2YtPm9wcy0+Zmxh
Z3MgJiBJTlRFTF9XQUtFUkVGX1BVVF9BU1lOQyB8fAotCSAgICAhbXV0ZXhfdHJ5bG9jaygmd2Yt
Pm11dGV4KSkgeworCWlmIChmbGFncyAmIElOVEVMX1dBS0VSRUZfUFVUX0FTWU5DIHx8ICFtdXRl
eF90cnlsb2NrKCZ3Zi0+bXV0ZXgpKSB7CiAJCXNjaGVkdWxlX3dvcmsoJndmLT53b3JrKTsKIAkJ
cmV0dXJuOwogCX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2Vy
ZWYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuaAppbmRleCA1ZjBjOTcy
YTgwZmIuLjY4OGI5YjUzNmE2OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfd2FrZXJlZi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuaApA
QCAtOSw2ICs5LDcgQEAKIAogI2luY2x1ZGUgPGxpbnV4L2F0b21pYy5oPgogI2luY2x1ZGUgPGxp
bnV4L2JpdHMuaD4KKyNpbmNsdWRlIDxsaW51eC9sb2NrZGVwLmg+CiAjaW5jbHVkZSA8bGludXgv
bXV0ZXguaD4KICNpbmNsdWRlIDxsaW51eC9yZWZjb3VudC5oPgogI2luY2x1ZGUgPGxpbnV4L3N0
YWNrZGVwb3QuaD4KQEAgLTI5LDkgKzMwLDYgQEAgdHlwZWRlZiBkZXBvdF9zdGFja19oYW5kbGVf
dCBpbnRlbF93YWtlcmVmX3Q7CiBzdHJ1Y3QgaW50ZWxfd2FrZXJlZl9vcHMgewogCWludCAoKmdl
dCkoc3RydWN0IGludGVsX3dha2VyZWYgKndmKTsKIAlpbnQgKCpwdXQpKHN0cnVjdCBpbnRlbF93
YWtlcmVmICp3Zik7Ci0KLQl1bnNpZ25lZCBsb25nIGZsYWdzOwotI2RlZmluZSBJTlRFTF9XQUtF
UkVGX1BVVF9BU1lOQyBCSVQoMCkKIH07CiAKIHN0cnVjdCBpbnRlbF93YWtlcmVmIHsKQEAgLTU3
LDcgKzU1LDcgQEAgdm9pZCBfX2ludGVsX3dha2VyZWZfaW5pdChzdHJ1Y3QgaW50ZWxfd2FrZXJl
ZiAqd2YsCiB9IHdoaWxlICgwKQogCiBpbnQgX19pbnRlbF93YWtlcmVmX2dldF9maXJzdChzdHJ1
Y3QgaW50ZWxfd2FrZXJlZiAqd2YpOwotdm9pZCBfX2ludGVsX3dha2VyZWZfcHV0X2xhc3Qoc3Ry
dWN0IGludGVsX3dha2VyZWYgKndmKTsKK3ZvaWQgX19pbnRlbF93YWtlcmVmX3B1dF9sYXN0KHN0
cnVjdCBpbnRlbF93YWtlcmVmICp3ZiwgdW5zaWduZWQgbG9uZyBmbGFncyk7CiAKIC8qKgogICog
aW50ZWxfd2FrZXJlZl9nZXQ6IEFjcXVpcmUgdGhlIHdha2VyZWYKQEAgLTEwMCwxMCArOTgsOSBA
QCBpbnRlbF93YWtlcmVmX2dldF9pZl9hY3RpdmUoc3RydWN0IGludGVsX3dha2VyZWYgKndmKQog
fQogCiAvKioKLSAqIGludGVsX3dha2VyZWZfcHV0OiBSZWxlYXNlIHRoZSB3YWtlcmVmCi0gKiBA
aTkxNTogdGhlIGRybV9pOTE1X3ByaXZhdGUgZGV2aWNlCisgKiBpbnRlbF93YWtlcmVmX3B1dF9m
bGFnczogUmVsZWFzZSB0aGUgd2FrZXJlZgogICogQHdmOiB0aGUgd2FrZXJlZgotICogQGZuOiBj
YWxsYmFjayBmb3IgcmVsZWFzaW5nIHRoZSB3YWtlcmVmLCBjYWxsZWQgb25seSBvbiBmaW5hbCBy
ZWxlYXNlLgorICogQGZsYWdzOiBjb250cm9sIGZsYWdzCiAgKgogICogUmVsZWFzZSBvdXIgaG9s
ZCBvbiB0aGUgd2FrZXJlZi4gV2hlbiB0aGVyZSBhcmUgbm8gbW9yZSB1c2VycywKICAqIHRoZSBy
dW50aW1lIHBtIHdha2VyZWYgd2lsbCBiZSByZWxlYXNlZCBhZnRlciB0aGUgQGZuIGNhbGxiYWNr
IGlzIGNhbGxlZApAQCAtMTE2LDExICsxMTMsMjUgQEAgaW50ZWxfd2FrZXJlZl9nZXRfaWZfYWN0
aXZlKHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKICAqIGNvZGUgb3RoZXJ3aXNlLgogICovCiBz
dGF0aWMgaW5saW5lIHZvaWQKLWludGVsX3dha2VyZWZfcHV0KHN0cnVjdCBpbnRlbF93YWtlcmVm
ICp3ZikKK19faW50ZWxfd2FrZXJlZl9wdXQoc3RydWN0IGludGVsX3dha2VyZWYgKndmLCB1bnNp
Z25lZCBsb25nIGZsYWdzKQorI2RlZmluZSBJTlRFTF9XQUtFUkVGX1BVVF9BU1lOQyBCSVQoMCkK
IHsKIAlJTlRFTF9XQUtFUkVGX0JVR19PTihhdG9taWNfcmVhZCgmd2YtPmNvdW50KSA8PSAwKTsK
IAlpZiAodW5saWtlbHkoIWF0b21pY19hZGRfdW5sZXNzKCZ3Zi0+Y291bnQsIC0xLCAxKSkpCi0J
CV9faW50ZWxfd2FrZXJlZl9wdXRfbGFzdCh3Zik7CisJCV9faW50ZWxfd2FrZXJlZl9wdXRfbGFz
dCh3ZiwgZmxhZ3MpOworfQorCitzdGF0aWMgaW5saW5lIHZvaWQKK2ludGVsX3dha2VyZWZfcHV0
KHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKK3sKKwltaWdodF9zbGVlcCgpOworCV9faW50ZWxf
d2FrZXJlZl9wdXQod2YsIDApOworfQorCitzdGF0aWMgaW5saW5lIHZvaWQKK2ludGVsX3dha2Vy
ZWZfcHV0X2FzeW5jKHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKK3sKKwlfX2ludGVsX3dha2Vy
ZWZfcHV0KHdmLCBJTlRFTF9XQUtFUkVGX1BVVF9BU1lOQyk7CiB9CiAKIC8qKgpAQCAtMTUxLDYg
KzE2MiwyMCBAQCBpbnRlbF93YWtlcmVmX3VubG9jayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2Yp
CiAJbXV0ZXhfdW5sb2NrKCZ3Zi0+bXV0ZXgpOwogfQogCisvKioKKyAqIGludGVsX3dha2VyZWZf
dW5sb2NrX3dhaXQ6IFdhaXQgdW50aWwgdGhlIGFjdGl2ZSBjYWxsYmFjayBpcyBjb21wbGV0ZQor
ICogQHdmOiB0aGUgd2FrZXJlZgorICoKKyAqIFdhaXRzIGZvciB0aGUgYWN0aXZlIGNhbGxiYWNr
ICh1bmRlciB0aGUgQHdmLT5tdHVleCkgaXMgY29tcGxldGUuCisgKi8KK3N0YXRpYyBpbmxpbmUg
dm9pZAoraW50ZWxfd2FrZXJlZl91bmxvY2tfd2FpdChzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2Yp
Cit7CisJbXV0ZXhfbG9jaygmd2YtPm11dGV4KTsKKwltdXRleF91bmxvY2soJndmLT5tdXRleCk7
CisJZmx1c2hfd29yaygmd2YtPndvcmspOworfQorCiAvKioKICAqIGludGVsX3dha2VyZWZfaXNf
YWN0aXZlOiBRdWVyeSB3aGV0aGVyIHRoZSB3YWtlcmVmIGlzIGN1cnJlbnRseSBoZWxkCiAgKiBA
d2Y6IHRoZSB3YWtlcmVmCkBAIC0xNzAsNiArMTk1LDcgQEAgaW50ZWxfd2FrZXJlZl9pc19hY3Rp
dmUoY29uc3Qgc3RydWN0IGludGVsX3dha2VyZWYgKndmKQogc3RhdGljIGlubGluZSB2b2lkCiBf
X2ludGVsX3dha2VyZWZfZGVmZXJfcGFyayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCiB7CisJ
bG9ja2RlcF9hc3NlcnRfaGVsZCgmd2YtPm11dGV4KTsKIAlJTlRFTF9XQUtFUkVGX0JVR19PTihh
dG9taWNfcmVhZCgmd2YtPmNvdW50KSk7CiAJYXRvbWljX3NldF9yZWxlYXNlKCZ3Zi0+Y291bnQs
IDEpOwogfQotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
