Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 778BD1EEEBA
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 02:24:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C65926E405;
	Fri,  5 Jun 2020 00:24:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABB826E405
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 00:24:26 +0000 (UTC)
IronPort-SDR: 3UBtqNjAd0Iq2gRpZsmo1/u5jh/CSKSj9jUfljNwdkmnJTh/gU0s1JYvdGh1CXzCP3EZzFsnNn
 516UThmZNjwA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 17:24:25 -0700
IronPort-SDR: 1rCQZFydX278h3CGMqkpf/b7do1O+6t+SW3u4h/AORN36UGSi/e9/bhe63RZ8K39eI7LXfOiT6
 HN6O2jeo4VTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,474,1583222400"; d="scan'208";a="378580615"
Received: from helsinki.fi.intel.com ([10.237.66.162])
 by fmsmga001.fm.intel.com with ESMTP; 04 Jun 2020 17:24:23 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Jun 2020 03:23:50 +0300
Message-Id: <20200605002350.151449-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/psr: Program default IO buffer Wake
 and Fast Wake
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

VGhlIElPIGJ1ZmZlciBXYWtlIGFuZCBGYXN0IFdha2UgYml0IHNpemUgYW5kIHZhbHVlIGhhdmUg
YmVlbiBjaGFuZ2VkIGZyb20KR2VuMTIrLgpJdCBwcm9ncmFtcyBkZWZhdWx0IHZhbHVlIG9mIElP
IGJ1ZmZlciBXYWtlIGFuZCBGYXN0IFdha2Ugb24gR2VuMTIrLgoKLSBQcmUgR2VuMTIKICBCaXQg
bG9jYXRpb246IElPIGJ1ZmZlciBXYWtlOiBSZWdpc3Rlcl9QU1IyX0NUTFsxNDoxM10KICAgICAg
ICAgICAgICAgIEZhc3QgV2FrZTogUmVnaXN0ZXJfUFNSMl9DVExbMTI6MTFdCgogIFZhbHVlOiAw
eDA6IDggbGluZXMKICAgICAgICAgMHgxOiA3IGxpbmVzCiAgICAgICAgIDB4MjogNiBsaW5lcwog
ICAgICAgICAweDM6IDUgbGluZXMKCi0gR2VuMTIrCiAgQml0IGxvY2F0aW9uOiBJTyBidWZmZXIg
V2FrZTogUmVnaXN0ZXJfUFNSMl9DVExbMTU6MTNdCiAgICAgICAgICAgICAgICBGYXN0IFdha2U6
IFJlZ2lzdGVyX1BTUjJfQ1RMWzEyOjEwXQoKICBWYWx1ZTogMHgwOiA1IGxpbmVzCiAgICAgICAg
IDB4MTogNiBsaW5lcwogICAgICAgICAweDI6IDcgbGluZXMKICAgICAgICAgMHgzOiA4IGxpbmVz
CiAgICAgICAgIDB4NDogOSBsaW5lcwogICAgICAgICAweDU6IDEwIGxpbmVzCiAgICAgICAgIDB4
NjogMTEgbGluZXMKICAgICAgICAgMHg3OiAxMiBsaW5lcwoKQ2M6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBN
dW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYyB8IDE5ICsrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgfCAgNiArKysrKysKIDIgZmlsZXMgY2hhbmdl
ZCwgMjUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jCmluZGV4IGI3YTJjMTAyNjQ4YS4uZGUyYTE3ZmU4ODYwIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKQEAgLTUxOCw2ICs1MTgsMjUgQEAgc3RhdGljIHZvaWQg
aHN3X2FjdGl2YXRlX3BzcjIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAllbHNlCiAJCXZh
bCB8PSBFRFBfUFNSMl9UUDJfVElNRV8yNTAwdXM7CiAKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMikgeworCQkvKgorCQkgKiBUT0RPOiBJbiBvcmRlciB0byBzZXR0aW5nIGFuIG9wdGlt
YWwgcG93ZXIgY29uc3VtcHRpb24sCisJCSAqIGxvd2VyIHRoYW4gNGsgcmVzb2x1aXRpb24gbW9k
ZSBuZWVkcyB0byBkZWNyZXNlIElPX0JVRkZFUl9XQUtFCisJCSAqIGFuZCBGQVNUX1dBS0UuIEFu
ZCBoaWdoZXIgdGhhbiA0SyByZXNvbHV0aW9uIG1vZGUgbmVlZHMKKwkJICogdG8gaW5jcmVhc2Ug
SU9fQlVGRkVSX1dBS0UgYW5kIEZBU1RfV0FLRS4KKwkJICovCisJCXUzMiBpb19idWZmZXJfd2Fr
ZSA9IDB4MjsgLyogZGVmYXVsdCBCU3BlYyB2YWx1ZSwgNyBsaW5lcyAqLworCQl1MzIgZmFzdF93
YWtlID0gMHgyOyAvKiBkZWZhdWx0IEJTcGVjIHZhbHVlLCA3IGxpbmVzICovCisKKwkJLyoKKwkJ
ICogVG8gcHJvZ3JhbSBsaW5lIDkgdG8gMTIgb24gSU9fQlVGRkVSX1dBS0UgYW5kIEZBU1RfV0FL
RSwKKwkJICogRURQX1BTUjJfQ1RMIHNob3VsZCBiZSBzZXQgRURQX1BTUjJfQkxPQ0tfQ09VTlRf
TlVNXzMuCisJCSAqLworCQl2YWwgfD0gRURQX1BTUjJfQkxPQ0tfQ09VTlRfTlVNXzI7CisJCXZh
bCB8PSBFRFBfUFNSMl9JT19CVUZGRVJfV0FLRShpb19idWZmZXJfd2FrZSk7CisJCXZhbCB8PSBF
RFBfUFNSMl9GQVNUX1dBS0UoZmFzdF93YWtlKTsKKwl9CisKIAkvKgogCSAqIFBTUjIgSFcgaXMg
aW5jb3JyZWN0bHkgdXNpbmcgRURQX1BTUl9UUDFfVFAzX1NFTCBhbmQgQlNwZWMgaXMKIAkgKiBy
ZWNvbW1lbmRpbmcga2VlcCB0aGlzIGJpdCB1bnNldCB3aGlsZSBQU1IyIGlzIGVuYWJsZWQuCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA5NmQzNTFmYmVlYmIuLmQwNTViN2Q5M2E1ZCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC00NTE0LDEwICs0NTE0LDE2IEBAIGVudW0gewogI2Rl
ZmluZSBFRFBfUFNSMl9DVEwodHJhbikJCV9NTUlPX1RSQU5TMih0cmFuLCBfUFNSMl9DVExfQSkK
ICNkZWZpbmUgICBFRFBfUFNSMl9FTkFCTEUJCSgxIDw8IDMxKQogI2RlZmluZSAgIEVEUF9TVV9U
UkFDS19FTkFCTEUJCSgxIDw8IDMwKQorI2RlZmluZSAgIEVEUF9QU1IyX0JMT0NLX0NPVU5UX05V
TV8yCSgwIDw8IDI4KSAvKiBUR0wrICovCisjZGVmaW5lICAgRURQX1BTUjJfQkxPQ0tfQ09VTlRf
TlVNXzMJKDEgPDwgMjgpIC8qIFRHTCsgKi8KICNkZWZpbmUgICBFRFBfWV9DT09SRElOQVRFX1ZB
TElECSgxIDw8IDI2KSAvKiBHTEsgYW5kIENOTCsgKi8KICNkZWZpbmUgICBFRFBfWV9DT09SRElO
QVRFX0VOQUJMRQkoMSA8PCAyNSkgLyogR0xLIGFuZCBDTkwrICovCiAjZGVmaW5lICAgRURQX01B
WF9TVV9ESVNBQkxFX1RJTUUodCkJKCh0KSA8PCAyMCkKICNkZWZpbmUgICBFRFBfTUFYX1NVX0RJ
U0FCTEVfVElNRV9NQVNLCSgweDFmIDw8IDIwKQorI2RlZmluZSAgIEVEUF9QU1IyX0lPX0JVRkZF
Ul9XQUtFKGEpCSgoYSkgPDwgMTMpCisjZGVmaW5lICAgRURQX1BTUjJfSU9fQlVGRkVSX1dBS0Vf
TUFTSwkoMHg3IDw8IDEzKSAvKiBUR0wrICovCisjZGVmaW5lICAgRURQX1BTUjJfRkFTVF9XQUtF
KGEpCQkoKGEpIDw8IDEwKSAvKiBUR0wrICovCisjZGVmaW5lICAgRURQX1BTUjJfRkFTVF9XQUtF
X01BU0sJKDB4NyA8PCAxMCkgLyogVEdMKyAqLwogI2RlZmluZSAgIEVEUF9QU1IyX1RQMl9USU1F
XzUwMHVzCSgwIDw8IDgpCiAjZGVmaW5lICAgRURQX1BTUjJfVFAyX1RJTUVfMTAwdXMJKDEgPDwg
OCkKICNkZWZpbmUgICBFRFBfUFNSMl9UUDJfVElNRV8yNTAwdXMJKDIgPDwgOCkKLS0gCjIuMjUu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
