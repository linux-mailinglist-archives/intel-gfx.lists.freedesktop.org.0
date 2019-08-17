Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 741FF910E4
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 16:48:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B173C6E506;
	Sat, 17 Aug 2019 14:47:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E16FC6E4FF;
 Sat, 17 Aug 2019 14:47:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18173477-1500050 
 for multiple; Sat, 17 Aug 2019 15:47:39 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: dri-devel@lists.freedesktop.org
Date: Sat, 17 Aug 2019 15:47:33 +0100
Message-Id: <20190817144736.7826-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190817144736.7826-1-chris@chris-wilson.co.uk>
References: <20190817144736.7826-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] dma-fence: Shrink size of struct dma_fence
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
Cc: intel-gfx@lists.freedesktop.org, christian.koenig@amd.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVhcnJhbmdlIHRoZSBjb3VwbGUgb2YgMzItYml0IGF0b21pY3MgaGlkZGVuIGFtb25nc3QgdGhl
IGZpZWxkIG9mCnBvaW50ZXJzIHRoYXQgdW5uZWNlc3NhcmlseSBjYXVzZWQgdGhlIGNvbXBpbGVy
IHRvIGluc2VydCBzb21lIHBhZGRpbmcsCnNocmlua3MgdGhlIHNpemUgb2YgdGhlIGJhc2Ugc3Ry
dWN0IGRtYV9mZW5jZSBmcm9tIDgwIHRvIDcyIGJ5dGVzIG9uCng4Ni02NC4KClNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgotLS0KIGluY2x1ZGUvbGludXgvZG1h
LWZlbmNlLmggfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIGIvaW5j
bHVkZS9saW51eC9kbWEtZmVuY2UuaAppbmRleCA0MDRhYTc0OGVkYTYuLjJjZTRkODc3ZDMzZSAx
MDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaAorKysgYi9pbmNsdWRlL2xpbnV4
L2RtYS1mZW5jZS5oCkBAIC02Myw3ICs2Myw3IEBAIHN0cnVjdCBkbWFfZmVuY2VfY2I7CiAgKiBi
ZWVuIGNvbXBsZXRlZCwgb3IgbmV2ZXIgY2FsbGVkIGF0IGFsbC4KICAqLwogc3RydWN0IGRtYV9m
ZW5jZSB7Ci0Jc3RydWN0IGtyZWYgcmVmY291bnQ7CisJc3BpbmxvY2tfdCAqbG9jazsKIAljb25z
dCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzOwogCS8qIFdlIGNsZWFyIHRoZSBjYWxsYmFjayBs
aXN0IG9uIGtyZWZfcHV0IHNvIHRoYXQgYnkgdGhlIHRpbWUgd2UKIAkgKiByZWxlYXNlIHRoZSBm
ZW5jZSBpdCBpcyB1bnVzZWQuIE5vIG9uZSBzaG91bGQgYmUgYWRkaW5nIHRvIHRoZSBjYl9saXN0
CkBAIC03MywxMSArNzMsMTEgQEAgc3RydWN0IGRtYV9mZW5jZSB7CiAJCXN0cnVjdCByY3VfaGVh
ZCByY3U7CiAJCXN0cnVjdCBsaXN0X2hlYWQgY2JfbGlzdDsKIAl9OwotCXNwaW5sb2NrX3QgKmxv
Y2s7CiAJdTY0IGNvbnRleHQ7CiAJdTY0IHNlcW5vOwotCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CiAJ
a3RpbWVfdCB0aW1lc3RhbXA7CisJdW5zaWduZWQgbG9uZyBmbGFnczsKKwlzdHJ1Y3Qga3JlZiBy
ZWZjb3VudDsKIAlpbnQgZXJyb3I7CiB9OwogCi0tIAoyLjIzLjAucmMxCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
