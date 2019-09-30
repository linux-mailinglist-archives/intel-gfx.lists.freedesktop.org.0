Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 959D9C1DAE
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 11:12:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 998036E150;
	Mon, 30 Sep 2019 09:11:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 378FD6E150
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 09:11:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18663834-1500050 
 for multiple; Mon, 30 Sep 2019 10:11:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Sep 2019 10:11:35 +0100
Message-Id: <20190930091135.11971-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190928100145.13165-1-chris@chris-wilson.co.uk>
References: <20190928100145.13165-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/tgl: Magic interrupt shadow to
 relieve some random lockups
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
QGxpbnV4LmludGVsLmNvbT4KQ2M6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgOSArKysrKysrKysKIDEg
ZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jCmluZGV4IGFiNzI1YTZjYTBhYy4uMzU0MTBkNjQ3YjUyIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYwpAQCAtMTE1NSw2ICsxMTU1LDcgQEAgYXNzZXJ0X3BlbmRpbmdfdmFsaWQo
Y29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMgKmV4ZWNsaXN0cywKIHN0YXRpYyB2
b2lkIGV4ZWNsaXN0c19zdWJtaXRfcG9ydHMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
KQogewogCXN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xpc3RzICpleGVjbGlzdHMgPSAmZW5naW5l
LT5leGVjbGlzdHM7CisJdW5zaWduZWQgaW50IHRhaWwgPSBSRUFEX09OQ0UoKmV4ZWNsaXN0cy0+
Y3NiX3dyaXRlKTsKIAl1bnNpZ25lZCBpbnQgbjsKIAogCUdFTV9CVUdfT04oIWFzc2VydF9wZW5k
aW5nX3ZhbGlkKGV4ZWNsaXN0cywgInN1Ym1pdCIpKTsKQEAgLTExODYsNiArMTE4NywxNCBAQCBz
dGF0aWMgdm9pZCBleGVjbGlzdHNfc3VibWl0X3BvcnRzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSkKIAkvKiB3ZSBuZWVkIHRvIG1hbnVhbGx5IGxvYWQgdGhlIHN1Ym1pdCBxdWV1ZSAq
LwogCWlmIChleGVjbGlzdHMtPmN0cmxfcmVnKQogCQl3cml0ZWwoRUxfQ1RSTF9MT0FELCBleGVj
bGlzdHMtPmN0cmxfcmVnKTsKKworCWlmIChJU19USUdFUkxBS0UoZW5naW5lLT5pOTE1KSkgewor
CQl1NjQgc3RhcnQgPSBsb2NhbF9jbG9jaygpOworCQlkbworCQkJY3B1X3JlbGF4KCk7CisJCXdo
aWxlICh0YWlsID09IFJFQURfT05DRSgqZXhlY2xpc3RzLT5jc2Jfd3JpdGUpICYmCisJCSAgICAg
ICAobG9jYWxfY2xvY2soKSAtIHN0YXJ0KSA+PiAyMCA9PSAwKTsKKwl9CiB9CiAKIHN0YXRpYyBi
b29sIGN0eF9zaW5nbGVfcG9ydF9zdWJtaXNzaW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jb250ZXh0
ICpjZSkKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
