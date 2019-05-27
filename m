Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 817D02B055
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 10:36:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56EFE8977A;
	Mon, 27 May 2019 08:36:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 464618977A;
 Mon, 27 May 2019 08:36:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16691904-1500050 
 for multiple; Mon, 27 May 2019 09:36:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 May 2019 09:36:16 +0100
Message-Id: <20190527083616.27372-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] prime_vgem: Fix typo in checking for
 invalid engines
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

TW92ZSB0aGUgc3RyYXkgJyknIGZyb20KCglnZW1fY2FuX3N0b3JlX2R3b3JkKGV4ZWNfaWQpIHwg
ZXhlY19mbGFncwoKdG8KCglnZW1fY2FuX3N0b3JlX2R3b3JkKGV4ZWNfaWQgfCBleGVjX2ZsYWdz
KQoKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTExMDc2NApTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KLS0tCiB0ZXN0cy9wcmltZV92Z2VtLmMgfCA4ICsrKystLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL3By
aW1lX3ZnZW0uYyBiL3Rlc3RzL3ByaW1lX3ZnZW0uYwppbmRleCAwOWUzMzczYmUuLjY5YWU4Yzli
MCAxMDA2NDQKLS0tIGEvdGVzdHMvcHJpbWVfdmdlbS5jCisrKyBiL3Rlc3RzL3ByaW1lX3ZnZW0u
YwpAQCAtODQ1LDcgKzg0NSw3IEBAIGlndF9tYWluCiAJCQkgICAgICBlLT5leGVjX2lkID09IDAg
PyAiYmFzaWMtIiA6ICIiLAogCQkJICAgICAgZS0+bmFtZSkgewogCQkJZ2VtX3JlcXVpcmVfcmlu
ZyhpOTE1LCBlLT5leGVjX2lkIHwgZS0+ZmxhZ3MpOwotCQkJaWd0X3JlcXVpcmUoZ2VtX2Nhbl9z
dG9yZV9kd29yZChpOTE1LCBlLT5leGVjX2lkKSB8IGUtPmZsYWdzKTsKKwkJCWlndF9yZXF1aXJl
KGdlbV9jYW5fc3RvcmVfZHdvcmQoaTkxNSwgZS0+ZXhlY19pZCB8IGUtPmZsYWdzKSk7CiAKIAkJ
CWdlbV9xdWllc2NlbnRfZ3B1KGk5MTUpOwogCQkJdGVzdF9zeW5jKGk5MTUsIHZnZW0sIGUtPmV4
ZWNfaWQsIGUtPmZsYWdzKTsKQEAgLTg1Nyw3ICs4NTcsNyBAQCBpZ3RfbWFpbgogCQkJICAgICAg
ZS0+ZXhlY19pZCA9PSAwID8gImJhc2ljLSIgOiAiIiwKIAkJCSAgICAgIGUtPm5hbWUpIHsKIAkJ
CWdlbV9yZXF1aXJlX3JpbmcoaTkxNSwgZS0+ZXhlY19pZCB8IGUtPmZsYWdzKTsKLQkJCWlndF9y
ZXF1aXJlKGdlbV9jYW5fc3RvcmVfZHdvcmQoaTkxNSwgZS0+ZXhlY19pZCkgfCBlLT5mbGFncyk7
CisJCQlpZ3RfcmVxdWlyZShnZW1fY2FuX3N0b3JlX2R3b3JkKGk5MTUsIGUtPmV4ZWNfaWQgfCBl
LT5mbGFncykpOwogCiAJCQlnZW1fcXVpZXNjZW50X2dwdShpOTE1KTsKIAkJCXRlc3RfYnVzeShp
OTE1LCB2Z2VtLCBlLT5leGVjX2lkLCBlLT5mbGFncyk7CkBAIC04NjksNyArODY5LDcgQEAgaWd0
X21haW4KIAkJCSAgICAgIGUtPmV4ZWNfaWQgPT0gMCA/ICJiYXNpYy0iIDogIiIsCiAJCQkgICAg
ICBlLT5uYW1lKSB7CiAJCQlnZW1fcmVxdWlyZV9yaW5nKGk5MTUsIGUtPmV4ZWNfaWQgfCBlLT5m
bGFncyk7Ci0JCQlpZ3RfcmVxdWlyZShnZW1fY2FuX3N0b3JlX2R3b3JkKGk5MTUsIGUtPmV4ZWNf
aWQpIHwgZS0+ZmxhZ3MpOworCQkJaWd0X3JlcXVpcmUoZ2VtX2Nhbl9zdG9yZV9kd29yZChpOTE1
LCBlLT5leGVjX2lkIHwgZS0+ZmxhZ3MpKTsKIAogCQkJZ2VtX3F1aWVzY2VudF9ncHUoaTkxNSk7
CiAJCQl0ZXN0X3dhaXQoaTkxNSwgdmdlbSwgZS0+ZXhlY19pZCwgZS0+ZmxhZ3MpOwpAQCAtODky
LDcgKzg5Miw3IEBAIGlndF9tYWluCiAJCQkJCWUtPmV4ZWNfaWQgPT0gMCA/ICJiYXNpYy0iIDog
IiIsCiAJCQkJCWUtPm5hbWUpIHsKIAkJCQlnZW1fcmVxdWlyZV9yaW5nKGk5MTUsIGUtPmV4ZWNf
aWQgfCBlLT5mbGFncyk7Ci0JCQkJaWd0X3JlcXVpcmUoZ2VtX2Nhbl9zdG9yZV9kd29yZChpOTE1
LCBlLT5leGVjX2lkKSB8IGUtPmZsYWdzKTsKKwkJCQlpZ3RfcmVxdWlyZShnZW1fY2FuX3N0b3Jl
X2R3b3JkKGk5MTUsIGUtPmV4ZWNfaWQgfCBlLT5mbGFncykpOwogCiAJCQkJZ2VtX3F1aWVzY2Vu
dF9ncHUoaTkxNSk7CiAJCQkJdGVzdF9mZW5jZV93YWl0KGk5MTUsIHZnZW0sIGUtPmV4ZWNfaWQs
IGUtPmZsYWdzKTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
