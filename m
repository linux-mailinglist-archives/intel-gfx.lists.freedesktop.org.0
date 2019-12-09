Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB80F1164ED
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 03:01:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF51E6E0DD;
	Mon,  9 Dec 2019 02:01:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C713B6E0DD
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 02:01:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19507061-1500050 
 for multiple; Mon, 09 Dec 2019 02:01:45 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Dec 2019 02:01:45 +0000
Message-Id: <20191209020145.3495050-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Detect if we miss WaIdleLiteRestore
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

SW4gb3JkZXIgdG8gYXZvaWQgY29uZnVzaW5nIHRoZSBIVywgd2UgbXVzdCBuZXZlciBzdWJtaXQg
YW4gZW1wdHkgcmluZwpkdXJpbmcgbGl0ZS1yZXN0b3JlLCB0aGF0IGlzIHdlIHNob3VsZCBhbHdh
eXMgYWR2YW5jZSB0aGUgUklOR19UQUlMCmJlZm9yZSBzdWJtaXR0aW5nIHRvIHN0YXkgYWhlYWQg
b2YgdGhlIFJJTkdfSEVBRC4KCk5vcm1hbGx5IHRoaXMgaXMgcHJldmVudGVkIGJ5IGtlZXBpbmcg
YSBjb3VwbGUgb2Ygc3BhcmUgTk9QcyBpbiB0aGUKcmVxdWVzdC0+d2FfdGFpbCBzbyB0aGF0IG9u
IHJlc3VibWlzc2lvbiB3ZSBjYW4gYWR2YW5jZSB0aGUgdGFpbC4gVGhpcwpyZWxpZXMgb24gdGhl
IHJlcXVlc3Qgb25seSBiZWluZyByZXN1Ym1pdHRlZCBvbmNlLCB3aGljaCBpcyB0aGUgbm9ybWFs
CmNvbmRpdGlvbiBhcyBpdCBpcyBzZWVuIG9uY2UgZm9yIEVMU1BbMV0gYW5kIHRoZW4gbGF0ZXIg
aW4gRUxTUFswXS4gT24KcHJlZW1wdGlvbiwgdGhlIHJlcXVlc3RzIGFyZSB1bndvdW5kIGFuZCB0
aGUgdGFpbCByZXNldCBiYWNrIHRvIHRoZQpub3JtYWwgZW5kIHBvaW50IChhcyB3ZSBrbm93IHRo
ZSByZXF1ZXN0IGlzIGluY29tcGxldGUgYW5kIHRoZXJlZm9yZSBpdHMKUklOR19IRUFEIGlzIGV2
ZW4gZWFybGllcikuCgpIb3dldmVyLCBpZiB0aGlzIHcvYSBzaG91bGQgZmFpbCB3ZSB3b3VsZCB0
cnkgYW5kIHJlc3VibWl0IHRoZSByZXF1ZXN0CndpdGggdGhlIFJJTkdfVEFJTCBhbHJlYWR5IHNl
dCB0byB0aGUgbG9jYXRpb24gb2YgdGhpcyByZXF1ZXN0J3Mgd2FfdGFpbApwb3RlbnRpYWxseSBj
YXVzaW5nIGEgR1BVIGhhbmcuIFdlIGNhbiBzcG90IHdoZW4gd2UgZG8gdHJ5IGFuZAppbmNvcnJl
Y3RseSByZXN1Ym1pdCB3aXRob3V0IGFkdmFuY2luZyB0aGUgUklOR19UQUlMIGFuZCBzcGFyZSBh
bnkKZW1iYXJyYXNzbWVudCBieSBmb3JjaW5nIHRoZSBjb250ZXh0IHJlc3RvcmUuCgpTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDQwICsrKysrKysrKysrKysrKysrLS0t
LS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCBjN2VhOGEwNTUwMDUuLjBi
NjY5ZGZlMmYyMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJj
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTEyMTYsMTMg
KzEyMTYsMzEgQEAgZXhlY2xpc3RzX3NjaGVkdWxlX291dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpy
cSkKIAlpOTE1X3JlcXVlc3RfcHV0KHJxKTsKIH0KIAotc3RhdGljIHU2NCBleGVjbGlzdHNfdXBk
YXRlX2NvbnRleHQoY29uc3Qgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCitzdGF0aWMgdTY0IGV4
ZWNsaXN0c191cGRhdGVfY29udGV4dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIHsKIAlzdHJ1
Y3QgaW50ZWxfY29udGV4dCAqY2UgPSBycS0+aHdfY29udGV4dDsKLQl1NjQgZGVzYzsKKwl1NjQg
ZGVzYyA9IGNlLT5scmNfZGVzYzsKKwl1MzIgdGFpbDsKIAotCWNlLT5scmNfcmVnX3N0YXRlW0NU
WF9SSU5HX1RBSUxdID0KLQkJaW50ZWxfcmluZ19zZXRfdGFpbChycS0+cmluZywgcnEtPnRhaWwp
OworCS8qCisJICogV2FJZGxlTGl0ZVJlc3RvcmU6YmR3LHNrbAorCSAqCisJICogV2Ugc2hvdWxk
IG5ldmVyIHN1Ym1pdCB0aGUgY29udGV4dCB3aXRoIHRoZSBzYW1lIFJJTkdfVEFJTCB0d2ljZQor
CSAqIGp1c3QgaW4gY2FzZSB3ZSBzdWJtaXQgYW4gZW1wdHkgcmluZywgd2hpY2ggY29uZnVzZXMg
dGhlIEhXLgorCSAqCisJICogV2UgYXBwZW5kIGEgY291cGxlIG9mIE5PT1BzIChnZW44X2VtaXRf
d2FfdGFpbCkgYWZ0ZXIgdGhlIGVuZCBvZgorCSAqIHRoZSBub3JtYWwgcmVxdWVzdCB0byBiZSBh
YmxlIHRvIGFsd2F5cyBhZHZhbmNlIHRoZSBSSU5HX1RBSUwgb24KKwkgKiBzdWJzZXF1ZW50IHJl
c3VibWlzc2lvbnMgKGZvciBsaXRlIHJlc3RvcmUpLiBTaG91bGQgdGhhdCBmYWlsIHVzLAorCSAq
IGFuZCB3ZSB0cnkgYW5kIHN1Ym1pdCB0aGUgc2FtZSB0YWlsIGFnYWluLCBmb3JjZSB0aGUgY29u
dGV4dAorCSAqIHJlbG9hZC4KKwkgKi8KKwl0YWlsID0gaW50ZWxfcmluZ19zZXRfdGFpbChycS0+
cmluZywgcnEtPnRhaWwpOworCWlmICh1bmxpa2VseShjZS0+bHJjX3JlZ19zdGF0ZVtDVFhfUklO
R19UQUlMXSA9PSB0YWlsKSkgeworCQlHRU1fV0FSTl9PTighKGRlc2MgJiBDVFhfREVTQ19GT1JD
RV9SRVNUT1JFKSk7CisJCWRlc2MgfD0gQ1RYX0RFU0NfRk9SQ0VfUkVTVE9SRTsKKwl9CisJY2Ut
PmxyY19yZWdfc3RhdGVbQ1RYX1JJTkdfVEFJTF0gPSB0YWlsOworCXJxLT50YWlsID0gcnEtPndh
X3RhaWw7CiAKIAkvKgogCSAqIE1ha2Ugc3VyZSB0aGUgY29udGV4dCBpbWFnZSBpcyBjb21wbGV0
ZSBiZWZvcmUgd2Ugc3VibWl0IGl0IHRvIEhXLgpAQCAtMTIzNiwxMyArMTI1NCwxMSBAQCBzdGF0
aWMgdTY0IGV4ZWNsaXN0c191cGRhdGVfY29udGV4dChjb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICpycSkKIAkgKi8KIAl3bWIoKTsKIAotCWRlc2MgPSBjZS0+bHJjX2Rlc2M7Ci0JY2UtPmxyY19k
ZXNjICY9IH5DVFhfREVTQ19GT1JDRV9SRVNUT1JFOwotCiAJLyogV2FfMTYwNzEzODM0MDp0Z2wg
Ki8KIAlpZiAoSVNfVEdMX1JFVklEKHJxLT5pOTE1LCBUR0xfUkVWSURfQTAsIFRHTF9SRVZJRF9B
MCkpCiAJCWRlc2MgfD0gQ1RYX0RFU0NfRk9SQ0VfUkVTVE9SRTsKIAorCWNlLT5scmNfZGVzYyAm
PSB+Q1RYX0RFU0NfRk9SQ0VfUkVTVE9SRTsKIAlyZXR1cm4gZGVzYzsKIH0KIApAQCAtMTc3Niwx
NiArMTc5Miw2IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19kZXF1ZXVlKHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSkKIAogCQkJCXJldHVybjsKIAkJCX0KLQotCQkJLyoKLQkJCSAqIFdh
SWRsZUxpdGVSZXN0b3JlOmJkdyxza2wKLQkJCSAqIEFwcGx5IHRoZSB3YSBOT09QcyB0byBwcmV2
ZW50Ci0JCQkgKiByaW5nOkhFQUQgPT0gcnE6VEFJTCBhcyB3ZSByZXN1Ym1pdCB0aGUKLQkJCSAq
IHJlcXVlc3QuIFNlZSBnZW44X2VtaXRfZmluaV9icmVhZGNydW1iKCkgZm9yCi0JCQkgKiB3aGVy
ZSB3ZSBwcmVwYXJlIHRoZSBwYWRkaW5nIGFmdGVyIHRoZQotCQkJICogZW5kIG9mIHRoZSByZXF1
ZXN0LgotCQkJICovCi0JCQlsYXN0LT50YWlsID0gbGFzdC0+d2FfdGFpbDsKIAkJfQogCX0KIAot
LSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
