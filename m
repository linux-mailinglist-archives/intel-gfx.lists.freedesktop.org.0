Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFD6BE626
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 22:09:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 498E66F8DA;
	Wed, 25 Sep 2019 20:09:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2A54E6F8DD;
 Wed, 25 Sep 2019 20:09:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 23AA5A47E3;
 Wed, 25 Sep 2019 20:09:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 25 Sep 2019 20:09:30 -0000
Message-ID: <20190925200930.13735.2434@emeril.freedesktop.org>
References: <20190925193446.26007-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190925193446.26007-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/selftests=3A_Exercise_concurrent_submission_to_all_?=
 =?utf-8?q?engines?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBFeGVyY2lz
ZSBjb25jdXJyZW50IHN1Ym1pc3Npb24gdG8gYWxsIGVuZ2luZXMKVVJMICAgOiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY3MjM3LwpTdGF0ZSA6IHdhcm5pbmcKCj09
IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKOTJjYzMwOWU4YmU1
IGRybS9pOTE1L3NlbGZ0ZXN0czogRXhlcmNpc2UgY29uY3VycmVudCBzdWJtaXNzaW9uIHRvIGFs
bCBlbmdpbmVzCi06MjQ6IFdBUk5JTkc6TElORV9TUEFDSU5HOiBNaXNzaW5nIGEgYmxhbmsgbGlu
ZSBhZnRlciBkZWNsYXJhdGlvbnMKIzI0OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxm
dGVzdHMvaTkxNV9yZXF1ZXN0LmM6MTA2ODoKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUgPSBhcmc7CisJSUdUX1RJTUVPVVQoZW5kX3RpbWUpOwoKLTo2MDogV0FSTklORzpMSU5FX1NQ
QUNJTkc6IE1pc3NpbmcgYSBibGFuayBsaW5lIGFmdGVyIGRlY2xhcmF0aW9ucwojNjA6IEZJTEU6
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3JlcXVlc3QuYzoxMTA0OgorCXN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IGFyZzsKKwlJR1RfVElNRU9VVChlbmRfdGlt
ZSk7CgotOjg3OiBXQVJOSU5HOkxJTkVfU1BBQ0lORzogTWlzc2luZyBhIGJsYW5rIGxpbmUgYWZ0
ZXIgZGVjbGFyYXRpb25zCiM4NzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
L2k5MTVfcmVxdWVzdC5jOjExMzE6CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBh
cmc7CisJc3RhdGljIGludCAoKiBjb25zdCBmdW5jW10pKHZvaWQgKmFyZykgPSB7CgotOjk0OiBX
QVJOSU5HOkxJTkVfU1BBQ0lORzogTWlzc2luZyBhIGJsYW5rIGxpbmUgYWZ0ZXIgZGVjbGFyYXRp
b25zCiM5NDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfcmVxdWVz
dC5jOjExMzg6CisJZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7CisJaW50ICgqIGNvbnN0ICpmbiko
dm9pZCAqYXJnKTsKCnRvdGFsOiAwIGVycm9ycywgNCB3YXJuaW5ncywgMCBjaGVja3MsIDEzNyBs
aW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
