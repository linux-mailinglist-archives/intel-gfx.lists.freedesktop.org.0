Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1CC19E0E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2019 15:23:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74E0489D66;
	Fri, 10 May 2019 13:23:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10A3C89A1F;
 Fri, 10 May 2019 13:23:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 May 2019 06:23:18 -0700
X-ExtLoop1: 1
Received: from ddillonx-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.28.3])
 by FMSMGA003.fm.intel.com with ESMTP; 10 May 2019 06:23:17 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 10 May 2019 14:23:12 +0100
Message-Id: <20190510132312.11121-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190510132312.11121-1-tvrtko.ursulin@linux.intel.com>
References: <20190510132312.11121-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC i-g-t 1/1] intel-gpu-top: Support for client stats
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkFkZHMgc3Vw
cG9ydCBmb3IgcGVyLWNsaWVudCBlbmdpbmUgYnVzeW5lc3Mgc3RhdHMgaTkxNSBleHBvcnRzIGlu
IHN5c2ZzCmFuZCBwcm9kdWNlcyBvdXRwdXQgbGlrZSB0aGUgYmVsb3c6Cgo9PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PQppbnRlbC1ncHUtdG9wIC0gIDkzNS8gOTM1IE1IejsgICAgMCUgUkM2OyAxNC43MyBXYXR0
czsgICAgIDEwOTcgaXJxcy9zCgogICAgICBJTUMgcmVhZHM6ICAgICAxNDAxIE1pQi9zCiAgICAg
SU1DIHdyaXRlczogICAgICAgIDQgTWlCL3MKCiAgICAgICAgICBFTkdJTkUgICAgICBCVVNZICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTUlfU0VNQSBNSV9XQUlUCiAgICAgUmVuZGVy
LzNELzAgICA2My43MyUgfOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKW
iOKWiOKWiOKWiOKWiOKWiCAgICAgICAgICAgfCAgICAgIDMlICAgICAgMCUKICAgICAgIEJsaXR0
ZXIvMCAgICA5LjUzJSB84paI4paI4paKICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAg
IDYlICAgICAgMCUKICAgICAgICAgVmlkZW8vMCAgIDM5LjMyJSB84paI4paI4paI4paI4paI4paI
4paI4paI4paI4paI4paI4paKICAgICAgICAgICAgICAgICAgfCAgICAgMTYlICAgICAgMCUKICAg
ICAgICAgVmlkZW8vMSAgIDE1LjYyJSB84paI4paI4paI4paI4paLICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgICAgICAwJSAgICAgIDAlCiAgVmlkZW9FbmhhbmNlLzAgICAgMC4wMCUgfCAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAwJSAgICAgIDAlCgogIFBJRCAgICAgICAg
ICAgIE5BTUUgICAgIFJDUyAgICAgICAgICBCQ1MgICAgICAgICAgVkNTICAgICAgICAgVkVDUwog
NDA4NCAgICAgICAgZ2VtX3dzaW0gfOKWiOKWiOKWiOKWiOKWiOKWjCAgICAgfHziloggICAgICAg
ICAgfHwgICAgICAgICAgIHx8ICAgICAgICAgICB8CiA0MDg2ICAgICAgICBnZW1fd3NpbSB84paI
4paMICAgICAgICAgfHwgICAgICAgICAgIHx84paI4paI4paIICAgICAgICB8fCAgICAgICAgICAg
fAo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PQoKQXBhcnQgZnJvbSB0aGUgZXhpc3RpbmcgcGh5c2ljYWwgZW5n
aW5lIHV0aWxpemF0aW9uIGl0IG5vdyBhbHNvIHNob3dzCnV0aWxpemF0aW9uIHBlciBjbGllbnQg
YW5kIHBlciBlbmdpbmUgY2xhc3MuCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZy
dGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIHRvb2xzL2ludGVsX2dwdV90b3AuYyB8IDU5MCAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2Vk
LCA1ODQgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90b29scy9p
bnRlbF9ncHVfdG9wLmMgYi90b29scy9pbnRlbF9ncHVfdG9wLmMKaW5kZXggY2M4ZGI3YzUzOWVk
Li44OGUxYWQ1MmQxN2MgMTAwNjQ0Ci0tLSBhL3Rvb2xzL2ludGVsX2dwdV90b3AuYworKysgYi90
b29scy9pbnRlbF9ncHVfdG9wLmMKQEAgLTY1OSw4ICs2NTksNDAzIEBAIHN0YXRpYyB2b2lkIHBt
dV9zYW1wbGUoc3RydWN0IGVuZ2luZXMgKmVuZ2luZXMpCiAJfQogfQogCitlbnVtIGNsaWVudF9z
dGF0dXMgeworCUZSRUUgPSAwLCAvKiBtYnogKi8KKwlBTElWRSwKKwlQUk9CRQorfTsKKworc3Ry
dWN0IGNsaWVudHM7CisKK3N0cnVjdCBjbGllbnQgeworCXN0cnVjdCBjbGllbnRzICpjbGllbnRz
OworCisJZW51bSBjbGllbnRfc3RhdHVzIHN0YXR1czsKKwl1bnNpZ25lZCBpbnQgaWQ7CisJdW5z
aWduZWQgaW50IHBpZDsKKwljaGFyIG5hbWVbMTI4XTsKKwl1bnNpZ25lZCBpbnQgc2FtcGxlczsK
Kwl1bnNpZ25lZCBsb25nIHRvdGFsOworCXN0cnVjdCBlbmdpbmVzICplbmdpbmVzOworCXVuc2ln
bmVkIGxvbmcgKnZhbDsKKwl1aW50NjRfdCAqbGFzdDsKK307CisKK3N0cnVjdCBlbmdpbmVfY2xh
c3MgeworCXVuc2lnbmVkIGludCBjbGFzczsKKwljb25zdCBjaGFyICpuYW1lOworCXVuc2lnbmVk
IGludCBudW1fZW5naW5lczsKK307CisKK3N0cnVjdCBjbGllbnRzIHsKKwl1bnNpZ25lZCBpbnQg
bnVtX2NsYXNzZXM7CisJc3RydWN0IGVuZ2luZV9jbGFzcyAqY2xhc3M7CisKKwl1bnNpZ25lZCBp
bnQgbnVtX2NsaWVudHM7CisJc3RydWN0IGNsaWVudCAqY2xpZW50OworfTsKKworI2RlZmluZSBm
b3JfZWFjaF9jbGllbnQoY2xpZW50cywgYywgdG1wKSBcCisJZm9yICgodG1wKSA9IChjbGllbnRz
KS0+bnVtX2NsaWVudHMsIGMgPSAoY2xpZW50cyktPmNsaWVudDsgXAorCSAgICAgKHRtcCA+IDAp
OyAodG1wKS0tLCAoYykrKykKKworI2RlZmluZSBTWVNGU19FTkFCTEUgIi9zeXMvY2xhc3MvZHJt
L2NhcmQwL2NsaWVudHMvZW5hYmxlX3N0YXRzIgorCitib29sIF9fc3RhdHNfZW5hYmxlZDsKKwor
c3RhdGljIGludCBfX3NldF9zdGF0cyhib29sIHZhbCkKK3sKKwlpbnQgZmQsIHJldDsKKworCWZk
ID0gb3BlbihTWVNGU19FTkFCTEUsIE9fV1JPTkxZKTsKKwlpZiAoZmQgPCAwKQorCQlyZXR1cm4g
LWVycm5vOworCisJcmV0ID0gd3JpdGUoZmQsIHZhbCA/ICIxIiA6ICIwIiwgMik7CisJaWYgKHJl
dCA8IDApCisJCXJldHVybiAtZXJybm87CisJZWxzZSBpZiAocmV0IDwgMikKKwkJcmV0dXJuIDE7
CisKKwljbG9zZShmZCk7CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIHZvaWQgX19yZXN0b3Jl
X3N0YXRzKHZvaWQpCit7CisJaW50IHJldDsKKworCWlmIChfX3N0YXRzX2VuYWJsZWQpCisJCXJl
dHVybjsKKworCXJldCA9IF9fc2V0X3N0YXRzKGZhbHNlKTsKKwlpZiAocmV0KQorCQlmcHJpbnRm
KHN0ZGVyciwgIkZhaWxlZCB0byBkaXNhYmxlIHBlci1jbGllbnQgc3RhdHMhICglZClcbiIsCisJ
CQlyZXQpOworfQorCitzdGF0aWMgdm9pZCBfX3Jlc3RvcmVfc3RhdHNfc2lnbmFsKGludCBzaWcp
Cit7CisJZXhpdCgwKTsKK30KKworc3RhdGljIGludCBlbmFibGVfc3RhdHModm9pZCkKK3sKKwlp
bnQgZmQsIHJldDsKKworCWZkID0gb3BlbihTWVNGU19FTkFCTEUsIE9fUkRPTkxZKTsKKwlpZiAo
ZmQgPCAwKQorCQlyZXR1cm4gLWVycm5vOworCisJY2xvc2UoZmQpOworCisJX19zdGF0c19lbmFi
bGVkID0gZmlsZW5hbWVfdG9fdTY0KFNZU0ZTX0VOQUJMRSwgMTApOworCWlmIChfX3N0YXRzX2Vu
YWJsZWQpCisJCXJldHVybiAwOworCisJcmV0ID0gX19zZXRfc3RhdHModHJ1ZSk7CisJaWYgKCFy
ZXQpIHsKKwkJaWYgKGF0ZXhpdChfX3Jlc3RvcmVfc3RhdHMpKQorCQkJZnByaW50ZihzdGRlcnIs
ICJGYWlsZWQgdG8gcmVnaXN0ZXIgZXhpdCBoYW5kbGVyISIpOworCisJCWlmIChzaWduYWwoU0lH
SU5ULCBfX3Jlc3RvcmVfc3RhdHNfc2lnbmFsKSkKKwkJCWZwcmludGYoc3RkZXJyLCAiRmFpbGVk
IHRvIHJlZ2lzdGVyIHNpZ25hbCBoYW5kbGVyISIpOworCX0gZWxzZSB7CisJCWZwcmludGYoc3Rk
ZXJyLCAiRmFpbGVkIHRvIGVuYWJsZSBwZXItY2xpZW50IHN0YXRzISAoJWQpXG4iLAorCQkJcmV0
KTsKKwl9CisKKwlyZXR1cm4gcmV0OworfQorCitzdGF0aWMgc3RydWN0IGNsaWVudHMgKmluaXRf
Y2xpZW50cyh2b2lkKQoreworCXN0cnVjdCBjbGllbnRzICpjbGllbnRzID0gbWFsbG9jKHNpemVv
ZigqY2xpZW50cykpOworCisJaWYgKGVuYWJsZV9zdGF0cygpKSB7CisJCWZyZWUoY2xpZW50cyk7
CisJCXJldHVybiBOVUxMOworCX0KKworCXJldHVybiBtZW1zZXQoY2xpZW50cywgMCwgc2l6ZW9m
KCpjbGllbnRzKSk7Cit9CisKKyNkZWZpbmUgU1lTRlNfQ0xJRU5UUyAiL3N5cy9jbGFzcy9kcm0v
Y2FyZDAvY2xpZW50cyIKKworc3RhdGljIHVpbnQ2NF90IHJlYWRfY2xpZW50X2J1c3kodW5zaWdu
ZWQgaW50IGlkLCB1bnNpZ25lZCBpbnQgY2xhc3MpCit7CisJY2hhciBidWZbMjU2XTsKKwlzc2l6
ZV90IHJldDsKKworCXJldCA9IHNucHJpbnRmKGJ1Ziwgc2l6ZW9mKGJ1ZiksCisJCSAgICAgICBT
WVNGU19DTElFTlRTICIvJXUvYnVzeS8ldSIsCisJCSAgICAgICBpZCwgY2xhc3MpOworCWFzc2Vy
dChyZXQgPiAwICYmIHJldCA8IHNpemVvZihidWYpKTsKKwlpZiAocmV0IDw9IDAgfHwgcmV0ID09
IHNpemVvZihidWYpKQorCQlyZXR1cm4gMDsKKworCXJldHVybiBmaWxlbmFtZV90b191NjQoYnVm
LCAxMCk7Cit9CisKK3N0YXRpYyBzdHJ1Y3QgY2xpZW50ICoKK2ZpbmRfY2xpZW50KHN0cnVjdCBj
bGllbnRzICpjbGllbnRzLCBlbnVtIGNsaWVudF9zdGF0dXMgc3RhdHVzLCB1bnNpZ25lZCBpbnQg
aWQpCit7CisJc3RydWN0IGNsaWVudCAqYzsKKwlpbnQgdG1wOworCisJZm9yX2VhY2hfY2xpZW50
KGNsaWVudHMsIGMsIHRtcCkgeworCQlpZiAoKHN0YXR1cyA9PSBGUkVFICYmIGMtPnN0YXR1cyA9
PSBGUkVFKSB8fAorCQkgICAgKHN0YXR1cyA9PSBjLT5zdGF0dXMgJiYgYy0+aWQgPT0gaWQpKQor
CQkJcmV0dXJuIGM7CisJfQorCisJcmV0dXJuIE5VTEw7Cit9CisKK3N0YXRpYyB2b2lkIHVwZGF0
ZV9jbGllbnQoc3RydWN0IGNsaWVudCAqYywgdW5zaWduZWQgaW50IHBpZCwgY2hhciAqbmFtZSkK
K3sKKwl1aW50NjRfdCB2YWxbYy0+Y2xpZW50cy0+bnVtX2NsYXNzZXNdOworCXVuc2lnbmVkIGlu
dCBpOworCisJaWYgKGMtPnBpZCAhPSBwaWQpCisJCWMtPnBpZCA9IHBpZDsKKworCWlmIChzdHJu
Y21wKGMtPm5hbWUsIG5hbWUsIHNpemVvZihjLT5uYW1lKSkpCisJCXN0cm5jcHkoYy0+bmFtZSwg
bmFtZSwgc2l6ZW9mKGMtPm5hbWUpKTsKKworCWZvciAoaSA9IDA7IGkgPCBjLT5jbGllbnRzLT5u
dW1fY2xhc3NlczsgaSsrKQorCQl2YWxbaV0gPSByZWFkX2NsaWVudF9idXN5KGMtPmlkLCBjLT5j
bGllbnRzLT5jbGFzc1tpXS5jbGFzcyk7CisKKwljLT50b3RhbCA9IDA7CisKKwlmb3IgKGkgPSAw
OyBpIDwgYy0+Y2xpZW50cy0+bnVtX2NsYXNzZXM7IGkrKykgeworCQlhc3NlcnQodmFsW2ldID49
IGMtPmxhc3RbaV0pOworCQljLT52YWxbaV0gPSB2YWxbaV0gLSBjLT5sYXN0W2ldOworCQljLT50
b3RhbCArPSBjLT52YWxbaV07CisJCWMtPmxhc3RbaV0gPSB2YWxbaV07CisJfQorCisJYy0+c2Ft
cGxlcysrOworCWMtPnN0YXR1cyA9IEFMSVZFOworfQorCitzdGF0aWMgaW50IGNsYXNzX2NtcChj
b25zdCB2b2lkICpfYSwgY29uc3Qgdm9pZCAqX2IpCit7CisJY29uc3Qgc3RydWN0IGVuZ2luZV9j
bGFzcyAqYSA9IF9hOworCWNvbnN0IHN0cnVjdCBlbmdpbmVfY2xhc3MgKmIgPSBfYjsKKworCXJl
dHVybiBhLT5jbGFzcyAtIGItPmNsYXNzOworfQorCitzdGF0aWMgdm9pZCBzY2FuX2NsYXNzZXMo
c3RydWN0IGNsaWVudHMgKmNsaWVudHMsIHVuc2lnbmVkIGludCBpZCkKK3sKKwlzdHJ1Y3QgZW5n
aW5lX2NsYXNzICpjbGFzc2VzOworCXVuc2lnbmVkIGludCBudW0sIGk7CisJc3RydWN0IGRpcmVu
dCAqZGVudDsKKwljaGFyIGJ1ZlsyNTZdOworCWludCByZXQ7CisJRElSICpkOworCisJcmV0ID0g
c25wcmludGYoYnVmLCBzaXplb2YoYnVmKSwgU1lTRlNfQ0xJRU5UUyAiLyV1L2J1c3kiLCBpZCk7
CisJYXNzZXJ0KHJldCA+IDAgJiYgcmV0IDwgc2l6ZW9mKGJ1ZikpOworCWlmIChyZXQgPD0gMCB8
fCByZXQgPT0gc2l6ZW9mKGJ1ZikpCisJCXJldHVybjsKKworCWQgPSBvcGVuZGlyKGJ1Zik7CisJ
aWYgKCFkKQorCQlyZXR1cm47CisKK3Jlc3RhcnQ6CisJcmV3aW5kZGlyKGQpOworCisJbnVtID0g
MDsKKwl3aGlsZSAoKGRlbnQgPSByZWFkZGlyKGQpKSAhPSBOVUxMKSB7CisJCWlmIChkZW50LT5k
X3R5cGUgIT0gRFRfUkVHKQorCQkJY29udGludWU7CisKKwkJbnVtKys7CisJfQorCisJcmV3aW5k
ZGlyKGQpOworCisJY2xhc3NlcyA9IGNhbGxvYyhudW0sIHNpemVvZigqY2xhc3NlcykpOworCWFz
c2VydChjbGFzc2VzKTsKKworCWkgPSAwOworCXdoaWxlICgoZGVudCA9IHJlYWRkaXIoZCkpICE9
IE5VTEwpIHsKKwkJaWYgKGkgPiBudW0pIHsKKwkJCS8vIEZJWE1FOiBmcmVlIGluZGl2aWR1YWwg
bmFtZXMKKwkJCWZyZWUoY2xhc3Nlcyk7CisJCQlnb3RvIHJlc3RhcnQ7CisJCX0KKworCQlpZiAo
ZGVudC0+ZF90eXBlICE9IERUX1JFRykKKwkJCWNvbnRpbnVlOworCisJCWNsYXNzZXNbaV0uY2xh
c3MgPSBhdG9pKGRlbnQtPmRfbmFtZSk7CisJCWNsYXNzZXNbaV0ubmFtZSA9IGNsYXNzX3Nob3J0
X25hbWUoY2xhc3Nlc1tpXS5jbGFzcyk7CisJCWkrKzsKKwl9CisKKwljbG9zZWRpcihkKTsKKwor
CXFzb3J0KGNsYXNzZXMsIG51bSwgc2l6ZW9mKCpjbGFzc2VzKSwgY2xhc3NfY21wKTsKKworCWNs
aWVudHMtPm51bV9jbGFzc2VzID0gbnVtOworCWNsaWVudHMtPmNsYXNzID0gY2xhc3NlczsKK30K
Kworc3RhdGljIHZvaWQKK2FkZF9jbGllbnQoc3RydWN0IGNsaWVudHMgKmNsaWVudHMsIHVuc2ln
bmVkIGludCBpZCwgdW5zaWduZWQgaW50IHBpZCwKKwkgICBjaGFyICpuYW1lKQoreworCXN0cnVj
dCBjbGllbnQgKmM7CisKKwlhc3NlcnQoIWZpbmRfY2xpZW50KGNsaWVudHMsIEFMSVZFLCBpZCkp
OworCisJYyA9IGZpbmRfY2xpZW50KGNsaWVudHMsIEZSRUUsIDApOworCWlmICghYykgeworCQl1
bnNpZ25lZCBpbnQgaWR4ID0gY2xpZW50cy0+bnVtX2NsaWVudHM7CisKKwkJY2xpZW50cy0+bnVt
X2NsaWVudHMgKz0gKGNsaWVudHMtPm51bV9jbGllbnRzICsgMikgLyAyOworCQljbGllbnRzLT5j
bGllbnQgPSByZWFsbG9jKGNsaWVudHMtPmNsaWVudCwKKwkJCQkJICBjbGllbnRzLT5udW1fY2xp
ZW50cyAqIHNpemVvZigqYykpOworCQlhc3NlcnQoY2xpZW50cy0+Y2xpZW50KTsKKworCQljID0g
JmNsaWVudHMtPmNsaWVudFtpZHhdOworCQltZW1zZXQoYywgMCwgKGNsaWVudHMtPm51bV9jbGll
bnRzIC0gaWR4KSAqIHNpemVvZigqYykpOworCX0KKworCWlmICghY2xpZW50cy0+bnVtX2NsYXNz
ZXMpCisJCXNjYW5fY2xhc3NlcyhjbGllbnRzLCBpZCk7CisKKwljLT5pZCA9IGlkOworCWMtPmNs
aWVudHMgPSBjbGllbnRzOworCWMtPnZhbCA9IGNhbGxvYyhjbGllbnRzLT5udW1fY2xhc3Nlcywg
c2l6ZW9mKGMtPnZhbCkpOworCWMtPmxhc3QgPSBjYWxsb2MoY2xpZW50cy0+bnVtX2NsYXNzZXMs
IHNpemVvZihjLT5sYXN0KSk7CisJYXNzZXJ0KGMtPnZhbCAmJiBjLT5sYXN0KTsKKworCXVwZGF0
ZV9jbGllbnQoYywgcGlkLCBuYW1lKTsKK30KKworc3RhdGljIHZvaWQgZnJlZV9jbGllbnQoc3Ry
dWN0IGNsaWVudCAqYykKK3sKKwlmcmVlKGMtPnZhbCk7CisJZnJlZShjLT5sYXN0KTsKKwltZW1z
ZXQoYywgMCwgc2l6ZW9mKCpjKSk7Cit9CisKK3N0YXRpYyBjaGFyICpyZWFkX2NsaWVudF9zeXNm
cyh1bnNpZ25lZCBpbnQgaWQsIGNvbnN0IGNoYXIgKmZpZWxkKQoreworCWNoYXIgYnVmWzI1Nl07
CisJc3NpemVfdCByZXQ7CisKKwlyZXQgPSBzbnByaW50ZihidWYsIHNpemVvZihidWYpLCBTWVNG
U19DTElFTlRTICIvJXUvJXMiLCBpZCwgZmllbGQpOworCWFzc2VydChyZXQgPiAwICYmIHJldCA8
IHNpemVvZihidWYpKTsKKwlpZiAocmV0IDw9IDAgfHwgcmV0ID09IHNpemVvZihidWYpKQorCQly
ZXR1cm4gTlVMTDsKKworCXJldCA9IGZpbGVuYW1lX3RvX2J1ZihidWYsIGJ1Ziwgc2l6ZW9mKGJ1
ZikpOworCWFzc2VydChyZXQgPT0gMCk7CisJaWYgKHJldCkKKwkJcmV0dXJuIE5VTEw7CisKKwly
ZXR1cm4gc3RyZHVwKGJ1Zik7Cit9CisKK3N0YXRpYyB2b2lkIHNjYW5fY2xpZW50cyhzdHJ1Y3Qg
Y2xpZW50cyAqY2xpZW50cykKK3sKKwlzdHJ1Y3QgZGlyZW50ICpkZW50OworCXN0cnVjdCBjbGll
bnQgKmM7CisJY2hhciAqcGlkLCAqbmFtZTsKKwl1bnNpZ25lZCBpbnQgaWQ7CisJaW50IHRtcDsK
KwlESVIgKmQ7CisKKwlpZiAoIWNsaWVudHMpCisJCXJldHVybjsKKworCWZvcl9lYWNoX2NsaWVu
dChjbGllbnRzLCBjLCB0bXApIHsKKwkJaWYgKGMtPnN0YXR1cyA9PSBBTElWRSkKKwkJCWMtPnN0
YXR1cyA9IFBST0JFOworCX0KKworCWQgPSBvcGVuZGlyKFNZU0ZTX0NMSUVOVFMpOworCWlmICgh
ZCkKKwkJcmV0dXJuOworCisJd2hpbGUgKChkZW50ID0gcmVhZGRpcihkKSkgIT0gTlVMTCkgewor
CQlpZiAoZGVudC0+ZF90eXBlICE9IERUX0RJUikKKwkJCWNvbnRpbnVlOworCQlpZiAoIWlzZGln
aXQoZGVudC0+ZF9uYW1lWzBdKSkKKwkJCWNvbnRpbnVlOworCisJCWlkID0gYXRvaShkZW50LT5k
X25hbWUpOworCisJCW5hbWUgPSByZWFkX2NsaWVudF9zeXNmcyhpZCwgIm5hbWUiKTsKKwkJYXNz
ZXJ0KG5hbWUpOworCQlpZiAoIW5hbWUpCisJCQljb250aW51ZTsKKworCQlwaWQgPSByZWFkX2Ns
aWVudF9zeXNmcyhpZCwgInBpZCIpOworCQlhc3NlcnQocGlkKTsKKwkJaWYgKCFwaWQpIHsKKwkJ
CWZyZWUobmFtZSk7CisJCQljb250aW51ZTsKKwkJfQorCisJCWMgPSBmaW5kX2NsaWVudChjbGll
bnRzLCBQUk9CRSwgaWQpOworCQlpZiAoYykgeworCQkJdXBkYXRlX2NsaWVudChjLCBhdG9pKHBp
ZCksIG5hbWUpOworCQkJY29udGludWU7CisJCX0KKworCQlhZGRfY2xpZW50KGNsaWVudHMsIGlk
LCBhdG9pKHBpZCksIG5hbWUpOworCisJCWZyZWUobmFtZSk7CisJCWZyZWUocGlkKTsKKwl9CisK
KwljbG9zZWRpcihkKTsKKworCWZvcl9lYWNoX2NsaWVudChjbGllbnRzLCBjLCB0bXApIHsKKwkJ
aWYgKGMtPnN0YXR1cyA9PSBQUk9CRSkKKwkJCWZyZWVfY2xpZW50KGMpOworCX0KK30KKworc3Rh
dGljIGludCBjbXAoY29uc3Qgdm9pZCAqX2EsIGNvbnN0IHZvaWQgKl9iKQoreworCWNvbnN0IHN0
cnVjdCBjbGllbnQgKmEgPSBfYTsKKwljb25zdCBzdHJ1Y3QgY2xpZW50ICpiID0gX2I7CisJbG9u
ZyB0b3RfYSA9IGEtPnRvdGFsOworCWxvbmcgdG90X2IgPSBiLT50b3RhbDsKKworCXRvdF9hICo9
IGEtPnN0YXR1cyA9PSBBTElWRSAmJiBhLT5zYW1wbGVzID4gMTsKKwl0b3RfYiAqPSBiLT5zdGF0
dXMgPT0gQUxJVkUgJiYgYi0+c2FtcGxlcyA+IDE7CisKKwl0b3RfYiAtPSB0b3RfYTsKKworCWlm
ICghdG90X2IpCisJCXJldHVybiAoaW50KWItPmlkIC0gYS0+aWQ7CisKKwl3aGlsZSAodG90X2Ig
PiBJTlRfTUFYIHx8IHRvdF9iIDwgSU5UX01JTikKKwkJdG90X2IgLz0gMjsKKworCXJldHVybiB0
b3RfYjsKK30KKwogc3RhdGljIGNvbnN0IGNoYXIgKmJhcnNbXSA9IHsgIiAiLCAi4paPIiwgIuKW
jiIsICLilo0iLCAi4paMIiwgIuKWiyIsICLilooiLCAi4paJIiwgIuKWiCIgfTsKIAorc3RhdGlj
IHZvaWQgbl9zcGFjZXMoY29uc3QgdW5zaWduZWQgaW50IG4pCit7CisJdW5zaWduZWQgaW50IGk7
CisKKwlmb3IgKGkgPSAwOyBpIDwgbjsgaSsrKQorCQlwdXRjaGFyKCcgJyk7Cit9CisKIHN0YXRp
YyB2b2lkCiBwcmludF9wZXJjZW50YWdlX2Jhcihkb3VibGUgcGVyY2VudCwgaW50IG1heF9sZW4p
CiB7CkBAIC02NzQsOCArMTA2OSwxMCBAQCBwcmludF9wZXJjZW50YWdlX2Jhcihkb3VibGUgcGVy
Y2VudCwgaW50IG1heF9sZW4pCiAJaWYgKGkpCiAJCXByaW50ZigiJXMiLCBiYXJzW2ldKTsKIAot
CWZvciAoaSA9IDA7IGkgPCAobWF4X2xlbiAtIDIgLSAoYmFyX2xlbiArIDcpIC8gOCk7IGkrKykK
LQkJcHV0Y2hhcignICcpOworCWJhcl9sZW4gPSBtYXhfbGVuIC0gMiAtIChiYXJfbGVuICsgNykg
LyA4OworCWlmIChiYXJfbGVuID4gbWF4X2xlbikKKwkJYmFyX2xlbiA9IG1heF9sZW47CisJbl9z
cGFjZXMoYmFyX2xlbik7CiAKIAlwdXRjaGFyKCd8Jyk7CiB9CkBAIC03NzUsNiArMTE3MiwxOCBA
QCBqc29uX2Nsb3NlX3N0cnVjdCh2b2lkKQogCQlmZmx1c2goc3Rkb3V0KTsKIH0KIAorc3RhdGlj
IHZvaWQKK19fanNvbl9hZGRfbWVtYmVyKGNvbnN0IGNoYXIgKmtleSwgY29uc3QgY2hhciAqdmFs
KQoreworCWFzc2VydChqc29uX2luZGVudF9sZXZlbCA8IEFSUkFZX1NJWkUoanNvbl9pbmRlbnQp
KTsKKworCWZwcmludGYob3V0LCAiJXMlc1wiJXNcIjogXCIlc1wiIiwKKwkJanNvbl9zdHJ1Y3Rf
bWVtYmVycyA/ICIsXG4iIDogIiIsCisJCWpzb25faW5kZW50W2pzb25faW5kZW50X2xldmVsXSwg
a2V5LCB2YWwpOworCisJanNvbl9zdHJ1Y3RfbWVtYmVycysrOworfQorCiBzdGF0aWMgdW5zaWdu
ZWQgaW50CiBqc29uX2FkZF9tZW1iZXIoY29uc3Qgc3RydWN0IGNudF9ncm91cCAqcGFyZW50LCBz
dHJ1Y3QgY250X2l0ZW0gKml0ZW0sCiAJCXVuc2lnbmVkIGludCBoZWFkZXJzKQpAQCAtMTA3NSw4
ICsxNDg0LDYgQEAgcHJpbnRfaGVhZGVyKHN0cnVjdCBlbmdpbmVzICplbmdpbmVzLCBkb3VibGUg
dCwKIAkJbWVtbW92ZSgmZ3JvdXBzWzBdLCAmZ3JvdXBzWzFdLAogCQkJc2l6ZW9mKGdyb3Vwcykg
LSBzaXplb2YoZ3JvdXBzWzBdKSk7CiAKLQlwb3BzLT5vcGVuX3N0cnVjdChOVUxMKTsKLQogCSpj
b25zdW1lZCA9IHByaW50X2dyb3Vwcyhncm91cHMpOwogCiAJaWYgKG91dHB1dF9tb2RlID09IElO
VEVSQUNUSVZFKSB7CkBAIC0xMjMyLDcgKzE2MzksNiBAQCBwcmludF9lbmdpbmVzX2Zvb3Rlcihz
dHJ1Y3QgZW5naW5lcyAqZW5naW5lcywgZG91YmxlIHQsCiAJCSAgICAgaW50IGxpbmVzLCBpbnQg
Y29uX3csIGludCBjb25faCkKIHsKIAlwb3BzLT5jbG9zZV9zdHJ1Y3QoKTsKLQlwb3BzLT5jbG9z
ZV9zdHJ1Y3QoKTsKIAogCWlmIChvdXRwdXRfbW9kZSA9PSBJTlRFUkFDVElWRSkgewogCQlpZiAo
bGluZXMrKyA8IGNvbl9oKQpAQCAtMTI0Miw2ICsxNjQ4LDEzNiBAQCBwcmludF9lbmdpbmVzX2Zv
b3RlcihzdHJ1Y3QgZW5naW5lcyAqZW5naW5lcywgZG91YmxlIHQsCiAJcmV0dXJuIGxpbmVzOwog
fQogCitzdGF0aWMgaW50CitwcmludF9jbGllbnRzX2hlYWRlcihzdHJ1Y3QgY2xpZW50cyAqY2xp
ZW50cywgaW50IGxpbmVzLAorCQkgICAgIGludCBjb25fdywgaW50IGNvbl9oLCB1bnNpZ25lZCBp
bnQgKmNsYXNzX3cpCit7CisJaW50IGxlbjsKKworCWlmIChvdXRwdXRfbW9kZSA9PSBJTlRFUkFD
VElWRSkgeworCQlpZiAobGluZXMrKyA+PSBjb25faCkKKwkJCXJldHVybiBsaW5lczsKKworCQlw
cmludGYoIlwwMzNbN20iKTsKKwkJbGVuID0gcHJpbnRmKCIlNXMlMTZzIiwgIlBJRCIsICJOQU1F
Iik7CisKKwkJaWYgKGxpbmVzKysgPj0gY29uX2gpCisJCQlyZXR1cm4gbGluZXM7CisKKwkJaWYg
KGNsaWVudHMtPm51bV9jbGFzc2VzKSB7CisJCQl1bnNpZ25lZCBpbnQgaTsKKworCQkJKmNsYXNz
X3cgPSAoY29uX3cgLSBsZW4pIC8gY2xpZW50cy0+bnVtX2NsYXNzZXM7CisKKwkJCWZvciAoaSA9
IDA7IGkgPCBjbGllbnRzLT5udW1fY2xhc3NlczsgaSsrKSB7CisJCQkJdW5zaWduZWQgaW50IG5h
bWVfbGVuID0KKwkJCQkJc3RybGVuKGNsaWVudHMtPmNsYXNzW2ldLm5hbWUpOworCQkJCXVuc2ln
bmVkIGludCBwYWQgPSAoKmNsYXNzX3cgLSBuYW1lX2xlbikgLyAyOworCisJCQkJbl9zcGFjZXMo
cGFkKTsKKwkJCQlwcmludGYoIiVzIiwgY2xpZW50cy0+Y2xhc3NbaV0ubmFtZSk7CisJCQkJbl9z
cGFjZXMoKmNsYXNzX3cgLSBwYWQgLSBuYW1lX2xlbik7CisJCQkJbGVuICs9IHBhZCArIG5hbWVf
bGVuICsKKwkJCQkgICAgICAgKCpjbGFzc193IC0gcGFkIC0gbmFtZV9sZW4pOworCQkJfQorCQl9
CisKKwkJbl9zcGFjZXMoY29uX3cgLSBsZW4pOworCQlwcmludGYoIlwwMzNbMG1cbiIpOworCX0g
ZWxzZSB7CisJCWlmIChjbGllbnRzLT5udW1fY2xhc3NlcykKKwkJCXBvcHMtPm9wZW5fc3RydWN0
KCJjbGllbnRzIik7CisJfQorCisJcmV0dXJuIGxpbmVzOworfQorCitzdGF0aWMgdm9pZCBjb3Vu
dF9lbmdpbmVzKHN0cnVjdCBjbGllbnRzICpjbGllbnRzLCBzdHJ1Y3QgZW5naW5lcyAqZW5naW5l
cykKK3sKKwl1bnNpZ25lZCBpbnQgaTsKKworCWZvciAoaSA9IDA7IGkgPCBlbmdpbmVzLT5udW1f
ZW5naW5lczsgaSsrKSB7CisJCXN0cnVjdCBlbmdpbmUgKmVuZ2luZSA9IGVuZ2luZV9wdHIoZW5n
aW5lcywgaSk7CisKKwkJY2xpZW50cy0+Y2xhc3NbZW5naW5lLT5jbGFzc10ubnVtX2VuZ2luZXMr
KzsKKwl9Cit9CisKK3N0YXRpYyBpbnQKK3ByaW50X2NsaWVudChzdHJ1Y3QgY2xpZW50ICpjLCBz
dHJ1Y3QgZW5naW5lcyAqZW5naW5lcywgZG91YmxlIHQsIGludCBsaW5lcywKKwkgICAgIGludCBj
b25fdywgaW50IGNvbl9oLCB1bnNpZ25lZCBpbnQgcGVyaW9kX3VzLAorCSAgICAgdW5zaWduZWQg
aW50ICpjbGFzc193KQoreworCXN0cnVjdCBjbGllbnRzICpjbGllbnRzID0gYy0+Y2xpZW50czsK
Kwl1bnNpZ25lZCBpbnQgaTsKKworCWlmIChvdXRwdXRfbW9kZSA9PSBJTlRFUkFDVElWRSkgewor
CQlwcmludGYoIiU1dSUxNnMgIiwgYy0+cGlkLCBjLT5uYW1lKTsKKworCQlmb3IgKGkgPSAwOyBp
IDwgY2xpZW50cy0+bnVtX2NsYXNzZXM7IGkrKykgeworCQkJZG91YmxlIHBjdDsKKworCQkJaWYg
KCFjbGllbnRzLT5jbGFzc1tpXS5udW1fZW5naW5lcykKKwkJCQljb3VudF9lbmdpbmVzKGNsaWVu
dHMsIGVuZ2luZXMpOworCisJCQlwY3QgPSAoZG91YmxlKWMtPnZhbFtpXSAvIHBlcmlvZF91cyAv
IDFlMyAqIDEwMCAvCisJCQkgICAgICBjbGllbnRzLT5jbGFzc1tpXS5udW1fZW5naW5lczsKKwor
CQkJcHJpbnRfcGVyY2VudGFnZV9iYXIocGN0LCAqY2xhc3Nfdyk7CisJCX0KKworCQlwdXRjaGFy
KCdcbicpOworCX0gZWxzZSBpZiAob3V0cHV0X21vZGUgPT0gSlNPTikgeworCQljaGFyIGJ1Zls2
NF07CisKKwkJc25wcmludGYoYnVmLCBzaXplb2YoYnVmKSwgIiV1IiwgYy0+aWQpOworCQlwb3Bz
LT5vcGVuX3N0cnVjdChidWYpOworCisJCV9fanNvbl9hZGRfbWVtYmVyKCJuYW1lIiwgYy0+bmFt
ZSk7CisKKwkJc25wcmludGYoYnVmLCBzaXplb2YoYnVmKSwgIiV1IiwgYy0+cGlkKTsKKwkJX19q
c29uX2FkZF9tZW1iZXIoInBpZCIsIGJ1Zik7CisKKwkJcG9wcy0+b3Blbl9zdHJ1Y3QoImVuZ2lu
ZS1jbGFzc2VzIik7CisKKwkJZm9yIChpID0gMDsgaSA8IGNsaWVudHMtPm51bV9jbGFzc2VzOyBp
KyspIHsKKwkJCWRvdWJsZSBwY3Q7CisKKwkJCXNucHJpbnRmKGJ1Ziwgc2l6ZW9mKGJ1ZiksICIl
cyIsCisJCQkJIGNsaWVudHMtPmNsYXNzW2ldLm5hbWUpOworCQkJcG9wcy0+b3Blbl9zdHJ1Y3Qo
YnVmKTsKKworCQkJcGN0ID0gKGRvdWJsZSljLT52YWxbaV0gLyBwZXJpb2RfdXMgLyAxZTMgKiAx
MDA7CisJCQlzbnByaW50ZihidWYsIHNpemVvZihidWYpLCAiJWYiLCBwY3QpOworCQkJX19qc29u
X2FkZF9tZW1iZXIoImJ1c3kiLCBidWYpOworCisJCQlfX2pzb25fYWRkX21lbWJlcigidW5pdCIs
ICIlIik7CisKKwkJCXBvcHMtPmNsb3NlX3N0cnVjdCgpOworCQl9CisKKwkJcG9wcy0+Y2xvc2Vf
c3RydWN0KCk7CisJCXBvcHMtPmNsb3NlX3N0cnVjdCgpOworCX0KKworCXJldHVybiBsaW5lczsK
K30KKworc3RhdGljIGludAorcHJpbnRfY2xpZW50c19mb290ZXIoc3RydWN0IGNsaWVudHMgKmNs
aWVudHMsIGRvdWJsZSB0LAorCQkgICAgIGludCBsaW5lcywgaW50IGNvbl93LCBpbnQgY29uX2gp
Cit7CisJaWYgKG91dHB1dF9tb2RlID09IElOVEVSQUNUSVZFKSB7CisJCWlmIChsaW5lcysrIDwg
Y29uX2gpCisJCQlwcmludGYoIlxuIik7CisJfSBlbHNlIHsKKwkJaWYgKGNsaWVudHMtPm51bV9j
bGFzc2VzKQorCQkJcG9wcy0+Y2xvc2Vfc3RydWN0KCk7CisJfQorCisJcmV0dXJuIGxpbmVzOwor
fQorCiBzdGF0aWMgYm9vbCBzdG9wX3RvcDsKIAogc3RhdGljIHZvaWQgc2lnaW50X2hhbmRsZXIo
aW50ICBzaWcpCkBAIC0xMjUyLDYgKzE3ODgsNyBAQCBzdGF0aWMgdm9pZCBzaWdpbnRfaGFuZGxl
cihpbnQgIHNpZykKIGludCBtYWluKGludCBhcmdjLCBjaGFyICoqYXJndikKIHsKIAl1bnNpZ25l
ZCBpbnQgcGVyaW9kX3VzID0gREVGQVVMVF9QRVJJT0RfTVMgKiAxMDAwOworCXN0cnVjdCBjbGll
bnRzICpjbGllbnRzID0gTlVMTDsKIAlpbnQgY29uX3cgPSAtMSwgY29uX2ggPSAtMTsKIAljaGFy
ICpvdXRwdXRfcGF0aCA9IE5VTEw7CiAJc3RydWN0IGVuZ2luZXMgKmVuZ2luZXM7CkBAIC0xMzM1
LDEyICsxODcyLDE3IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyICoqYXJndikKIAkJcmV0dXJu
IDE7CiAJfQogCisJY2xpZW50cyA9IGluaXRfY2xpZW50cygpOworCiAJcG11X3NhbXBsZShlbmdp
bmVzKTsKKwlzY2FuX2NsaWVudHMoY2xpZW50cyk7CiAKIAl3aGlsZSAoIXN0b3BfdG9wKSB7CiAJ
CWJvb2wgY29uc3VtZWQgPSBmYWxzZTsKLQkJaW50IGxpbmVzID0gMDsKKwkJaW50IGosIGxpbmVz
ID0gMDsKKwkJdW5zaWduZWQgaW50IGNsYXNzX3c7CiAJCXN0cnVjdCB3aW5zaXplIHdzOworCQlz
dHJ1Y3QgY2xpZW50ICpjOwogCQlkb3VibGUgdDsKIAogCQkvKiBVcGRhdGUgdGVybWluYWwgc2l6
ZS4gKi8KQEAgLTEzNTQsMTAgKzE4OTYsMTggQEAgaW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKiph
cmd2KQogCQlwbXVfc2FtcGxlKGVuZ2luZXMpOwogCQl0ID0gKGRvdWJsZSkoZW5naW5lcy0+dHMu
Y3VyIC0gZW5naW5lcy0+dHMucHJldikgLyAxZTk7CiAKKwkJc2Nhbl9jbGllbnRzKGNsaWVudHMp
OworCQlpZiAoY2xpZW50cykgeworCQkJcXNvcnQoJmNsaWVudHMtPmNsaWVudCwgY2xpZW50cy0+
bnVtX2NsaWVudHMsCisJCQkgICAgICBzaXplb2YoY2xpZW50cy0+Y2xpZW50KSwgY21wKTsKKwkJ
fQorCiAJCWlmIChzdG9wX3RvcCkKIAkJCWJyZWFrOwogCiAJCXdoaWxlICghY29uc3VtZWQpIHsK
KwkJCXBvcHMtPm9wZW5fc3RydWN0KE5VTEwpOworCiAJCQlsaW5lcyA9IHByaW50X2hlYWRlcihl
bmdpbmVzLCB0LCBsaW5lcywgY29uX3csIGNvbl9oLAogCQkJCQkgICAgICZjb25zdW1lZCk7CiAK
QEAgLTEzNzYsNiArMTkyNiwzNCBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqKmFyZ3YpCiAK
IAkJCWxpbmVzID0gcHJpbnRfZW5naW5lc19mb290ZXIoZW5naW5lcywgdCwgbGluZXMsIGNvbl93
LAogCQkJCQkJICAgICBjb25faCk7CisKKwkJCWlmIChjbGllbnRzKSB7CisJCQkJbGluZXMgPSBw
cmludF9jbGllbnRzX2hlYWRlcihjbGllbnRzLCBsaW5lcywKKwkJCQkJCQkgICAgIGNvbl93LCBj
b25faCwKKwkJCQkJCQkgICAgICZjbGFzc193KTsKKworCQkJCWZvcl9lYWNoX2NsaWVudChjbGll
bnRzLCBjLCBqKSB7CisJCQkJCWlmIChsaW5lcysrID4gY29uX2gpCisJCQkJCQlicmVhazsKKwor
CQkJCQlhc3NlcnQoYy0+c3RhdHVzICE9IFBST0JFKTsKKwkJCQkJaWYgKGMtPnN0YXR1cyAhPSBB
TElWRSkKKwkJCQkJCWJyZWFrOworCisJCQkJCWlmIChjLT5zYW1wbGVzIDwgMikKKwkJCQkJCWNv
bnRpbnVlOworCisJCQkJCWxpbmVzID0gcHJpbnRfY2xpZW50KGMsIGVuZ2luZXMsIHQsCisJCQkJ
CQkJICAgICBsaW5lcywgY29uX3csCisJCQkJCQkJICAgICBjb25faCwgcGVyaW9kX3VzLAorCQkJ
CQkJCSAgICAgJmNsYXNzX3cpOworCQkJCX0KKworCQkJCWxpbmVzID0gcHJpbnRfY2xpZW50c19m
b290ZXIoY2xpZW50cywgdCwgbGluZXMsCisJCQkJCQkJICAgICBjb25fdywgY29uX2gpOworCQkJ
fQorCisJCQlwb3BzLT5jbG9zZV9zdHJ1Y3QoKTsKIAkJfQogCiAJCWlmIChzdG9wX3RvcCkKLS0g
CjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
