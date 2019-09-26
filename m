Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A71F4BF3C6
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 15:10:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3C076ED1A;
	Thu, 26 Sep 2019 13:10:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 488BB6ED1A;
 Thu, 26 Sep 2019 13:10:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18627244-1500050 
 for multiple; Thu, 26 Sep 2019 14:10:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Sep 2019 14:10:06 +0100
Message-Id: <20190926131006.8506-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/pm_rpm: Include breadcrumbs in the
 kernel log before i915.ko reloads
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

TWFrZSBpdCBlYXNpZXIgdG8gZGlzY2VybiBpbiB0aGUgbm9pc2Ugb2YgdGhlIG1vZHVsZSByZWxv
YWQgd2hlcmUgZWFjaApiZWdpbnMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KQ2M6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29t
PgotLS0KIHRlc3RzL2k5MTUvaTkxNV9wbV9ycG0uYyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQs
IDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvaTkxNV9wbV9ycG0uYyBi
L3Rlc3RzL2k5MTUvaTkxNV9wbV9ycG0uYwppbmRleCBhMmJkYWJlZTIuLmY1ZjgxM2MzZCAxMDA2
NDQKLS0tIGEvdGVzdHMvaTkxNS9pOTE1X3BtX3JwbS5jCisrKyBiL3Rlc3RzL2k5MTUvaTkxNV9w
bV9ycG0uYwpAQCAtMjExMyw2ICsyMTEzLDggQEAgaWd0X21haW5fYXJncygiIiwgbG9uZ19vcHRp
b25zLCBoZWxwX3N0ciwgb3B0X2hhbmRsZXIsIE5VTEwpCiAJaWd0X3N1YnRlc3QoIm1vZHVsZS1y
ZWxvYWQiKSB7CiAJCWlndF9kZWJ1ZygiUmVsb2FkIHcvbyBkaXNwbGF5XG4iKTsKIAkJaWd0X2k5
MTVfZHJpdmVyX3VubG9hZCgpOworCisJCWlndF9rbXNnKEtNU0dfSU5GTyAiUmVsb2FkaW5nIGk5
MTUgdy9vIGRpc3BsYXlcbiIpOwogCQlpZ3RfYXNzZXJ0X2VxKGlndF9pOTE1X2RyaXZlcl9sb2Fk
KCJkaXNhYmxlX2Rpc3BsYXk9MSBtbWlvX2RlYnVnPS0xIiksIDApOwogCiAJCWlndF9hc3NlcnQo
c2V0dXBfZW52aXJvbm1lbnQoKSk7CkBAIC0yMTIxLDYgKzIxMjMsOCBAQCBpZ3RfbWFpbl9hcmdz
KCIiLCBsb25nX29wdGlvbnMsIGhlbHBfc3RyLCBvcHRfaGFuZGxlciwgTlVMTCkKIAogCQlpZ3Rf
ZGVidWcoIlJlbG9hZCBhcyBub3JtYWxcbiIpOwogCQlpZ3RfaTkxNV9kcml2ZXJfdW5sb2FkKCk7
CisKKwkJaWd0X2ttc2coS01TR19JTkZPICJSZWxvYWRpbmcgaTkxNSBhcyBub3JtYWxcbiIpOwog
CQlpZ3RfYXNzZXJ0X2VxKGlndF9pOTE1X2RyaXZlcl9sb2FkKCJtbWlvX2RlYnVnPS0xIiksIDAp
OwogCiAJCWlndF9hc3NlcnQoc2V0dXBfZW52aXJvbm1lbnQoKSk7Ci0tIAoyLjIzLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
