Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E38AE82D91
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 10:11:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 410D56E32A;
	Tue,  6 Aug 2019 08:11:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93A2489D64;
 Tue,  6 Aug 2019 08:10:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17900653-1500050 
 for multiple; Tue, 06 Aug 2019 09:10:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Aug 2019 09:10:52 +0100
Message-Id: <20190806081052.11564-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_persistent_relocs: Don't call
 DROP_IDLE in the middle of submitting
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

VG8gYWN0dWFsbHkgRFJPUF9JRExFIG1lYW5zIHRoYXQgd2UgaGF2ZSB0byB3YWl0IGZvciBvbmdv
aW5nIHN1Ym1pc3Npb24sCmFuZCBhbnkgbmV3IGNvbmN1cnJlbnRseSBzdWJtaXR0ZWQsIGkuZS4g
aXQgc2hvdWxkIG9ubHkgYmUgY2FsbGVkIGR1cmluZwpzaW5nbGUtdGhyZWFkZWQgc3VibWlzc2lv
biB0byBlbnN1cmUgdGhlIEdQVSBpcyBpZGxlIGJlZm9yZSB0aGUgbmV3CmFjdGlvbi4KClNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIHRl
c3RzL2k5MTUvZ2VtX3BlcnNpc3RlbnRfcmVsb2NzLmMgfCA5ICsrKysrKy0tLQogMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90ZXN0
cy9pOTE1L2dlbV9wZXJzaXN0ZW50X3JlbG9jcy5jIGIvdGVzdHMvaTkxNS9nZW1fcGVyc2lzdGVu
dF9yZWxvY3MuYwppbmRleCA0NTJmZTY4NmUuLjE0Yjg2ZTExZCAxMDA2NDQKLS0tIGEvdGVzdHMv
aTkxNS9nZW1fcGVyc2lzdGVudF9yZWxvY3MuYworKysgYi90ZXN0cy9pOTE1L2dlbV9wZXJzaXN0
ZW50X3JlbG9jcy5jCkBAIC0yODEsMTAgKzI4MSwxMyBAQCBzdGF0aWMgdm9pZCBkb19mb3JrZWRf
dGVzdChpbnQgZmQsIHVuc2lnbmVkIGZsYWdzKQogCXN0cnVjdCBpZ3RfaGVscGVyX3Byb2Nlc3Mg
dGhyYXNoZXIgPSB7fTsKIAogCWlmIChmbGFncyAmIChUSFJBU0ggfCBUSFJBU0hfSU5BQ1RJVkUp
KSB7Ci0JCXVpbnQ2NF90IHZhbCA9IChmbGFncyAmIFRIUkFTSF9JTkFDVElWRSkgPwotCQkJCShE
Uk9QX1JFVElSRSB8IERST1BfQk9VTkQgfCBEUk9QX1VOQk9VTkQpIDogRFJPUF9BTEw7Ci0KIAkJ
aWd0X2ZvcmtfaGVscGVyKCZ0aHJhc2hlcikgeworCQkJdWludDY0X3QgdmFsOworCisJCQl2YWwg
PSBEUk9QX1JFVElSRSB8IERST1BfQk9VTkQgfCBEUk9QX1VOQk9VTkQ7CisJCQlpZiAoIShmbGFn
cyAmIFRIUkFTSF9JTkFDVElWRSkpCisJCQkJdmFsIHw9IERST1BfQUNUSVZFOworCiAJCQl3aGls
ZSAoMSkgewogCQkJCXVzbGVlcCgxMDAwKTsKIAkJCQlpZ3RfZHJvcF9jYWNoZXNfc2V0KGZkLCB2
YWwpOwotLSAKMi4yMy4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
