Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44785116425
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 00:29:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BDD46E0E4;
	Sun,  8 Dec 2019 23:29:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FF476E0E4
 for <intel-gfx@lists.freedesktop.org>; Sun,  8 Dec 2019 23:29:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19506574-1500050 
 for multiple; Sun, 08 Dec 2019 23:28:57 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  8 Dec 2019 23:28:57 +0000
Message-Id: <20191208232857.3067949-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Skip request resubmission if
 lite-restore w/a already applied
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

QmUgY2FyZWZ1bCB0aGF0IHdlIG5ldmVyIHN1Ym1pdCB0aGUgc2FtZSByZXF1ZXN0IGFnYWluIGlm
IHdlIGhhdmUKYWxyZWFkeSBhcHBsaWVkIHRoZSBMaXRlUmVzdG9yZSB3L2EgdXBvbiBpdCAtLSBh
cyB0aGUgSFcgbWF5IGNvbXBsZXRlCnRoZSByZXF1ZXN0IGFzIHdlIHN1Ym1pdCB0aGUgRUxTUCBh
bmQgc28gYmVjb21lIGNvbmZ1c2VkIGJ5IHRoZSByZXF1ZXN0CnRvIGV4ZWN1dGUgYW4gZW1wdHkg
cmluZy4KClRvIHN1Ym1pdCB0aGUgc2FtZSByZXF1ZXN0IGluIEVMU1BbMF0gdGhyZWUgdGltZXMg
KHNvIHRyaWdnZXJpbmcgdGhlCkxpdGVSZXN0b3JlIHcvYSBhbmQgcmVzdWJtaXR0aW5nIHdpdGgg
aXQgYWxyZWFkeSBhcHBsaWVkKSB3b3VsZCByZXF1aXJlCnByZWVtcHRpb24sIGFuZCBvbiBwcmVl
bXB0aW9uIHdlIHNob3VsZCBiZSB1bndpbmRpbmcgdGhlIHJlcXVlc3QgdGFpbCBhcwp3ZSBrbm93
IHRoZSBIVyBoYXNuJ3QgYWR2YW5jZWQgYmV5b25kIHRoZSBub3JtYWwgdGltZS4gU28gaW4gcHJh
Y3RpY2UsCnRoaXMgc2hvdWxkIG5ldmVyIG9jY3VyLi4uCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYyB8IDI4ICsrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IGM3ZWE4YTA1NTAwNS4uMmZiNzYxMDYzNjA2IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMTc3NiwxNiArMTc3Niw2IEBAIHN0YXRp
YyB2b2lkIGV4ZWNsaXN0c19kZXF1ZXVlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkK
IAogCQkJCXJldHVybjsKIAkJCX0KLQotCQkJLyoKLQkJCSAqIFdhSWRsZUxpdGVSZXN0b3JlOmJk
dyxza2wKLQkJCSAqIEFwcGx5IHRoZSB3YSBOT09QcyB0byBwcmV2ZW50Ci0JCQkgKiByaW5nOkhF
QUQgPT0gcnE6VEFJTCBhcyB3ZSByZXN1Ym1pdCB0aGUKLQkJCSAqIHJlcXVlc3QuIFNlZSBnZW44
X2VtaXRfZmluaV9icmVhZGNydW1iKCkgZm9yCi0JCQkgKiB3aGVyZSB3ZSBwcmVwYXJlIHRoZSBw
YWRkaW5nIGFmdGVyIHRoZQotCQkJICogZW5kIG9mIHRoZSByZXF1ZXN0LgotCQkJICovCi0JCQls
YXN0LT50YWlsID0gbGFzdC0+d2FfdGFpbDsKIAkJfQogCX0KIApAQCAtMTk0Myw2ICsxOTMzLDI0
IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19kZXF1ZXVlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSkKIAkJCQkgICAgY3R4X3NpbmdsZV9wb3J0X3N1Ym1pc3Npb24ocnEtPmh3X2NvbnRl
eHQpKQogCQkJCQlnb3RvIGRvbmU7CiAKKwkJCQkvKgorCQkJCSAqIFdhSWRsZUxpdGVSZXN0b3Jl
OmJkdyxza2wKKwkJCQkgKgorCQkJCSAqIElmIHdlIGhhdmUgYWxyZWFkeSBzdWJtaXR0ZWQgdGhp
cyByZXF1ZXN0CisJCQkJICogdXNpbmcgdGhlIHdhX3RhaWwsIHdlIHJhY2Ugd2l0aCB0aGUgSFcg
YW5kCisJCQkJICogSEVBRCBtYXkgcmVhY2ggd2FfdGFpbCBiZWZvcmUgaXQgcHJvY2Vzc2VzCisJ
CQkJICogdGhlIEVMU1BbXS4gSWYgaXQgc2VlcyBhIGNvbnRleHQgd2l0aCBhbgorCQkJCSAqIGVt
cHR5IHJpbmcsIHRoZSBIVyBnZXRzIGNvbmZ1c2VkLgorCQkJCSAqCisJCQkJICogVG8gcHJldmVu
dCBzdWJzZXF1ZW50IHJlc3VibWlzc2lvbiAobGl0ZQorCQkJCSAqIHJlc3RvcmVzKSB3aXRoIGFu
IGVtcHR5IHJpbmcsIHdlIGVtaXR0ZWQgYQorCQkJCSAqIGNvdXBsZSBvZiBOT09QcyBpbiBnZW44
X2VtaXRfd2FfdGFpbCgpCisJCQkJICogYmV5b25kIHRoZSBub3JtYWwgZW5kIG9mIHRoZSByZXF1
ZXN0LgorCQkJCSAqLworCQkJCWlmICh1bmxpa2VseShsYXN0LT50YWlsID09IGxhc3QtPndhX3Rh
aWwpKQorCQkJCQlnb3RvIGRvbmU7CisKKwkJCQlsYXN0LT50YWlsID0gbGFzdC0+d2FfdGFpbDsK
IAkJCQltZXJnZSA9IGZhbHNlOwogCQkJfQogCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
