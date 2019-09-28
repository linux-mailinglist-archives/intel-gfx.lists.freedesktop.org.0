Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC89DC1087
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Sep 2019 12:02:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EAA189256;
	Sat, 28 Sep 2019 10:02:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBB9889256
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Sep 2019 10:02:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18648587-1500050 
 for multiple; Sat, 28 Sep 2019 11:01:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 28 Sep 2019 11:01:45 +0100
Message-Id: <20190928100145.13165-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Magic udelay to relieve the
 random lockups with multiple engines
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

TXkgY3VycmVudCB0aGVvcnkgaXMgdGhhdCBtYXNrcyBpbnRlcnJ1cHQgZGVsaXZlcnkgdG8gdGhl
IGxvY2FsIENQVQpkdXJpbmcgYSBjcml0aWNhbCBwaGFzZS4gUHVyZWx5IHBhcGVyaW5nIG92ZXIg
dGhlIHN5bXB0b21zIHdpdGggYSBkZWxheQpwbHVja2VkIG91dCBvZiB0aGluIGFpciBmcm9tIHRl
c3Rpbmcgb24gdGdsMS1nZW0uCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXgu
aW50ZWwuY29tPgpDYzogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCAxNSArKysrKysrKysrKysrKysKIDEg
ZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYwppbmRleCBmYTM4NTIxOGNlOTIuLmZlOGY0NjI1ZjA0ZiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMKQEAgLTExODYsNiArMTE4NiwyMSBAQCBzdGF0aWMgdm9pZCBleGVjbGlz
dHNfc3VibWl0X3BvcnRzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkvKiB3ZSBu
ZWVkIHRvIG1hbnVhbGx5IGxvYWQgdGhlIHN1Ym1pdCBxdWV1ZSAqLwogCWlmIChleGVjbGlzdHMt
PmN0cmxfcmVnKQogCQl3cml0ZWwoRUxfQ1RSTF9MT0FELCBleGVjbGlzdHMtPmN0cmxfcmVnKTsK
KworCS8qCisJICogTm93IHRoaXMgaXMgZXZpbCBtYWdpYy4KKwkgKgorCSAqIEFkZGluZyB0aGUg
c2FtZSB1ZGVsYXkoKSB0byBwcm9jZXNzX2NzYiBiZWZvcmUgd2UgY2xlYXIKKwkgKiBleGVjbGlz
dHMtPnBlbmRpbmcgKHRoYXQgaXMgYWZ0ZXIgd2UgcmVjZWl2ZSB0aGUgSFcgYWNrIGZvciB0aGlz
CisJICogc3VibWl0IGFuZCBiZWZvcmUgd2UgY2FuIHN1Ym1pdCBhZ2FpbikgZG9lcyBub3QgcmVs
aWV2ZSB0aGUgc3ltcHRvbXMKKwkgKiAobWFjaGluZSBsb2NrdXApLiBTbyBpcyB0aGUgYWN0aXZl
IGRpZmZlcmVuY2UgaGVyZSB0aGUgd2FpdCB1bmRlcgorCSAqIHRoZSBpcnEtb2ZmIHNwaW5sb2Nr
PyBUaGF0IGdpdmVzIG1vcmUgY3JlZGFuY2UgdG8gdGhlIHRoZW9yeSB0aGF0CisJICogdGhlIGlz
c3VlIGlzIGludGVycnVwdCBkZWxpdmVyeS4gQWxzbyBub3RlIHRoYXQgd2Ugc3RpbGwgcmVseSBv
bgorCSAqIGRpc2FibGluZyBSUFMsIGFnYWluIHRoYXQgc2VlbXMgbGlrZSBhbiBpc3N1ZSB3aXRo
IHNpbXVsdGFuZW91cworCSAqIEdUIGludGVycnVwdHMgYmVpbmcgZGVsaXZlcmVkIHRvIHRoZSBz
YW1lIENQVS4KKwkgKi8KKwlpZiAoSVNfVElHRVJMQUtFKGVuZ2luZS0+aTkxNSkpCisJCXVkZWxh
eSgyNTApOwogfQogCiBzdGF0aWMgYm9vbCBjdHhfc2luZ2xlX3BvcnRfc3VibWlzc2lvbihjb25z
dCBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
