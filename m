Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7899E47472
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Jun 2019 14:20:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7324489054;
	Sun, 16 Jun 2019 12:20:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9487B89054
 for <intel-gfx@lists.freedesktop.org>; Sun, 16 Jun 2019 12:20:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16918424-1500050 
 for multiple; Sun, 16 Jun 2019 13:20:43 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 16 Jun 2019 13:20:43 +0100
Message-Id: <20190616122043.3379-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Restore -Wunused-but-set-variable
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

V2UgYXBwZWFyIHRvIGJlIGNsZWFyIG9mIHRoaXMgd2FybmluZywgc28gdGltZSB0byByZS1lbmFi
bGUgdGhlIGdjYyBlcnJvcgpjaGVja2luZy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2Vm
aWxlIHwgMSAtCiAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZp
bGUKaW5kZXggYzBhN2IyOTk0MDc3Li5mNDk3MTkwMDA4N2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L01ha2VmaWxlCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxl
CkBAIC0xNyw3ICsxNyw2IEBAIHN1YmRpci1jY2ZsYWdzLXkgKz0gJChjYWxsIGNjLWRpc2FibGUt
d2FybmluZywgdW51c2VkLXBhcmFtZXRlcikKIHN1YmRpci1jY2ZsYWdzLXkgKz0gJChjYWxsIGNj
LWRpc2FibGUtd2FybmluZywgdHlwZS1saW1pdHMpCiBzdWJkaXItY2NmbGFncy15ICs9ICQoY2Fs
bCBjYy1kaXNhYmxlLXdhcm5pbmcsIG1pc3NpbmctZmllbGQtaW5pdGlhbGl6ZXJzKQogc3ViZGly
LWNjZmxhZ3MteSArPSAkKGNhbGwgY2MtZGlzYWJsZS13YXJuaW5nLCBpbXBsaWNpdC1mYWxsdGhy
b3VnaCkKLXN1YmRpci1jY2ZsYWdzLXkgKz0gJChjYWxsIGNjLWRpc2FibGUtd2FybmluZywgdW51
c2VkLWJ1dC1zZXQtdmFyaWFibGUpCiAjIGNsYW5nIHdhcm5pbmdzCiBzdWJkaXItY2NmbGFncy15
ICs9ICQoY2FsbCBjYy1kaXNhYmxlLXdhcm5pbmcsIHNpZ24tY29tcGFyZSkKIHN1YmRpci1jY2Zs
YWdzLXkgKz0gJChjYWxsIGNjLWRpc2FibGUtd2FybmluZywgc29tZXRpbWVzLXVuaW5pdGlhbGl6
ZWQpCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
