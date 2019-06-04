Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F31434612
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 14:00:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4591C8976D;
	Tue,  4 Jun 2019 12:00:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D4FF8975F
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 12:00:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16787578-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Jun 2019 13:00:25 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 13:00:20 +0100
Message-Id: <20190604120022.20472-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915/selftests: Flush partial-tiling
 object once
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

V2Ugb25seSBuZWVkIHRvIGZsdXNoIHRoZSBvYmplY3Qgb25jZSBwcmlvciB0byBzdGFydGluZyB0
aGUgcGFydGlhbAp0aWxpbmcgdGVzdCBhcyBpbnNpZGUgdGhlIHRlc3Qgd2UgZXhwbGljaXRseSBt
YWludGFpbiBjb2hlcmVuY3kuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxh
aHRpbmVuQGxpbnV4LmludGVsLmNvbT4KLS0tCiAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9p
OTE1X2dlbV9tbWFuLmMgICAgfCAyMSArKysrKysrKy0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgOSBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jCmluZGV4IDVkYjMzMjc5NThm
Yi4uYjkyODA5NDE4NzI5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2Vs
ZnRlc3RzL2k5MTVfZ2VtX21tYW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2Vs
ZnRlc3RzL2k5MTVfZ2VtX21tYW4uYwpAQCAtOTgsNiArOTgsMTQgQEAgc3RhdGljIGludCBjaGVj
a19wYXJ0aWFsX21hcHBpbmcoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAlHRU1f
QlVHX09OKGk5MTVfZ2VtX29iamVjdF9nZXRfdGlsaW5nKG9iaikgIT0gdGlsZS0+dGlsaW5nKTsK
IAlHRU1fQlVHX09OKGk5MTVfZ2VtX29iamVjdF9nZXRfc3RyaWRlKG9iaikgIT0gdGlsZS0+c3Ry
aWRlKTsKIAorCWk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaik7CisJZXJyID0gaTkxNV9nZW1fb2Jq
ZWN0X3NldF90b19ndHRfZG9tYWluKG9iaiwgdHJ1ZSk7CisJaTkxNV9nZW1fb2JqZWN0X3VubG9j
ayhvYmopOworCWlmIChlcnIpIHsKKwkJcHJfZXJyKCJGYWlsZWQgdG8gZmx1c2ggdG8gR1RUIHdy
aXRlIGRvbWFpbjsgZXJyPSVkXG4iLCBlcnIpOworCQlyZXR1cm4gZXJyOworCX0KKwogCWZvcl9l
YWNoX3ByaW1lX251bWJlcl9mcm9tKHBhZ2UsIDEsIG5wYWdlcykgewogCQlzdHJ1Y3QgaTkxNV9n
Z3R0X3ZpZXcgdmlldyA9CiAJCQljb21wdXRlX3BhcnRpYWxfdmlldyhvYmosIHBhZ2UsIE1JTl9D
SFVOS19QQUdFUyk7CkBAIC0xMTAsMTUgKzExOCw2IEBAIHN0YXRpYyBpbnQgY2hlY2tfcGFydGlh
bF9tYXBwaW5nKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJCUdFTV9CVUdfT04o
dmlldy5wYXJ0aWFsLnNpemUgPiBucmVhbCk7CiAJCWNvbmRfcmVzY2hlZCgpOwogCi0JCWk5MTVf
Z2VtX29iamVjdF9sb2NrKG9iaik7Ci0JCWVyciA9IGk5MTVfZ2VtX29iamVjdF9zZXRfdG9fZ3R0
X2RvbWFpbihvYmosIHRydWUpOwotCQlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7Ci0JCWlm
IChlcnIpIHsKLQkJCXByX2VycigiRmFpbGVkIHRvIGZsdXNoIHRvIEdUVCB3cml0ZSBkb21haW47
IGVycj0lZFxuIiwKLQkJCSAgICAgICBlcnIpOwotCQkJcmV0dXJuIGVycjsKLQkJfQotCiAJCXZt
YSA9IGk5MTVfZ2VtX29iamVjdF9nZ3R0X3BpbihvYmosICZ2aWV3LCAwLCAwLCBQSU5fTUFQUEFC
TEUpOwogCQlpZiAoSVNfRVJSKHZtYSkpIHsKIAkJCXByX2VycigiRmFpbGVkIHRvIHBpbiBwYXJ0
aWFsIHZpZXc6IG9mZnNldD0lbHU7IGVycj0lZFxuIiwKQEAgLTE0NCw5ICsxNDMsNyBAQCBzdGF0
aWMgaW50IGNoZWNrX3BhcnRpYWxfbWFwcGluZyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqLAogCQlpZiAob2Zmc2V0ID49IG9iai0+YmFzZS5zaXplKQogCQkJY29udGludWU7CiAKLQkJ
aTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqKTsKLQkJaTkxNV9nZW1fb2JqZWN0X2ZsdXNoX3dyaXRl
X2RvbWFpbihvYmosIH5JOTE1X0dFTV9ET01BSU5fQ1BVKTsKLQkJaTkxNV9nZW1fb2JqZWN0X3Vu
bG9jayhvYmopOworCQlpOTE1X2dlbV9mbHVzaF9nZ3R0X3dyaXRlcyh0b19pOTE1KG9iai0+YmFz
ZS5kZXYpKTsKIAogCQlwID0gaTkxNV9nZW1fb2JqZWN0X2dldF9wYWdlKG9iaiwgb2Zmc2V0ID4+
IFBBR0VfU0hJRlQpOwogCQljcHUgPSBrbWFwKHApICsgb2Zmc2V0X2luX3BhZ2Uob2Zmc2V0KTsK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
