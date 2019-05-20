Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DDF22D82
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 10:02:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 074D28922B;
	Mon, 20 May 2019 08:02:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 490CD8920E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 08:02:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16610860-1500050 
 for multiple; Mon, 20 May 2019 09:01:32 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 May 2019 09:01:01 +0100
Message-Id: <20190520080127.18255-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520080127.18255-1-chris@chris-wilson.co.uk>
References: <20190520080127.18255-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/33] drm/i915: Apply an execution_mask to the
 virtual_engine
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

QWxsb3cgdGhlIHVzZXIgdG8gZGlyZWN0IHdoaWNoIHBoeXNpY2FsIGVuZ2luZXMgb2YgdGhlIHZp
cnR1YWwgZW5naW5lCnRoZXkgd2lzaCB0byBleGVjdXRlIG9uZSwgYXMgc29tZXRpbWVzIGl0IGlz
IG5lY2Vzc2FyeSB0byBvdmVycmlkZSB0aGUKbG9hZCBiYWxhbmNpbmcgYWxnb3JpdGhtLgoKdjI6
IE9ubHkga2ljayB0aGUgdmlydHVhbCBlbmdpbmVzIG9uIGNvbnRleHQtb3V0IGlmIHJlcXVpcmVk
CgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
Q2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+ClJldmlld2VkLWJ5
OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jICAgIHwgIDY3ICsrKysrKysrKysrKysKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jIHwgMTMxICsrKysrKysrKysrKysrKysr
KysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jICAgIHwgICAxICsK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5oICAgIHwgICAzICsKIDQgZmlsZXMg
Y2hhbmdlZCwgMjAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
CmluZGV4IGFmZmE1ZTJkZmNlMS4uMGI0ZDI5ZDQ4MTZiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYwpAQCAtNTA5LDYgKzUwOSwxNSBAQCBleGVjbGlzdHNfY29udGV4dF9zY2hlZHVs
ZV9pbihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIAlycS0+aHdfY29udGV4dC0+YWN0aXZlID0g
cnEtPmVuZ2luZTsKIH0KIAorc3RhdGljIHZvaWQga2lja19zaWJsaW5ncyhzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpycSkKK3sKKwlzdHJ1Y3QgdmlydHVhbF9lbmdpbmUgKnZlID0gdG9fdmlydHVhbF9l
bmdpbmUocnEtPmh3X2NvbnRleHQtPmVuZ2luZSk7CisJc3RydWN0IGk5MTVfcmVxdWVzdCAqbmV4
dCA9IFJFQURfT05DRSh2ZS0+cmVxdWVzdCk7CisKKwlpZiAobmV4dCAmJiBuZXh0LT5leGVjdXRp
b25fbWFzayAmIH5ycS0+ZXhlY3V0aW9uX21hc2spCisJCXRhc2tsZXRfc2NoZWR1bGUoJnZlLT5i
YXNlLmV4ZWNsaXN0cy50YXNrbGV0KTsKK30KKwogc3RhdGljIGlubGluZSB2b2lkCiBleGVjbGlz
dHNfY29udGV4dF9zY2hlZHVsZV9vdXQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIHVuc2lnbmVk
IGxvbmcgc3RhdHVzKQogewpAQCAtNTE2LDYgKzUyNSwxOCBAQCBleGVjbGlzdHNfY29udGV4dF9z
Y2hlZHVsZV9vdXQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIHVuc2lnbmVkIGxvbmcgc3RhdHVz
KQogCWludGVsX2VuZ2luZV9jb250ZXh0X291dChycS0+ZW5naW5lKTsKIAlleGVjbGlzdHNfY29u
dGV4dF9zdGF0dXNfY2hhbmdlKHJxLCBzdGF0dXMpOwogCXRyYWNlX2k5MTVfcmVxdWVzdF9vdXQo
cnEpOworCisJLyoKKwkgKiBJZiB0aGlzIGlzIHBhcnQgb2YgYSB2aXJ0dWFsIGVuZ2luZSwgaXRz
IG5leHQgcmVxdWVzdCBtYXkgaGF2ZQorCSAqIGJlZW4gYmxvY2tlZCB3YWl0aW5nIGZvciBhY2Nl
c3MgdG8gdGhlIGFjdGl2ZSBjb250ZXh0LiBXZSBoYXZlCisJICogdG8ga2ljayBhbGwgdGhlIHNp
YmxpbmdzIGFnYWluIGluIGNhc2Ugd2UgbmVlZCB0byBzd2l0Y2ggKGUuZy4KKwkgKiB0aGUgbmV4
dCByZXF1ZXN0IGlzIG5vdCBydW5uYWJsZSBvbiB0aGlzIGVuZ2luZSkuIEhvcGVmdWxseSwKKwkg
KiB3ZSB3aWxsIGFscmVhZHkgaGF2ZSBzdWJtaXR0ZWQgdGhlIG5leHQgcmVxdWVzdCBiZWZvcmUg
dGhlCisJICogdGFza2xldCBydW5zIGFuZCBkbyBub3QgbmVlZCB0byByZWJ1aWxkIGVhY2ggdmly
dHVhbCB0cmVlCisJICogYW5kIGtpY2sgZXZlcnlvbmUgYWdhaW4uCisJICovCisJaWYgKHJxLT5l
bmdpbmUgIT0gcnEtPmh3X2NvbnRleHQtPmVuZ2luZSkKKwkJa2lja19zaWJsaW5ncyhycSk7CiB9
CiAKIHN0YXRpYyB1NjQgZXhlY2xpc3RzX3VwZGF0ZV9jb250ZXh0KHN0cnVjdCBpOTE1X3JlcXVl
c3QgKnJxKQpAQCAtNzQ1LDYgKzc2Niw5IEBAIHN0YXRpYyBib29sIHZpcnR1YWxfbWF0Y2hlcyhj
b25zdCBzdHJ1Y3QgdmlydHVhbF9lbmdpbmUgKnZlLAogewogCWNvbnN0IHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmFjdGl2ZTsKIAorCWlmICghKHJxLT5leGVjdXRpb25fbWFzayAmIGVuZ2luZS0+
bWFzaykpIC8qIFdlIHBlZWtlZCB0b28gc29vbiEgKi8KKwkJcmV0dXJuIGZhbHNlOworCiAJLyoK
IAkgKiBXZSB0cmFjayB3aGVuIHRoZSBIVyBoYXMgY29tcGxldGVkIHNhdmluZyB0aGUgY29udGV4
dCBpbWFnZQogCSAqIChpLmUuIHdoZW4gd2UgaGF2ZSBzZWVuIHRoZSBmaW5hbCBDUyBldmVudCBz
d2l0Y2hpbmcgb3V0IG9mCkBAIC0zMTE4LDEyICszMTQyLDQ0IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgaW50ZWxfY29udGV4dF9vcHMgdmlydHVhbF9jb250ZXh0X29wcyA9IHsKIAkuZGVzdHJveSA9
IHZpcnR1YWxfY29udGV4dF9kZXN0cm95LAogfTsKIAorc3RhdGljIGludGVsX2VuZ2luZV9tYXNr
X3QgdmlydHVhbF9zdWJtaXNzaW9uX21hc2soc3RydWN0IHZpcnR1YWxfZW5naW5lICp2ZSkKK3sK
KwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKKwlpbnRlbF9lbmdpbmVfbWFza190IG1hc2s7CisK
KwlycSA9IFJFQURfT05DRSh2ZS0+cmVxdWVzdCk7CisJaWYgKCFycSkKKwkJcmV0dXJuIDA7CisK
KwkvKiBUaGUgcnEgaXMgcmVhZHkgZm9yIHN1Ym1pc3Npb247IHJxLT5leGVjdXRpb25fbWFzayBp
cyBub3cgc3RhYmxlLiAqLworCW1hc2sgPSBycS0+ZXhlY3V0aW9uX21hc2s7CisJaWYgKHVubGlr
ZWx5KCFtYXNrKSkgeworCQkvKiBJbnZhbGlkIHNlbGVjdGlvbiwgc3VibWl0IHRvIGEgcmFuZG9t
IGVuZ2luZSBpbiBlcnJvciAqLworCQlpOTE1X3JlcXVlc3Rfc2tpcChycSwgLUVOT0RFVik7CisJ
CW1hc2sgPSB2ZS0+c2libGluZ3NbMF0tPm1hc2s7CisJfQorCisJR0VNX1RSQUNFKCIlczogcnE9
JWxseDolbGxkLCBtYXNrPSV4LCBwcmlvPSVkXG4iLAorCQkgIHZlLT5iYXNlLm5hbWUsCisJCSAg
cnEtPmZlbmNlLmNvbnRleHQsIHJxLT5mZW5jZS5zZXFubywKKwkJICBtYXNrLCB2ZS0+YmFzZS5l
eGVjbGlzdHMucXVldWVfcHJpb3JpdHlfaGludCk7CisKKwlyZXR1cm4gbWFzazsKK30KKwogc3Rh
dGljIHZvaWQgdmlydHVhbF9zdWJtaXNzaW9uX3Rhc2tsZXQodW5zaWduZWQgbG9uZyBkYXRhKQog
ewogCXN0cnVjdCB2aXJ0dWFsX2VuZ2luZSAqIGNvbnN0IHZlID0gKHN0cnVjdCB2aXJ0dWFsX2Vu
Z2luZSAqKWRhdGE7CiAJY29uc3QgaW50IHByaW8gPSB2ZS0+YmFzZS5leGVjbGlzdHMucXVldWVf
cHJpb3JpdHlfaGludDsKKwlpbnRlbF9lbmdpbmVfbWFza190IG1hc2s7CiAJdW5zaWduZWQgaW50
IG47CiAKKwlyY3VfcmVhZF9sb2NrKCk7CisJbWFzayA9IHZpcnR1YWxfc3VibWlzc2lvbl9tYXNr
KHZlKTsKKwlyY3VfcmVhZF91bmxvY2soKTsKKwlpZiAodW5saWtlbHkoIW1hc2spKQorCQlyZXR1
cm47CisKIAlsb2NhbF9pcnFfZGlzYWJsZSgpOwogCWZvciAobiA9IDA7IFJFQURfT05DRSh2ZS0+
cmVxdWVzdCkgJiYgbiA8IHZlLT5udW1fc2libGluZ3M7IG4rKykgewogCQlzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICpzaWJsaW5nID0gdmUtPnNpYmxpbmdzW25dOwpAQCAtMzEzMSw2ICszMTg3LDE3
IEBAIHN0YXRpYyB2b2lkIHZpcnR1YWxfc3VibWlzc2lvbl90YXNrbGV0KHVuc2lnbmVkIGxvbmcg
ZGF0YSkKIAkJc3RydWN0IHJiX25vZGUgKipwYXJlbnQsICpyYjsKIAkJYm9vbCBmaXJzdDsKIAor
CQlpZiAodW5saWtlbHkoIShtYXNrICYgc2libGluZy0+bWFzaykpKSB7CisJCQlpZiAoIVJCX0VN
UFRZX05PREUoJm5vZGUtPnJiKSkgeworCQkJCXNwaW5fbG9jaygmc2libGluZy0+dGltZWxpbmUu
bG9jayk7CisJCQkJcmJfZXJhc2VfY2FjaGVkKCZub2RlLT5yYiwKKwkJCQkJCSZzaWJsaW5nLT5l
eGVjbGlzdHMudmlydHVhbCk7CisJCQkJUkJfQ0xFQVJfTk9ERSgmbm9kZS0+cmIpOworCQkJCXNw
aW5fdW5sb2NrKCZzaWJsaW5nLT50aW1lbGluZS5sb2NrKTsKKwkJCX0KKwkJCWNvbnRpbnVlOwor
CQl9CisKIAkJc3Bpbl9sb2NrKCZzaWJsaW5nLT50aW1lbGluZS5sb2NrKTsKIAogCQlpZiAoIVJC
X0VNUFRZX05PREUoJm5vZGUtPnJiKSkgewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3Qvc2VsZnRlc3RfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9s
cmMuYwppbmRleCBmODgwMjcxZmI5YmEuLjYxNjM3ZjUyNTY5MCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3Qvc2VsZnRlc3RfbHJjLmMKQEAgLTE0ODksNiArMTQ4OSwxMzYgQEAgc3RhdGljIGludCBs
aXZlX3ZpcnR1YWxfZW5naW5lKHZvaWQgKmFyZykKIAlyZXR1cm4gZXJyOwogfQogCitzdGF0aWMg
aW50IG1hc2tfdmlydHVhbF9lbmdpbmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCisJ
CQkgICAgICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqKnNpYmxpbmdzLAorCQkJICAgICAgIHVu
c2lnbmVkIGludCBuc2libGluZykKK3sKKwlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0W01B
WF9FTkdJTkVfSU5TVEFOQ0UgKyAxXTsKKwlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4Owor
CXN0cnVjdCBpbnRlbF9jb250ZXh0ICp2ZTsKKwlzdHJ1Y3QgaWd0X2xpdmVfdGVzdCB0OworCXVu
c2lnbmVkIGludCBuOworCWludCBlcnI7CisKKwkvKgorCSAqIENoZWNrIHRoYXQgYnkgc2V0dGlu
ZyB0aGUgZXhlY3V0aW9uIG1hc2sgb24gYSByZXF1ZXN0LCB3ZSBjYW4KKwkgKiByZXN0cmljdCBp
dCB0byBvdXIgZGVzaXJlZCBlbmdpbmUgd2l0aGluIHRoZSB2aXJ0dWFsIGVuZ2luZS4KKwkgKi8K
KworCWN0eCA9IGtlcm5lbF9jb250ZXh0KGk5MTUpOworCWlmICghY3R4KQorCQlyZXR1cm4gLUVO
T01FTTsKKworCXZlID0gaW50ZWxfZXhlY2xpc3RzX2NyZWF0ZV92aXJ0dWFsKGN0eCwgc2libGlu
Z3MsIG5zaWJsaW5nKTsKKwlpZiAoSVNfRVJSKHZlKSkgeworCQllcnIgPSBQVFJfRVJSKHZlKTsK
KwkJZ290byBvdXRfY2xvc2U7CisJfQorCisJZXJyID0gaW50ZWxfY29udGV4dF9waW4odmUpOwor
CWlmIChlcnIpCisJCWdvdG8gb3V0X3B1dDsKKworCWVyciA9IGlndF9saXZlX3Rlc3RfYmVnaW4o
JnQsIGk5MTUsIF9fZnVuY19fLCB2ZS0+ZW5naW5lLT5uYW1lKTsKKwlpZiAoZXJyKQorCQlnb3Rv
IG91dF91bnBpbjsKKworCWZvciAobiA9IDA7IG4gPCBuc2libGluZzsgbisrKSB7CisJCXJlcXVl
c3Rbbl0gPSBpOTE1X3JlcXVlc3RfY3JlYXRlKHZlKTsKKwkJaWYgKElTX0VSUihyZXF1ZXN0KSkg
eworCQkJZXJyID0gUFRSX0VSUihyZXF1ZXN0KTsKKwkJCW5zaWJsaW5nID0gbjsKKwkJCWdvdG8g
b3V0OworCQl9CisKKwkJLyogUmV2ZXJzZSBvcmRlciBhcyBpdCdzIG1vcmUgbGlrZWx5IHRvIGJl
IHVubmF0dXJhbCAqLworCQlyZXF1ZXN0W25dLT5leGVjdXRpb25fbWFzayA9IHNpYmxpbmdzW25z
aWJsaW5nIC0gbiAtIDFdLT5tYXNrOworCisJCWk5MTVfcmVxdWVzdF9nZXQocmVxdWVzdFtuXSk7
CisJCWk5MTVfcmVxdWVzdF9hZGQocmVxdWVzdFtuXSk7CisJfQorCisJZm9yIChuID0gMDsgbiA8
IG5zaWJsaW5nOyBuKyspIHsKKwkJaWYgKGk5MTVfcmVxdWVzdF93YWl0KHJlcXVlc3Rbbl0sIEk5
MTVfV0FJVF9MT0NLRUQsIEhaIC8gMTApIDwgMCkgeworCQkJcHJfZXJyKCIlcyglcyk6IHdhaXQg
Zm9yICVsbHg6JWxsZCB0aW1lZCBvdXRcbiIsCisJCQkgICAgICAgX19mdW5jX18sIHZlLT5lbmdp
bmUtPm5hbWUsCisJCQkgICAgICAgcmVxdWVzdFtuXS0+ZmVuY2UuY29udGV4dCwKKwkJCSAgICAg
ICByZXF1ZXN0W25dLT5mZW5jZS5zZXFubyk7CisKKwkJCUdFTV9UUkFDRSgiJXMoJXMpIGZhaWxl
ZCBhdCByZXF1ZXN0ICVsbHg6JWxsZFxuIiwKKwkJCQkgIF9fZnVuY19fLCB2ZS0+ZW5naW5lLT5u
YW1lLAorCQkJCSAgcmVxdWVzdFtuXS0+ZmVuY2UuY29udGV4dCwKKwkJCQkgIHJlcXVlc3Rbbl0t
PmZlbmNlLnNlcW5vKTsKKwkJCUdFTV9UUkFDRV9EVU1QKCk7CisJCQlpOTE1X2dlbV9zZXRfd2Vk
Z2VkKGk5MTUpOworCQkJZXJyID0gLUVJTzsKKwkJCWdvdG8gb3V0OworCQl9CisKKwkJaWYgKHJl
cXVlc3Rbbl0tPmVuZ2luZSAhPSBzaWJsaW5nc1tuc2libGluZyAtIG4gLSAxXSkgeworCQkJcHJf
ZXJyKCJFeGVjdXRlZCBvbiB3cm9uZyBzaWJsaW5nICclcycsIGV4cGVjdGVkICclcydcbiIsCisJ
CQkgICAgICAgcmVxdWVzdFtuXS0+ZW5naW5lLT5uYW1lLAorCQkJICAgICAgIHNpYmxpbmdzW25z
aWJsaW5nIC0gbiAtIDFdLT5uYW1lKTsKKwkJCWVyciA9IC1FSU5WQUw7CisJCQlnb3RvIG91dDsK
KwkJfQorCX0KKworCWVyciA9IGlndF9saXZlX3Rlc3RfZW5kKCZ0KTsKKwlpZiAoZXJyKQorCQln
b3RvIG91dDsKKworb3V0OgorCWlmIChpZ3RfZmx1c2hfdGVzdChpOTE1LCBJOTE1X1dBSVRfTE9D
S0VEKSkKKwkJZXJyID0gLUVJTzsKKworCWZvciAobiA9IDA7IG4gPCBuc2libGluZzsgbisrKQor
CQlpOTE1X3JlcXVlc3RfcHV0KHJlcXVlc3Rbbl0pOworCitvdXRfdW5waW46CisJaW50ZWxfY29u
dGV4dF91bnBpbih2ZSk7CitvdXRfcHV0OgorCWludGVsX2NvbnRleHRfcHV0KHZlKTsKK291dF9j
bG9zZToKKwlrZXJuZWxfY29udGV4dF9jbG9zZShjdHgpOworCXJldHVybiBlcnI7Cit9CisKK3N0
YXRpYyBpbnQgbGl2ZV92aXJ0dWFsX21hc2sodm9pZCAqYXJnKQoreworCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0gYXJnOworCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKnNpYmxpbmdz
W01BWF9FTkdJTkVfSU5TVEFOQ0UgKyAxXTsKKwl1bnNpZ25lZCBpbnQgY2xhc3MsIGluc3Q7CisJ
aW50IGVyciA9IDA7CisKKwlpZiAoVVNFU19HVUNfU1VCTUlTU0lPTihpOTE1KSkKKwkJcmV0dXJu
IDA7CisKKwltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKKworCWZvciAoY2xh
c3MgPSAwOyBjbGFzcyA8PSBNQVhfRU5HSU5FX0NMQVNTOyBjbGFzcysrKSB7CisJCXVuc2lnbmVk
IGludCBuc2libGluZzsKKworCQluc2libGluZyA9IDA7CisJCWZvciAoaW5zdCA9IDA7IGluc3Qg
PD0gTUFYX0VOR0lORV9JTlNUQU5DRTsgaW5zdCsrKSB7CisJCQlpZiAoIWk5MTUtPmVuZ2luZV9j
bGFzc1tjbGFzc11baW5zdF0pCisJCQkJYnJlYWs7CisKKwkJCXNpYmxpbmdzW25zaWJsaW5nKytd
ID0gaTkxNS0+ZW5naW5lX2NsYXNzW2NsYXNzXVtpbnN0XTsKKwkJfQorCQlpZiAobnNpYmxpbmcg
PCAyKQorCQkJY29udGludWU7CisKKwkJZXJyID0gbWFza192aXJ0dWFsX2VuZ2luZShpOTE1LCBz
aWJsaW5ncywgbnNpYmxpbmcpOworCQlpZiAoZXJyKQorCQkJZ290byBvdXRfdW5sb2NrOworCX0K
Kworb3V0X3VubG9jazoKKwltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwor
CXJldHVybiBlcnI7Cit9CisKIGludCBpbnRlbF9leGVjbGlzdHNfbGl2ZV9zZWxmdGVzdHMoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7CiAJc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1
X3N1YnRlc3QgdGVzdHNbXSA9IHsKQEAgLTE1MDIsNiArMTYzMiw3IEBAIGludCBpbnRlbF9leGVj
bGlzdHNfbGl2ZV9zZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCVNV
QlRFU1QobGl2ZV9wcmVlbXB0X2hhbmcpLAogCQlTVUJURVNUKGxpdmVfcHJlZW1wdF9zbW9rZSks
CiAJCVNVQlRFU1QobGl2ZV92aXJ0dWFsX2VuZ2luZSksCisJCVNVQlRFU1QobGl2ZV92aXJ0dWFs
X21hc2spLAogCX07CiAKIAlpZiAoIUhBU19FWEVDTElTVFMoaTkxNSkpCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVxdWVzdC5jCmluZGV4IDJmY2EwYjU5NTc4ZC4uODA5ZDZlZTEwZGE2IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwpAQCAtNjk0LDYgKzY5NCw3IEBAIF9faTkxNV9yZXF1
ZXN0X2NyZWF0ZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsIGdmcF90IGdmcCkKIAlycS0+YmF0
Y2ggPSBOVUxMOwogCXJxLT5jYXB0dXJlX2xpc3QgPSBOVUxMOwogCXJxLT53YWl0Ym9vc3QgPSBm
YWxzZTsKKwlycS0+ZXhlY3V0aW9uX21hc2sgPSBBTExfRU5HSU5FUzsKIAogCUlOSVRfTElTVF9I
RUFEKCZycS0+YWN0aXZlX2xpc3QpOwogCUlOSVRfTElTVF9IRUFEKCZycS0+ZXhlY3V0ZV9jYik7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5oCmluZGV4IDgwMjVhODliNTk5OS4uZDdmOWIy
MTk0NTY4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaApAQCAtMjgsNiArMjgsOCBA
QAogI2luY2x1ZGUgPGxpbnV4L2RtYS1mZW5jZS5oPgogI2luY2x1ZGUgPGxpbnV4L2xvY2tkZXAu
aD4KIAorI2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZV90eXBlcy5oIgorCiAjaW5jbHVkZSAiaTkx
NV9nZW0uaCIKICNpbmNsdWRlICJpOTE1X3NjaGVkdWxlci5oIgogI2luY2x1ZGUgImk5MTVfc2Vs
ZnRlc3QuaCIKQEAgLTE1Niw2ICsxNTgsNyBAQCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0IHsKIAkgKi8K
IAlzdHJ1Y3QgaTkxNV9zY2hlZF9ub2RlIHNjaGVkOwogCXN0cnVjdCBpOTE1X2RlcGVuZGVuY3kg
ZGVwOworCWludGVsX2VuZ2luZV9tYXNrX3QgZXhlY3V0aW9uX21hc2s7CiAKIAkvKgogCSAqIEEg
Y29udmVuaWVuY2UgcG9pbnRlciB0byB0aGUgY3VycmVudCBicmVhZGNydW1iIHZhbHVlIHN0b3Jl
ZCBpbgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
