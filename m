Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8DC10FD81
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 13:18:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7B6B6E491;
	Tue,  3 Dec 2019 12:18:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31EBE89DD5
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 12:18:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19441174-1500050 
 for multiple; Tue, 03 Dec 2019 12:17:56 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Dec 2019 12:17:56 +0000
Message-Id: <20191203121756.2978610-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191203121316.2972257-2-chris@chris-wilson.co.uk>
References: <20191203121316.2972257-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Only call eb_lookup_vma once
 during execbuf ioctl
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

QXMgd2Ugbm8gbG9uZ2VyIHN0YXNoIGFueXRoaW5nIGluc2lkZSBpOTE1X3ZtYSB1bmRlciB0aGUg
ZXhjbHVzaXZlCnByb3RlY3Rpb24gb2Ygc3RydWN0X211dGV4LCB3ZSBkbyBub3QgbmVlZCB0byBy
ZXZva2UgdGhlIGk5MTVfdm1hCnN0YXNoZXMgYmVmb3JlIGRyb3BwaW5nIHN0cnVjdF9tdXRleCB0
byBoYW5kbGUgcGFnZWZhdWx0cy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9leGVjYnVmZmVyLmMgfCAxNCAtLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE0IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1
ZmZlci5jCmluZGV4IDBkZjQxZDQzZmJiYS4uNGZlYzhlM2FlNDQwIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKQEAgLTg2NiwxNCArODY2LDYg
QEAgc3RhdGljIHZvaWQgZWJfcmVsZWFzZV92bWFzKGNvbnN0IHN0cnVjdCBpOTE1X2V4ZWNidWZm
ZXIgKmViKQogCX0KIH0KIAotc3RhdGljIHZvaWQgZWJfcmVzZXRfdm1hcyhjb25zdCBzdHJ1Y3Qg
aTkxNV9leGVjYnVmZmVyICplYikKLXsKLQllYl9yZWxlYXNlX3ZtYXMoZWIpOwotCWlmIChlYi0+
bHV0X3NpemUgPiAwKQotCQltZW1zZXQoZWItPmJ1Y2tldHMsIDAsCi0JCSAgICAgICBzaXplb2Yo
c3RydWN0IGhsaXN0X2hlYWQpIDw8IGViLT5sdXRfc2l6ZSk7Ci19Ci0KIHN0YXRpYyB2b2lkIGVi
X2Rlc3Ryb3koY29uc3Qgc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCiB7CiAJR0VNX0JVR19P
TihlYi0+cmVsb2NfY2FjaGUucnEpOwpAQCAtMTY4OSw3ICsxNjgxLDYgQEAgc3RhdGljIG5vaW5s
aW5lIGludCBlYl9yZWxvY2F0ZV9zbG93KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQogCX0K
IAogCS8qIFdlIG1heSBwcm9jZXNzIGFub3RoZXIgZXhlY2J1ZmZlciBkdXJpbmcgdGhlIHVubG9j
ay4uLiAqLwotCWViX3Jlc2V0X3ZtYXMoZWIpOwogCW11dGV4X3VubG9jaygmZGV2LT5zdHJ1Y3Rf
bXV0ZXgpOwogCiAJLyoKQEAgLTE3MjgsMTEgKzE3MTksNiBAQCBzdGF0aWMgbm9pbmxpbmUgaW50
IGViX3JlbG9jYXRlX3Nsb3coc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCiAJCWdvdG8gb3V0
OwogCX0KIAotCS8qIHJlYWNxdWlyZSB0aGUgb2JqZWN0cyAqLwotCWVyciA9IGViX2xvb2t1cF92
bWFzKGViKTsKLQlpZiAoZXJyKQotCQlnb3RvIGVycjsKLQogCUdFTV9CVUdfT04oIWViLT5iYXRj
aCk7CiAKIAlsaXN0X2Zvcl9lYWNoX2VudHJ5KGV2LCAmZWItPnJlbG9jcywgcmVsb2NfbGluaykg
ewotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
