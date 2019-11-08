Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C260F429F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 09:56:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C641E6F8B2;
	Fri,  8 Nov 2019 08:56:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A52D6F8B8
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 08:56:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19124693-1500050 
 for multiple; Fri, 08 Nov 2019 08:56:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Nov 2019 08:56:22 +0000
Message-Id: <20191108085626.32429-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/icl: Refine PG_HYSTERESIS
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

QWZ0ZXIgZG9pbmcgc29tZSBtZWFzdXJpbmcsIEljZWxha2UgYmVoYXZlcyBvbiBhIHBhciB3aXRo
IEJyb2Fkd2VsbCwgYW5kCndpdGhvdXQgaGF2aW5nIHRvIGNvbXByb21pc2UgZm9yIGxvdyBwb3dl
ciBjb3JlcyB3aXRoIGxvbmcgbGF0ZW5jaWVzLCB3ZQpjYW4gcmVkdWNlIHRoZSBwb3dlcmdhdGlu
ZyBoeXN0ZXJlc2lzIHNvIHRoYXQgdGhlIHBvd2Vyc2F2aW5nIGlzIGVuYWJsZWQKZmFzdGVyLiBO
byBpbXBhY3Qgb2JzZXJ2ZWQgb24gY2xpZW50IHNpZGUgdGhyb3VnaHB1dCBtZWFzdXJlcyAoc28K
bmVnbGlnaWJsZSBpbmNyZWFzZSBpbiBleHRyYSBzd2l0Y2hpbmcpLCBhbmQgaW5zcGVjdGlvbiBm
cm9tIGhpZ2gKZnJlcXVlbmN5IHBvbGxpbmcgdXNpbmcgaWd0L2dlbV9leGVjX25vcC9zZXF1ZW50
aWFsLCBwcm92aWRlZCBhbiBlc3RpbWF0ZQpmb3IgdGhlIHVwcGVyIGJvdW5kIGJlZm9yZSB3ZSBj
YW4gbWVhc3VyZSBhIHN1YnN0YW50aWFsIGltcGFjdCBvbgpsYXRlbmN5LgoKU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3Bw
YWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9yYzYuYyB8IDEzICsrKysrLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1
IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfcmM2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9y
YzYuYwppbmRleCA1YWQ0YTkyYTk1ODIuLjVlM2JhMDM0YmQ0NiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmM2LmMKQEAgLTg4LDE1ICs4OCwxMiBAQCBzdGF0aWMgdm9pZCBnZW4xMV9yYzZf
ZW5hYmxlKHN0cnVjdCBpbnRlbF9yYzYgKnJjNikKIAkgKiBkbyBub3Qgd2FudCB0aGUgZW5hYmxl
IGh5c3RlcmVzaXMgdG8gbGVzcyB0aGFuIHRoZSB3YWtldXAgbGF0ZW5jeS4KIAkgKgogCSAqIGln
dC9nZW1fZXhlY19ub3Avc2VxdWVudGlhbCBwcm92aWRlcyBhIHJvdWdoIGVzdGltYXRlIGZvciB0
aGUKLQkgKiBzZXJ2aWNlIGxhdGVuY3ksIGFuZCBwdXRzIGl0IGFyb3VuZCAxMHVzIGZvciBCcm9h
ZHdlbGwgKGFuZCBvdGhlcgotCSAqIGJpZyBjb3JlKSBhbmQgYXJvdW5kIDQwdXMgZm9yIEJyb3h0
b24gKGFuZCBvdGhlciBsb3cgcG93ZXIgY29yZXMpLgotCSAqIFtOb3RlIHRoYXQgZm9yIGxlZ2Fj
eSByaW5nYnVmZmVyIHN1Ym1pc3Npb24sIHRoaXMgaXMgbGVzcyB0aGFuIDF1cyFdCi0JICogSG93
ZXZlciwgdGhlIHdha2V1cCBsYXRlbmN5IG9uIEJyb3h0b24gaXMgY2xvc2VyIHRvIDEwMHVzLiBU
byBiZQotCSAqIGNvbnNlcnZhdGl2ZSwgd2UgaGF2ZSB0byBmYWN0b3IgaW4gYSBjb250ZXh0IHN3
aXRjaCBvbiB0b3AgKGR1ZQotCSAqIHRvIGtzb2Z0aXJxZCkuCisJICogc2VydmljZSBsYXRlbmN5
LCBhbmQgcHV0cyBpdCB1bmRlciAxMHVzIGZvciBJY2VsYWtlLCBzaW1pbGFyIHRvCisJICogQnJv
YWR3ZWxsKywgVG8gYmUgY29uc2VydmF0aXZlLCB3ZSB3YW50IHRvIGZhY3RvciBpbiBhIGNvbnRl
eHQKKwkgKiBzd2l0Y2ggb24gdG9wIChkdWUgdG8ga3NvZnRpcnFkKS4KIAkgKi8KLQlzZXQodW5j
b3JlLCBHRU45X01FRElBX1BHX0lETEVfSFlTVEVSRVNJUywgMjUwKTsKLQlzZXQodW5jb3JlLCBH
RU45X1JFTkRFUl9QR19JRExFX0hZU1RFUkVTSVMsIDI1MCk7CisJc2V0KHVuY29yZSwgR0VOOV9N
RURJQV9QR19JRExFX0hZU1RFUkVTSVMsIDYwKTsKKwlzZXQodW5jb3JlLCBHRU45X1JFTkRFUl9Q
R19JRExFX0hZU1RFUkVTSVMsIDYwKTsKIAogCS8qIDNhOiBFbmFibGUgUkM2ICovCiAJc2V0KHVu
Y29yZSwgR0VONl9SQ19DT05UUk9MLAotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
