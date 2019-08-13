Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F168AFDC
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 08:20:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6218F6E06D;
	Tue, 13 Aug 2019 06:20:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92A1A6E059;
 Tue, 13 Aug 2019 06:20:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17976910-1500050 
 for multiple; Tue, 13 Aug 2019 07:20:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Aug 2019 07:20:10 +0100
Message-Id: <20190813062016.7870-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190813062016.7870-1-chris@chris-wilson.co.uk>
References: <20190813062016.7870-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 3/9] i915/gem_mmap_gtt: Test mmap_offset
 lifetime
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2xvc2luZyB0aGUgb2JqZWN0IG9uIGFub3RoZXIgZmlsZSBzaG91bGQgbm90IGFmZmVjdCB0aGUg
bG9jYWwKbW1hcF9vZmZzZXQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KQ2M6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxp
bnV4LmludGVsLmNvbT4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jIHwgNDAgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNDAgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX21tYXBfZ3R0LmMgYi90ZXN0
cy9pOTE1L2dlbV9tbWFwX2d0dC5jCmluZGV4IDZmM2E5YzM2ZS4uOGVmZjkxODUwIDEwMDY0NAot
LS0gYS90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jCisrKyBiL3Rlc3RzL2k5MTUvZ2VtX21tYXBf
Z3R0LmMKQEAgLTMyMiw2ICszMjIsNDQgQEAgdGVzdF9wZl9ub25ibG9jayhpbnQgaTkxNSkKIAlp
Z3Rfc3Bpbl9mcmVlKGk5MTUsIHNwaW4pOwogfQogCitzdGF0aWMgdm9pZAordGVzdF9pc29sYXRp
b24oaW50IGk5MTUpCit7CisJc3RydWN0IGRybV9pOTE1X2dlbV9tbWFwX2d0dCBtbWFwX2FyZzsK
KwlpbnQgQSA9IGdlbV9yZW9wZW5fZHJpdmVyKGk5MTUpOworCWludCBCID0gZ2VtX3Jlb3Blbl9k
cml2ZXIoaTkxNSk7CisJdWludDY0X3Qgb2Zmc2V0X2EsIG9mZnNldF9iOworCXVpbnQzMl90IGEs
IGI7CisJdm9pZCAqcHRyOworCisJYSA9IGdlbV9jcmVhdGUoQSwgNDA5Nik7CisJYiA9IGdlbV9v
cGVuKEIsIGdlbV9mbGluayhBLCBhKSk7CisKKwltbWFwX2FyZy5oYW5kbGUgPSBhOworCWRvX2lv
Y3RsKEEsIERSTV9JT0NUTF9JOTE1X0dFTV9NTUFQX0dUVCwgJm1tYXBfYXJnKTsKKwlvZmZzZXRf
YSA9IG1tYXBfYXJnLm9mZnNldDsKKworCW1tYXBfYXJnLmhhbmRsZSA9IGI7CisJZG9faW9jdGwo
QiwgRFJNX0lPQ1RMX0k5MTVfR0VNX01NQVBfR1RULCAmbW1hcF9hcmcpOworCW9mZnNldF9iID0g
bW1hcF9hcmcub2Zmc2V0OworCisJaWd0X2luZm8oIkE6IHtmZDolZCwgaGFuZGxlOiVkLCBvZmZz
ZXQ6JSJQUkl4NjQifVxuIiwKKwkJIEEsIGEsIG9mZnNldF9hKTsKKwlpZ3RfaW5mbygiQjoge2Zk
OiVkLCBoYW5kbGU6JWQsIG9mZnNldDolIlBSSXg2NCJ9XG4iLAorCQkgQiwgYiwgb2Zmc2V0X2Ip
OworCisJY2xvc2UoQik7CisKKwlwdHIgPSBtbWFwNjQoMCwgNDA5NiwgUFJPVF9SRUFELCBNQVBf
U0hBUkVELCBBLCBvZmZzZXRfYSk7CisJaWd0X2Fzc2VydChwdHIgIT0gTUFQX0ZBSUxFRCk7CisJ
bXVubWFwKHB0ciwgNDA5Nik7CisKKwljbG9zZShBKTsKKworCXB0ciA9IG1tYXA2NCgwLCA0MDk2
LCBQUk9UX1JFQUQsIE1BUF9TSEFSRUQsIEEsIG9mZnNldF9hKTsKKwlpZ3RfYXNzZXJ0KHB0ciA9
PSBNQVBfRkFJTEVEKTsKK30KKwogc3RhdGljIHZvaWQKIHRlc3Rfd3JpdGVfZ3R0KGludCBmZCkK
IHsKQEAgLTk0NSw2ICs5ODMsOCBAQCBpZ3RfbWFpbgogCQl0ZXN0X3dyaXRlX2NwdV9yZWFkX2d0
dChmZCk7CiAJaWd0X3N1YnRlc3QoImJhc2ljLXdjIikKIAkJdGVzdF93YyhmZCk7CisJaWd0X3N1
YnRlc3QoImlzb2xhdGlvbiIpCisJCXRlc3RfaXNvbGF0aW9uKGZkKTsKIAlpZ3Rfc3VidGVzdCgi
cGYtbm9uYmxvY2siKQogCQl0ZXN0X3BmX25vbmJsb2NrKGZkKTsKIAotLSAKMi4yMy4wLnJjMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
