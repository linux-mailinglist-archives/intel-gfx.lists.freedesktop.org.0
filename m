Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B66786D51
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 00:33:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B2636ECDD;
	Thu,  8 Aug 2019 22:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53D6F6ECDC;
 Thu,  8 Aug 2019 22:33:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17936545-1500050 
 for multiple; Thu, 08 Aug 2019 23:32:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 23:32:43 +0100
Message-Id: <20190808223245.2320-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/3] i915/gem_exec_schedule: Check
 timeslice
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hlY2sgdGhhdCB3ZSBjYW4gcnVuIGEgc2Vjb25kIHJlcXVlc3QgZXZlbiBpZiBhbiBlcXVhbCBw
cmlvcml0eSBzcGlubmVyCmlzIGhvZ2dpbmcgdGhlIGVuZ2luZS4KClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTGlvbmVsIExhbmR3ZXJs
aW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2
cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVkdWxl
LmMgfCAzNiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgMzYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfc2No
ZWR1bGUuYyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfc2NoZWR1bGUuYwppbmRleCA2ZTg0NjYyOTku
LmU1N2M2NzE3MCAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fZXhlY19zY2hlZHVsZS5jCisr
KyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfc2NoZWR1bGUuYwpAQCAtMTAyOCw2ICsxMDI4LDM5IEBA
IHN0YXRpYyB2b2lkIHByZWVtcHRfcXVldWUoaW50IGZkLCB1bnNpZ25lZCByaW5nLCB1bnNpZ25l
ZCBpbnQgZmxhZ3MpCiAJfQogfQogCitzdGF0aWMgdm9pZCBwcmVlbXB0X3RpbWVzbGljZShpbnQg
ZmQsIHVuc2lnbmVkIHJpbmcpCit7CisJY29uc3QgdWludDMyX3QgYmJlID0gTUlfQkFUQ0hfQlVG
RkVSX0VORDsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiBvYmogPSB7CisJCS5o
YW5kbGUgPSBnZW1fY3JlYXRlKGZkLCA0MDk2KQorCX07CisJc3RydWN0IGRybV9pOTE1X2dlbV9l
eGVjYnVmZmVyMiBleGVjYnVmID0geworCQkuYnVmZmVyc19wdHIgPSB0b191c2VyX3BvaW50ZXIo
Jm9iaiksCisJCS5idWZmZXJfY291bnQgPSAxLAorCQkuZmxhZ3MgPSByaW5nLAorCQkucnN2ZDEg
PSBnZW1fY29udGV4dF9jcmVhdGUoZmQpLAorCX07CisJaWd0X3NwaW5fdCAqc3BpbjsKKworCS8q
CisJICogTGF1bmNoIGEgc3Bpbm5lciB0byBvY2N1cHkgdGhlIHRhcmdldCBlbmdpbmUsIGFuZCB0
aGVuCisJICogY2hlY2sgd2UgZXhlY3V0ZSBhIHBpbmcgdW5kZXJuZWF0aCBpdCBmcm9tIGEgc2Vj
b25kIGNvbnRleHQuCisJICovCisJc3BpbiA9IGlndF9zcGluX25ldyhmZCwgLmVuZ2luZSA9IHJp
bmcsIC5mbGFncyA9IElHVF9TUElOX1BPTExfUlVOKTsKKwlpZ3Rfc3Bpbl9idXN5d2FpdF91bnRp
bF9zdGFydGVkKHNwaW4pOworCisJLyogQm90aCB0aGUgYWN0aXZlIHNwaW5uZXIgYW5kIHRoaXMg
YXJlIGF0IHRoZSBzYW1lIHByaW9yaXR5ICovCisJZ2VtX3dyaXRlKGZkLCBvYmouaGFuZGxlLCAw
LCAmYmJlLCBzaXplb2YoYmJlKSk7CisJZ2VtX2V4ZWNidWYoZmQsICZleGVjYnVmKTsKKwlnZW1f
c3luYyhmZCwgb2JqLmhhbmRsZSk7CisKKwlpZ3RfYXNzZXJ0KGdlbV9ib19idXN5KGZkLCBzcGlu
LT5oYW5kbGUpKTsKKwlpZ3Rfc3Bpbl9mcmVlKGZkLCBzcGluKTsKKworCWdlbV9jb250ZXh0X2Rl
c3Ryb3koZmQsIGV4ZWNidWYucnN2ZDEpOworCWdlbV9jbG9zZShmZCwgb2JqLmhhbmRsZSk7Cit9
CisKIHN0YXRpYyB2b2lkIHByZWVtcHRfc2VsZihpbnQgZmQsIHVuc2lnbmVkIHJpbmcpCiB7CiAJ
dWludDMyX3QgcmVzdWx0ID0gZ2VtX2NyZWF0ZShmZCwgNDA5Nik7CkBAIC0xNzM1LDYgKzE3Njgs
OSBAQCBpZ3RfbWFpbgogCQkJCQlpZ3Rfc3VidGVzdF9mKCJwcmVlbXB0LXF1ZXVlLWNvbnRleHRz
LWNoYWluLSVzIiwgZS0+bmFtZSkKIAkJCQkJCXByZWVtcHRfcXVldWUoZmQsIGUtPmV4ZWNfaWQg
fCBlLT5mbGFncywgQ09OVEVYVFMgfCBDSEFJTik7CiAKKwkJCQkJaWd0X3N1YnRlc3RfZigicHJl
ZW1wdC10aW1lc2xpY2UtJXMiLCBlLT5uYW1lKQorCQkJCQkJcHJlZW1wdF90aW1lc2xpY2UoZmQs
IGUtPmV4ZWNfaWQgfCBlLT5mbGFncyk7CisKIAkJCQkJaWd0X3N1YnRlc3RfZ3JvdXAgewogCQkJ
CQkJaWd0X2hhbmdfdCBoYW5nOwogCi0tIAoyLjIzLjAucmMxCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
