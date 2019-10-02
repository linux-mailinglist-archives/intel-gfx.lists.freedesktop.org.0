Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1518DC92F6
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 22:42:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FBC16E14E;
	Wed,  2 Oct 2019 20:42:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6062C6E111
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 20:42:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 13:42:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,249,1566889200"; d="scan'208";a="194989016"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga003.jf.intel.com with ESMTP; 02 Oct 2019 13:42:12 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 23:41:08 +0300
Message-Id: <20191002204108.32242-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191002140808.12000-1-imre.deak@intel.com>
References: <20191002140808.12000-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/tgl: Add the Thunderbolt PLL
 divider values
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
Cc: Mika Westerberg <mika.westerberg@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIFRodW5kZXJib2x0IFBMTCBkaXZpZGVyIHZhbHVlcyBvbiBUR0wgZGlmZmVyIGZyb20gdGhl
IElDTCBvbmVzLAp1cGRhdGUgdGhlIFBMTCBwYXJhbWV0ZXIgY2FsY3VsYXRpb24gZnVuY3Rpb24g
YWNjb3JkaW5nbHkuCgpCc3BlYzogNDkyMDQKCnYyOgotIFJlbW92ZSB1bnVzZWQgcmVmY2xrIGNv
bmZpZy4gKEpvc8OpKQoKQ2M6IEpvc2UgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpDYzog
Q2xpbnRvbiBBIFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+CkNjOiBMdWNhcyBE
ZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KQ2M6IE1pa2EgV2VzdGVyYmVyZyA8
bWlrYS53ZXN0ZXJiZXJnQGludGVsLmNvbT4KVGVzdGVkLWJ5OiBNaWthIFdlc3RlcmJlcmcgPG1p
a2Eud2VzdGVyYmVyZ0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5k
ZWFrQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvc2UgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8
IDQyICsrKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBsbF9tZ3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBsbF9tZ3IuYwppbmRleCBiZTY5YTIzNDQyOTQuLjVlOWU4NGM5NGExNSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwpAQCAtMjUyMCw2ICsyNTIw
LDE4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc2tsX3dycGxsX3BhcmFtcyBpY2xfdGJ0X3BsbF8x
OV8yTUh6X3ZhbHVlcyA9IHsKIAkucGRpdiA9IDB4NCAvKiA1ICovLCAua2RpdiA9IDEsIC5xZGl2
X21vZGUgPSAwLCAucWRpdl9yYXRpbyA9IDAsCiB9OwogCitzdGF0aWMgY29uc3Qgc3RydWN0IHNr
bF93cnBsbF9wYXJhbXMgdGdsX3RidF9wbGxfMTlfMk1Iel92YWx1ZXMgPSB7CisJLmRjb19pbnRl
Z2VyID0gMHg1NCwgLmRjb19mcmFjdGlvbiA9IDB4MzAwMCwKKwkvKiB0aGUgZm9sbG93aW5nIHBh
cmFtcyBhcmUgdW51c2VkICovCisJLnBkaXYgPSAwLCAua2RpdiA9IDAsIC5xZGl2X21vZGUgPSAw
LCAucWRpdl9yYXRpbyA9IDAsCit9OworCitzdGF0aWMgY29uc3Qgc3RydWN0IHNrbF93cnBsbF9w
YXJhbXMgdGdsX3RidF9wbGxfMjRNSHpfdmFsdWVzID0geworCS5kY29faW50ZWdlciA9IDB4NDMs
IC5kY29fZnJhY3Rpb24gPSAweDQwMDAsCisJLyogdGhlIGZvbGxvd2luZyBwYXJhbXMgYXJlIHVu
dXNlZCAqLworCS5wZGl2ID0gMCwgLmtkaXYgPSAwLCAucWRpdl9tb2RlID0gMCwgLnFkaXZfcmF0
aW8gPSAwLAorfTsKKwogc3RhdGljIGJvb2wgaWNsX2NhbGNfZHBfY29tYm9fcGxsKHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCQkJCSAgc3RydWN0IHNrbF93cnBsbF9wYXJh
bXMgKnBsbF9wYXJhbXMpCiB7CkBAIC0yNTQ3LDggKzI1NTksMzQgQEAgc3RhdGljIGJvb2wgaWNs
X2NhbGNfdGJ0X3BsbChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIHsKIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGNfc3RhdGUtPmJh
c2UuY3J0Yy0+ZGV2KTsKIAotCSpwbGxfcGFyYW1zID0gZGV2X3ByaXYtPmNkY2xrLmh3LnJlZiA9
PSAyNDAwMCA/Ci0JCQlpY2xfdGJ0X3BsbF8yNE1Iel92YWx1ZXMgOiBpY2xfdGJ0X3BsbF8xOV8y
TUh6X3ZhbHVlczsKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgeworCQlzd2l0Y2gg
KGRldl9wcml2LT5jZGNsay5ody5yZWYpIHsKKwkJZGVmYXVsdDoKKwkJCU1JU1NJTkdfQ0FTRShk
ZXZfcHJpdi0+Y2RjbGsuaHcucmVmKTsKKwkJCS8qIGZhbGwtdGhyb3VnaCAqLworCQljYXNlIDE5
MjAwOgorCQljYXNlIDM4NDAwOgorCQkJKnBsbF9wYXJhbXMgPSB0Z2xfdGJ0X3BsbF8xOV8yTUh6
X3ZhbHVlczsKKwkJCWJyZWFrOworCQljYXNlIDI0MDAwOgorCQkJKnBsbF9wYXJhbXMgPSB0Z2xf
dGJ0X3BsbF8yNE1Iel92YWx1ZXM7CisJCQlicmVhazsKKwkJfQorCX0gZWxzZSB7CisJCXN3aXRj
aCAoZGV2X3ByaXYtPmNkY2xrLmh3LnJlZikgeworCQlkZWZhdWx0OgorCQkJTUlTU0lOR19DQVNF
KGRldl9wcml2LT5jZGNsay5ody5yZWYpOworCQkJLyogZmFsbC10aHJvdWdoICovCisJCWNhc2Ug
MTkyMDA6CisJCWNhc2UgMzg0MDA6CisJCQkqcGxsX3BhcmFtcyA9IGljbF90YnRfcGxsXzE5XzJN
SHpfdmFsdWVzOworCQkJYnJlYWs7CisJCWNhc2UgMjQwMDA6CisJCQkqcGxsX3BhcmFtcyA9IGlj
bF90YnRfcGxsXzI0TUh6X3ZhbHVlczsKKwkJCWJyZWFrOworCQl9CisJfQorCiAJcmV0dXJuIHRy
dWU7CiB9CiAKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
