Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC96EF6AF2
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Nov 2019 19:58:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBCC86E7A3;
	Sun, 10 Nov 2019 18:58:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB20B6E25F
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Nov 2019 18:58:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19151893-1500050 
 for multiple; Sun, 10 Nov 2019 18:58:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 10 Nov 2019 18:57:54 +0000
Message-Id: <20191110185806.17413-13-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191110185806.17413-1-chris@chris-wilson.co.uk>
References: <20191110185806.17413-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/25] drm/i915: Taint the kernel on dumping the
 GEM ftrace buffer
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

QXMgdGhlIGZ0cmFjZSBidWZmZXIgaXMgc2luZ2xlIHNob3QsIG9uY2UgZHVtcGVkIGl0IHdpbGwg
bm90IHVwZGF0ZS4gQXMKc3VjaCwgaXQgb25seSBwcm92aWRlcyBpbmZvcm1hdGlvbiBmb3IgdGhl
IGZpcnN0IGJ1ZyBhbmQgYWxsIHN1YnNlcXVlbnQKYnVncyBhcmUgbm9pc2UuIFRoZSBnb2FsIG9m
IENJIGlzIHRvIGhhdmUgemVybyBidWdzLCBzbyB0YWludCB0aGUga2VybmVsCmNhdXNpbmcgQ0kg
dG8gcmVib290IHRoZSBtYWNoaW5lOyBmaXggdGhlIGJ1ZyBhbmQgbW92ZSBvbi4KClNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBL
dW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtLmggfCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5oCmluZGV4IGY2Zjk2NzU4NDhiOC4uMzZh
OGM3NjczYzRmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5oCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmgKQEAgLTY4LDkgKzY4LDEwIEBAIHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlOwogCXByX2VycihfX1ZBX0FSR1NfXyk7CQkJCQkJXAogCXRy
YWNlX3ByaW50ayhfX1ZBX0FSR1NfXyk7CQkJCQlcCiB9IHdoaWxlICgwKQotI2RlZmluZSBHRU1f
VFJBQ0VfRFVNUCgpIGZ0cmFjZV9kdW1wKERVTVBfQUxMKQorI2RlZmluZSBHRU1fVFJBQ0VfRFVN
UCgpIFwKKwlkbyB7IGZ0cmFjZV9kdW1wKERVTVBfQUxMKTsgYWRkX3RhaW50X2Zvcl9DSShUQUlO
VF9XQVJOKTsgfSB3aGlsZSAoMCkKICNkZWZpbmUgR0VNX1RSQUNFX0RVTVBfT04oZXhwcikgXAot
CWRvIHsgaWYgKGV4cHIpIGZ0cmFjZV9kdW1wKERVTVBfQUxMKTsgfSB3aGlsZSAoMCkKKwlkbyB7
IGlmIChleHByKSBHRU1fVFJBQ0VfRFVNUCgpOyB9IHdoaWxlICgwKQogI2Vsc2UKICNkZWZpbmUg
R0VNX1RSQUNFKC4uLikgZG8geyB9IHdoaWxlICgwKQogI2RlZmluZSBHRU1fVFJBQ0VfRVJSKC4u
LikgZG8geyB9IHdoaWxlICgwKQotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
