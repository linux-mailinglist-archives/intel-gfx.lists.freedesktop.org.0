Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5CC89FE3
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 15:41:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E07D26E516;
	Mon, 12 Aug 2019 13:41:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DC2C6E508
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 13:41:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17969916-1500050 
 for multiple; Mon, 12 Aug 2019 14:39:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Aug 2019 14:38:59 +0100
Message-Id: <20190812133915.18824-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190812133915.18824-1-chris@chris-wilson.co.uk>
References: <20190812133915.18824-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/18] drm/i915: Push the wakeref->count
 deferral to the backend
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

SWYgdGhlIGJhY2tlbmQgd2lzaGVzIHRvIGRlZmVyIHRoZSB3YWtlcmVmIHBhcmtpbmcsIG1ha2Ug
aXQgcmVzcG9uc2libGUKZm9yIHVubG9ja2luZyB0aGUgd2FrZXJlZiAoaS5lLiBidW1waW5nIHRo
ZSBjb3VudGVyKS4gVGhpcyBhbGxvd3MgaXQgdG8KdGltZSB0aGUgdW5sb2NrIG11Y2ggbW9yZSBj
YXJlZnVsbHkgaW4gY2FzZSBpdCBoYXBwZW5zIHRvIG5lZWRzIHRoZQp3YWtlcmVmIHRvIGJlIGFj
dGl2ZSBkdXJpbmcgaXRzIGRlZmVycmFsLgoKRm9yIGluc3RhbmNlLCBkdXJpbmcgZW5naW5lIHBh
cmtpbmcgd2UgbWF5IGNob29zZSB0byBlbWl0IGFuIGlkbGUKYmFycmllciAoYSByZXF1ZXN0KS4g
VG8gZG8gc28sIHdlIGJvcnJvdyB0aGUgZW5naW5lLT5rZXJuZWxfY29udGV4dAp0aW1lbGluZSBh
bmQgdG8gZW5zdXJlIGV4Y2x1c2l2ZSBhY2Nlc3Mgd2Uga2VlcCB0aGUKZW5naW5lLT53YWtlcmVm
LmNvdW50IGFzIDAuIEhvd2V2ZXIsIHRvIHN1Ym1pdCB0aGF0IHJlcXVlc3QgdG8gSFcgbWF5CnJl
cXVpcmUgYSBpbnRlbF9lbmdpbmVfcG1fZ2V0KCkgKGUuZy4gdG8ga2VlcCB0aGUgc3VibWlzc2lv
biB0YXNrbGV0CmFsaXZlKSBhbmQgYmVmb3JlIHdlIGFsbG93IHRoYXQgd2UgaGF2ZSB0byByZXdh
a2Ugb3VyIHdha2VyZWYgdG8gYXZvaWQgYQpyZWN1cnNpdmUgZGVhZGxvY2suCgpTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IERhbmllbGUg
Q2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMgfCAgOCArKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jICAgICAgIHwgNjYgKysrKysrKysrKysrLS0tLS0t
LS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5oICAgICAgIHwgIDIgKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYyAgICAgfCAgMyArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5jICAgICAgfCAgNCArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5oICAgICAgfCAxMSArKysrCiA2IGZpbGVzIGNoYW5nZWQs
IDU2IGluc2VydGlvbnMoKyksIDM4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX3BtLmMKaW5kZXggNmIxNWUzMzM1ZGQ2Li5hZDM3Yzk4MDhjMWYgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jCkBAIC02OCw5ICs2OCwx
MyBAQCBzdGF0aWMgYm9vbCBzd2l0Y2hfdG9fa2VybmVsX2NvbnRleHQoc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lKQogCiAJLyogQ2hlY2sgYWdhaW4gb24gdGhlIG5leHQgcmV0aXJlbWVu
dC4gKi8KIAllbmdpbmUtPndha2VyZWZfc2VyaWFsID0gZW5naW5lLT5zZXJpYWwgKyAxOwotCiAJ
aTkxNV9yZXF1ZXN0X2FkZF9hY3RpdmVfYmFycmllcnMocnEpOworCisJcnEtPnNjaGVkLmF0dHIu
cHJpb3JpdHkgPSBJTlRfTUFYOyAvKiBQcmVlbXB0aW9uIGJhcnJpZXIgKi8KKwogCV9faTkxNV9y
ZXF1ZXN0X2NvbW1pdChycSk7CisJX19pbnRlbF93YWtlcmVmX2RlZmVyX3BhcmsoJmVuZ2luZS0+
d2FrZXJlZik7CisJX19pOTE1X3JlcXVlc3RfcXVldWUocnEsIE5VTEwpOwogCiAJcmV0dXJuIGZh
bHNlOwogfQpAQCAtOTgsNyArMTAyLDcgQEAgc3RhdGljIGludCBfX2VuZ2luZV9wYXJrKHN0cnVj
dCBpbnRlbF93YWtlcmVmICp3ZikKIAlpbnRlbF9lbmdpbmVfcG9vbF9wYXJrKCZlbmdpbmUtPnBv
b2wpOwogCiAJLyogTXVzdCBiZSByZXNldCB1cG9uIGlkbGluZywgb3Igd2UgbWF5IG1pc3MgdGhl
IGJ1c3kgd2FrZXVwLiAqLwotCUdFTV9CVUdfT04oZW5naW5lLT5leGVjbGlzdHMucXVldWVfcHJp
b3JpdHlfaGludCAhPSBJTlRfTUlOKTsKKwllbmdpbmUtPmV4ZWNsaXN0cy5xdWV1ZV9wcmlvcml0
eV9oaW50ID0gSU5UX01JTjsKIAogCWlmIChlbmdpbmUtPnBhcmspCiAJCWVuZ2luZS0+cGFyayhl
bmdpbmUpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwppbmRleCA0MzE3NWJhZGEwOWUu
LjQ3MDNhYWIzYWUyMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1
ZXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKQEAgLTExODYs
NiArMTE4NiwxMiBAQCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpfX2k5MTVfcmVxdWVzdF9jb21taXQo
c3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJCWxpc3RfYWRkKCZyaW5nLT5hY3RpdmVfbGluaywg
JnJxLT5pOTE1LT5ndC5hY3RpdmVfcmluZ3MpOwogCXJxLT5lbWl0dGVkX2ppZmZpZXMgPSBqaWZm
aWVzOwogCisJcmV0dXJuIHByZXY7Cit9CisKK3ZvaWQgX19pOTE1X3JlcXVlc3RfcXVldWUoc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnEsCisJCQkgIGNvbnN0IHN0cnVjdCBpOTE1X3NjaGVkX2F0dHIg
KmF0dHIpCit7CiAJLyoKIAkgKiBMZXQgdGhlIGJhY2tlbmQga25vdyBhIG5ldyByZXF1ZXN0IGhh
cyBhcnJpdmVkIHRoYXQgbWF5IG5lZWQKIAkgKiB0byBhZGp1c3QgdGhlIGV4aXN0aW5nIGV4ZWN1
dGlvbiBzY2hlZHVsZSBkdWUgdG8gYSBoaWdoIHByaW9yaXR5CkBAIC0xMTk5LDQzICsxMjA1LDE1
IEBAIHN0cnVjdCBpOTE1X3JlcXVlc3QgKl9faTkxNV9yZXF1ZXN0X2NvbW1pdChzdHJ1Y3QgaTkx
NV9yZXF1ZXN0ICpycSkKIAkgKi8KIAlsb2NhbF9iaF9kaXNhYmxlKCk7CiAJaTkxNV9zd19mZW5j
ZV9jb21taXQoJnJxLT5zZW1hcGhvcmUpOwotCWlmIChlbmdpbmUtPnNjaGVkdWxlKSB7Ci0JCXN0
cnVjdCBpOTE1X3NjaGVkX2F0dHIgYXR0ciA9IHJxLT5nZW1fY29udGV4dC0+c2NoZWQ7Ci0KLQkJ
LyoKLQkJICogQm9vc3QgYWN0dWFsIHdvcmtsb2FkcyBwYXN0IHNlbWFwaG9yZXMhCi0JCSAqCi0J
CSAqIFdpdGggc2VtYXBob3JlcyB3ZSBzcGluIG9uIG9uZSBlbmdpbmUgd2FpdGluZyBmb3IgYW5v
dGhlciwKLQkJICogc2ltcGx5IHRvIHJlZHVjZSB0aGUgbGF0ZW5jeSBvZiBzdGFydGluZyBvdXIg
d29yayB3aGVuCi0JCSAqIHRoZSBzaWduYWxlciBjb21wbGV0ZXMuIEhvd2V2ZXIsIGlmIHRoZXJl
IGlzIGFueSBvdGhlcgotCQkgKiB3b3JrIHRoYXQgd2UgY291bGQgYmUgZG9pbmcgb24gdGhpcyBl
bmdpbmUgaW5zdGVhZCwgdGhhdAotCQkgKiBpcyBiZXR0ZXIgdXRpbGlzYXRpb24gYW5kIHdpbGwg
cmVkdWNlIHRoZSBvdmVyYWxsIGR1cmF0aW9uCi0JCSAqIG9mIHRoZSBjdXJyZW50IHdvcmsuIFRv
IGF2b2lkIFBJIGJvb3N0aW5nIGEgc2VtYXBob3JlCi0JCSAqIGZhciBpbiB0aGUgZGlzdGFuY2Ug
cGFzdCBvdmVyIHVzZWZ1bCB3b3JrLCB3ZSBrZWVwIGEgaGlzdG9yeQotCQkgKiBvZiBhbnkgc2Vt
YXBob3JlIHVzZSBhbG9uZyBvdXIgZGVwZW5kZW5jeSBjaGFpbi4KLQkJICovCi0JCWlmICghKHJx
LT5zY2hlZC5mbGFncyAmIEk5MTVfU0NIRURfSEFTX1NFTUFQSE9SRV9DSEFJTikpCi0JCQlhdHRy
LnByaW9yaXR5IHw9IEk5MTVfUFJJT1JJVFlfTk9TRU1BUEhPUkU7Ci0KLQkJLyoKLQkJICogQm9v
c3QgcHJpb3JpdGllcyB0byBuZXcgY2xpZW50cyAobmV3IHJlcXVlc3QgZmxvd3MpLgotCQkgKgot
CQkgKiBBbGxvdyBpbnRlcmFjdGl2ZS9zeW5jaHJvbm91cyBjbGllbnRzIHRvIGp1bXAgYWhlYWQg
b2YKLQkJICogdGhlIGJ1bGsgY2xpZW50cy4gKEZRX0NPREVMKQotCQkgKi8KLQkJaWYgKGxpc3Rf
ZW1wdHkoJnJxLT5zY2hlZC5zaWduYWxlcnNfbGlzdCkpCi0JCQlhdHRyLnByaW9yaXR5IHw9IEk5
MTVfUFJJT1JJVFlfV0FJVDsKLQotCQllbmdpbmUtPnNjaGVkdWxlKHJxLCAmYXR0cik7Ci0JfQor
CWlmIChhdHRyICYmIHJxLT5lbmdpbmUtPnNjaGVkdWxlKQorCQlycS0+ZW5naW5lLT5zY2hlZHVs
ZShycSwgYXR0cik7CiAJaTkxNV9zd19mZW5jZV9jb21taXQoJnJxLT5zdWJtaXQpOwogCWxvY2Fs
X2JoX2VuYWJsZSgpOyAvKiBLaWNrIHRoZSBleGVjbGlzdHMgdGFza2xldCBpZiBqdXN0IHNjaGVk
dWxlZCAqLwotCi0JcmV0dXJuIHByZXY7CiB9CiAKIHZvaWQgaTkxNV9yZXF1ZXN0X2FkZChzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIHsKKwlzdHJ1Y3QgaTkxNV9zY2hlZF9hdHRyIGF0dHIgPSBy
cS0+Z2VtX2NvbnRleHQtPnNjaGVkOwogCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnByZXY7CiAKIAls
b2NrZGVwX2Fzc2VydF9oZWxkKCZycS0+dGltZWxpbmUtPm11dGV4KTsKQEAgLTEyNDUsNiArMTIy
MywzMiBAQCB2b2lkIGk5MTVfcmVxdWVzdF9hZGQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAK
IAlwcmV2ID0gX19pOTE1X3JlcXVlc3RfY29tbWl0KHJxKTsKIAorCS8qCisJICogQm9vc3QgYWN0
dWFsIHdvcmtsb2FkcyBwYXN0IHNlbWFwaG9yZXMhCisJICoKKwkgKiBXaXRoIHNlbWFwaG9yZXMg
d2Ugc3BpbiBvbiBvbmUgZW5naW5lIHdhaXRpbmcgZm9yIGFub3RoZXIsCisJICogc2ltcGx5IHRv
IHJlZHVjZSB0aGUgbGF0ZW5jeSBvZiBzdGFydGluZyBvdXIgd29yayB3aGVuCisJICogdGhlIHNp
Z25hbGVyIGNvbXBsZXRlcy4gSG93ZXZlciwgaWYgdGhlcmUgaXMgYW55IG90aGVyCisJICogd29y
ayB0aGF0IHdlIGNvdWxkIGJlIGRvaW5nIG9uIHRoaXMgZW5naW5lIGluc3RlYWQsIHRoYXQKKwkg
KiBpcyBiZXR0ZXIgdXRpbGlzYXRpb24gYW5kIHdpbGwgcmVkdWNlIHRoZSBvdmVyYWxsIGR1cmF0
aW9uCisJICogb2YgdGhlIGN1cnJlbnQgd29yay4gVG8gYXZvaWQgUEkgYm9vc3RpbmcgYSBzZW1h
cGhvcmUKKwkgKiBmYXIgaW4gdGhlIGRpc3RhbmNlIHBhc3Qgb3ZlciB1c2VmdWwgd29yaywgd2Ug
a2VlcCBhIGhpc3RvcnkKKwkgKiBvZiBhbnkgc2VtYXBob3JlIHVzZSBhbG9uZyBvdXIgZGVwZW5k
ZW5jeSBjaGFpbi4KKwkgKi8KKwlpZiAoIShycS0+c2NoZWQuZmxhZ3MgJiBJOTE1X1NDSEVEX0hB
U19TRU1BUEhPUkVfQ0hBSU4pKQorCQlhdHRyLnByaW9yaXR5IHw9IEk5MTVfUFJJT1JJVFlfTk9T
RU1BUEhPUkU7CisKKwkvKgorCSAqIEJvb3N0IHByaW9yaXRpZXMgdG8gbmV3IGNsaWVudHMgKG5l
dyByZXF1ZXN0IGZsb3dzKS4KKwkgKgorCSAqIEFsbG93IGludGVyYWN0aXZlL3N5bmNocm9ub3Vz
IGNsaWVudHMgdG8ganVtcCBhaGVhZCBvZgorCSAqIHRoZSBidWxrIGNsaWVudHMuIChGUV9DT0RF
TCkKKwkgKi8KKwlpZiAobGlzdF9lbXB0eSgmcnEtPnNjaGVkLnNpZ25hbGVyc19saXN0KSkKKwkJ
YXR0ci5wcmlvcml0eSB8PSBJOTE1X1BSSU9SSVRZX1dBSVQ7CisKKwlfX2k5MTVfcmVxdWVzdF9x
dWV1ZShycSwgJmF0dHIpOworCiAJLyoKIAkgKiBJbiB0eXBpY2FsIHNjZW5hcmlvcywgd2UgZG8g
bm90IGV4cGVjdCB0aGUgcHJldmlvdXMgcmVxdWVzdCBvbgogCSAqIHRoZSB0aW1lbGluZSB0byBi
ZSBzdGlsbCB0cmFja2VkIGJ5IHRpbWVsaW5lLT5sYXN0X3JlcXVlc3QgaWYgaXQKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZXF1ZXN0LmgKaW5kZXggMzEzZGYzYzM3MTU4Li5mZWMxZDVmMTdjOTQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5oCkBAIC0yNTEsNiArMjUxLDggQEAgc3RydWN0
IGk5MTVfcmVxdWVzdCAqIF9fbXVzdF9jaGVjawogaTkxNV9yZXF1ZXN0X2NyZWF0ZShzdHJ1Y3Qg
aW50ZWxfY29udGV4dCAqY2UpOwogCiBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpfX2k5MTVfcmVxdWVz
dF9jb21taXQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCk7Cit2b2lkIF9faTkxNV9yZXF1
ZXN0X3F1ZXVlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAorCQkJICBjb25zdCBzdHJ1Y3QgaTkx
NV9zY2hlZF9hdHRyICphdHRyKTsKIAogdm9pZCBpOTE1X3JlcXVlc3RfcmV0aXJlX3VwdG8oc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcnEpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3NjaGVkdWxlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIu
YwppbmRleCAwYmQ0NTJlODUxZDguLjdiODRlYmNhMjkwMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3NjaGVkdWxlci5jCkBAIC0zNDksOCArMzQ5LDcgQEAgdm9pZCBpOTE1X3NjaGVkdWxlX2J1
bXBfcHJpb3JpdHkoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIHVuc2lnbmVkIGludCBidW1wKQog
CXVuc2lnbmVkIGxvbmcgZmxhZ3M7CiAKIAlHRU1fQlVHX09OKGJ1bXAgJiB+STkxNV9QUklPUklU
WV9NQVNLKTsKLQotCWlmIChSRUFEX09OQ0UocnEtPnNjaGVkLmF0dHIucHJpb3JpdHkpID09IEk5
MTVfUFJJT1JJVFlfSU5WQUxJRCkKKwlpZiAoUkVBRF9PTkNFKHJxLT5zY2hlZC5hdHRyLnByaW9y
aXR5KSAmIGJ1bXApCiAJCXJldHVybjsKIAogCXNwaW5fbG9ja19pcnFzYXZlKCZzY2hlZHVsZV9s
b2NrLCBmbGFncyk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtl
cmVmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtlcmVmLmMKaW5kZXggZDQ0NDNl
ODFjMWM4Li44NjhjYzc4MDQ4ZDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3dha2VyZWYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtlcmVmLmMK
QEAgLTU3LDEyICs1NywxMCBAQCBzdGF0aWMgdm9pZCBfX19faW50ZWxfd2FrZXJlZl9wdXRfbGFz
dChzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCiAJaWYgKCFhdG9taWNfZGVjX2FuZF90ZXN0KCZ3
Zi0+Y291bnQpKQogCQlnb3RvIHVubG9jazsKIAorCS8qIG9wcy0+cHV0KCkgbXVzdCByZXNjaGVk
dWxlIGl0cyBvd24gcmVsZWFzZSBvbiBlcnJvci9kZWZlcnJhbCAqLwogCWlmIChsaWtlbHkoIXdm
LT5vcHMtPnB1dCh3ZikpKSB7CiAJCXJwbV9wdXQod2YpOwogCQl3YWtlX3VwX3Zhcigmd2YtPndh
a2VyZWYpOwotCX0gZWxzZSB7Ci0JCS8qIG9wcy0+cHV0KCkgbXVzdCBzY2hlZHVsZSBpdHMgb3du
IHJlbGVhc2Ugb24gZGVmZXJyYWwgKi8KLQkJYXRvbWljX3NldF9yZWxlYXNlKCZ3Zi0+Y291bnQs
IDEpOwogCX0KIAogdW5sb2NrOgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfd2FrZXJlZi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5oCmluZGV4
IDUzNWEzYTEyODY0Yi4uNWYwYzk3MmE4MGZiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF93YWtlcmVmLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2Fr
ZXJlZi5oCkBAIC0xNjMsNiArMTYzLDE3IEBAIGludGVsX3dha2VyZWZfaXNfYWN0aXZlKGNvbnN0
IHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKIAlyZXR1cm4gUkVBRF9PTkNFKHdmLT53YWtlcmVm
KTsKIH0KIAorLyoqCisgKiBfX2ludGVsX3dha2VyZWZfZGVmZXJfcGFyazogRGVmZXIgdGhlIGN1
cnJlbnQgcGFyayBjYWxsYmFjaworICogQHdmOiB0aGUgd2FrZXJlZgorICovCitzdGF0aWMgaW5s
aW5lIHZvaWQKK19faW50ZWxfd2FrZXJlZl9kZWZlcl9wYXJrKHN0cnVjdCBpbnRlbF93YWtlcmVm
ICp3ZikKK3sKKwlJTlRFTF9XQUtFUkVGX0JVR19PTihhdG9taWNfcmVhZCgmd2YtPmNvdW50KSk7
CisJYXRvbWljX3NldF9yZWxlYXNlKCZ3Zi0+Y291bnQsIDEpOworfQorCiAvKioKICAqIGludGVs
X3dha2VyZWZfd2FpdF9mb3JfaWRsZTogV2FpdCB1bnRpbCB0aGUgd2FrZXJlZiBpcyBpZGxlCiAg
KiBAd2Y6IHRoZSB3YWtlcmVmCi0tIAoyLjIzLjAucmMxCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
