Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC31DFB0D5
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 13:53:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D39246E0E4;
	Wed, 13 Nov 2019 12:52:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C8A8891D2;
 Wed, 13 Nov 2019 12:52:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19187137-1500050 
 for multiple; Wed, 13 Nov 2019 12:52:43 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Nov 2019 12:52:40 +0000
Message-Id: <20191113125240.3781-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191113125240.3781-1-chris@chris-wilson.co.uk>
References: <20191113125240.3781-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 9/9] i915: Exercise
 I915_CONTEXT_PARAM_RINGSIZE
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

STkxNV9DT05URVhUX1BBUkFNX1JJTkdTSVpFIHNwZWNpZmllcyBob3cgbGFyZ2UgdG8gY3JlYXRl
IHRoZSBjb21tYW5kCnJpbmdidWZmZXIgZm9yIGxvZ2ljYWwgcmluZyBjb250ZWN0cy4gVGhpcyBk
aXJlY3RseSBhZmZlY3RzIHRoZSBudW1iZXIKb2YgYmF0Y2hlcyB1c2Vyc3BhY2UgY2FuIHN1Ym1p
dCBiZWZvcmUgYmxvY2tpbmcgd2FpdGluZyBmb3Igc3BhY2UuCgpTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiB0ZXN0cy9NYWtlZmlsZS5z
b3VyY2VzICAgICAgICB8ICAgMyArCiB0ZXN0cy9pOTE1L2dlbV9jdHhfcmluZ3NpemUuYyB8IDI5
NiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiB0ZXN0cy9tZXNvbi5idWlsZCAg
ICAgICAgICAgICB8ICAgMSArCiAzIGZpbGVzIGNoYW5nZWQsIDMwMCBpbnNlcnRpb25zKCspCiBj
cmVhdGUgbW9kZSAxMDA2NDQgdGVzdHMvaTkxNS9nZW1fY3R4X3JpbmdzaXplLmMKCmRpZmYgLS1n
aXQgYS90ZXN0cy9NYWtlZmlsZS5zb3VyY2VzIGIvdGVzdHMvTWFrZWZpbGUuc291cmNlcwppbmRl
eCBlMTdkNDMxNTUuLjgwMWZjNTJmMyAxMDA2NDQKLS0tIGEvdGVzdHMvTWFrZWZpbGUuc291cmNl
cworKysgYi90ZXN0cy9NYWtlZmlsZS5zb3VyY2VzCkBAIC0xNjMsNiArMTYzLDkgQEAgZ2VtX2N0
eF9wYXJhbV9TT1VSQ0VTID0gaTkxNS9nZW1fY3R4X3BhcmFtLmMKIFRFU1RTX3Byb2dzICs9IGdl
bV9jdHhfcGVyc2lzdGVuY2UKIGdlbV9jdHhfcGVyc2lzdGVuY2VfU09VUkNFUyA9IGk5MTUvZ2Vt
X2N0eF9wZXJzaXN0ZW5jZS5jCiAKK1RFU1RTX3Byb2dzICs9IGdlbV9jdHhfcmluZ3NpemUKK2dl
bV9jdHhfcmluZ3NpemVfU09VUkNFUyA9IGk5MTUvZ2VtX2N0eF9yaW5nc2l6ZS5jCisKIFRFU1RT
X3Byb2dzICs9IGdlbV9jdHhfc2hhcmVkCiBnZW1fY3R4X3NoYXJlZF9TT1VSQ0VTID0gaTkxNS9n
ZW1fY3R4X3NoYXJlZC5jCiAKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9yaW5nc2l6
ZS5jIGIvdGVzdHMvaTkxNS9nZW1fY3R4X3JpbmdzaXplLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQK
aW5kZXggMDAwMDAwMDAwLi4xNDUwZThmMGQKLS0tIC9kZXYvbnVsbAorKysgYi90ZXN0cy9pOTE1
L2dlbV9jdHhfcmluZ3NpemUuYwpAQCAtMCwwICsxLDI5NiBAQAorLyoKKyAqIENvcHlyaWdodCDC
qSAyMDE5IEludGVsIENvcnBvcmF0aW9uCisgKgorICogUGVybWlzc2lvbiBpcyBoZXJlYnkgZ3Jh
bnRlZCwgZnJlZSBvZiBjaGFyZ2UsIHRvIGFueSBwZXJzb24gb2J0YWluaW5nIGEKKyAqIGNvcHkg
b2YgdGhpcyBzb2Z0d2FyZSBhbmQgYXNzb2NpYXRlZCBkb2N1bWVudGF0aW9uIGZpbGVzICh0aGUg
IlNvZnR3YXJlIiksCisgKiB0byBkZWFsIGluIHRoZSBTb2Z0d2FyZSB3aXRob3V0IHJlc3RyaWN0
aW9uLCBpbmNsdWRpbmcgd2l0aG91dCBsaW1pdGF0aW9uCisgKiB0aGUgcmlnaHRzIHRvIHVzZSwg
Y29weSwgbW9kaWZ5LCBtZXJnZSwgcHVibGlzaCwgZGlzdHJpYnV0ZSwgc3VibGljZW5zZSwKKyAq
IGFuZC9vciBzZWxsIGNvcGllcyBvZiB0aGUgU29mdHdhcmUsIGFuZCB0byBwZXJtaXQgcGVyc29u
cyB0byB3aG9tIHRoZQorICogU29mdHdhcmUgaXMgZnVybmlzaGVkIHRvIGRvIHNvLCBzdWJqZWN0
IHRvIHRoZSBmb2xsb3dpbmcgY29uZGl0aW9uczoKKyAqCisgKiBUaGUgYWJvdmUgY29weXJpZ2h0
IG5vdGljZSBhbmQgdGhpcyBwZXJtaXNzaW9uIG5vdGljZSAoaW5jbHVkaW5nIHRoZSBuZXh0Cisg
KiBwYXJhZ3JhcGgpIHNoYWxsIGJlIGluY2x1ZGVkIGluIGFsbCBjb3BpZXMgb3Igc3Vic3RhbnRp
YWwgcG9ydGlvbnMgb2YgdGhlCisgKiBTb2Z0d2FyZS4KKyAqCisgKiBUSEUgU09GVFdBUkUgSVMg
UFJPVklERUQgIkFTIElTIiwgV0lUSE9VVCBXQVJSQU5UWSBPRiBBTlkgS0lORCwgRVhQUkVTUyBP
UgorICogSU1QTElFRCwgSU5DTFVESU5HIEJVVCBOT1QgTElNSVRFRCBUTyBUSEUgV0FSUkFOVElF
UyBPRiBNRVJDSEFOVEFCSUxJVFksCisgKiBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9T
RSBBTkQgTk9OSU5GUklOR0VNRU5ULiAgSU4gTk8gRVZFTlQgU0hBTEwKKyAqIFRIRSBBVVRIT1JT
IE9SIENPUFlSSUdIVCBIT0xERVJTIEJFIExJQUJMRSBGT1IgQU5ZIENMQUlNLCBEQU1BR0VTIE9S
IE9USEVSCisgKiBMSUFCSUxJVFksIFdIRVRIRVIgSU4gQU4gQUNUSU9OIE9GIENPTlRSQUNULCBU
T1JUIE9SIE9USEVSV0lTRSwgQVJJU0lORworICogRlJPTSwgT1VUIE9GIE9SIElOIENPTk5FQ1RJ
T04gV0lUSCBUSEUgU09GVFdBUkUgT1IgVEhFIFVTRSBPUiBPVEhFUiBERUFMSU5HUworICogSU4g
VEhFIFNPRlRXQVJFLgorICovCisKKyNpbmNsdWRlIDxlcnJuby5oPgorI2luY2x1ZGUgPGZjbnRs
Lmg+CisjaW5jbHVkZSA8aW50dHlwZXMuaD4KKyNpbmNsdWRlIDxzeXMvaW9jdGwuaD4KKyNpbmNs
dWRlIDxzeXMvdHlwZXMuaD4KKyNpbmNsdWRlIDx1bmlzdGQuaD4KKworI2luY2x1ZGUgImRybXRl
c3QuaCIgLyogZ2VtX3F1aWVzY2VudF9ncHUoKSEgKi8KKyNpbmNsdWRlICJpOTE1L2dlbV9jb250
ZXh0LmgiCisjaW5jbHVkZSAiaTkxNS9nZW1fZW5naW5lX3RvcG9sb2d5LmgiCisjaW5jbHVkZSAi
aW9jdGxfd3JhcHBlcnMuaCIgLyogZ2VtX3dhaXQoKSEgKi8KKyNpbmNsdWRlICJzd19zeW5jLmgi
CisKKyNkZWZpbmUgSTkxNV9DT05URVhUX1BBUkFNX1JJTkdTSVpFIDB4YworCitzdGF0aWMgYm9v
bCBoYXNfcmluZ3NpemUoaW50IGk5MTUpCit7CisJc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0
X3BhcmFtIHAgPSB7CisJCS5wYXJhbSA9IEk5MTVfQ09OVEVYVF9QQVJBTV9SSU5HU0laRSwKKwl9
OworCisJcmV0dXJuIF9fZ2VtX2NvbnRleHRfZ2V0X3BhcmFtKGk5MTUsICZwKSA9PSAwOworfQor
CitzdGF0aWMgdm9pZCB0ZXN0X2lkZW1wb3RlbnQoaW50IGk5MTUpCit7CisJc3RydWN0IGRybV9p
OTE1X2dlbV9jb250ZXh0X3BhcmFtIHAgPSB7CisJCS5wYXJhbSA9IEk5MTVfQ09OVEVYVF9QQVJB
TV9SSU5HU0laRSwKKwl9OworCXVpbnQzMl90IHNhdmVkOworCisJLyoKKwkgKiBTaW1wbGUgdGVz
dCB0byB2ZXJpZnkgdGhhdCB3ZSBhcmUgYWJsZSB0byByZWFkIGJhY2sgdGhlIHNhbWUKKwkgKiB2
YWx1ZSBhcyB3ZSBzZXQuCisJICovCisKKwlnZW1fY29udGV4dF9nZXRfcGFyYW0oaTkxNSwgJnAp
OworCXNhdmVkID0gcC52YWx1ZTsKKworCWZvciAodWludDMyX3QgeCA9IDEgPDwgMTI7IHggPD0g
MTI4IDw8IDEyOyB4IDw8PSAxKSB7CisJCXAudmFsdWUgPSB4OworCQlnZW1fY29udGV4dF9zZXRf
cGFyYW0oaTkxNSwgJnApOworCQlnZW1fY29udGV4dF9nZXRfcGFyYW0oaTkxNSwgJnApOworCQlp
Z3RfYXNzZXJ0X2VxX3UzMihwLnZhbHVlLCB4KTsKKwl9CisKKwlwLnZhbHVlID0gc2F2ZWQ7CisJ
Z2VtX2NvbnRleHRfc2V0X3BhcmFtKGk5MTUsICZwKTsKK30KKworc3RhdGljIHZvaWQgdGVzdF9p
bnZhbGlkKGludCBpOTE1KQoreworCXN0cnVjdCBkcm1faTkxNV9nZW1fY29udGV4dF9wYXJhbSBw
ID0geworCQkucGFyYW0gPSBJOTE1X0NPTlRFWFRfUEFSQU1fUklOR1NJWkUsCisJfTsKKwl1aW50
NjRfdCBpbnZhbGlkW10gPSB7CisJCTAsIDEsIDQwOTUsIDQwOTcsIDgxOTEsIDgxOTMsCisJCS8q
IHVwcGVyIGxpbWl0IG1heSBiZSBIVyBkZXBlbmRlbnQsIGF0bSBpdCBpcyA1MTJLaUIgKi8KKwkJ
KDUxMiA8PCAxMCkgLSAxLCAoNTEyIDw8IDEwKSArIDEsCisJCS0xLCAtMXUKKwl9OworCXVpbnQz
Ml90IHNhdmVkOworCisJZ2VtX2NvbnRleHRfZ2V0X3BhcmFtKGk5MTUsICZwKTsKKwlzYXZlZCA9
IHAudmFsdWU7CisKKwlmb3IgKGludCBpID0gMDsgaSA8IEFSUkFZX1NJWkUoaW52YWxpZCk7IGkr
KykgeworCQlwLnZhbHVlID0gaW52YWxpZFtpXTsKKwkJaWd0X2Fzc2VydF9lcShfX2dlbV9jb250
ZXh0X3NldF9wYXJhbShpOTE1LCAmcCksIC1FSU5WQUwpOworCQlnZW1fY29udGV4dF9nZXRfcGFy
YW0oaTkxNSwgJnApOworCQlpZ3RfYXNzZXJ0X2VxX3U2NChwLnZhbHVlLCBzYXZlZCk7CisJfQor
fQorCitzdGF0aWMgaW50IGNyZWF0ZV9leHRfaW9jdGwoaW50IGk5MTUsCisJCQkgICAgc3RydWN0
IGRybV9pOTE1X2dlbV9jb250ZXh0X2NyZWF0ZV9leHQgKmFyZykKK3sKKwlpbnQgZXJyOworCisJ
ZXJyID0gMDsKKwlpZiAoaWd0X2lvY3RsKGk5MTUsIERSTV9JT0NUTF9JOTE1X0dFTV9DT05URVhU
X0NSRUFURV9FWFQsIGFyZykpIHsKKwkJZXJyID0gLWVycm5vOworCQlpZ3RfYXNzdW1lKGVycik7
CisJfQorCisJZXJybm8gPSAwOworCXJldHVybiBlcnI7Cit9CisKK3N0YXRpYyB2b2lkIHRlc3Rf
Y3JlYXRlKGludCBpOTE1KQoreworCXN0cnVjdCBkcm1faTkxNV9nZW1fY29udGV4dF9jcmVhdGVf
ZXh0X3NldHBhcmFtIHAgPSB7CisJCS5iYXNlID0geworCQkJLm5hbWUgPSBJOTE1X0NPTlRFWFRf
Q1JFQVRFX0VYVF9TRVRQQVJBTSwKKwkJCS5uZXh0X2V4dGVuc2lvbiA9IDAsIC8qIGVuZCBvZiBj
aGFpbiAqLworCQl9LAorCQkucGFyYW0gPSB7CisJCQkucGFyYW0gPSBJOTE1X0NPTlRFWFRfUEFS
QU1fUklOR1NJWkUsCisJCQkudmFsdWUgPSA1MTIgPDwgMTAsCisJCX0KKwl9OworCXN0cnVjdCBk
cm1faTkxNV9nZW1fY29udGV4dF9jcmVhdGVfZXh0IGNyZWF0ZSA9IHsKKwkJLmZsYWdzID0gSTkx
NV9DT05URVhUX0NSRUFURV9GTEFHU19VU0VfRVhURU5TSU9OUywKKwkJLmV4dGVuc2lvbnMgPSB0
b191c2VyX3BvaW50ZXIoJnApLAorCX07CisKKwlpZ3RfYXNzZXJ0X2VxKGNyZWF0ZV9leHRfaW9j
dGwoaTkxNSwgJmNyZWF0ZSksICAwKTsKKworCXAucGFyYW0uY3R4X2lkID0gY3JlYXRlLmN0eF9p
ZDsKKwlwLnBhcmFtLnZhbHVlID0gMDsKKwlnZW1fY29udGV4dF9nZXRfcGFyYW0oaTkxNSwgJnAu
cGFyYW0pOworCWlndF9hc3NlcnRfZXEocC5wYXJhbS52YWx1ZSwgNTEyIDw8IDEwKTsKKworCWdl
bV9jb250ZXh0X2Rlc3Ryb3koaTkxNSwgY3JlYXRlLmN0eF9pZCk7Cit9CisKK3N0YXRpYyB2b2lk
IHRlc3RfY2xvbmUoaW50IGk5MTUpCit7CisJc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X2Ny
ZWF0ZV9leHRfc2V0cGFyYW0gcCA9IHsKKwkJLmJhc2UgPSB7CisJCQkubmFtZSA9IEk5MTVfQ09O
VEVYVF9DUkVBVEVfRVhUX1NFVFBBUkFNLAorCQkJLm5leHRfZXh0ZW5zaW9uID0gMCwgLyogZW5k
IG9mIGNoYWluICovCisJCX0sCisJCS5wYXJhbSA9IHsKKwkJCS5wYXJhbSA9IEk5MTVfQ09OVEVY
VF9QQVJBTV9SSU5HU0laRSwKKwkJCS52YWx1ZSA9IDUxMiA8PCAxMCwKKwkJfQorCX07CisJc3Ry
dWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X2NyZWF0ZV9leHQgY3JlYXRlID0geworCQkuZmxhZ3Mg
PSBJOTE1X0NPTlRFWFRfQ1JFQVRFX0ZMQUdTX1VTRV9FWFRFTlNJT05TLAorCQkuZXh0ZW5zaW9u
cyA9IHRvX3VzZXJfcG9pbnRlcigmcCksCisJfTsKKworCWlndF9hc3NlcnRfZXEoY3JlYXRlX2V4
dF9pb2N0bChpOTE1LCAmY3JlYXRlKSwgIDApOworCisJcC5wYXJhbS5jdHhfaWQgPSBnZW1fY29u
dGV4dF9jbG9uZShpOTE1LCBjcmVhdGUuY3R4X2lkLAorCQkJCQkgICBJOTE1X0NPTlRFWFRfQ0xP
TkVfRU5HSU5FUywgMCk7CisJaWd0X2Fzc2VydF9uZXEocC5wYXJhbS5jdHhfaWQsIGNyZWF0ZS5j
dHhfaWQpOworCWdlbV9jb250ZXh0X2Rlc3Ryb3koaTkxNSwgY3JlYXRlLmN0eF9pZCk7CisKKwlw
LnBhcmFtLnZhbHVlID0gMDsKKwlnZW1fY29udGV4dF9nZXRfcGFyYW0oaTkxNSwgJnAucGFyYW0p
OworCWlndF9hc3NlcnRfZXEocC5wYXJhbS52YWx1ZSwgNTEyIDw8IDEwKTsKKworCWdlbV9jb250
ZXh0X2Rlc3Ryb3koaTkxNSwgcC5wYXJhbS5jdHhfaWQpOworfQorCitzdGF0aWMgaW50IF9fZXhl
Y2J1ZihpbnQgaTkxNSwgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiAqZXhlY2J1ZikK
K3sKKwlpbnQgZXJyOworCisJZXJyID0gMDsKKwlpZiAoaW9jdGwoaTkxNSwgRFJNX0lPQ1RMX0k5
MTVfR0VNX0VYRUNCVUZGRVIyLCBleGVjYnVmKSkKKwkJZXJyID0gLWVycm5vOworCisJZXJybm8g
PSAwOworCXJldHVybiBlcnI7Cit9CisKK3N0YXRpYyB1aW50MzJfdCBfX2JhdGNoX2NyZWF0ZShp
bnQgaTkxNSwgdWludDMyX3Qgb2Zmc2V0KQoreworCWNvbnN0IHVpbnQzMl90IGJiZSA9IDB4YSA8
PCAyMzsKKwl1aW50MzJfdCBoYW5kbGU7CisKKwloYW5kbGUgPSBnZW1fY3JlYXRlKGk5MTUsIEFM
SUdOKG9mZnNldCArIHNpemVvZihiYmUpLCA0MDk2KSk7CisJZ2VtX3dyaXRlKGk5MTUsIGhhbmRs
ZSwgb2Zmc2V0LCAmYmJlLCBzaXplb2YoYmJlKSk7CisKKwlyZXR1cm4gaGFuZGxlOworfQorCitz
dGF0aWMgdWludDMyX3QgYmF0Y2hfY3JlYXRlKGludCBpOTE1KQoreworCXJldHVybiBfX2JhdGNo
X2NyZWF0ZShpOTE1LCAwKTsKK30KKworc3RhdGljIHVuc2lnbmVkIGludCBtZWFzdXJlX2luZmxp
Z2h0KGludCBpOTE1LCB1bnNpZ25lZCBpbnQgZW5naW5lKQoreworCUlHVF9DT1JLX0ZFTkNFKGNv
cmspOworCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19vYmplY3QyIG9iaiA9IHsKKwkJLmhhbmRs
ZSA9IGJhdGNoX2NyZWF0ZShpOTE1KQorCX07CisJc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVm
ZmVyMiBleGVjYnVmID0geworCQkuYnVmZmVyc19wdHIgPSB0b191c2VyX3BvaW50ZXIoJm9iaiks
CisJCS5idWZmZXJfY291bnQgPSAxLAorCQkuZmxhZ3MgPSBlbmdpbmUgfCBJOTE1X0VYRUNfRkVO
Q0VfSU4sCisJCS5yc3ZkMiA9IGlndF9jb3JrX3BsdWcoJmNvcmssIGk5MTUpLAorCX07CisJdW5z
aWduZWQgaW50IGNvdW50OworCisJZmNudGwoaTkxNSwgRl9TRVRGTCwgZmNudGwoaTkxNSwgRl9H
RVRGTCkgfCBPX05PTkJMT0NLKTsKKworCWdlbV9leGVjYnVmKGk5MTUsICZleGVjYnVmKTsKKwlm
b3IgKGNvdW50ID0gMTsgX19leGVjYnVmKGk5MTUsICZleGVjYnVmKSA9PSAwOyBjb3VudCsrKQor
CQk7CisJY2xvc2UoZXhlY2J1Zi5yc3ZkMik7CisKKwlmY250bChpOTE1LCBGX1NFVEZMLCBmY250
bChpOTE1LCBGX0dFVEZMKSAmIH5PX05PTkJMT0NLKTsKKworCWlndF9jb3JrX3VucGx1ZygmY29y
ayk7CisJZ2VtX2Nsb3NlKGk5MTUsIG9iai5oYW5kbGUpOworCisJcmV0dXJuIGNvdW50OworfQor
CitzdGF0aWMgdm9pZCB0ZXN0X3Jlc2l6ZShpbnQgaTkxNSwKKwkJCWNvbnN0IHN0cnVjdCBpbnRl
bF9leGVjdXRpb25fZW5naW5lMiAqZSwKKwkJCXVuc2lnbmVkIGludCBmbGFncykKKyNkZWZpbmUg
SURMRSAoMSA8PCAwKQoreworCXN0cnVjdCBkcm1faTkxNV9nZW1fY29udGV4dF9wYXJhbSBwID0g
eworCQkucGFyYW0gPSBJOTE1X0NPTlRFWFRfUEFSQU1fUklOR1NJWkUsCisJfTsKKwl1bnNpZ25l
ZCBpbnQgcHJldlsyXSA9IHt9OworCXVpbnQzMl90IHNhdmVkOworCisJZ2VtX2NvbnRleHRfZ2V0
X3BhcmFtKGk5MTUsICZwKTsKKwlzYXZlZCA9IHAudmFsdWU7CisKKwlnZW1fcXVpZXNjZW50X2dw
dShpOTE1KTsKKwlmb3IgKHAudmFsdWUgPSAxIDw8IDEyOyBwLnZhbHVlIDw9IDEyOCA8PCAxMjsg
cC52YWx1ZSA8PD0gMSkgeworCQl1bnNpZ25lZCBpbnQgY291bnQ7CisKKwkJZ2VtX2NvbnRleHRf
c2V0X3BhcmFtKGk5MTUsICZwKTsKKworCQljb3VudCA9IG1lYXN1cmVfaW5mbGlnaHQoaTkxNSwg
ZS0+ZmxhZ3MpOworCQlpZ3RfaW5mbygiJXM6ICVsbHggLT4gJWRcbiIsIGUtPm5hbWUsIHAudmFs
dWUsIGNvdW50KTsKKwkJaWd0X2Fzc2VydChjb3VudCA+IDMgKiAocHJldlsxXSAtIHByZXZbMF0p
IC8gNCArIHByZXZbMV0pOworCQlpZiAoZmxhZ3MgJiBJRExFKQorCQkJZ2VtX3F1aWVzY2VudF9n
cHUoaTkxNSk7CisKKwkJcHJldlswXSA9IHByZXZbMV07CisJCXByZXZbMV0gPSBjb3VudDsKKwl9
CisJZ2VtX3F1aWVzY2VudF9ncHUoaTkxNSk7CisKKwlwLnZhbHVlID0gc2F2ZWQ7CisJZ2VtX2Nv
bnRleHRfc2V0X3BhcmFtKGk5MTUsICZwKTsKK30KKworaWd0X21haW4KK3sKKwljb25zdCBzdHJ1
Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZTIgKmU7CisJaW50IGk5MTU7CisKKwlpZ3RfZml4dHVy
ZSB7CisJCWk5MTUgPSBkcm1fb3Blbl9kcml2ZXIoRFJJVkVSX0lOVEVMKTsKKwkJaWd0X3JlcXVp
cmVfZ2VtKGk5MTUpOworCisJCWlndF9yZXF1aXJlKGhhc19yaW5nc2l6ZShpOTE1KSk7CisJfQor
CisJaWd0X3N1YnRlc3QoImlkZW1wb3RlbnQiKQorCQl0ZXN0X2lkZW1wb3RlbnQoaTkxNSk7CisK
KwlpZ3Rfc3VidGVzdCgiaW52YWxpZCIpCisJCXRlc3RfaW52YWxpZChpOTE1KTsKKworCWlndF9z
dWJ0ZXN0KCJjcmVhdGUiKQorCQl0ZXN0X2NyZWF0ZShpOTE1KTsKKwlpZ3Rfc3VidGVzdCgiY2xv
bmUiKQorCQl0ZXN0X2Nsb25lKGk5MTUpOworCisJX19mb3JfZWFjaF9waHlzaWNhbF9lbmdpbmUo
aTkxNSwgZSkgeworCQlpZ3Rfc3VidGVzdF9mKCIlcy1pZGxlIiwgZS0+bmFtZSkKKwkJCXRlc3Rf
cmVzaXplKGk5MTUsIGUsIElETEUpOworCQlpZ3Rfc3VidGVzdF9mKCIlcy1hY3RpdmUiLCBlLT5u
YW1lKQorCQkJdGVzdF9yZXNpemUoaTkxNSwgZSwgMCk7CisJfQorCisJaWd0X2ZpeHR1cmUgewor
CQljbG9zZShpOTE1KTsKKwl9Cit9CmRpZmYgLS1naXQgYS90ZXN0cy9tZXNvbi5idWlsZCBiL3Rl
c3RzL21lc29uLmJ1aWxkCmluZGV4IGIwYzU2NzU5NC4uOWI3Y2EyNDIzIDEwMDY0NAotLS0gYS90
ZXN0cy9tZXNvbi5idWlsZAorKysgYi90ZXN0cy9tZXNvbi5idWlsZApAQCAtMTIzLDYgKzEyMyw3
IEBAIGk5MTVfcHJvZ3MgPSBbCiAJJ2dlbV9jdHhfaXNvbGF0aW9uJywKIAknZ2VtX2N0eF9wYXJh
bScsCiAJJ2dlbV9jdHhfcGVyc2lzdGVuY2UnLAorCSdnZW1fY3R4X3JpbmdzaXplJywKIAknZ2Vt
X2N0eF9zaGFyZWQnLAogCSdnZW1fY3R4X3N3aXRjaCcsCiAJJ2dlbV9jdHhfdGhyYXNoJywKLS0g
CjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
