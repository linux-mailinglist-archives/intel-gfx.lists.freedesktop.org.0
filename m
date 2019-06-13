Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C42EA44EF3
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 00:06:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2B0F89337;
	Thu, 13 Jun 2019 22:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE5788932D
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 22:06:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16895314-1500050 
 for multiple; Thu, 13 Jun 2019 23:06:44 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jun 2019 23:06:42 +0100
Message-Id: <20190613220642.6301-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Discard some redundant cache domain
 flushes
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

U2luY2UgY29tbWl0IGE2NzlmNThkMDUxMCAoImRybS9pOTE1OiBGbHVzaCBwYWdlcyBvbiBhY3F1
aXNpdGlvbiIpLCB3ZQpmbHVzaCBvYmplY3RzIG9uIGFjcXVpcmUgdGhlaXIgcGFnZXMgYW5kIGFz
IHN1Y2ggd2hlbiB3ZSBjcmVhdGUgYW4Kb2JqZWN0IGZvciB0aGUgcHVycG9zZSBvZiB3cml0aW5n
IGludG8gaXQsIHdlIGRvIG5vdCBuZWVkIHRvIG1hbnVhbGx5CmZsdXNoLgoKU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMgfCAgNiAtLS0tLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMgICAgICAgIHwg
IDYgLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfbG9nLmMgICAgICAgICAg
ICAgICAgICB8IDExICstLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9vdmVy
bGF5LmMgICAgICAgICAgICAgICAgICB8ICA4IC0tLS0tLS0tCiA0IGZpbGVzIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAzMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCmluZGV4IDc0YjBlNTg3MWM0
Yi4uOWUyODc4YTU5MDIzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2Vs
ZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
c2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwpAQCAtMjA5LDEyICsyMDksNiBAQCBncHVfZmls
bF9kdyhzdHJ1Y3QgaTkxNV92bWEgKnZtYSwgdTY0IG9mZnNldCwgdW5zaWduZWQgbG9uZyBjb3Vu
dCwgdTMyIHZhbHVlKQogCWk5MTVfZ2VtX29iamVjdF9mbHVzaF9tYXAob2JqKTsKIAlpOTE1X2dl
bV9vYmplY3RfdW5waW5fbWFwKG9iaik7CiAKLQlpOTE1X2dlbV9vYmplY3RfbG9jayhvYmopOwot
CWVyciA9IGk5MTVfZ2VtX29iamVjdF9zZXRfdG9fZ3R0X2RvbWFpbihvYmosIGZhbHNlKTsKLQlp
OTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7Ci0JaWYgKGVycikKLQkJZ290byBlcnI7Ci0KIAl2
bWEgPSBpOTE1X3ZtYV9pbnN0YW5jZShvYmosIHZtYS0+dm0sIE5VTEwpOwogCWlmIChJU19FUlIo
dm1hKSkgewogCQllcnIgPSBQVFJfRVJSKHZtYSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYwppbmRleCBjOGQzMzVkNjNmOWMuLjkzZTk1NzliOGE0
ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3Vu
ZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5j
CkBAIC0zNjgsMTIgKzM2OCw2IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKmNyZWF0ZV9iYXRj
aChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4KQogCWlmIChlcnIpCiAJCWdvdG8gZXJyX29i
ajsKIAotCWk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaik7Ci0JZXJyID0gaTkxNV9nZW1fb2JqZWN0
X3NldF90b193Y19kb21haW4ob2JqLCB0cnVlKTsKLQlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9i
aik7Ci0JaWYgKGVycikKLQkJZ290byBlcnJfb2JqOwotCiAJcmV0dXJuIHZtYTsKIAogZXJyX29i
ajoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19sb2cuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19sb2cuYwppbmRleCA2N2VhZGM4MmMzOTYuLjRm
OWM1MzY4MWY5MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2xv
Zy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19sb2cuYwpAQCAtMzQ0LDI5
ICszNDQsMjAgQEAgc3RhdGljIHZvaWQgY2FwdHVyZV9sb2dzX3dvcmsoc3RydWN0IHdvcmtfc3Ry
dWN0ICp3b3JrKQogc3RhdGljIGludCBndWNfbG9nX21hcChzdHJ1Y3QgaW50ZWxfZ3VjX2xvZyAq
bG9nKQogewogCXZvaWQgKnZhZGRyOwotCWludCByZXQ7CiAKIAlsb2NrZGVwX2Fzc2VydF9oZWxk
KCZsb2ctPnJlbGF5LmxvY2spOwogCiAJaWYgKCFsb2ctPnZtYSkKIAkJcmV0dXJuIC1FTk9ERVY7
CiAKLQlpOTE1X2dlbV9vYmplY3RfbG9jayhsb2ctPnZtYS0+b2JqKTsKLQlyZXQgPSBpOTE1X2dl
bV9vYmplY3Rfc2V0X3RvX3djX2RvbWFpbihsb2ctPnZtYS0+b2JqLCB0cnVlKTsKLQlpOTE1X2dl
bV9vYmplY3RfdW5sb2NrKGxvZy0+dm1hLT5vYmopOwotCWlmIChyZXQpCi0JCXJldHVybiByZXQ7
Ci0KIAkvKgogCSAqIENyZWF0ZSBhIFdDIChVbmNhY2hlZCBmb3IgcmVhZCkgdm1hbGxvYyBtYXBw
aW5nIG9mIGxvZwogCSAqIGJ1ZmZlciBwYWdlcywgc28gdGhhdCB3ZSBjYW4gZGlyZWN0bHkgZ2V0
IHRoZSBkYXRhCiAJICogKHVwLXRvLWRhdGUpIGZyb20gbWVtb3J5LgogCSAqLwogCXZhZGRyID0g
aTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAobG9nLT52bWEtPm9iaiwgSTkxNV9NQVBfV0MpOwotCWlm
IChJU19FUlIodmFkZHIpKSB7Ci0JCURSTV9FUlJPUigiQ291bGRuJ3QgbWFwIGxvZyBidWZmZXIg
cGFnZXMgJWRcbiIsIHJldCk7CisJaWYgKElTX0VSUih2YWRkcikpCiAJCXJldHVybiBQVFJfRVJS
KHZhZGRyKTsKLQl9CiAKIAlsb2ctPnJlbGF5LmJ1Zl9hZGRyID0gdmFkZHI7CiAKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX292ZXJsYXkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX292ZXJsYXkuYwppbmRleCBhMmFjMDZhMDg3MTUuLjIxMzM5YjdmNmEzZSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfb3ZlcmxheS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX292ZXJsYXkuYwpAQCAtMTM3NywxMiArMTM3Nyw2IEBA
IHZvaWQgaW50ZWxfb3ZlcmxheV9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCiAJaWYgKHJldCkKIAkJZ290byBvdXRfZnJlZTsKIAotCWk5MTVfZ2VtX29iamVjdF9sb2Nr
KG92ZXJsYXktPnJlZ19ibyk7Ci0JcmV0ID0gaTkxNV9nZW1fb2JqZWN0X3NldF90b19ndHRfZG9t
YWluKG92ZXJsYXktPnJlZ19ibywgdHJ1ZSk7Ci0JaTkxNV9nZW1fb2JqZWN0X3VubG9jayhvdmVy
bGF5LT5yZWdfYm8pOwotCWlmIChyZXQpCi0JCWdvdG8gb3V0X3JlZ19ibzsKLQogCW1lbXNldF9p
byhvdmVybGF5LT5yZWdzLCAwLCBzaXplb2Yoc3RydWN0IG92ZXJsYXlfcmVnaXN0ZXJzKSk7CiAJ
dXBkYXRlX3BvbHlwaGFzZV9maWx0ZXIob3ZlcmxheS0+cmVncyk7CiAJdXBkYXRlX3JlZ19hdHRy
cyhvdmVybGF5LCBvdmVybGF5LT5yZWdzKTsKQEAgLTEzOTEsOCArMTM4NSw2IEBAIHZvaWQgaW50
ZWxfb3ZlcmxheV9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJRFJN
X0lORk8oIkluaXRpYWxpemVkIG92ZXJsYXkgc3VwcG9ydC5cbiIpOwogCXJldHVybjsKIAotb3V0
X3JlZ19ibzoKLQlpOTE1X2dlbV9vYmplY3RfcHV0KG92ZXJsYXktPnJlZ19ibyk7CiBvdXRfZnJl
ZToKIAlrZnJlZShvdmVybGF5KTsKIH0KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
