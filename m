Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 449A5AFD37
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 14:58:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09D236E288;
	Wed, 11 Sep 2019 12:58:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D5F96E288
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 12:58:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18451457-1500050 
 for multiple; Wed, 11 Sep 2019 13:57:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Sep 2019 13:57:17 +0100
Message-Id: <20190911125717.28997-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Disable read-only support
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

VGhlIHNhbWUgcmVhZC1vbmx5IGFmZmxpY3Rpb24gYXMgYmVmZWxsIEljZWxha2UgaXMgYWZmZWN0
aW5nIFRpZ2VybGFrZS4KRGlzYWJsZSB0aGUgcmVhZC1vbmx5IHN1cHBvcnQgYXMgY2xlYXJ5IGl0
IHdhcyBub3QgZml4ZWQuCgpUZXN0Y2FzZTogaWd0L2k5MTVfc2VsZnRlc3RzL2xpdmVfZ2VtX2Nv
bnRleHQKUmVmZXJlbmNlczogMzkzNjg2N2RiYzFlICgiZHJtL2k5MTU6IERpc2FibGUgcmVhZCBv
bmx5IHBwZ3R0IHN1cHBvcnQgZm9yIGdlbjExIikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3Bw
YWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9n
dHQuYyB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggZTRmNjZiZmU3NGMyLi5h
MDlhOWI2MmFmYmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0
dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC0xNDg2LDgg
KzE0ODYsMTAgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3BwZ3R0ICpnZW44X3BwZ3R0X2NyZWF0ZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkgKgogCSAqIEdlbjExIGhhcyBIU0RFUyM6
MTgwNzEzNjE4NyB1bnJlc29sdmVkLiBEaXNhYmxlIHJvIHN1cHBvcnQKIAkgKiBmb3Igbm93Lgor
CSAqCisJICogR2VuMTIgaGFzIGluaGVyaXRlZCB0aGUgc2FtZSByZWFkLW9ubHkgZmF1bHQgaXNz
dWUgZnJvbSBnZW4xMS4KIAkgKi8KLQlwcGd0dC0+dm0uaGFzX3JlYWRfb25seSA9IElOVEVMX0dF
TihpOTE1KSAhPSAxMTsKKwlwcGd0dC0+dm0uaGFzX3JlYWRfb25seSA9ICFJU19HRU5fUkFOR0Uo
aTkxNSwgMTEsIDEyKTsKIAogCS8qIFRoZXJlIGFyZSBvbmx5IGZldyBleGNlcHRpb25zIGZvciBn
ZW4gPj02LiBjaHYgYW5kIGJ4dC4KIAkgKiBBbmQgd2UgYXJlIG5vdCBzdXJlIGFib3V0IHRoZSBs
YXR0ZXIgc28gcGxheSBzYWZlIGZvciBub3cuCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
