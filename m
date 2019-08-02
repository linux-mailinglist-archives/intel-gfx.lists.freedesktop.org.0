Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F15427F375
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 11:58:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 144DC6ED9C;
	Fri,  2 Aug 2019 09:58:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0E056ED9C
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 09:58:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17813042-1500050 
 for multiple; Fri, 02 Aug 2019 10:58:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Aug 2019 10:58:26 +0100
Message-Id: <20190802095826.27547-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_schedule: Check timeslice
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

Q2hlY2sgdGhhdCB3ZSBjYW4gcnVuIGEgc2Vjb25kIHJlcXVlc3QgZXZlbiBpZiBhbiBlcXVhbCBw
cmlvcml0eSBzcGlubmVyCmlzIGhvZ2dpbmcgdGhlIGVuZ2luZS4KClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTGlvbmVsIExhbmR3ZXJs
aW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2
cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVkdWxl
LmMgfCAzNSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgMzUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfc2No
ZWR1bGUuYyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfc2NoZWR1bGUuYwppbmRleCA0Y2NhY2JhNDEu
LjI2YjVhZjZmMCAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fZXhlY19zY2hlZHVsZS5jCisr
KyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfc2NoZWR1bGUuYwpAQCAtMTAyNiw2ICsxMDI2LDM4IEBA
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
c3luYyhmZCwgb2JqLmhhbmRsZSk7CisKKwlpZ3Rfc3Bpbl9mcmVlKGZkLCBzcGluKTsKKworCWdl
bV9jb250ZXh0X2Rlc3Ryb3koZmQsIGV4ZWNidWYucnN2ZDEpOworCWdlbV9jbG9zZShmZCwgb2Jq
LmhhbmRsZSk7Cit9CisKIHN0YXRpYyB2b2lkIHByZWVtcHRfc2VsZihpbnQgZmQsIHVuc2lnbmVk
IHJpbmcpCiB7CiAJdWludDMyX3QgcmVzdWx0ID0gZ2VtX2NyZWF0ZShmZCwgNDA5Nik7CkBAIC0x
NzMzLDYgKzE3NjUsOSBAQCBpZ3RfbWFpbgogCQkJCQlpZ3Rfc3VidGVzdF9mKCJwcmVlbXB0LXF1
ZXVlLWNvbnRleHRzLWNoYWluLSVzIiwgZS0+bmFtZSkKIAkJCQkJCXByZWVtcHRfcXVldWUoZmQs
IGUtPmV4ZWNfaWQgfCBlLT5mbGFncywgQ09OVEVYVFMgfCBDSEFJTik7CiAKKwkJCQkJaWd0X3N1
YnRlc3RfZigicHJlZW1wdC10aW1lc2xpY2UtJXMiLCBlLT5uYW1lKQorCQkJCQkJcHJlZW1wdF90
aW1lc2xpY2UoZmQsIGUtPmV4ZWNfaWQgfCBlLT5mbGFncyk7CisKIAkJCQkJaWd0X3N1YnRlc3Rf
Z3JvdXAgewogCQkJCQkJaWd0X2hhbmdfdCBoYW5nOwogCi0tIAoyLjIzLjAucmMwCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
