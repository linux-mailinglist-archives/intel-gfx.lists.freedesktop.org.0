Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 485591EE2A5
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 12:38:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CE236E33A;
	Thu,  4 Jun 2020 10:38:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 301FD8999C
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 10:38:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21393756-1500050 
 for multiple; Thu, 04 Jun 2020 11:37:56 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jun 2020 11:37:39 +0100
Message-Id: <20200604103751.18816-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200604103751.18816-1-chris@chris-wilson.co.uk>
References: <20200604103751.18816-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/22] drm/i915/gt: Enable busy-stats for
 ring-scheduler
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q291cGxlIHVwIHRoZSBjb250ZXh0IGluL291dCBhY2NvdW50aW5nIHRvIHJlY29yZCBob3cgbG9u
ZyBlYWNoIGVuZ2luZQppcyBidXN5IGhhbmRsaW5nIHJlcXVlc3RzLiBUaGlzIGlzIGV4cG9zZWQg
dG8gdXNlcnNwYWNlIGZvciBtb3JlIGFjY3VyYXRlCm1lYXN1cmVtZW50cywgYW5kIGFsc28gZW5h
YmxlcyBvdXIgc29mdC1ycHMgdGltZXIuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfc3RhdHMuaCAgfCA0OSArKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYyAgICAgICAgICAgfCAzNCArLS0tLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3Jpbmdfc2NoZWR1bGVyLmMgICAgfCAgNCArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF9lbmdpbmVfcG0uYyAgfCA5MCArKysrKysrKysrKysrKysrKysrCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ycHMuYyAgICAgICAgfCAgNSArKwogNSBmaWxlcyBj
aGFuZ2VkLCAxNDkgaW5zZXJ0aW9ucygrKSwgMzMgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N0YXRzLmgKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfc3RhdHMuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9zdGF0cy5oCm5ldyBmaWxlIG1vZGUg
MTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uNTg0OTFlYWUzNDgyCi0tLSAvZGV2L251bGwKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3N0YXRzLmgKQEAgLTAsMCAr
MSw0OSBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLworLyoKKyAqIENvcHly
aWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2lmbmRlZiBfX0lOVEVMX0VO
R0lORV9TVEFUU19IX18KKyNkZWZpbmUgX19JTlRFTF9FTkdJTkVfU1RBVFNfSF9fCisKKyNpbmNs
dWRlIDxsaW51eC9hdG9taWMuaD4KKyNpbmNsdWRlIDxsaW51eC9rdGltZS5oPgorI2luY2x1ZGUg
PGxpbnV4L3NlcWxvY2suaD4KKworI2luY2x1ZGUgImk5MTVfZ2VtLmgiIC8qIEdFTV9CVUdfT04g
Ki8KKyNpbmNsdWRlICJpbnRlbF9lbmdpbmUuaCIKKworc3RhdGljIGlubGluZSB2b2lkIGludGVs
X2VuZ2luZV9jb250ZXh0X2luKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sKKwl1
bnNpZ25lZCBsb25nIGZsYWdzOworCisJaWYgKGF0b21pY19hZGRfdW5sZXNzKCZlbmdpbmUtPnN0
YXRzLmFjdGl2ZSwgMSwgMCkpCisJCXJldHVybjsKKworCXdyaXRlX3NlcWxvY2tfaXJxc2F2ZSgm
ZW5naW5lLT5zdGF0cy5sb2NrLCBmbGFncyk7CisJaWYgKCFhdG9taWNfYWRkX3VubGVzcygmZW5n
aW5lLT5zdGF0cy5hY3RpdmUsIDEsIDApKSB7CisJCWVuZ2luZS0+c3RhdHMuc3RhcnQgPSBrdGlt
ZV9nZXQoKTsKKwkJYXRvbWljX2luYygmZW5naW5lLT5zdGF0cy5hY3RpdmUpOworCX0KKwl3cml0
ZV9zZXF1bmxvY2tfaXJxcmVzdG9yZSgmZW5naW5lLT5zdGF0cy5sb2NrLCBmbGFncyk7Cit9CisK
K3N0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF9lbmdpbmVfY29udGV4dF9vdXQoc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lKQoreworCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CisKKwlHRU1fQlVH
X09OKCFhdG9taWNfcmVhZCgmZW5naW5lLT5zdGF0cy5hY3RpdmUpKTsKKworCWlmIChhdG9taWNf
YWRkX3VubGVzcygmZW5naW5lLT5zdGF0cy5hY3RpdmUsIC0xLCAxKSkKKwkJcmV0dXJuOworCisJ
d3JpdGVfc2VxbG9ja19pcnFzYXZlKCZlbmdpbmUtPnN0YXRzLmxvY2ssIGZsYWdzKTsKKwlpZiAo
YXRvbWljX2RlY19hbmRfdGVzdCgmZW5naW5lLT5zdGF0cy5hY3RpdmUpKSB7CisJCWVuZ2luZS0+
c3RhdHMudG90YWwgPQorCQkJa3RpbWVfYWRkKGVuZ2luZS0+c3RhdHMudG90YWwsCisJCQkJICBr
dGltZV9zdWIoa3RpbWVfZ2V0KCksIGVuZ2luZS0+c3RhdHMuc3RhcnQpKTsKKwl9CisJd3JpdGVf
c2VxdW5sb2NrX2lycXJlc3RvcmUoJmVuZ2luZS0+c3RhdHMubG9jaywgZmxhZ3MpOworfQorCisj
ZW5kaWYgLyogX19JTlRFTF9FTkdJTkVfU1RBVFNfSF9fICovCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jCmluZGV4IGQ5NWI1MjYxZjU5Zi4uMTBkODNkNjMyN2IxIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMTM5LDYgKzEzOSw3IEBACiAjaW5jbHVkZSAiaTkxNV92
Z3B1LmgiCiAjaW5jbHVkZSAiaW50ZWxfY29udGV4dC5oIgogI2luY2x1ZGUgImludGVsX2VuZ2lu
ZV9wbS5oIgorI2luY2x1ZGUgImludGVsX2VuZ2luZV9zdGF0cy5oIgogI2luY2x1ZGUgImludGVs
X2d0LmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3RfcG0uaCIKICNpbmNsdWRlICJpbnRlbF9ndF9yZXF1
ZXN0cy5oIgpAQCAtMTE4NywzOSArMTE4OCw2IEBAIGV4ZWNsaXN0c19jb250ZXh0X3N0YXR1c19j
aGFuZ2Uoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIHVuc2lnbmVkIGxvbmcgc3RhdHVzKQogCQkJ
CSAgIHN0YXR1cywgcnEpOwogfQogCi1zdGF0aWMgdm9pZCBpbnRlbF9lbmdpbmVfY29udGV4dF9p
bihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCi17Ci0JdW5zaWduZWQgbG9uZyBmbGFn
czsKLQotCWlmIChhdG9taWNfYWRkX3VubGVzcygmZW5naW5lLT5zdGF0cy5hY3RpdmUsIDEsIDAp
KQotCQlyZXR1cm47Ci0KLQl3cml0ZV9zZXFsb2NrX2lycXNhdmUoJmVuZ2luZS0+c3RhdHMubG9j
aywgZmxhZ3MpOwotCWlmICghYXRvbWljX2FkZF91bmxlc3MoJmVuZ2luZS0+c3RhdHMuYWN0aXZl
LCAxLCAwKSkgewotCQllbmdpbmUtPnN0YXRzLnN0YXJ0ID0ga3RpbWVfZ2V0KCk7Ci0JCWF0b21p
Y19pbmMoJmVuZ2luZS0+c3RhdHMuYWN0aXZlKTsKLQl9Ci0Jd3JpdGVfc2VxdW5sb2NrX2lycXJl
c3RvcmUoJmVuZ2luZS0+c3RhdHMubG9jaywgZmxhZ3MpOwotfQotCi1zdGF0aWMgdm9pZCBpbnRl
bF9lbmdpbmVfY29udGV4dF9vdXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQotewot
CXVuc2lnbmVkIGxvbmcgZmxhZ3M7Ci0KLQlHRU1fQlVHX09OKCFhdG9taWNfcmVhZCgmZW5naW5l
LT5zdGF0cy5hY3RpdmUpKTsKLQotCWlmIChhdG9taWNfYWRkX3VubGVzcygmZW5naW5lLT5zdGF0
cy5hY3RpdmUsIC0xLCAxKSkKLQkJcmV0dXJuOwotCi0Jd3JpdGVfc2VxbG9ja19pcnFzYXZlKCZl
bmdpbmUtPnN0YXRzLmxvY2ssIGZsYWdzKTsKLQlpZiAoYXRvbWljX2RlY19hbmRfdGVzdCgmZW5n
aW5lLT5zdGF0cy5hY3RpdmUpKSB7Ci0JCWVuZ2luZS0+c3RhdHMudG90YWwgPQotCQkJa3RpbWVf
YWRkKGVuZ2luZS0+c3RhdHMudG90YWwsCi0JCQkJICBrdGltZV9zdWIoa3RpbWVfZ2V0KCksIGVu
Z2luZS0+c3RhdHMuc3RhcnQpKTsKLQl9Ci0Jd3JpdGVfc2VxdW5sb2NrX2lycXJlc3RvcmUoJmVu
Z2luZS0+c3RhdHMubG9jaywgZmxhZ3MpOwotfQotCiBzdGF0aWMgdm9pZAogZXhlY2xpc3RzX2No
ZWNrX2NvbnRleHQoY29uc3Qgc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogCQkJY29uc3Qgc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfcmluZ19zY2hlZHVsZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3Jpbmdfc2NoZWR1bGVyLmMKaW5kZXggYzhjZDQzNWQxYzUxLi5hYWZmNTU0ODY1YjEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc2NoZWR1bGVy
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zY2hlZHVsZXIuYwpA
QCAtOSw2ICs5LDcgQEAKIAogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAjaW5jbHVkZSAiaW50ZWxf
Y29udGV4dC5oIgorI2luY2x1ZGUgImludGVsX2VuZ2luZV9zdGF0cy5oIgogI2luY2x1ZGUgImlu
dGVsX2d0LmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3RfcG0uaCIKICNpbmNsdWRlICJpbnRlbF9ndF9y
ZXF1ZXN0cy5oIgpAQCAtNTksNiArNjAsNyBAQCBzdGF0aWMgc3RydWN0IGk5MTVfcmVxdWVzdCAq
CiBzY2hlZHVsZV9pbihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxKQogewogCV9faW50ZWxfZ3RfcG1fZ2V0KGVuZ2luZS0+Z3QpOworCWludGVs
X2VuZ2luZV9jb250ZXh0X2luKGVuZ2luZSk7CiAJcmV0dXJuIGk5MTVfcmVxdWVzdF9nZXQocnEp
OwogfQogCkBAIC03MSw2ICs3Myw3IEBAIHNjaGVkdWxlX291dChzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogCQlpbnRlbF9lbmdpbmVfYWRk
X3JldGlyZShlbmdpbmUsIGNlLT50aW1lbGluZSk7CiAKIAlpOTE1X3JlcXVlc3RfcHV0KHJxKTsK
KwlpbnRlbF9lbmdpbmVfY29udGV4dF9vdXQoZW5naW5lKTsKIAlpbnRlbF9ndF9wbV9wdXRfYXN5
bmMoZW5naW5lLT5ndCk7CiB9CiAKQEAgLTc0Nyw2ICs3NTAsNyBAQCBpbnQgaW50ZWxfcmluZ19z
Y2hlZHVsZXJfc2V0dXAoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCWVuZ2luZS0+
bGVnYWN5LnJpbmcgPSByaW5nOwogCiAJZW5naW5lLT5mbGFncyB8PSBJOTE1X0VOR0lORV9ORUVE
U19CUkVBRENSVU1CX1RBU0tMRVQ7CisJZW5naW5lLT5mbGFncyB8PSBJOTE1X0VOR0lORV9TVVBQ
T1JUU19TVEFUUzsKIAogCS8qIEZpbmFsbHksIHRha2Ugb3duZXJzaGlwIGFuZCByZXNwb25zaWJp
bGl0eSBmb3IgY2xlYW51cCEgKi8KIAllbmdpbmUtPnJlbGVhc2UgPSByaW5nX3JlbGVhc2U7CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmVfcG0uYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9wbS5jCmluZGV4IGNiZjZi
MDczNTI3Mi4uZmVmOTcwOWI3Y2ZhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF9lbmdpbmVfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxm
dGVzdF9lbmdpbmVfcG0uYwpAQCAtNyw2ICs3LDk1IEBACiAjaW5jbHVkZSAiaTkxNV9zZWxmdGVz
dC5oIgogI2luY2x1ZGUgInNlbGZ0ZXN0X2VuZ2luZS5oIgogI2luY2x1ZGUgInNlbGZ0ZXN0cy9p
Z3RfYXRvbWljLmgiCisjaW5jbHVkZSAic2VsZnRlc3RzL2lndF9mbHVzaF90ZXN0LmgiCisjaW5j
bHVkZSAic2VsZnRlc3RzL2lndF9zcGlubmVyLmgiCisKK3N0YXRpYyBpbnQgbGl2ZV9lbmdpbmVf
YnVzeV9zdGF0cyh2b2lkICphcmcpCit7CisJc3RydWN0IGludGVsX2d0ICpndCA9IGFyZzsKKwlz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7CisJZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7
CisJc3RydWN0IGlndF9zcGlubmVyIHNwaW47CisJaW50IGVyciA9IDA7CisKKwkvKgorCSAqIENo
ZWNrIHRoYXQgaWYgYW4gZW5naW5lIHN1cHBvcnRzIGJ1c3ktc3RhdHMsIHRoZXkgdGVsbCB0aGUg
dHJ1dGguCisJICovCisKKwlpZiAoaWd0X3NwaW5uZXJfaW5pdCgmc3BpbiwgZ3QpKQorCQlyZXR1
cm4gLUVOT01FTTsKKworCUdFTV9CVUdfT04oaW50ZWxfZ3RfcG1faXNfYXdha2UoZ3QpKTsKKwlm
b3JfZWFjaF9lbmdpbmUoZW5naW5lLCBndCwgaWQpIHsKKwkJc3RydWN0IGk5MTVfcmVxdWVzdCAq
cnE7CisJCWt0aW1lX3QgZHQsIGRlOworCisJCWlmICghaW50ZWxfZW5naW5lX3N1cHBvcnRzX3N0
YXRzKGVuZ2luZSkpCisJCQljb250aW51ZTsKKworCQlpZiAoIWludGVsX2VuZ2luZV9jYW5fc3Rv
cmVfZHdvcmQoZW5naW5lKSkKKwkJCWNvbnRpbnVlOworCisJCWlmIChpbnRlbF9ndF9wbV93YWl0
X2Zvcl9pZGxlKGd0KSkgeworCQkJZXJyID0gLUVCVVNZOworCQkJYnJlYWs7CisJCX0KKworCQlw
cmVlbXB0X2Rpc2FibGUoKTsKKwkJZHQgPSBrdGltZV9nZXQoKTsKKwkJZGUgPSBpbnRlbF9lbmdp
bmVfZ2V0X2J1c3lfdGltZShlbmdpbmUpOworCQl1ZGVsYXkoMTAwKTsKKwkJZHQgPSBrdGltZV9z
dWIoa3RpbWVfZ2V0KCksIGR0KTsKKwkJZGUgPSBrdGltZV9zdWIoaW50ZWxfZW5naW5lX2dldF9i
dXN5X3RpbWUoZW5naW5lKSwgZGUpOworCQlwcmVlbXB0X2VuYWJsZSgpOworCQlpZiAoZGUgPiAx
MCkgeworCQkJcHJfZXJyKCIlczogcmVwb3J0ZWQgJWxsZG5zIFslZCUlXSBidXN5bmVzcyB3aGls
ZSBzbGVlcGluZyBbZm9yICVsbGRuc11cbiIsCisJCQkgICAgICAgZW5naW5lLT5uYW1lLAorCQkJ
ICAgICAgIGRlLCAoaW50KWRpdjY0X3U2NCgxMDAgKiBkZSwgZHQpLCBkdCk7CisJCQllcnIgPSAt
RUlOVkFMOworCQkJYnJlYWs7CisJCX0KKworCQlycSA9IGlndF9zcGlubmVyX2NyZWF0ZV9yZXF1
ZXN0KCZzcGluLAorCQkJCQkJZW5naW5lLT5rZXJuZWxfY29udGV4dCwKKwkJCQkJCU1JX05PT1Ap
OworCQlpZiAoSVNfRVJSKHJxKSkgeworCQkJZXJyID0gUFRSX0VSUihycSk7CisJCQlicmVhazsK
KwkJfQorCQlpOTE1X3JlcXVlc3RfYWRkKHJxKTsKKworCQlpZiAoIWlndF93YWl0X2Zvcl9zcGlu
bmVyKCZzcGluLCBycSkpIHsKKwkJCWludGVsX2d0X3NldF93ZWRnZWQoZW5naW5lLT5ndCk7CisJ
CQllcnIgPSAtRVRJTUU7CisJCQlicmVhazsKKwkJfQorCisJCXByZWVtcHRfZGlzYWJsZSgpOwor
CQlkdCA9IGt0aW1lX2dldCgpOworCQlkZSA9IGludGVsX2VuZ2luZV9nZXRfYnVzeV90aW1lKGVu
Z2luZSk7CisJCXVkZWxheSgxMDApOworCQlkdCA9IGt0aW1lX3N1YihrdGltZV9nZXQoKSwgZHQp
OworCQlkZSA9IGt0aW1lX3N1YihpbnRlbF9lbmdpbmVfZ2V0X2J1c3lfdGltZShlbmdpbmUpLCBk
ZSk7CisJCXByZWVtcHRfZW5hYmxlKCk7CisJCWlmICgxMDAgKiBkZSA8IDk1ICogZHQpIHsKKwkJ
CXByX2VycigiJXM6IHJlcG9ydGVkIG9ubHkgJWxsZG5zIFslZCUlXSBidXN5bmVzcyB3aGlsZSBz
cGlubmluZyBbZm9yICVsbGRuc11cbiIsCisJCQkgICAgICAgZW5naW5lLT5uYW1lLAorCQkJICAg
ICAgIGRlLCAoaW50KWRpdjY0X3U2NCgxMDAgKiBkZSwgZHQpLCBkdCk7CisJCQllcnIgPSAtRUlO
VkFMOworCQkJYnJlYWs7CisJCX0KKworCQlpZ3Rfc3Bpbm5lcl9lbmQoJnNwaW4pOworCQlpZiAo
aWd0X2ZsdXNoX3Rlc3QoZ3QtPmk5MTUpKSB7CisJCQllcnIgPSAtRUlPOworCQkJYnJlYWs7CisJ
CX0KKwl9CisKKwlpZ3Rfc3Bpbm5lcl9maW5pKCZzcGluKTsKKwlyZXR1cm4gZXJyOworfQogCiBz
dGF0aWMgaW50IGxpdmVfZW5naW5lX3BtKHZvaWQgKmFyZykKIHsKQEAgLTc3LDYgKzE2Niw3IEBA
IHN0YXRpYyBpbnQgbGl2ZV9lbmdpbmVfcG0odm9pZCAqYXJnKQogaW50IGxpdmVfZW5naW5lX3Bt
X3NlbGZ0ZXN0cyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogewogCXN0YXRpYyBjb25zdCBzdHJ1Y3Qg
aTkxNV9zdWJ0ZXN0IHRlc3RzW10gPSB7CisJCVNVQlRFU1QobGl2ZV9lbmdpbmVfYnVzeV9zdGF0
cyksCiAJCVNVQlRFU1QobGl2ZV9lbmdpbmVfcG0pLAogCX07CiAKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3Jwcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Qvc2VsZnRlc3RfcnBzLmMKaW5kZXggNTA0OWMzZGQwOGE2Li41ZTM2NGZiMzFhZWEgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3Jwcy5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3Jwcy5jCkBAIC0xMjUyLDYgKzEyNTIsMTEgQEAg
aW50IGxpdmVfcnBzX2R5bmFtaWModm9pZCAqYXJnKQogCWlmIChpZ3Rfc3Bpbm5lcl9pbml0KCZz
cGluLCBndCkpCiAJCXJldHVybiAtRU5PTUVNOwogCisJaWYgKGludGVsX3Jwc19oYXNfaW50ZXJy
dXB0cyhycHMpKQorCQlwcl9pbmZvKCJSUFMgaGFzIGludGVycnVwdCBzdXBwb3J0XG4iKTsKKwlp
ZiAoaW50ZWxfcnBzX3VzZXNfdGltZXIocnBzKSkKKwkJcHJfaW5mbygiUlBTIGhhcyB0aW1lciBz
dXBwb3J0XG4iKTsKKwogCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGd0LCBpZCkgewogCQlzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICpycTsKIAkJc3RydWN0IHsKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
