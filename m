Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAE79012E
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 14:16:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E15696E32E;
	Fri, 16 Aug 2019 12:16:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 759B86E32E
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 12:16:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18162519-1500050 
 for multiple; Fri, 16 Aug 2019 13:16:00 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2019 13:15:49 +0100
Message-Id: <20190816121549.8754-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] Revert "nvme-pci: use host managed power state
 for suspend"
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Y29tbWl0IGQ5MTZiMWJlOTRiNmRjOGQyOTNhYmVkMjQ1MWYzMDYyZjZhZjc1NTEKQXV0aG9yOiBL
ZWl0aCBCdXNjaCA8a2VpdGguYnVzY2hAaW50ZWwuY29tPgpEYXRlOiAgIFRodSBNYXkgMjMgMDk6
Mjc6MzUgMjAxOSAtMDYwMAoKICAgIG52bWUtcGNpOiB1c2UgaG9zdCBtYW5hZ2VkIHBvd2VyIHN0
YXRlIGZvciBzdXNwZW5kCgpCaXNlY3RlZCBhcyBjYXVzZSBvZiBzdXNwZW5kIGZhaWx1cmUgZm9y
IGdlbV9laW8vc3VzcGVuZCBvbiBtdWx0aXBsZSBrYmwKaG9zdHMuCgpDYzogUmFmYWVsIEouIFd5
c29ja2kgPHJhZmFlbC5qLnd5c29ja2lAaW50ZWwuY29tPgpDYzogS2VpdGggQnVzY2ggPGtlaXRo
LmJ1c2NoQGludGVsLmNvbT4KQ2M6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3JpbWJlcmcubWU+CkNj
OiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4KQ2M6IEtlaXRoIEJ1c2NoIDxrYnVzY2hA
a2VybmVsLm9yZz4KQ2M6IEplbnMgQXhib2UgPGF4Ym9lQGZiLmNvbT4KQ2M6IGxpbnV4LW52bWVA
bGlzdHMuaW5mcmFkZWFkLm9yZwotLS0KIGRyaXZlcnMvbnZtZS9ob3N0L3BjaS5jIHwgOTUgKyst
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDkyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZt
ZS9ob3N0L3BjaS5jIGIvZHJpdmVycy9udm1lL2hvc3QvcGNpLmMKaW5kZXggZGIxNjBjZWU0MmFk
Li5iZGM5ZTA2MjViYjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L3BjaS5jCisrKyBi
L2RyaXZlcnMvbnZtZS9ob3N0L3BjaS5jCkBAIC0xOCw3ICsxOCw2IEBACiAjaW5jbHVkZSA8bGlu
dXgvbXV0ZXguaD4KICNpbmNsdWRlIDxsaW51eC9vbmNlLmg+CiAjaW5jbHVkZSA8bGludXgvcGNp
Lmg+Ci0jaW5jbHVkZSA8bGludXgvc3VzcGVuZC5oPgogI2luY2x1ZGUgPGxpbnV4L3QxMC1waS5o
PgogI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CiAjaW5jbHVkZSA8bGludXgvaW8tNjQtbm9uYXRv
bWljLWxvLWhpLmg+CkBAIC0xMTEsNyArMTEwLDYgQEAgc3RydWN0IG52bWVfZGV2IHsKIAl1MzIg
Y21ic3o7CiAJdTMyIGNtYmxvYzsKIAlzdHJ1Y3QgbnZtZV9jdHJsIGN0cmw7Ci0JdTMyIGxhc3Rf
cHM7CiAKIAltZW1wb29sX3QgKmlvZF9tZW1wb29sOwogCkBAIC0yODMxLDk0ICsyODI5LDE2IEBA
IHN0YXRpYyB2b2lkIG52bWVfcmVtb3ZlKHN0cnVjdCBwY2lfZGV2ICpwZGV2KQogfQogCiAjaWZk
ZWYgQ09ORklHX1BNX1NMRUVQCi1zdGF0aWMgaW50IG52bWVfZ2V0X3Bvd2VyX3N0YXRlKHN0cnVj
dCBudm1lX2N0cmwgKmN0cmwsIHUzMiAqcHMpCi17Ci0JcmV0dXJuIG52bWVfZ2V0X2ZlYXR1cmVz
KGN0cmwsIE5WTUVfRkVBVF9QT1dFUl9NR01ULCAwLCBOVUxMLCAwLCBwcyk7Ci19Ci0KLXN0YXRp
YyBpbnQgbnZtZV9zZXRfcG93ZXJfc3RhdGUoc3RydWN0IG52bWVfY3RybCAqY3RybCwgdTMyIHBz
KQotewotCXJldHVybiBudm1lX3NldF9mZWF0dXJlcyhjdHJsLCBOVk1FX0ZFQVRfUE9XRVJfTUdN
VCwgcHMsIE5VTEwsIDAsIE5VTEwpOwotfQotCi1zdGF0aWMgaW50IG52bWVfcmVzdW1lKHN0cnVj
dCBkZXZpY2UgKmRldikKLXsKLQlzdHJ1Y3QgbnZtZV9kZXYgKm5kZXYgPSBwY2lfZ2V0X2RydmRh
dGEodG9fcGNpX2RldihkZXYpKTsKLQlzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsID0gJm5kZXYtPmN0
cmw7Ci0KLQlpZiAocG1fcmVzdW1lX3ZpYV9maXJtd2FyZSgpIHx8ICFjdHJsLT5ucHNzIHx8Ci0J
ICAgIG52bWVfc2V0X3Bvd2VyX3N0YXRlKGN0cmwsIG5kZXYtPmxhc3RfcHMpICE9IDApCi0JCW52
bWVfcmVzZXRfY3RybChjdHJsKTsKLQlyZXR1cm4gMDsKLX0KLQogc3RhdGljIGludCBudm1lX3N1
c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQogewogCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gdG9f
cGNpX2RldihkZXYpOwogCXN0cnVjdCBudm1lX2RldiAqbmRldiA9IHBjaV9nZXRfZHJ2ZGF0YShw
ZGV2KTsKLQlzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsID0gJm5kZXYtPmN0cmw7Ci0JaW50IHJldCA9
IC1FQlVTWTsKLQotCS8qCi0JICogVGhlIHBsYXRmb3JtIGRvZXMgbm90IHJlbW92ZSBwb3dlciBm
b3IgYSBrZXJuZWwgbWFuYWdlZCBzdXNwZW5kIHNvCi0JICogdXNlIGhvc3QgbWFuYWdlZCBudm1l
IHBvd2VyIHNldHRpbmdzIGZvciBsb3dlc3QgaWRsZSBwb3dlciBpZgotCSAqIHBvc3NpYmxlLiBU
aGlzIHNob3VsZCBoYXZlIHF1aWNrZXIgcmVzdW1lIGxhdGVuY3kgdGhhbiBhIGZ1bGwgZGV2aWNl
Ci0JICogc2h1dGRvd24uICBCdXQgaWYgdGhlIGZpcm13YXJlIGlzIGludm9sdmVkIGFmdGVyIHRo
ZSBzdXNwZW5kIG9yIHRoZQotCSAqIGRldmljZSBkb2VzIG5vdCBzdXBwb3J0IGFueSBub24tZGVm
YXVsdCBwb3dlciBzdGF0ZXMsIHNodXQgZG93biB0aGUKLQkgKiBkZXZpY2UgZnVsbHkuCi0JICov
Ci0JaWYgKHBtX3N1c3BlbmRfdmlhX2Zpcm13YXJlKCkgfHwgIWN0cmwtPm5wc3MpIHsKLQkJbnZt
ZV9kZXZfZGlzYWJsZShuZGV2LCB0cnVlKTsKLQkJcmV0dXJuIDA7Ci0JfQotCi0JbnZtZV9zdGFy
dF9mcmVlemUoY3RybCk7Ci0JbnZtZV93YWl0X2ZyZWV6ZShjdHJsKTsKLQludm1lX3N5bmNfcXVl
dWVzKGN0cmwpOwotCi0JaWYgKGN0cmwtPnN0YXRlICE9IE5WTUVfQ1RSTF9MSVZFICYmCi0JICAg
IGN0cmwtPnN0YXRlICE9IE5WTUVfQ1RSTF9BRE1JTl9PTkxZKQotCQlnb3RvIHVuZnJlZXplOwot
Ci0JbmRldi0+bGFzdF9wcyA9IDA7Ci0JcmV0ID0gbnZtZV9nZXRfcG93ZXJfc3RhdGUoY3RybCwg
Jm5kZXYtPmxhc3RfcHMpOwotCWlmIChyZXQgPCAwKQotCQlnb3RvIHVuZnJlZXplOwotCi0JcmV0
ID0gbnZtZV9zZXRfcG93ZXJfc3RhdGUoY3RybCwgY3RybC0+bnBzcyk7Ci0JaWYgKHJldCA8IDAp
Ci0JCWdvdG8gdW5mcmVlemU7Ci0KLQlpZiAocmV0KSB7Ci0JCS8qCi0JCSAqIENsZWFyaW5nIG5w
c3MgZm9yY2VzIGEgY29udHJvbGxlciByZXNldCBvbiByZXN1bWUuIFRoZQotCQkgKiBjb3JyZWN0
IHZhbHVlIHdpbGwgYmUgcmVzZGljb3ZlcmVkIHRoZW4uCi0JCSAqLwotCQludm1lX2Rldl9kaXNh
YmxlKG5kZXYsIHRydWUpOwotCQljdHJsLT5ucHNzID0gMDsKLQkJcmV0ID0gMDsKLQkJZ290byB1
bmZyZWV6ZTsKLQl9Ci0JLyoKLQkgKiBBIHNhdmVkIHN0YXRlIHByZXZlbnRzIHBjaSBwbSBmcm9t
IGdlbmVyaWNhbGx5IGNvbnRyb2xsaW5nIHRoZQotCSAqIGRldmljZSdzIHBvd2VyLiBJZiB3ZSdy
ZSB1c2luZyBwcm90b2NvbCBzcGVjaWZpYyBzZXR0aW5ncywgd2UgZG9uJ3QKLQkgKiB3YW50IHBj
aSBpbnRlcmZlcmluZy4KLQkgKi8KLQlwY2lfc2F2ZV9zdGF0ZShwZGV2KTsKLXVuZnJlZXplOgot
CW52bWVfdW5mcmVlemUoY3RybCk7Ci0JcmV0dXJuIHJldDsKLX0KLQotc3RhdGljIGludCBudm1l
X3NpbXBsZV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKLXsKLQlzdHJ1Y3QgbnZtZV9kZXYg
Km5kZXYgPSBwY2lfZ2V0X2RydmRhdGEodG9fcGNpX2RldihkZXYpKTsKIAogCW52bWVfZGV2X2Rp
c2FibGUobmRldiwgdHJ1ZSk7CiAJcmV0dXJuIDA7CiB9CiAKLXN0YXRpYyBpbnQgbnZtZV9zaW1w
bGVfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikKK3N0YXRpYyBpbnQgbnZtZV9yZXN1bWUoc3Ry
dWN0IGRldmljZSAqZGV2KQogewogCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gdG9fcGNpX2Rldihk
ZXYpOwogCXN0cnVjdCBudm1lX2RldiAqbmRldiA9IHBjaV9nZXRfZHJ2ZGF0YShwZGV2KTsKQEAg
LTI5MjYsMTYgKzI4NDYsOSBAQCBzdGF0aWMgaW50IG52bWVfc2ltcGxlX3Jlc3VtZShzdHJ1Y3Qg
ZGV2aWNlICpkZXYpCiAJbnZtZV9yZXNldF9jdHJsKCZuZGV2LT5jdHJsKTsKIAlyZXR1cm4gMDsK
IH0KKyNlbmRpZgogCi1zdGF0aWMgY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgbnZtZV9kZXZfcG1f
b3BzID0gewotCS5zdXNwZW5kCT0gbnZtZV9zdXNwZW5kLAotCS5yZXN1bWUJCT0gbnZtZV9yZXN1
bWUsCi0JLmZyZWV6ZQkJPSBudm1lX3NpbXBsZV9zdXNwZW5kLAotCS50aGF3CQk9IG52bWVfc2lt
cGxlX3Jlc3VtZSwKLQkucG93ZXJvZmYJPSBudm1lX3NpbXBsZV9zdXNwZW5kLAotCS5yZXN0b3Jl
CT0gbnZtZV9zaW1wbGVfcmVzdW1lLAotfTsKLSNlbmRpZiAvKiBDT05GSUdfUE1fU0xFRVAgKi8K
K3N0YXRpYyBTSU1QTEVfREVWX1BNX09QUyhudm1lX2Rldl9wbV9vcHMsIG52bWVfc3VzcGVuZCwg
bnZtZV9yZXN1bWUpOwogCiBzdGF0aWMgcGNpX2Vyc19yZXN1bHRfdCBudm1lX2Vycm9yX2RldGVj
dGVkKHN0cnVjdCBwY2lfZGV2ICpwZGV2LAogCQkJCQkJcGNpX2NoYW5uZWxfc3RhdGVfdCBzdGF0
ZSkKQEAgLTMwNDIsMTEgKzI5NTUsOSBAQCBzdGF0aWMgc3RydWN0IHBjaV9kcml2ZXIgbnZtZV9k
cml2ZXIgPSB7CiAJLnByb2JlCQk9IG52bWVfcHJvYmUsCiAJLnJlbW92ZQkJPSBudm1lX3JlbW92
ZSwKIAkuc2h1dGRvd24JPSBudm1lX3NodXRkb3duLAotI2lmZGVmIENPTkZJR19QTV9TTEVFUAog
CS5kcml2ZXIJCT0gewogCQkucG0JPSAmbnZtZV9kZXZfcG1fb3BzLAogCX0sCi0jZW5kaWYKIAku
c3Jpb3ZfY29uZmlndXJlID0gcGNpX3NyaW92X2NvbmZpZ3VyZV9zaW1wbGUsCiAJLmVycl9oYW5k
bGVyCT0gJm52bWVfZXJyX2hhbmRsZXIsCiB9OwotLSAKMi4yMy4wLnJjMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
