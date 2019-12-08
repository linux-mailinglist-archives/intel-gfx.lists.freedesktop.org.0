Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2DC116429
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 00:33:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A72CB6E0DB;
	Sun,  8 Dec 2019 23:33:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 728186E0DB
 for <intel-gfx@lists.freedesktop.org>; Sun,  8 Dec 2019 23:33:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19506588-1500050 
 for multiple; Sun, 08 Dec 2019 23:33:08 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  8 Dec 2019 23:33:08 +0000
Message-Id: <20191208233308.3068099-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191208232857.3067949-1-chris@chris-wilson.co.uk>
References: <20191208232857.3067949-1-chris@chris-wilson.co.uk>
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
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCmdpdCBhZGQgZmFpbCBmb3IgdGhl
IEdFTV9XQVJOX09OIHRlbGwtdGFsZQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jIHwgMjggKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDE4IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMKaW5kZXggYzdlYThhMDU1MDA1Li5mY2Q5YmI3NzEyMjMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCkBAIC0xNzc2LDE2ICsxNzc2LDYgQEAgc3RhdGljIHZvaWQgZXhl
Y2xpc3RzX2RlcXVldWUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCiAJCQkJcmV0
dXJuOwogCQkJfQotCi0JCQkvKgotCQkJICogV2FJZGxlTGl0ZVJlc3RvcmU6YmR3LHNrbAotCQkJ
ICogQXBwbHkgdGhlIHdhIE5PT1BzIHRvIHByZXZlbnQKLQkJCSAqIHJpbmc6SEVBRCA9PSBycTpU
QUlMIGFzIHdlIHJlc3VibWl0IHRoZQotCQkJICogcmVxdWVzdC4gU2VlIGdlbjhfZW1pdF9maW5p
X2JyZWFkY3J1bWIoKSBmb3IKLQkJCSAqIHdoZXJlIHdlIHByZXBhcmUgdGhlIHBhZGRpbmcgYWZ0
ZXIgdGhlCi0JCQkgKiBlbmQgb2YgdGhlIHJlcXVlc3QuCi0JCQkgKi8KLQkJCWxhc3QtPnRhaWwg
PSBsYXN0LT53YV90YWlsOwogCQl9CiAJfQogCkBAIC0xOTQzLDYgKzE5MzMsMjQgQEAgc3RhdGlj
IHZvaWQgZXhlY2xpc3RzX2RlcXVldWUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQog
CQkJCSAgICBjdHhfc2luZ2xlX3BvcnRfc3VibWlzc2lvbihycS0+aHdfY29udGV4dCkpCiAJCQkJ
CWdvdG8gZG9uZTsKIAorCQkJCS8qCisJCQkJICogV2FJZGxlTGl0ZVJlc3RvcmU6YmR3LHNrbAor
CQkJCSAqCisJCQkJICogSWYgd2UgaGF2ZSBhbHJlYWR5IHN1Ym1pdHRlZCB0aGlzIHJlcXVlc3QK
KwkJCQkgKiB1c2luZyB0aGUgd2FfdGFpbCwgd2UgcmFjZSB3aXRoIHRoZSBIVyBhbmQKKwkJCQkg
KiBIRUFEIG1heSByZWFjaCB3YV90YWlsIGJlZm9yZSBpdCBwcm9jZXNzZXMKKwkJCQkgKiB0aGUg
RUxTUFtdLiBJZiBpdCBzZWVzIGEgY29udGV4dCB3aXRoIGFuCisJCQkJICogZW1wdHkgcmluZywg
dGhlIEhXIGdldHMgY29uZnVzZWQuCisJCQkJICoKKwkJCQkgKiBUbyBwcmV2ZW50IHN1YnNlcXVl
bnQgcmVzdWJtaXNzaW9uIChsaXRlCisJCQkJICogcmVzdG9yZXMpIHdpdGggYW4gZW1wdHkgcmlu
Zywgd2UgZW1pdHRlZCBhCisJCQkJICogY291cGxlIG9mIE5PT1BzIGluIGdlbjhfZW1pdF93YV90
YWlsKCkKKwkJCQkgKiBiZXlvbmQgdGhlIG5vcm1hbCBlbmQgb2YgdGhlIHJlcXVlc3QuCisJCQkJ
ICovCisJCQkJaWYgKEdFTV9XQVJOX09OKGxhc3QtPnRhaWwgPT0gbGFzdC0+d2FfdGFpbCkpCisJ
CQkJCWdvdG8gZG9uZTsKKworCQkJCWxhc3QtPnRhaWwgPSBsYXN0LT53YV90YWlsOwogCQkJCW1l
cmdlID0gZmFsc2U7CiAJCQl9CiAKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
