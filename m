Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C879C2657
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 21:49:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7B8488F07;
	Mon, 30 Sep 2019 19:49:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AEB989CA0
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 19:49:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18671575-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 20:49:33 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Sep 2019 20:49:28 +0100
Message-Id: <20190930194928.1113-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/tgl: Magic interrupt shadow to relieve
 some random lockups
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

TXkgY3VycmVudCB0aGVvcnkgaXMgdGhhdCB0aGlzIG1hc2tzIGludGVycnVwdCBkZWxpdmVyeSB0
byB0aGUgbG9jYWwgQ1BVCmR1cmluZyBhIGNyaXRpY2FsIHBoYXNlLiBQdXJlbHkgcGFwZXJpbmcg
b3ZlciB0aGUgc3ltcHRvbXMgd2l0aCBhIGRlbGF5CnBsdWNrZWQgb3V0IG9mIHRoaW4gYWlyIGZy
b20gdGVzdGluZyBvbiB0Z2wxLWdlbSwgcmVmaW5lZCBzbGlnaHRseSBieQpqdXN0IHdhaXRpbmcg
Zm9yIHRoZSBuZXh0IGFjayAodGhvdWdoIHRlY2huaWNhbGx5IHRoZSBuZXh0IENTIGV2ZW50IG1h
eQpub3QgYmUgdGhlIGNvcnJlc3BvbmRpbmcgZXZlbnQgZm9yIHRoaXMgc3VibWl0LCBidXQgYW4g
aW50ZXJtZWRpYXRlCmNvbXBsZXRpb24pLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxh
QGxpbnV4LmludGVsLmNvbT4KQ2M6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgpB
Y2tlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCAyMiArKysrKysrKysrKysr
KysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggZmEzODUyMThjZTkyLi42Yjk5NTAxNzU3MWQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0xMTg2LDYgKzExODYsMjggQEAgc3RhdGlj
IHZvaWQgZXhlY2xpc3RzX3N1Ym1pdF9wb3J0cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUpCiAJLyogd2UgbmVlZCB0byBtYW51YWxseSBsb2FkIHRoZSBzdWJtaXQgcXVldWUgKi8KIAlp
ZiAoZXhlY2xpc3RzLT5jdHJsX3JlZykKIAkJd3JpdGVsKEVMX0NUUkxfTE9BRCwgZXhlY2xpc3Rz
LT5jdHJsX3JlZyk7CisKKwkvKgorCSAqIE5vdyB0aGlzIGlzIGV2aWwgbWFnaWMuCisJICoKKwkg
KiBBZGRpbmcgdGhlIHNhbWUgdWRlbGF5KCkgdG8gcHJvY2Vzc19jc2IgYmVmb3JlIHdlIGNsZWFy
CisJICogZXhlY2xpc3RzLT5wZW5kaW5nICh0aGF0IGlzIGFmdGVyIHdlIHJlY2VpdmUgdGhlIEhX
IGFjayBmb3IgdGhpcworCSAqIHN1Ym1pdCBhbmQgYmVmb3JlIHdlIGNhbiBzdWJtaXQgYWdhaW4p
IGRvZXMgbm90IHJlbGlldmUgdGhlIHN5bXB0b21zCisJICogKG1hY2hpbmUgbG9ja3VwKS4gU28g
aXMgdGhlIGFjdGl2ZSBkaWZmZXJlbmNlIGhlcmUgdGhlIHdhaXQgdW5kZXIKKwkgKiB0aGUgaXJx
LW9mZiBzcGlubG9jaz8gVGhhdCBnaXZlcyBtb3JlIGNyZWRhbmNlIHRvIHRoZSB0aGVvcnkgdGhh
dAorCSAqIHRoZSBpc3N1ZSBpcyBpbnRlcnJ1cHQgZGVsaXZlcnkuIEFsc28gbm90ZSB0aGF0IHdl
IHN0aWxsIHJlbHkgb24KKwkgKiBkaXNhYmxpbmcgUlBTLCBhZ2FpbiB0aGF0IHNlZW1zIGxpa2Ug
YW4gaXNzdWUgd2l0aCBzaW11bHRhbmVvdXMKKwkgKiBHVCBpbnRlcnJ1cHRzIGJlaW5nIGRlbGl2
ZXJlZCB0byB0aGUgc2FtZSBDUFUuCisJICovCisJaWYgKElTX1RJR0VSTEFLRShlbmdpbmUtPmk5
MTUpKSB7CisJCXU2NCBzdGFydCA9IGxvY2FsX2Nsb2NrKCk7CisKKwkJdWRlbGF5KDI1MCk7CisK
KwkJd2hpbGUgKFJFQURfT05DRSgqZXhlY2xpc3RzLT5wZW5kaW5nKSAmJiAvKiB3YWl0IGZvciBh
Y2sgKi8KKwkJICAgICAgIChsb2NhbF9jbG9jaygpIC0gc3RhcnQpID4+IDIyID09IDApIC8qIH40
bXMgdGltZW91dCAqLworCQkJY3B1X3JlbGF4KCk7CisJfQogfQogCiBzdGF0aWMgYm9vbCBjdHhf
c2luZ2xlX3BvcnRfc3VibWlzc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCi0t
IAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
