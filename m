Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB3417323
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 10:07:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37FC089394;
	Wed,  8 May 2019 08:07:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72F47893AB
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 08:07:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16485917-1500050 
 for multiple; Wed, 08 May 2019 09:07:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 May 2019 09:06:41 +0100
Message-Id: <20190508080704.24223-17-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190508080704.24223-1-chris@chris-wilson.co.uk>
References: <20190508080704.24223-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/40] drm/i915/execlists: Virtual engine bonding
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

U29tZSB1c2VycyByZXF1aXJlIHRoYXQgd2hlbiBhIG1hc3RlciBiYXRjaCBpcyBleGVjdXRlZCBv
biBvbmUgcGFydGljdWxhcgplbmdpbmUsIGEgY29tcGFuaW9uIGJhdGNoIGlzIHJ1biBzaW11bHRh
bmVvdXNseSBvbiBhIHNwZWNpZmljIHNsYXZlCmVuZ2luZS4gRm9yIHRoaXMgcHVycG9zZSwgd2Ug
aW50cm9kdWNlIHZpcnR1YWwgZW5naW5lIGJvbmRpbmcsIGFsbG93aW5nCm1hcHMgb2YgbWFzdGVy
OnNsYXZlcyB0byBiZSBjb25zdHJ1Y3RlZCB0byBjb25zdHJhaW4gd2hpY2ggcGh5c2ljYWwKZW5n
aW5lcyBhIHZpcnR1YWwgZW5naW5lIG1heSBzZWxlY3QgZ2l2ZW4gYSBmZW5jZSBvbiBhIG1hc3Rl
ciBlbmdpbmUuCgpGb3IgdGhlIG1vbWVudCwgd2UgY29udGludWUgdG8gaWdub3JlIHRoZSBpc3N1
ZSBvZiBwcmVlbXB0aW9uIGRlZmVycmluZwp0aGUgbWFzdGVyIHJlcXVlc3QgZm9yIGxhdGVyLiBJ
ZGVhbGx5LCB3ZSB3b3VsZCBsaWtlIHRvIHRoZW4gYWxzbyByZW1vdmUKdGhlIHNsYXZlIGFuZCBy
dW4gc29tZXRoaW5nIGVsc2UgcmF0aGVyIHRoYW4gaGF2ZSBpdCBzdGFsbCB0aGUgcGlwZWxpbmUu
CldpdGggbG9hZCBiYWxhbmNpbmcsIHdlIHNob3VsZCBiZSBhYmxlIHRvIG1vdmUgd29ya2xvYWQg
YXJvdW5kIGl0LCBidXQKdGhlcmUgaXMgYSBzaW1pbGFyIHN0YWxsIG9uIHRoZSBtYXN0ZXIgcGlw
ZWxpbmUgd2hpbGUgaXQgbWF5IHdhaXQgZm9yCnRoZSBzbGF2ZSB0byBiZSBleGVjdXRlZC4gQXQg
dGhlIGNvc3Qgb2YgbW9yZSBsYXRlbmN5IGZvciB0aGUgYm9uZGVkCnJlcXVlc3QsIGl0IG1heSBi
ZSBpbnRlcmVzdGluZyB0byBsYXVuY2ggYm90aCBvbiB0aGVpciBlbmdpbmVzIGluCmxvY2tzdGVw
LiAoQnViYmxlcyBhYm91bmQuKQoKT3BlbnM6IEFsc28gd2hhdCBhYm91dCBib25kaW5nIGFuIGVu
Z2luZSBhcyBpdHMgb3duIG1hc3Rlcj8gSXQgZG9lc24ndApicmVhayBhbnl0aGluZyBpbnRlcm5h
bGx5LCBzbyBhbGxvdyB0aGUgc2lsbGluZXNzLgoKdjI6IEVtYW5jaXBhdGUgdGhlIGJvbmRzCnYz
OiBDb3VwbGUgaW4gZGVsYXllZCBzY2hlZHVsaW5nIGZvciB0aGUgc2VsZnRlc3RzCnY0OiBIYW5k
bGUgaW52YWxpZCBtdXR1YWxseSBleGNsdXNpdmUgYm9uZGluZwp2NTogTWVudGlvbiB3aGF0IHRo
ZSB1YXBpIGRvZXMKdjY6IHMvbmJvbmQvbnVtX2JvbmRzLwoKU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZy
dGtvLnVyc3VsaW5AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfdHlwZXMuaCAgfCAgIDcgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJj
LmMgICAgICAgICAgIHwgIDk4ICsrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmggICAgICAgICAgIHwgICA0ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0
ZXN0X2xyYy5jICAgICAgICB8IDE5MSArKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2NvbnRleHQuYyAgICAgICB8ICA4NCArKysrKysrKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvc2VsZnRlc3RzL2xpYl9zd19mZW5jZS5jIHwgICAzICsKIGluY2x1ZGUvdWFw
aS9kcm0vaTkxNV9kcm0uaCAgICAgICAgICAgICAgICAgICB8ICA0NCArKysrCiA3IGZpbGVzIGNo
YW5nZWQsIDQzMSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfdHlwZXMuaAppbmRleCA3YjQ3ZTAwZmEwODIuLmYzZmMyZThhY2M5MCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKQEAgLTQwNSw2ICs0
MDUsMTMgQEAgc3RydWN0IGludGVsX2VuZ2luZV9jcyB7CiAJICovCiAJdm9pZAkJKCpzdWJtaXRf
cmVxdWVzdCkoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpOwogCisJLyoKKwkgKiBDYWxsZWQgb24g
c2lnbmFsaW5nIG9mIGEgU1VCTUlUX0ZFTkNFLCBwYXNzaW5nIGFsb25nIHRoZSBzaWduYWxpbmcK
KwkgKiByZXF1ZXN0IGRvd24gdG8gdGhlIGJvbmRlZCBwYWlycy4KKwkgKi8KKwl2b2lkICAgICAg
ICAgICAgKCpib25kX2V4ZWN1dGUpKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAorCQkJCQlzdHJ1
Y3QgZG1hX2ZlbmNlICpzaWduYWwpOworCiAJLyoKIAkgKiBDYWxsIHdoZW4gdGhlIHByaW9yaXR5
IG9uIGEgcmVxdWVzdCBoYXMgY2hhbmdlZCBhbmQgaXQgYW5kIGl0cwogCSAqIGRlcGVuZGVuY2ll
cyBtYXkgbmVlZCByZXNjaGVkdWxpbmcuIE5vdGUgdGhlIHJlcXVlc3QgaXRzZWxmIG1heQpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCA2OTg0OWZmYjljODIuLjVkODBmOTk2NjFi
YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTE5MSw2ICsxOTEsMTggQEAg
c3RydWN0IHZpcnR1YWxfZW5naW5lIHsKIAkJaW50IHByaW87CiAJfSBub2Rlc1tJOTE1X05VTV9F
TkdJTkVTXTsKIAorCS8qCisJICogS2VlcCB0cmFjayBvZiBib25kZWQgcGFpcnMgLS0gcmVzdHJp
Y3Rpb25zIHVwb24gb24gb3VyIHNlbGVjdGlvbgorCSAqIG9mIHBoeXNpY2FsIGVuZ2luZXMgYW55
IHBhcnRpY3VsYXIgcmVxdWVzdCBtYXkgYmUgc3VibWl0dGVkIHRvLgorCSAqIElmIHdlIHJlY2Vp
dmUgYSBzdWJtaXQtZmVuY2UgZnJvbSBhIG1hc3RlciBlbmdpbmUsIHdlIHdpbGwgb25seQorCSAq
IHVzZSBvbmUgb2Ygc2libGluZ19tYXNrIHBoeXNpY2FsIGVuZ2luZXMuCisJICovCisJc3RydWN0
IHZlX2JvbmQgeworCQljb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICptYXN0ZXI7CisJCWlu
dGVsX2VuZ2luZV9tYXNrX3Qgc2libGluZ19tYXNrOworCX0gKmJvbmRzOworCXVuc2lnbmVkIGlu
dCBudW1fYm9uZHM7CisKIAkvKiBBbmQgZmluYWxseSwgd2hpY2ggcGh5c2ljYWwgZW5naW5lcyB0
aGlzIHZpcnR1YWwgZW5naW5lIG1hcHMgb250by4gKi8KIAl1bnNpZ25lZCBpbnQgbnVtX3NpYmxp
bmdzOwogCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKnNpYmxpbmdzWzBdOwpAQCAtMTAwMiw2ICsx
MDE0LDcgQEAgc3RhdGljIHZvaWQgZXhlY2xpc3RzX2RlcXVldWUoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lKQogCQkJcmJfZXJhc2VfY2FjaGVkKHJiLCAmZXhlY2xpc3RzLT52aXJ0dWFs
KTsKIAkJCVJCX0NMRUFSX05PREUocmIpOwogCisJCQlHRU1fQlVHX09OKCEocnEtPmV4ZWN1dGlv
bl9tYXNrICYgZW5naW5lLT5tYXNrKSk7CiAJCQlycS0+ZW5naW5lID0gZW5naW5lOwogCiAJCQlp
ZiAoZW5naW5lICE9IHZlLT5zaWJsaW5nc1swXSkgewpAQCAtMzExMCw2ICszMTIzLDggQEAgc3Rh
dGljIHZvaWQgdmlydHVhbF9jb250ZXh0X2Rlc3Ryb3koc3RydWN0IGtyZWYgKmtyZWYpCiAJaWYg
KHZlLT5jb250ZXh0LnN0YXRlKQogCQlfX2V4ZWNsaXN0c19jb250ZXh0X2ZpbmkoJnZlLT5jb250
ZXh0KTsKIAorCWtmcmVlKHZlLT5ib25kcyk7CisKIAlpOTE1X3RpbWVsaW5lX2ZpbmkoJnZlLT5i
YXNlLnRpbWVsaW5lKTsKIAlrZnJlZSh2ZSk7CiB9CkBAIC0zMzA2LDYgKzMzMjEsMzggQEAgc3Rh
dGljIHZvaWQgdmlydHVhbF9zdWJtaXRfcmVxdWVzdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkK
IAl0YXNrbGV0X3NjaGVkdWxlKCZ2ZS0+YmFzZS5leGVjbGlzdHMudGFza2xldCk7CiB9CiAKK3N0
YXRpYyBzdHJ1Y3QgdmVfYm9uZCAqCit2aXJ0dWFsX2ZpbmRfYm9uZChzdHJ1Y3QgdmlydHVhbF9l
bmdpbmUgKnZlLAorCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKm1hc3RlcikKK3sK
KwlpbnQgaTsKKworCWZvciAoaSA9IDA7IGkgPCB2ZS0+bnVtX2JvbmRzOyBpKyspIHsKKwkJaWYg
KHZlLT5ib25kc1tpXS5tYXN0ZXIgPT0gbWFzdGVyKQorCQkJcmV0dXJuICZ2ZS0+Ym9uZHNbaV07
CisJfQorCisJcmV0dXJuIE5VTEw7Cit9CisKK3N0YXRpYyB2b2lkCit2aXJ0dWFsX2JvbmRfZXhl
Y3V0ZShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgc3RydWN0IGRtYV9mZW5jZSAqc2lnbmFsKQor
eworCXN0cnVjdCB2aXJ0dWFsX2VuZ2luZSAqdmUgPSB0b192aXJ0dWFsX2VuZ2luZShycS0+ZW5n
aW5lKTsKKwlzdHJ1Y3QgdmVfYm9uZCAqYm9uZDsKKworCWJvbmQgPSB2aXJ0dWFsX2ZpbmRfYm9u
ZCh2ZSwgdG9fcmVxdWVzdChzaWduYWwpLT5lbmdpbmUpOworCWlmIChib25kKSB7CisJCWludGVs
X2VuZ2luZV9tYXNrX3Qgb2xkLCBuZXcsIGNtcDsKKworCQljbXAgPSBSRUFEX09OQ0UocnEtPmV4
ZWN1dGlvbl9tYXNrKTsKKwkJZG8geworCQkJb2xkID0gY21wOworCQkJbmV3ID0gY21wICYgYm9u
ZC0+c2libGluZ19tYXNrOworCQl9IHdoaWxlICgoY21wID0gY21weGNoZygmcnEtPmV4ZWN1dGlv
bl9tYXNrLCBvbGQsIG5ldykpICE9IG9sZCk7CisJfQorfQorCiBzdHJ1Y3QgaW50ZWxfY29udGV4
dCAqCiBpbnRlbF9leGVjbGlzdHNfY3JlYXRlX3ZpcnR1YWwoc3RydWN0IGk5MTVfZ2VtX2NvbnRl
eHQgKmN0eCwKIAkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICoqc2libGluZ3MsCkBA
IC0zMzQ2LDYgKzMzOTMsNyBAQCBpbnRlbF9leGVjbGlzdHNfY3JlYXRlX3ZpcnR1YWwoc3RydWN0
IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKIAogCXZlLT5iYXNlLnNjaGVkdWxlID0gaTkxNV9zY2hl
ZHVsZTsKIAl2ZS0+YmFzZS5zdWJtaXRfcmVxdWVzdCA9IHZpcnR1YWxfc3VibWl0X3JlcXVlc3Q7
CisJdmUtPmJhc2UuYm9uZF9leGVjdXRlID0gdmlydHVhbF9ib25kX2V4ZWN1dGU7CiAKIAl2ZS0+
YmFzZS5leGVjbGlzdHMucXVldWVfcHJpb3JpdHlfaGludCA9IElOVF9NSU47CiAJdGFza2xldF9p
bml0KCZ2ZS0+YmFzZS5leGVjbGlzdHMudGFza2xldCwKQEAgLTM0MzUsOSArMzQ4Myw1OSBAQCBp
bnRlbF9leGVjbGlzdHNfY2xvbmVfdmlydHVhbChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4
LAogCWlmIChJU19FUlIoZHN0KSkKIAkJcmV0dXJuIGRzdDsKIAorCWlmIChzZS0+bnVtX2JvbmRz
KSB7CisJCXN0cnVjdCB2aXJ0dWFsX2VuZ2luZSAqZGUgPSB0b192aXJ0dWFsX2VuZ2luZShkc3Qt
PmVuZ2luZSk7CisKKwkJZGUtPmJvbmRzID0ga21lbWR1cChzZS0+Ym9uZHMsCisJCQkJICAgIHNp
emVvZigqc2UtPmJvbmRzKSAqIHNlLT5udW1fYm9uZHMsCisJCQkJICAgIEdGUF9LRVJORUwpOwor
CQlpZiAoIWRlLT5ib25kcykgeworCQkJaW50ZWxfY29udGV4dF9wdXQoZHN0KTsKKwkJCXJldHVy
biBFUlJfUFRSKC1FTk9NRU0pOworCQl9CisKKwkJZGUtPm51bV9ib25kcyA9IHNlLT5udW1fYm9u
ZHM7CisJfQorCiAJcmV0dXJuIGRzdDsKIH0KIAoraW50IGludGVsX3ZpcnR1YWxfZW5naW5lX2F0
dGFjaF9ib25kKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKKwkJCQkgICAgIGNvbnN0
IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKm1hc3RlciwKKwkJCQkgICAgIGNvbnN0IHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKnNpYmxpbmcpCit7CisJc3RydWN0IHZpcnR1YWxfZW5naW5lICp2ZSA9
IHRvX3ZpcnR1YWxfZW5naW5lKGVuZ2luZSk7CisJc3RydWN0IHZlX2JvbmQgKmJvbmQ7CisJaW50
IG47CisKKwkvKiBTYW5pdHkgY2hlY2sgdGhlIHNpYmxpbmcgaXMgcGFydCBvZiB0aGUgdmlydHVh
bCBlbmdpbmUgKi8KKwlmb3IgKG4gPSAwOyBuIDwgdmUtPm51bV9zaWJsaW5nczsgbisrKQorCQlp
ZiAoc2libGluZyA9PSB2ZS0+c2libGluZ3Nbbl0pCisJCQlicmVhazsKKwlpZiAobiA9PSB2ZS0+
bnVtX3NpYmxpbmdzKQorCQlyZXR1cm4gLUVJTlZBTDsKKworCWJvbmQgPSB2aXJ0dWFsX2ZpbmRf
Ym9uZCh2ZSwgbWFzdGVyKTsKKwlpZiAoYm9uZCkgeworCQlib25kLT5zaWJsaW5nX21hc2sgfD0g
c2libGluZy0+bWFzazsKKwkJcmV0dXJuIDA7CisJfQorCisJYm9uZCA9IGtyZWFsbG9jKHZlLT5i
b25kcywKKwkJCXNpemVvZigqYm9uZCkgKiAodmUtPm51bV9ib25kcyArIDEpLAorCQkJR0ZQX0tF
Uk5FTCk7CisJaWYgKCFib25kKQorCQlyZXR1cm4gLUVOT01FTTsKKworCWJvbmRbdmUtPm51bV9i
b25kc10ubWFzdGVyID0gbWFzdGVyOworCWJvbmRbdmUtPm51bV9ib25kc10uc2libGluZ19tYXNr
ID0gc2libGluZy0+bWFzazsKKworCXZlLT5ib25kcyA9IGJvbmQ7CisJdmUtPm51bV9ib25kcysr
OworCisJcmV0dXJuIDA7Cit9CisKIHZvaWQgaW50ZWxfZXhlY2xpc3RzX3Nob3dfcmVxdWVzdHMo
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAogCQkJCSAgIHN0cnVjdCBkcm1fcHJpbnRl
ciAqbSwKIAkJCQkgICB2b2lkICgqc2hvd19yZXF1ZXN0KShzdHJ1Y3QgZHJtX3ByaW50ZXIgKm0s
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5oCmluZGV4IDU1MzA2MDYwNTJlNS4uZTAyOWFl
ZTg3YWRmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuaApAQCAtMTIzLDQgKzEyMyw4
IEBAIHN0cnVjdCBpbnRlbF9jb250ZXh0ICoKIGludGVsX2V4ZWNsaXN0c19jbG9uZV92aXJ0dWFs
KHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCiAJCQkgICAgICBzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICpzcmMpOwogCitpbnQgaW50ZWxfdmlydHVhbF9lbmdpbmVfYXR0YWNoX2JvbmQoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAorCQkJCSAgICAgY29uc3Qgc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqbWFzdGVyLAorCQkJCSAgICAgY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqc2libGluZyk7CisKICNlbmRpZiAvKiBfSU5URUxfTFJDX0hfICovCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3NlbGZ0ZXN0X2xyYy5jCmluZGV4IDJlZjc2MzllZTY2NS4uNDc1ZDA0MDZmN2NlIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYwpAQCAtMTMsNiArMTMsNyBAQAog
I2luY2x1ZGUgInNlbGZ0ZXN0cy9pZ3RfZ2VtX3V0aWxzLmgiCiAjaW5jbHVkZSAic2VsZnRlc3Rz
L2lndF9saXZlX3Rlc3QuaCIKICNpbmNsdWRlICJzZWxmdGVzdHMvaWd0X3NwaW5uZXIuaCIKKyNp
bmNsdWRlICJzZWxmdGVzdHMvbGliX3N3X2ZlbmNlLmgiCiAjaW5jbHVkZSAic2VsZnRlc3RzL21v
Y2tfY29udGV4dC5oIgogCiBzdGF0aWMgaW50IGxpdmVfc2FuaXR5Y2hlY2sodm9pZCAqYXJnKQpA
QCAtMTYxOSw2ICsxNjIwLDE5NSBAQCBzdGF0aWMgaW50IGxpdmVfdmlydHVhbF9tYXNrKHZvaWQg
KmFyZykKIAlyZXR1cm4gZXJyOwogfQogCitzdGF0aWMgaW50IGJvbmRfdmlydHVhbF9lbmdpbmUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCisJCQkgICAgICAgdW5zaWduZWQgaW50IGNs
YXNzLAorCQkJICAgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKipzaWJsaW5ncywKKwkJCSAg
ICAgICB1bnNpZ25lZCBpbnQgbnNpYmxpbmcsCisJCQkgICAgICAgdW5zaWduZWQgaW50IGZsYWdz
KQorI2RlZmluZSBCT05EX1NDSEVEVUxFIEJJVCgwKQoreworCXN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKm1hc3RlcjsKKwlzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4OworCXN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxWzE2XTsKKwllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKKwl1bnNpZ25lZCBs
b25nIG47CisJaW50IGVycjsKKworCUdFTV9CVUdfT04obnNpYmxpbmcgPj0gQVJSQVlfU0laRShy
cSkgLSAxKTsKKworCWN0eCA9IGtlcm5lbF9jb250ZXh0KGk5MTUpOworCWlmICghY3R4KQorCQly
ZXR1cm4gLUVOT01FTTsKKworCWVyciA9IDA7CisJcnFbMF0gPSBFUlJfUFRSKC1FTk9NRU0pOwor
CWZvcl9lYWNoX2VuZ2luZShtYXN0ZXIsIGk5MTUsIGlkKSB7CisJCXN0cnVjdCBpOTE1X3N3X2Zl
bmNlIGZlbmNlID0ge307CisKKwkJaWYgKG1hc3Rlci0+Y2xhc3MgPT0gY2xhc3MpCisJCQljb250
aW51ZTsKKworCQltZW1zZXRfcCgodm9pZCAqKXJxLCBFUlJfUFRSKC1FSU5WQUwpLCBBUlJBWV9T
SVpFKHJxKSk7CisKKwkJcnFbMF0gPSBpZ3RfcmVxdWVzdF9hbGxvYyhjdHgsIG1hc3Rlcik7CisJ
CWlmIChJU19FUlIocnFbMF0pKSB7CisJCQllcnIgPSBQVFJfRVJSKHJxWzBdKTsKKwkJCWdvdG8g
b3V0OworCQl9CisJCWk5MTVfcmVxdWVzdF9nZXQocnFbMF0pOworCisJCWlmIChmbGFncyAmIEJP
TkRfU0NIRURVTEUpIHsKKwkJCW9uc3RhY2tfZmVuY2VfaW5pdCgmZmVuY2UpOworCQkJZXJyID0g
aTkxNV9zd19mZW5jZV9hd2FpdF9zd19mZW5jZV9nZnAoJnJxWzBdLT5zdWJtaXQsCisJCQkJCQkJ
ICAgICAgICZmZW5jZSwKKwkJCQkJCQkgICAgICAgR0ZQX0tFUk5FTCk7CisJCX0KKwkJaTkxNV9y
ZXF1ZXN0X2FkZChycVswXSk7CisJCWlmIChlcnIgPCAwKQorCQkJZ290byBvdXQ7CisKKwkJZm9y
IChuID0gMDsgbiA8IG5zaWJsaW5nOyBuKyspIHsKKwkJCXN0cnVjdCBpbnRlbF9jb250ZXh0ICp2
ZTsKKworCQkJdmUgPSBpbnRlbF9leGVjbGlzdHNfY3JlYXRlX3ZpcnR1YWwoY3R4LAorCQkJCQkJ
CSAgICBzaWJsaW5ncywKKwkJCQkJCQkgICAgbnNpYmxpbmcpOworCQkJaWYgKElTX0VSUih2ZSkp
IHsKKwkJCQllcnIgPSBQVFJfRVJSKHZlKTsKKwkJCQlvbnN0YWNrX2ZlbmNlX2ZpbmkoJmZlbmNl
KTsKKwkJCQlnb3RvIG91dDsKKwkJCX0KKworCQkJZXJyID0gaW50ZWxfdmlydHVhbF9lbmdpbmVf
YXR0YWNoX2JvbmQodmUtPmVuZ2luZSwKKwkJCQkJCQkgICAgICAgbWFzdGVyLAorCQkJCQkJCSAg
ICAgICBzaWJsaW5nc1tuXSk7CisJCQlpZiAoZXJyKSB7CisJCQkJaW50ZWxfY29udGV4dF9wdXQo
dmUpOworCQkJCW9uc3RhY2tfZmVuY2VfZmluaSgmZmVuY2UpOworCQkJCWdvdG8gb3V0OworCQkJ
fQorCisJCQllcnIgPSBpbnRlbF9jb250ZXh0X3Bpbih2ZSk7CisJCQlpbnRlbF9jb250ZXh0X3B1
dCh2ZSk7CisJCQlpZiAoZXJyKSB7CisJCQkJb25zdGFja19mZW5jZV9maW5pKCZmZW5jZSk7CisJ
CQkJZ290byBvdXQ7CisJCQl9CisKKwkJCXJxW24gKyAxXSA9IGk5MTVfcmVxdWVzdF9jcmVhdGUo
dmUpOworCQkJaW50ZWxfY29udGV4dF91bnBpbih2ZSk7CisJCQlpZiAoSVNfRVJSKHJxW24gKyAx
XSkpIHsKKwkJCQllcnIgPSBQVFJfRVJSKHJxW24gKyAxXSk7CisJCQkJb25zdGFja19mZW5jZV9m
aW5pKCZmZW5jZSk7CisJCQkJZ290byBvdXQ7CisJCQl9CisJCQlpOTE1X3JlcXVlc3RfZ2V0KHJx
W24gKyAxXSk7CisKKwkJCWVyciA9IGk5MTVfcmVxdWVzdF9hd2FpdF9leGVjdXRpb24ocnFbbiAr
IDFdLAorCQkJCQkJCSAgICZycVswXS0+ZmVuY2UsCisJCQkJCQkJICAgdmUtPmVuZ2luZS0+Ym9u
ZF9leGVjdXRlKTsKKwkJCWk5MTVfcmVxdWVzdF9hZGQocnFbbiArIDFdKTsKKwkJCWlmIChlcnIg
PCAwKSB7CisJCQkJb25zdGFja19mZW5jZV9maW5pKCZmZW5jZSk7CisJCQkJZ290byBvdXQ7CisJ
CQl9CisJCX0KKwkJb25zdGFja19mZW5jZV9maW5pKCZmZW5jZSk7CisKKwkJaWYgKGk5MTVfcmVx
dWVzdF93YWl0KHJxWzBdLAorCQkJCSAgICAgIEk5MTVfV0FJVF9MT0NLRUQsCisJCQkJICAgICAg
SFogLyAxMCkgPCAwKSB7CisJCQlwcl9lcnIoIk1hc3RlciByZXF1ZXN0IGRpZCBub3QgZXhlY3V0
ZSAob24gJXMpIVxuIiwKKwkJCSAgICAgICBycVswXS0+ZW5naW5lLT5uYW1lKTsKKwkJCWVyciA9
IC1FSU87CisJCQlnb3RvIG91dDsKKwkJfQorCisJCWZvciAobiA9IDA7IG4gPCBuc2libGluZzsg
bisrKSB7CisJCQlpZiAoaTkxNV9yZXF1ZXN0X3dhaXQocnFbbiArIDFdLAorCQkJCQkgICAgICBJ
OTE1X1dBSVRfTE9DS0VELAorCQkJCQkgICAgICBNQVhfU0NIRURVTEVfVElNRU9VVCkgPCAwKSB7
CisJCQkJZXJyID0gLUVJTzsKKwkJCQlnb3RvIG91dDsKKwkJCX0KKworCQkJaWYgKHJxW24gKyAx
XS0+ZW5naW5lICE9IHNpYmxpbmdzW25dKSB7CisJCQkJcHJfZXJyKCJCb25kZWQgcmVxdWVzdCBk
aWQgbm90IGV4ZWN1dGUgb24gdGFyZ2V0IGVuZ2luZTogZXhwZWN0ZWQgJXMsIHVzZWQgJXM7IG1h
c3RlciB3YXMgJXNcbiIsCisJCQkJICAgICAgIHNpYmxpbmdzW25dLT5uYW1lLAorCQkJCSAgICAg
ICBycVtuICsgMV0tPmVuZ2luZS0+bmFtZSwKKwkJCQkgICAgICAgcnFbMF0tPmVuZ2luZS0+bmFt
ZSk7CisJCQkJZXJyID0gLUVJTlZBTDsKKwkJCQlnb3RvIG91dDsKKwkJCX0KKwkJfQorCisJCWZv
ciAobiA9IDA7ICFJU19FUlIocnFbbl0pOyBuKyspCisJCQlpOTE1X3JlcXVlc3RfcHV0KHJxW25d
KTsKKwkJcnFbMF0gPSBFUlJfUFRSKC1FTk9NRU0pOworCX0KKworb3V0OgorCWZvciAobiA9IDA7
ICFJU19FUlIocnFbbl0pOyBuKyspCisJCWk5MTVfcmVxdWVzdF9wdXQocnFbbl0pOworCWlmIChp
Z3RfZmx1c2hfdGVzdChpOTE1LCBJOTE1X1dBSVRfTE9DS0VEKSkKKwkJZXJyID0gLUVJTzsKKwor
CWtlcm5lbF9jb250ZXh0X2Nsb3NlKGN0eCk7CisJcmV0dXJuIGVycjsKK30KKworc3RhdGljIGlu
dCBsaXZlX3ZpcnR1YWxfYm9uZCh2b2lkICphcmcpCit7CisJc3RhdGljIGNvbnN0IHN0cnVjdCBw
aGFzZSB7CisJCWNvbnN0IGNoYXIgKm5hbWU7CisJCXVuc2lnbmVkIGludCBmbGFnczsKKwl9IHBo
YXNlc1tdID0geworCQl7ICIiLCAwIH0sCisJCXsgInNjaGVkdWxlIiwgQk9ORF9TQ0hFRFVMRSB9
LAorCQl7IH0sCisJfTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGFyZzsKKwlz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpzaWJsaW5nc1tNQVhfRU5HSU5FX0lOU1RBTkNFICsgMV07
CisJdW5zaWduZWQgaW50IGNsYXNzLCBpbnN0OworCWludCBlcnIgPSAwOworCisJaWYgKFVTRVNf
R1VDX1NVQk1JU1NJT04oaTkxNSkpCisJCXJldHVybiAwOworCisJbXV0ZXhfbG9jaygmaTkxNS0+
ZHJtLnN0cnVjdF9tdXRleCk7CisKKwlmb3IgKGNsYXNzID0gMDsgY2xhc3MgPD0gTUFYX0VOR0lO
RV9DTEFTUzsgY2xhc3MrKykgeworCQljb25zdCBzdHJ1Y3QgcGhhc2UgKnA7CisJCWludCBuc2li
bGluZzsKKworCQluc2libGluZyA9IDA7CisJCWZvciAoaW5zdCA9IDA7IGluc3QgPD0gTUFYX0VO
R0lORV9JTlNUQU5DRTsgaW5zdCsrKSB7CisJCQlpZiAoIWk5MTUtPmVuZ2luZV9jbGFzc1tjbGFz
c11baW5zdF0pCisJCQkJYnJlYWs7CisKKwkJCUdFTV9CVUdfT04obnNpYmxpbmcgPT0gQVJSQVlf
U0laRShzaWJsaW5ncykpOworCQkJc2libGluZ3NbbnNpYmxpbmcrK10gPSBpOTE1LT5lbmdpbmVf
Y2xhc3NbY2xhc3NdW2luc3RdOworCQl9CisJCWlmIChuc2libGluZyA8IDIpCisJCQljb250aW51
ZTsKKworCQlmb3IgKHAgPSBwaGFzZXM7IHAtPm5hbWU7IHArKykgeworCQkJZXJyID0gYm9uZF92
aXJ0dWFsX2VuZ2luZShpOTE1LAorCQkJCQkJICBjbGFzcywgc2libGluZ3MsIG5zaWJsaW5nLAor
CQkJCQkJICBwLT5mbGFncyk7CisJCQlpZiAoZXJyKSB7CisJCQkJcHJfZXJyKCIlcyglcyk6IGZh
aWxlZCBjbGFzcz0lZCwgbnNpYmxpbmc9JWQsIGVycj0lZFxuIiwKKwkJCQkgICAgICAgX19mdW5j
X18sIHAtPm5hbWUsIGNsYXNzLCBuc2libGluZywgZXJyKTsKKwkJCQlnb3RvIG91dF91bmxvY2s7
CisJCQl9CisJCX0KKwl9CisKK291dF91bmxvY2s6CisJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0u
c3RydWN0X211dGV4KTsKKwlyZXR1cm4gZXJyOworfQorCiBpbnQgaW50ZWxfZXhlY2xpc3RzX2xp
dmVfc2VsZnRlc3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewogCXN0YXRpYyBj
b25zdCBzdHJ1Y3QgaTkxNV9zdWJ0ZXN0IHRlc3RzW10gPSB7CkBAIC0xNjMzLDYgKzE4MjMsNyBA
QCBpbnQgaW50ZWxfZXhlY2xpc3RzX2xpdmVfc2VsZnRlc3RzKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQogCQlTVUJURVNUKGxpdmVfcHJlZW1wdF9zbW9rZSksCiAJCVNVQlRFU1QobGl2
ZV92aXJ0dWFsX2VuZ2luZSksCiAJCVNVQlRFU1QobGl2ZV92aXJ0dWFsX21hc2spLAorCQlTVUJU
RVNUKGxpdmVfdmlydHVhbF9ib25kKSwKIAl9OwogCiAJaWYgKCFIQVNfRVhFQ0xJU1RTKGk5MTUp
KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fY29udGV4dC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fY29udGV4dC5jCmluZGV4IDNhZTFkMjcxMzBh
OC4uMTgyNTQ3OTg2NGQ2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV9jb250ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fY29udGV4dC5j
CkBAIC0xNTA0LDggKzE1MDQsOTIgQEAgc2V0X2VuZ2luZXNfX2xvYWRfYmFsYW5jZShzdHJ1Y3Qg
aTkxNV91c2VyX2V4dGVuc2lvbiBfX3VzZXIgKmJhc2UsIHZvaWQgKmRhdGEpCiAJcmV0dXJuIGVy
cjsKIH0KIAorc3RhdGljIGludAorc2V0X2VuZ2luZXNfX2JvbmQoc3RydWN0IGk5MTVfdXNlcl9l
eHRlbnNpb24gX191c2VyICpiYXNlLCB2b2lkICpkYXRhKQoreworCXN0cnVjdCBpOTE1X2NvbnRl
eHRfZW5naW5lc19ib25kIF9fdXNlciAqZXh0ID0KKwkJY29udGFpbmVyX29mX3VzZXIoYmFzZSwg
dHlwZW9mKCpleHQpLCBiYXNlKTsKKwljb25zdCBzdHJ1Y3Qgc2V0X2VuZ2luZXMgKnNldCA9IGRh
dGE7CisJc3RydWN0IGk5MTVfZW5naW5lX2NsYXNzX2luc3RhbmNlIGNpOworCXN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKnZpcnR1YWw7CisJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqbWFzdGVyOwor
CXUxNiBpZHgsIG51bV9ib25kczsKKwlpbnQgZXJyLCBuOworCisJaWYgKGdldF91c2VyKGlkeCwg
JmV4dC0+dmlydHVhbF9pbmRleCkpCisJCXJldHVybiAtRUZBVUxUOworCisJaWYgKGlkeCA+PSBz
ZXQtPmVuZ2luZXMtPm51bV9lbmdpbmVzKSB7CisJCURSTV9ERUJVRygiSW52YWxpZCBpbmRleCBm
b3IgdmlydHVhbCBlbmdpbmU6ICVkID49ICVkXG4iLAorCQkJICBpZHgsIHNldC0+ZW5naW5lcy0+
bnVtX2VuZ2luZXMpOworCQlyZXR1cm4gLUVJTlZBTDsKKwl9CisKKwlpZHggPSBhcnJheV9pbmRl
eF9ub3NwZWMoaWR4LCBzZXQtPmVuZ2luZXMtPm51bV9lbmdpbmVzKTsKKwlpZiAoIXNldC0+ZW5n
aW5lcy0+ZW5naW5lc1tpZHhdKSB7CisJCURSTV9ERUJVRygiSW52YWxpZCBlbmdpbmUgYXQgJWRc
biIsIGlkeCk7CisJCXJldHVybiAtRUlOVkFMOworCX0KKwl2aXJ0dWFsID0gc2V0LT5lbmdpbmVz
LT5lbmdpbmVzW2lkeF0tPmVuZ2luZTsKKworCWVyciA9IGNoZWNrX3VzZXJfbWJ6KCZleHQtPmZs
YWdzKTsKKwlpZiAoZXJyKQorCQlyZXR1cm4gZXJyOworCisJZm9yIChuID0gMDsgbiA8IEFSUkFZ
X1NJWkUoZXh0LT5tYno2NCk7IG4rKykgeworCQllcnIgPSBjaGVja191c2VyX21ieigmZXh0LT5t
Yno2NFtuXSk7CisJCWlmIChlcnIpCisJCQlyZXR1cm4gZXJyOworCX0KKworCWlmIChjb3B5X2Zy
b21fdXNlcigmY2ksICZleHQtPm1hc3Rlciwgc2l6ZW9mKGNpKSkpCisJCXJldHVybiAtRUZBVUxU
OworCisJbWFzdGVyID0gaW50ZWxfZW5naW5lX2xvb2t1cF91c2VyKHNldC0+Y3R4LT5pOTE1LAor
CQkJCQkgIGNpLmVuZ2luZV9jbGFzcywgY2kuZW5naW5lX2luc3RhbmNlKTsKKwlpZiAoIW1hc3Rl
cikgeworCQlEUk1fREVCVUcoIlVucmVjb2duaXNlZCBtYXN0ZXIgZW5naW5lOiB7IGNsYXNzOiV1
LCBpbnN0YW5jZToldSB9XG4iLAorCQkJICBjaS5lbmdpbmVfY2xhc3MsIGNpLmVuZ2luZV9pbnN0
YW5jZSk7CisJCXJldHVybiAtRUlOVkFMOworCX0KKworCWlmIChnZXRfdXNlcihudW1fYm9uZHMs
ICZleHQtPm51bV9ib25kcykpCisJCXJldHVybiAtRUZBVUxUOworCisJZm9yIChuID0gMDsgbiA8
IG51bV9ib25kczsgbisrKSB7CisJCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmJvbmQ7CisKKwkJ
aWYgKGNvcHlfZnJvbV91c2VyKCZjaSwgJmV4dC0+ZW5naW5lc1tuXSwgc2l6ZW9mKGNpKSkpCisJ
CQlyZXR1cm4gLUVGQVVMVDsKKworCQlib25kID0gaW50ZWxfZW5naW5lX2xvb2t1cF91c2VyKHNl
dC0+Y3R4LT5pOTE1LAorCQkJCQkJY2kuZW5naW5lX2NsYXNzLAorCQkJCQkJY2kuZW5naW5lX2lu
c3RhbmNlKTsKKwkJaWYgKCFib25kKSB7CisJCQlEUk1fREVCVUcoIlVucmVjb2duaXNlZCBlbmdp
bmVbJWRdIGZvciBib25kaW5nOiB7IGNsYXNzOiVkLCBpbnN0YW5jZTogJWQgfVxuIiwKKwkJCQkg
IG4sIGNpLmVuZ2luZV9jbGFzcywgY2kuZW5naW5lX2luc3RhbmNlKTsKKwkJCXJldHVybiAtRUlO
VkFMOworCQl9CisKKwkJLyoKKwkJICogQSBub24tdmlydHVhbCBlbmdpbmUgaGFzIG5vIHNpYmxp
bmdzIHRvIGNob29zZSBiZXR3ZWVuOyBhbmQKKwkJICogYSBzdWJtaXQgZmVuY2Ugd2lsbCBhbHdh
eXMgYmUgZGlyZWN0ZWQgdG8gdGhlIG9uZSBlbmdpbmUuCisJCSAqLworCQlpZiAoaW50ZWxfZW5n
aW5lX2lzX3ZpcnR1YWwodmlydHVhbCkpIHsKKwkJCWVyciA9IGludGVsX3ZpcnR1YWxfZW5naW5l
X2F0dGFjaF9ib25kKHZpcnR1YWwsCisJCQkJCQkJICAgICAgIG1hc3RlciwKKwkJCQkJCQkgICAg
ICAgYm9uZCk7CisJCQlpZiAoZXJyKQorCQkJCXJldHVybiBlcnI7CisJCX0KKwl9CisKKwlyZXR1
cm4gMDsKK30KKwogc3RhdGljIGNvbnN0IGk5MTVfdXNlcl9leHRlbnNpb25fZm4gc2V0X2VuZ2lu
ZXNfX2V4dGVuc2lvbnNbXSA9IHsKIAlbSTkxNV9DT05URVhUX0VOR0lORVNfRVhUX0xPQURfQkFM
QU5DRV0gPSBzZXRfZW5naW5lc19fbG9hZF9iYWxhbmNlLAorCVtJOTE1X0NPTlRFWFRfRU5HSU5F
U19FWFRfQk9ORF0gPSBzZXRfZW5naW5lc19fYm9uZCwKIH07CiAKIHN0YXRpYyBpbnQKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9saWJfc3dfZmVuY2UuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9saWJfc3dfZmVuY2UuYwppbmRleCAyYmZhNzJj
MTY1NGIuLmI5NzZjMTI4MTdjNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2Vs
ZnRlc3RzL2xpYl9zd19mZW5jZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0
cy9saWJfc3dfZmVuY2UuYwpAQCAtNDUsNiArNDUsOSBAQCB2b2lkIF9fb25zdGFja19mZW5jZV9p
bml0KHN0cnVjdCBpOTE1X3N3X2ZlbmNlICpmZW5jZSwKIAogdm9pZCBvbnN0YWNrX2ZlbmNlX2Zp
bmkoc3RydWN0IGk5MTVfc3dfZmVuY2UgKmZlbmNlKQogeworCWlmICghZmVuY2UtPmZsYWdzKQor
CQlyZXR1cm47CisKIAlpOTE1X3N3X2ZlbmNlX2NvbW1pdChmZW5jZSk7CiAJaTkxNV9zd19mZW5j
ZV9maW5pKGZlbmNlKTsKIH0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0u
aCBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAppbmRleCBmOTc3MDk0ODE2MWMuLmUyZGE5
MDI3YmNkZiAxMDA2NDQKLS0tIGEvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oCisrKyBiL2lu
Y2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaApAQCAtMTU0Myw2ICsxNTQzLDEwIEBAIHN0cnVjdCBk
cm1faTkxNV9nZW1fY29udGV4dF9wYXJhbSB7CiAgKiBzaXplZCBhcmd1bWVudCwgd2lsbCByZXZl
cnQgYmFjayB0byBkZWZhdWx0IHNldHRpbmdzLgogICoKICAqIFNlZSBzdHJ1Y3QgaTkxNV9jb250
ZXh0X3BhcmFtX2VuZ2luZXMuCisgKgorICogRXh0ZW5zaW9uczoKKyAqICAgaTkxNV9jb250ZXh0
X2VuZ2luZXNfbG9hZF9iYWxhbmNlIChJOTE1X0NPTlRFWFRfRU5HSU5FU19FWFRfTE9BRF9CQUxB
TkNFKQorICogICBpOTE1X2NvbnRleHRfZW5naW5lc19ib25kIChJOTE1X0NPTlRFWFRfRU5HSU5F
U19FWFRfQk9ORCkKICAqLwogI2RlZmluZSBJOTE1X0NPTlRFWFRfUEFSQU1fRU5HSU5FUwkweGEK
IC8qIE11c3QgYmUga2VwdCBjb21wYWN0IC0tIG5vIGhvbGVzIGFuZCB3ZWxsIGRvY3VtZW50ZWQg
Ki8KQEAgLTE2NDYsOSArMTY1MCw0OSBAQCBzdHJ1Y3QgaTkxNV9jb250ZXh0X2VuZ2luZXNfbG9h
ZF9iYWxhbmNlIHsKIAlzdHJ1Y3QgaTkxNV9lbmdpbmVfY2xhc3NfaW5zdGFuY2UgZW5naW5lc1tO
X19dOyBcCiB9IF9fYXR0cmlidXRlX18oKHBhY2tlZCkpIG5hbWVfXwogCisvKgorICogaTkxNV9j
b250ZXh0X2VuZ2luZXNfYm9uZDoKKyAqCisgKiBDb25zdHJ1Y3RlZCBib25kZWQgcGFpcnMgZm9y
IGV4ZWN1dGlvbiB3aXRoaW4gYSB2aXJ0dWFsIGVuZ2luZS4KKyAqCisgKiBBbGwgZW5naW5lcyBh
cmUgZXF1YWwsIGJ1dCBzb21lIGFyZSBtb3JlIGVxdWFsIHRoYW4gb3RoZXJzLiBHaXZlbgorICog
dGhlIGRpc3RyaWJ1dGlvbiBvZiByZXNvdXJjZXMgaW4gdGhlIEhXLCBpdCBtYXkgYmUgcHJlZmVy
YWJsZSB0byBydW4KKyAqIGEgcmVxdWVzdCBvbiBhIGdpdmVuIHN1YnNldCBvZiBlbmdpbmVzIGlu
IHBhcmFsbGVsIHRvIGEgcmVxdWVzdCBvbiBhCisgKiBzcGVjaWZpYyBlbmdpbmUuIFdlIGVuYWJs
ZSB0aGlzIHNlbGVjdGlvbiBvZiBlbmdpbmVzIHdpdGhpbiBhIHZpcnR1YWwKKyAqIGVuZ2luZSBi
eSBzcGVjaWZ5aW5nIGJvbmRpbmcgcGFpcnMsIGZvciBhbnkgZ2l2ZW4gbWFzdGVyIGVuZ2luZSB3
ZSB3aWxsCisgKiBvbmx5IGV4ZWN1dGUgb24gb25lIG9mIHRoZSBjb3JyZXNwb25kaW5nIHNpYmxp
bmdzIHdpdGhpbiB0aGUgdmlydHVhbCBlbmdpbmUuCisgKgorICogVG8gZXhlY3V0ZSBhIHJlcXVl
c3QgaW4gcGFyYWxsZWwgb24gdGhlIG1hc3RlciBlbmdpbmUgYW5kIGEgc2libGluZyByZXF1aXJl
cworICogY29vcmRpbmF0aW9uIHdpdGggYSBJOTE1X0VYRUNfRkVOQ0VfU1VCTUlULgorICovCitz
dHJ1Y3QgaTkxNV9jb250ZXh0X2VuZ2luZXNfYm9uZCB7CisJc3RydWN0IGk5MTVfdXNlcl9leHRl
bnNpb24gYmFzZTsKKworCXN0cnVjdCBpOTE1X2VuZ2luZV9jbGFzc19pbnN0YW5jZSBtYXN0ZXI7
CisKKwlfX3UxNiB2aXJ0dWFsX2luZGV4OyAvKiBpbmRleCBvZiB2aXJ0dWFsIGVuZ2luZSBpbiBj
dHgtPmVuZ2luZXNbXSAqLworCV9fdTE2IG51bV9ib25kczsKKworCV9fdTY0IGZsYWdzOyAvKiBh
bGwgdW5kZWZpbmVkIGZsYWdzIG11c3QgYmUgemVybyAqLworCV9fdTY0IG1iejY0WzRdOyAvKiBy
ZXNlcnZlZCBmb3IgZnV0dXJlIHVzZTsgbXVzdCBiZSB6ZXJvICovCisKKwlzdHJ1Y3QgaTkxNV9l
bmdpbmVfY2xhc3NfaW5zdGFuY2UgZW5naW5lc1swXTsKK30gX19hdHRyaWJ1dGVfXygocGFja2Vk
KSk7CisKKyNkZWZpbmUgSTkxNV9ERUZJTkVfQ09OVEVYVF9FTkdJTkVTX0JPTkQobmFtZV9fLCBO
X18pIHN0cnVjdCB7IFwKKwlzdHJ1Y3QgaTkxNV91c2VyX2V4dGVuc2lvbiBiYXNlOyBcCisJc3Ry
dWN0IGk5MTVfZW5naW5lX2NsYXNzX2luc3RhbmNlIG1hc3RlcjsgXAorCV9fdTE2IHZpcnR1YWxf
aW5kZXg7IFwKKwlfX3UxNiBudW1fYm9uZHM7IFwKKwlfX3U2NCBmbGFnczsgXAorCV9fdTY0IG1i
ejY0WzRdOyBcCisJc3RydWN0IGk5MTVfZW5naW5lX2NsYXNzX2luc3RhbmNlIGVuZ2luZXNbTl9f
XTsgXAorfSBfX2F0dHJpYnV0ZV9fKChwYWNrZWQpKSBuYW1lX18KKwogc3RydWN0IGk5MTVfY29u
dGV4dF9wYXJhbV9lbmdpbmVzIHsKIAlfX3U2NCBleHRlbnNpb25zOyAvKiBsaW5rZWQgY2hhaW4g
b2YgZXh0ZW5zaW9uIGJsb2NrcywgMCB0ZXJtaW5hdGVzICovCiAjZGVmaW5lIEk5MTVfQ09OVEVY
VF9FTkdJTkVTX0VYVF9MT0FEX0JBTEFOQ0UgMCAvKiBzZWUgaTkxNV9jb250ZXh0X2VuZ2luZXNf
bG9hZF9iYWxhbmNlICovCisjZGVmaW5lIEk5MTVfQ09OVEVYVF9FTkdJTkVTX0VYVF9CT05EIDEg
Lyogc2VlIGk5MTVfY29udGV4dF9lbmdpbmVzX2JvbmQgKi8KIAlzdHJ1Y3QgaTkxNV9lbmdpbmVf
Y2xhc3NfaW5zdGFuY2UgZW5naW5lc1swXTsKIH0gX19hdHRyaWJ1dGVfXygocGFja2VkKSk7CiAK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
