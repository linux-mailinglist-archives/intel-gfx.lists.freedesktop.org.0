Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DB6420D1
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 11:31:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C81889453;
	Wed, 12 Jun 2019 09:31:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC35B89453
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 09:31:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16873864-1500050 
 for multiple; Wed, 12 Jun 2019 10:31:12 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jun 2019 10:31:07 +0100
Message-Id: <20190612093111.11684-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190612093111.11684-1-chris@chris-wilson.co.uk>
References: <20190612093111.11684-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/8] drm/i915: Flush the execution-callbacks on
 retiring
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

SW4gdGhlIHVubGlrZWx5IGNhc2UgdGhlIHJlcXVlc3QgY29tcGxldGVzIHdoaWxlIHdlIHJlZ2Fy
ZCBpdCBhcyBub3QgZXZlbgpleGVjdXRpbmcgb24gdGhlIEdQVSAoc2VlIHRoZSBuZXh0IHBhdGNo
ISksIHdlIGhhdmUgdG8gZmx1c2ggYW55IHBlbmRpbmcKZXhlY3V0aW9uIGNhbGxiYWNrcyBhdCBy
ZXRpcmVtZW50IGFuZCBlbnN1cmUgdGhhdCB3ZSBkbyBub3QgYWRkIGFueQptb3JlLgoKU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgfCA5MyArKysrKysrKysrKysrKystLS0t
LS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQ5IGluc2VydGlvbnMoKyksIDQ0IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKaW5kZXggNmIwYTRkOTM0M2E2Li42
YjI3ODkyZWJiYTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVz
dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCkBAIC0xMTksNiAr
MTE5LDUwIEBAIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGk5MTVfZmVuY2Vfb3BzID0gewog
CS5yZWxlYXNlID0gaTkxNV9mZW5jZV9yZWxlYXNlLAogfTsKIAorc3RhdGljIHZvaWQgaXJxX2V4
ZWN1dGVfY2Ioc3RydWN0IGlycV93b3JrICp3cmspCit7CisJc3RydWN0IGV4ZWN1dGVfY2IgKmNi
ID0gY29udGFpbmVyX29mKHdyaywgdHlwZW9mKCpjYiksIHdvcmspOworCisJaTkxNV9zd19mZW5j
ZV9jb21wbGV0ZShjYi0+ZmVuY2UpOworCWttZW1fY2FjaGVfZnJlZShnbG9iYWwuc2xhYl9leGVj
dXRlX2NicywgY2IpOworfQorCitzdGF0aWMgdm9pZCBpcnFfZXhlY3V0ZV9jYl9ob29rKHN0cnVj
dCBpcnFfd29yayAqd3JrKQoreworCXN0cnVjdCBleGVjdXRlX2NiICpjYiA9IGNvbnRhaW5lcl9v
Zih3cmssIHR5cGVvZigqY2IpLCB3b3JrKTsKKworCWNiLT5ob29rKGNvbnRhaW5lcl9vZihjYi0+
ZmVuY2UsIHN0cnVjdCBpOTE1X3JlcXVlc3QsIHN1Ym1pdCksCisJCSAmY2ItPnNpZ25hbC0+ZmVu
Y2UpOworCWk5MTVfcmVxdWVzdF9wdXQoY2ItPnNpZ25hbCk7CisKKwlpcnFfZXhlY3V0ZV9jYih3
cmspOworfQorCitzdGF0aWMgdm9pZCBfX25vdGlmeV9leGVjdXRlX2NiKHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJxKQoreworCXN0cnVjdCBleGVjdXRlX2NiICpjYjsKKworCWxvY2tkZXBfYXNzZXJ0
X2hlbGQoJnJxLT5sb2NrKTsKKworCWlmIChsaXN0X2VtcHR5KCZycS0+ZXhlY3V0ZV9jYikpCisJ
CXJldHVybjsKKworCWxpc3RfZm9yX2VhY2hfZW50cnkoY2IsICZycS0+ZXhlY3V0ZV9jYiwgbGlu
aykKKwkJaXJxX3dvcmtfcXVldWUoJmNiLT53b3JrKTsKKworCS8qCisJICogWFhYIFJvbGxiYWNr
IG9uIF9faTkxNV9yZXF1ZXN0X3Vuc3VibWl0KCkKKwkgKgorCSAqIEluIHRoZSBmdXR1cmUsIHBl
cmhhcHMgd2hlbiB3ZSBoYXZlIGFuIGFjdGl2ZSB0aW1lLXNsaWNpbmcgc2NoZWR1bGVyLAorCSAq
IGl0IHdpbGwgYmUgaW50ZXJlc3RpbmcgdG8gdW5zdWJtaXQgcGFyYWxsZWwgZXhlY3V0aW9uIGFu
ZCByZW1vdmUKKwkgKiBidXN5d2FpdHMgZnJvbSB0aGUgR1BVIHVudGlsIHRoZWlyIG1hc3RlciBp
cyByZXN0YXJ0ZWQuIFRoaXMgaXMKKwkgKiBxdWl0ZSBoYWlyeSwgd2UgaGF2ZSB0byBjYXJlZnVs
bHkgcm9sbGJhY2sgdGhlIGZlbmNlIGFuZCBkbyBhCisJICogcHJlZW1wdC10by1pZGxlIGN5Y2xl
IG9uIHRoZSB0YXJnZXQgZW5naW5lLCBhbGwgdGhlIHdoaWxlIHRoZQorCSAqIG1hc3RlciBleGVj
dXRlX2NiIG1heSByZWZpcmUuCisJICovCisJSU5JVF9MSVNUX0hFQUQoJnJxLT5leGVjdXRlX2Ni
KTsKK30KKwogc3RhdGljIGlubGluZSB2b2lkCiBpOTE1X3JlcXVlc3RfcmVtb3ZlX2Zyb21fY2xp
ZW50KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QpCiB7CkBAIC0yNDYsNiArMjkwLDExIEBA
IHN0YXRpYyBib29sIGk5MTVfcmVxdWVzdF9yZXRpcmUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEp
CiAJCUdFTV9CVUdfT04oIWF0b21pY19yZWFkKCZycS0+aTkxNS0+Z3RfcG0ucnBzLm51bV93YWl0
ZXJzKSk7CiAJCWF0b21pY19kZWMoJnJxLT5pOTE1LT5ndF9wbS5ycHMubnVtX3dhaXRlcnMpOwog
CX0KKwlpZiAoIXRlc3RfYml0KEk5MTVfRkVOQ0VfRkxBR19BQ1RJVkUsICZycS0+ZmVuY2UuZmxh
Z3MpKSB7CisJCXNldF9iaXQoSTkxNV9GRU5DRV9GTEFHX0FDVElWRSwgJnJxLT5mZW5jZS5mbGFn
cyk7CisJCV9fbm90aWZ5X2V4ZWN1dGVfY2IocnEpOworCX0KKwlHRU1fQlVHX09OKCFsaXN0X2Vt
cHR5KCZycS0+ZXhlY3V0ZV9jYikpOwogCXNwaW5fdW5sb2NrKCZycS0+bG9jayk7CiAKIAlsb2Nh
bF9pcnFfZW5hYmxlKCk7CkBAIC0yODUsNTAgKzMzNCw2IEBAIHZvaWQgaTkxNV9yZXF1ZXN0X3Jl
dGlyZV91cHRvKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogCX0gd2hpbGUgKGk5MTVfcmVxdWVz
dF9yZXRpcmUodG1wKSAmJiB0bXAgIT0gcnEpOwogfQogCi1zdGF0aWMgdm9pZCBpcnFfZXhlY3V0
ZV9jYihzdHJ1Y3QgaXJxX3dvcmsgKndyaykKLXsKLQlzdHJ1Y3QgZXhlY3V0ZV9jYiAqY2IgPSBj
b250YWluZXJfb2Yod3JrLCB0eXBlb2YoKmNiKSwgd29yayk7Ci0KLQlpOTE1X3N3X2ZlbmNlX2Nv
bXBsZXRlKGNiLT5mZW5jZSk7Ci0Ja21lbV9jYWNoZV9mcmVlKGdsb2JhbC5zbGFiX2V4ZWN1dGVf
Y2JzLCBjYik7Ci19Ci0KLXN0YXRpYyB2b2lkIGlycV9leGVjdXRlX2NiX2hvb2soc3RydWN0IGly
cV93b3JrICp3cmspCi17Ci0Jc3RydWN0IGV4ZWN1dGVfY2IgKmNiID0gY29udGFpbmVyX29mKHdy
aywgdHlwZW9mKCpjYiksIHdvcmspOwotCi0JY2ItPmhvb2soY29udGFpbmVyX29mKGNiLT5mZW5j
ZSwgc3RydWN0IGk5MTVfcmVxdWVzdCwgc3VibWl0KSwKLQkJICZjYi0+c2lnbmFsLT5mZW5jZSk7
Ci0JaTkxNV9yZXF1ZXN0X3B1dChjYi0+c2lnbmFsKTsKLQotCWlycV9leGVjdXRlX2NiKHdyayk7
Ci19Ci0KLXN0YXRpYyB2b2lkIF9fbm90aWZ5X2V4ZWN1dGVfY2Ioc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnEpCi17Ci0Jc3RydWN0IGV4ZWN1dGVfY2IgKmNiOwotCi0JbG9ja2RlcF9hc3NlcnRfaGVs
ZCgmcnEtPmxvY2spOwotCi0JaWYgKGxpc3RfZW1wdHkoJnJxLT5leGVjdXRlX2NiKSkKLQkJcmV0
dXJuOwotCi0JbGlzdF9mb3JfZWFjaF9lbnRyeShjYiwgJnJxLT5leGVjdXRlX2NiLCBsaW5rKQot
CQlpcnFfd29ya19xdWV1ZSgmY2ItPndvcmspOwotCi0JLyoKLQkgKiBYWFggUm9sbGJhY2sgb24g
X19pOTE1X3JlcXVlc3RfdW5zdWJtaXQoKQotCSAqCi0JICogSW4gdGhlIGZ1dHVyZSwgcGVyaGFw
cyB3aGVuIHdlIGhhdmUgYW4gYWN0aXZlIHRpbWUtc2xpY2luZyBzY2hlZHVsZXIsCi0JICogaXQg
d2lsbCBiZSBpbnRlcmVzdGluZyB0byB1bnN1Ym1pdCBwYXJhbGxlbCBleGVjdXRpb24gYW5kIHJl
bW92ZQotCSAqIGJ1c3l3YWl0cyBmcm9tIHRoZSBHUFUgdW50aWwgdGhlaXIgbWFzdGVyIGlzIHJl
c3RhcnRlZC4gVGhpcyBpcwotCSAqIHF1aXRlIGhhaXJ5LCB3ZSBoYXZlIHRvIGNhcmVmdWxseSBy
b2xsYmFjayB0aGUgZmVuY2UgYW5kIGRvIGEKLQkgKiBwcmVlbXB0LXRvLWlkbGUgY3ljbGUgb24g
dGhlIHRhcmdldCBlbmdpbmUsIGFsbCB0aGUgd2hpbGUgdGhlCi0JICogbWFzdGVyIGV4ZWN1dGVf
Y2IgbWF5IHJlZmlyZS4KLQkgKi8KLQlJTklUX0xJU1RfSEVBRCgmcnEtPmV4ZWN1dGVfY2IpOwot
fQotCiBzdGF0aWMgaW50CiBfX2k5MTVfcmVxdWVzdF9hd2FpdF9leGVjdXRpb24oc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEsCiAJCQkgICAgICAgc3RydWN0IGk5MTVfcmVxdWVzdCAqc2lnbmFsLAot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
