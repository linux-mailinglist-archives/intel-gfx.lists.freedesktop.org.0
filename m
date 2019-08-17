Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0DF910E5
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 16:48:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B4096E509;
	Sat, 17 Aug 2019 14:47:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3AD56E500;
 Sat, 17 Aug 2019 14:47:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18173479-1500050 
 for multiple; Sat, 17 Aug 2019 15:47:39 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: dri-devel@lists.freedesktop.org
Date: Sat, 17 Aug 2019 15:47:34 +0100
Message-Id: <20190817144736.7826-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190817144736.7826-1-chris@chris-wilson.co.uk>
References: <20190817144736.7826-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] dma-fence: Avoid list_del during
 fence->cb_list iteration
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 christian.koenig@amd.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QmVmb3JlIHdlIG5vdGlmeSB0aGUgZmVuY2Ugc2lnbmFsIGNhbGxiYWNrLCB3ZSByZW1vdmUgdGhl
IGNiIGZyb20gdGhlCmxpc3QuIEhvd2V2ZXIsIHNpbmNlIHdlIGFyZSBwcm9jZXNzaW5nIHRoZSBl
bnRpcmUgbGlzdCBmcm9tIHVuZGVybmVhdGgKdGhlIHNwaW5sb2NrLCB3ZSBkbyBub3QgbmVlZCB0
byBpbmRpdmlkdWFsIGRlbGV0ZSBlYWNoIGVsZW1lbnQsIGJ1dCBjYW4Kc2ltcGx5IHJlc2V0IHRo
ZSBsaW5rIGFuZCB0aGUgZW50aXJlIGxpc3QuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAZmZ3bGwuY2g+CkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+ClJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIHwgOSArKysrKystLS0KIDEgZmls
ZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5j
CmluZGV4IDgwMjVhODkxZDNlOS4uZmYwY2Q2ZWFlNzY2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2Rt
YS1idWYvZG1hLWZlbmNlLmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCkBAIC0x
NDksOSArMTQ5LDEyIEBAIGludCBkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZChzdHJ1Y3QgZG1hX2Zl
bmNlICpmZW5jZSkKIAkJdHJhY2VfZG1hX2ZlbmNlX3NpZ25hbGVkKGZlbmNlKTsKIAl9CiAKLQls
aXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUoY3VyLCB0bXAsICZmZW5jZS0+Y2JfbGlzdCwgbm9kZSkg
ewotCQlsaXN0X2RlbF9pbml0KCZjdXItPm5vZGUpOwotCQljdXItPmZ1bmMoZmVuY2UsIGN1cik7
CisJaWYgKCFsaXN0X2VtcHR5KCZmZW5jZS0+Y2JfbGlzdCkpIHsKKwkJbGlzdF9mb3JfZWFjaF9l
bnRyeV9zYWZlKGN1ciwgdG1wLCAmZmVuY2UtPmNiX2xpc3QsIG5vZGUpIHsKKwkJCUlOSVRfTElT
VF9IRUFEKCZjdXItPm5vZGUpOworCQkJY3VyLT5mdW5jKGZlbmNlLCBjdXIpOworCQl9CisJCUlO
SVRfTElTVF9IRUFEKCZmZW5jZS0+Y2JfbGlzdCk7CiAJfQogCXJldHVybiByZXQ7CiB9Ci0tIAoy
LjIzLjAucmMxCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
