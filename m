Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EAD331A0
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 16:02:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9504B88FE2;
	Mon,  3 Jun 2019 14:02:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EE7788F61
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2019 14:02:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16775782-1500050 
 for multiple; Mon, 03 Jun 2019 14:59:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Jun 2019 14:58:58 +0100
Message-Id: <20190603135910.15979-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190603135910.15979-1-chris@chris-wilson.co.uk>
References: <20190603135910.15979-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/15] drm/i915/selftests: Flush partial-tiling
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
cmlzLXdpbHNvbi5jby51az4KLS0tCiAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dl
bV9tbWFuLmMgICAgfCAyMSArKysrKysrKy0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBp
bnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jCmluZGV4IDVkYjMzMjc5NThmYi4uYjky
ODA5NDE4NzI5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3Rz
L2k5MTVfZ2VtX21tYW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3Rz
L2k5MTVfZ2VtX21tYW4uYwpAQCAtOTgsNiArOTgsMTQgQEAgc3RhdGljIGludCBjaGVja19wYXJ0
aWFsX21hcHBpbmcoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAlHRU1fQlVHX09O
KGk5MTVfZ2VtX29iamVjdF9nZXRfdGlsaW5nKG9iaikgIT0gdGlsZS0+dGlsaW5nKTsKIAlHRU1f
QlVHX09OKGk5MTVfZ2VtX29iamVjdF9nZXRfc3RyaWRlKG9iaikgIT0gdGlsZS0+c3RyaWRlKTsK
IAorCWk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaik7CisJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3Nl
dF90b19ndHRfZG9tYWluKG9iaiwgdHJ1ZSk7CisJaTkxNV9nZW1fb2JqZWN0X3VubG9jayhvYmop
OworCWlmIChlcnIpIHsKKwkJcHJfZXJyKCJGYWlsZWQgdG8gZmx1c2ggdG8gR1RUIHdyaXRlIGRv
bWFpbjsgZXJyPSVkXG4iLCBlcnIpOworCQlyZXR1cm4gZXJyOworCX0KKwogCWZvcl9lYWNoX3By
aW1lX251bWJlcl9mcm9tKHBhZ2UsIDEsIG5wYWdlcykgewogCQlzdHJ1Y3QgaTkxNV9nZ3R0X3Zp
ZXcgdmlldyA9CiAJCQljb21wdXRlX3BhcnRpYWxfdmlldyhvYmosIHBhZ2UsIE1JTl9DSFVOS19Q
QUdFUyk7CkBAIC0xMTAsMTUgKzExOCw2IEBAIHN0YXRpYyBpbnQgY2hlY2tfcGFydGlhbF9tYXBw
aW5nKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJCUdFTV9CVUdfT04odmlldy5w
YXJ0aWFsLnNpemUgPiBucmVhbCk7CiAJCWNvbmRfcmVzY2hlZCgpOwogCi0JCWk5MTVfZ2VtX29i
amVjdF9sb2NrKG9iaik7Ci0JCWVyciA9IGk5MTVfZ2VtX29iamVjdF9zZXRfdG9fZ3R0X2RvbWFp
bihvYmosIHRydWUpOwotCQlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7Ci0JCWlmIChlcnIp
IHsKLQkJCXByX2VycigiRmFpbGVkIHRvIGZsdXNoIHRvIEdUVCB3cml0ZSBkb21haW47IGVycj0l
ZFxuIiwKLQkJCSAgICAgICBlcnIpOwotCQkJcmV0dXJuIGVycjsKLQkJfQotCiAJCXZtYSA9IGk5
MTVfZ2VtX29iamVjdF9nZ3R0X3BpbihvYmosICZ2aWV3LCAwLCAwLCBQSU5fTUFQUEFCTEUpOwog
CQlpZiAoSVNfRVJSKHZtYSkpIHsKIAkJCXByX2VycigiRmFpbGVkIHRvIHBpbiBwYXJ0aWFsIHZp
ZXc6IG9mZnNldD0lbHU7IGVycj0lZFxuIiwKQEAgLTE0NCw5ICsxNDMsNyBAQCBzdGF0aWMgaW50
IGNoZWNrX3BhcnRpYWxfbWFwcGluZyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAog
CQlpZiAob2Zmc2V0ID49IG9iai0+YmFzZS5zaXplKQogCQkJY29udGludWU7CiAKLQkJaTkxNV9n
ZW1fb2JqZWN0X2xvY2sob2JqKTsKLQkJaTkxNV9nZW1fb2JqZWN0X2ZsdXNoX3dyaXRlX2RvbWFp
bihvYmosIH5JOTE1X0dFTV9ET01BSU5fQ1BVKTsKLQkJaTkxNV9nZW1fb2JqZWN0X3VubG9jayhv
YmopOworCQlpOTE1X2dlbV9mbHVzaF9nZ3R0X3dyaXRlcyh0b19pOTE1KG9iai0+YmFzZS5kZXYp
KTsKIAogCQlwID0gaTkxNV9nZW1fb2JqZWN0X2dldF9wYWdlKG9iaiwgb2Zmc2V0ID4+IFBBR0Vf
U0hJRlQpOwogCQljcHUgPSBrbWFwKHApICsgb2Zmc2V0X2luX3BhZ2Uob2Zmc2V0KTsKLS0gCjIu
MjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
