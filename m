Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54322AD394
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 09:18:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 940E089807;
	Mon,  9 Sep 2019 07:18:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3C76897FB
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 07:18:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 00:18:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; d="scan'208";a="185115434"
Received: from unknown (HELO delly.ger.corp.intel.com) ([10.249.38.203])
 by fmsmga007.fm.intel.com with ESMTP; 09 Sep 2019 00:18:27 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Sep 2019 10:18:04 +0300
Message-Id: <20190909071809.23310-8-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909071809.23310-1-lionel.g.landwerlin@intel.com>
References: <20190909071809.23310-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 08/13] drm/i915/perf: implement active wait for noa
 configurations
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

Tk9BIGNvbmZpZ3VyYXRpb24gdGFrZSBzb21lIGFtb3VudCBvZiB0aW1lIHRvIGFwcGx5LiBUaGF0
IGFtb3VudCBvZgp0aW1lIGRlcGVuZHMgb24gdGhlIHNpemUgb2YgdGhlIEdULiBUaGVyZSBpcyBu
byBkb2N1bWVudGVkIHRpbWUgZm9yCnRoaXMuIEZvciBleGFtcGxlLCBwYXN0IGV4cGVyaW1lbnRh
dGlvbnMgd2l0aCBwb3dlcmdhdGluZwpjb25maWd1cmF0aW9uIGNoYW5nZXMgc2VlbSB0byBpbmRp
Y2F0ZSBhIDYwfjcwdXMgZGVsYXkuIFdlIGdvIHdpdGgKNTAwdXMgYXMgZGVmYXVsdCBmb3Igbm93
IHdoaWNoIHNob3VsZCBiZSBvdmVyIHRoZSByZXF1aXJlZCBhbW91bnQgb2YKdGltZSAoYWNjb3Jk
aW5nIHRvIEhXIGFyY2hpdGVjdHMpLgoKdjI6IERvbid0IGZvcmdldCB0byBzYXZlL3Jlc3RvcmUg
cmVnaXN0ZXJzIHVzZWQgZm9yIHRoZSB3YWl0IChDaHJpcykKCnYzOiBOYW1lIHVzZWQgQ1NfR1BS
IHJlZ2lzdGVycyAoQ2hyaXMpCiAgICBGaXggY29tcGlsZSBpc3N1ZSBkdWUgdG8gcmViYXNlIChM
aW9uZWwpCgp2NDogRml4IHNhdmUvcmVzdG9yZSBoZWxwZXJzIChVbWVzaCkKCnY1OiBNb3ZlIG5v
YV93YWl0IGZyb20gZHJtX2k5MTVfcHJpdmF0ZSB0byBpOTE1X3BlcmZfc3RyZWFtIChMaW9uZWwp
Cgp2NjogQWRkIG1pc3Npbmcgc3RydWN0IGRlY2xhcmF0aW9ucyBpbiBpOTE1X3BlcmYuaAoKU2ln
bmVkLW9mZi1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwu
Y29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
ICh2NCkKLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaCB8
ICAyNCArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCAgICAgfCAg
IDUgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAgICAgICAgfCAgMzEg
KysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICB8ICAgMiAr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyAgICAgICAgICAgICB8IDIzNCArKysr
KysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmZfdHlwZXMuaCAg
ICAgICB8ICAgNiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAg
ICB8ICAgNCArLQogNyBmaWxlcyBjaGFuZ2VkLCAzMDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29t
bWFuZHMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oCmlu
ZGV4IGI2MzczZmJjOTI3ZC4uZThjZTQ0ODQxODY4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaApAQCAtMTYwLDYgKzE2MCw3IEBACiAjZGVmaW5lICAg
TUlfQkFUQ0hfR1RUCQkgICAgKDI8PDYpIC8qIGFsaWFzZWQgd2l0aCAoMTw8Nykgb24gZ2VuNCAq
LwogI2RlZmluZSBNSV9CQVRDSF9CVUZGRVJfU1RBUlRfR0VOOAlNSV9JTlNUUigweDMxLCAxKQog
I2RlZmluZSAgIE1JX0JBVENIX1JFU09VUkNFX1NUUkVBTUVSICgxPDwxMCkKKyNkZWZpbmUgICBN
SV9CQVRDSF9QUkVESUNBVEUgICAgICAgICAoMSA8PCAxNSkgLyogSFNXKyBvbiBSQ1Mgb25seSov
CiAKIC8qCiAgKiAzRCBpbnN0cnVjdGlvbnMgdXNlZCBieSB0aGUga2VybmVsCkBAIC0yMzgsNiAr
MjM5LDI5IEBACiAjZGVmaW5lICAgUElQRV9DT05UUk9MX0RFUFRIX0NBQ0hFX0ZMVVNICQkoMTw8
MCkKICNkZWZpbmUgICBQSVBFX0NPTlRST0xfR0xPQkFMX0dUVCAoMTw8MikgLyogaW4gYWRkciBk
d29yZCAqLwogCisjZGVmaW5lIE1JX01BVEgoeCkgTUlfSU5TVFIoMHgxYSwgKHgpLTEpCisjZGVm
aW5lICAgTUlfQUxVX09QKG9wLCBzcmMxLCBzcmMyKSAoKChvcCkgPDwgMjApIHwgKChzcmMxKSA8
PCAxMCkgfCAoc3JjMikpCisvKiBvcGVyYW5kcyAqLworI2RlZmluZSAgIE1JX0FMVV9PUF9OT09Q
ICAgICAwCisjZGVmaW5lICAgTUlfQUxVX09QX0xPQUQgICAgIDEyOAorI2RlZmluZSAgIE1JX0FM
VV9PUF9MT0FESU5WICAxMTUyCisjZGVmaW5lICAgTUlfQUxVX09QX0xPQUQwICAgIDEyOQorI2Rl
ZmluZSAgIE1JX0FMVV9PUF9MT0FEMSAgICAxMTUzCisjZGVmaW5lICAgTUlfQUxVX09QX0FERCAg
ICAgIDI1NgorI2RlZmluZSAgIE1JX0FMVV9PUF9TVUIgICAgICAyNTcKKyNkZWZpbmUgICBNSV9B
TFVfT1BfQU5EICAgICAgMjU4CisjZGVmaW5lICAgTUlfQUxVX09QX09SICAgICAgIDI1OQorI2Rl
ZmluZSAgIE1JX0FMVV9PUF9YT1IgICAgICAyNjAKKyNkZWZpbmUgICBNSV9BTFVfT1BfU1RPUkUg
ICAgMzg0CisjZGVmaW5lICAgTUlfQUxVX09QX1NUT1JFSU5WIDE0MDgKKy8qIHNvdXJjZXMgKi8K
KyNkZWZpbmUgICBNSV9BTFVfU1JDX1JFRyh4KSAgKHgpIC8qIDAgLT4gMTUgKi8KKyNkZWZpbmUg
ICBNSV9BTFVfU1JDX1NSQ0EgICAgMzIKKyNkZWZpbmUgICBNSV9BTFVfU1JDX1NSQ0IgICAgMzMK
KyNkZWZpbmUgICBNSV9BTFVfU1JDX0FDQ1UgICAgNDkKKyNkZWZpbmUgICBNSV9BTFVfU1JDX1pG
ICAgICAgNTAKKyNkZWZpbmUgICBNSV9BTFVfU1JDX0NGICAgICAgNTEKKwogLyoKICAqIENvbW1h
bmRzIHVzZWQgb25seSBieSB0aGUgY29tbWFuZCBwYXJzZXIKICAqLwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2d0X3R5cGVzLmgKaW5kZXggZGMyOTVjMTk2ZDExLi5mNzUyYjZjZjllYTEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaApAQCAtOTcsNiArOTcs
MTEgQEAgZW51bSBpbnRlbF9ndF9zY3JhdGNoX2ZpZWxkIHsKIAkvKiA4IGJ5dGVzICovCiAJSU5U
RUxfR1RfU0NSQVRDSF9GSUVMRF9DT0hFUkVOVEwzX1dBID0gMjU2LAogCisJLyogNiAqIDggYnl0
ZXMgKi8KKwlJTlRFTF9HVF9TQ1JBVENIX0ZJRUxEX1BFUkZfQ1NfR1BSID0gMjA0OCwKKworCS8q
IDQgYnl0ZXMgKi8KKwlJTlRFTF9HVF9TQ1JBVENIX0ZJRUxEX1BFUkZfUFJFRElDQVRFX1JFU1VM
VF8xID0gMjA5NiwKIH07CiAKICNlbmRpZiAvKiBfX0lOVEVMX0dUX1RZUEVTX0hfXyAqLwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwppbmRleCA3MDg4NTVlMDUxYjUuLmNjMTdkNWMyMjk1
ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAgLTM1NzgsNiArMzU3OCwzNiBA
QCBERUZJTkVfU0lNUExFX0FUVFJJQlVURShpOTE1X3dlZGdlZF9mb3BzLAogCQkJaTkxNV93ZWRn
ZWRfZ2V0LCBpOTE1X3dlZGdlZF9zZXQsCiAJCQkiJWxsdVxuIik7CiAKK3N0YXRpYyBpbnQKK2k5
MTVfcGVyZl9ub2FfZGVsYXlfc2V0KHZvaWQgKmRhdGEsIHU2NCB2YWwpCit7CisJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkYXRhOworCisJLyogVGhpcyB3b3VsZCBsZWFkIHRvIGlu
ZmluaXRlIHdhaXRzIGFzIHdlJ3JlIGRvaW5nIHRpbWVzdGFtcAorCSAqIGRpZmZlcmVuY2Ugb24g
dGhlIENTIHdpdGggb25seSAzMmJpdHMuCisJICovCisJaWYgKHZhbCA+IG11bF91MzJfdTMyKFUz
Ml9NQVgsIFJVTlRJTUVfSU5GTyhpOTE1KS0+Y3NfdGltZXN0YW1wX2ZyZXF1ZW5jeV9raHopKQor
CQlyZXR1cm4gLUVJTlZBTDsKKworCWF0b21pYzY0X3NldCgmaTkxNS0+cGVyZi5ub2FfcHJvZ3Jh
bW1pbmdfZGVsYXksIHZhbCk7CisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQKK2k5MTVfcGVy
Zl9ub2FfZGVsYXlfZ2V0KHZvaWQgKmRhdGEsIHU2NCAqdmFsKQoreworCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0gZGF0YTsKKworCSp2YWwgPSBhdG9taWM2NF9yZWFkKCZpOTE1LT5w
ZXJmLm5vYV9wcm9ncmFtbWluZ19kZWxheSk7CisJcmV0dXJuIDA7Cit9CisKK0RFRklORV9TSU1Q
TEVfQVRUUklCVVRFKGk5MTVfcGVyZl9ub2FfZGVsYXlfZm9wcywKKwkJCWk5MTVfcGVyZl9ub2Ff
ZGVsYXlfZ2V0LAorCQkJaTkxNV9wZXJmX25vYV9kZWxheV9zZXQsCisJCQkiJWxsdVxuIik7CisK
KwogI2RlZmluZSBEUk9QX1VOQk9VTkQJQklUKDApCiAjZGVmaW5lIERST1BfQk9VTkQJQklUKDEp
CiAjZGVmaW5lIERST1BfUkVUSVJFCUJJVCgyKQpAQCAtNDM1NCw2ICs0Mzg0LDcgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBpOTE1X2RlYnVnZnNfZmlsZXMgewogCWNvbnN0IGNoYXIgKm5hbWU7CiAJ
Y29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0aW9ucyAqZm9wczsKIH0gaTkxNV9kZWJ1Z2ZzX2ZpbGVz
W10gPSB7CisJeyJpOTE1X3BlcmZfbm9hX2RlbGF5IiwgJmk5MTVfcGVyZl9ub2FfZGVsYXlfZm9w
c30sCiAJeyJpOTE1X3dlZGdlZCIsICZpOTE1X3dlZGdlZF9mb3BzfSwKIAl7Imk5MTVfY2FjaGVf
c2hhcmluZyIsICZpOTE1X2NhY2hlX3NoYXJpbmdfZm9wc30sCiAJeyJpOTE1X2dlbV9kcm9wX2Nh
Y2hlcyIsICZpOTE1X2Ryb3BfY2FjaGVzX2ZvcHN9LApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5k
ZXggN2ViMzE5MjNjZGU5Li4yYzZmMzcyMTlkZmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApA
QCAtMTQwMyw2ICsxNDAzLDggQEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgewogCiAJCXN0cnVj
dCBpOTE1X29hX29wcyBvcHM7CiAJCWNvbnN0IHN0cnVjdCBpOTE1X29hX2Zvcm1hdCAqb2FfZm9y
bWF0czsKKworCQlhdG9taWM2NF90IG5vYV9wcm9ncmFtbWluZ19kZWxheTsKIAl9IHBlcmY7CiAK
IAkvKiBBYnN0cmFjdCB0aGUgc3VibWlzc2lvbiBtZWNoYW5pc20gKGxlZ2FjeSByaW5nYnVmZmVy
IG9yIGV4ZWNsaXN0cykgYXdheSAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwppbmRleCBjOWQw
ZGUzMDUwZmIuLmYyYjc3OGQ4NGI1MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wZXJmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKQEAgLTE5
Nyw2ICsxOTcsNyBAQAogCiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaCIKICNpbmNs
dWRlICJnZW0vaTkxNV9nZW1fcG0uaCIKKyNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgogI2luY2x1
ZGUgImd0L2ludGVsX2xyY19yZWcuaCIKIAogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCkBAIC00MDgs
NiArNDA5LDcgQEAgc3RhdGljIHUzMiAqd3JpdGVfY3NfbWlfbHJpKHUzMiAqY3MsIGNvbnN0IHN0
cnVjdCBpOTE1X29hX3JlZyAqcmVnX2RhdGEsIHUzMiBuX3IKIH0KIAogc3RhdGljIHN0cnVjdCBp
OTE1X29hX2NvbmZpZ19ibyogYWxsb2Nfb2FfY29uZmlnX2J1ZmZlcihzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwKKwkJCQkJCQlzdHJ1Y3QgaTkxNV92bWEgKm5vYV93YWl0LAogCQkJCQkJ
CXN0cnVjdCBpOTE1X29hX2NvbmZpZyAqb2FfY29uZmlnKQogewogCXN0cnVjdCBpOTE1X29hX2Nv
bmZpZ19ibyAqb2FfYm87CkBAIC00MzYsNyArNDM4LDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X29h
X2NvbmZpZ19ibyogYWxsb2Nfb2FfY29uZmlnX2J1ZmZlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZQogCQkJCQkgICAgICBNSV9MT0FEX1JFR0lTVEVSX0lNTV9NQVhfUkVHUykgKiA0OwogCQljb25m
aWdfbGVuZ3RoICs9IG9hX2NvbmZpZy0+ZmxleF9yZWdzX2xlbiAqIDg7CiAJfQotCWNvbmZpZ19s
ZW5ndGggKz0gNDsgLyogTUlfQkFUQ0hfQlVGRkVSX0VORCAqLworCWNvbmZpZ19sZW5ndGggKz0g
MTI7IC8qIE1JX0JBVENIX0JVRkZFUl9TVEFSVCBpbnRvIG5vYV93YWl0IGxvb3AgKi8KIAljb25m
aWdfbGVuZ3RoID0gQUxJR04oY29uZmlnX2xlbmd0aCwgSTkxNV9HVFRfUEFHRV9TSVpFKTsKIAog
CW9hX2JvLT5ibyA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0oaTkxNSwgY29uZmlnX2xl
bmd0aCk7CkBAIC00NTUsNyArNDU3LDEyIEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9vYV9jb25maWdf
Ym8qIGFsbG9jX29hX2NvbmZpZ19idWZmZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUKIAljcyA9
IHdyaXRlX2NzX21pX2xyaShjcywgb2FfY29uZmlnLT5iX2NvdW50ZXJfcmVncywgb2FfY29uZmln
LT5iX2NvdW50ZXJfcmVnc19sZW4pOwogCWNzID0gd3JpdGVfY3NfbWlfbHJpKGNzLCBvYV9jb25m
aWctPmZsZXhfcmVncywgb2FfY29uZmlnLT5mbGV4X3JlZ3NfbGVuKTsKIAotCSpjcysrID0gTUlf
QkFUQ0hfQlVGRkVSX0VORDsKKworCS8qIEp1bXAgaW50byB0aGUgTk9BIHdhaXQgYnVzeSBsb29w
LiAqLworCSpjcysrID0gKElOVEVMX0dFTihpOTE1KSA8IDggPworCQkgTUlfQkFUQ0hfQlVGRkVS
X1NUQVJUIDogTUlfQkFUQ0hfQlVGRkVSX1NUQVJUX0dFTjgpOworCSpjcysrID0gaTkxNV9nZ3R0
X29mZnNldChub2Ffd2FpdCk7CisJKmNzKysgPSAwOwogCiAJaTkxNV9nZW1fb2JqZWN0X2ZsdXNo
X21hcChvYV9iby0+Ym8pOwogCWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAob2FfYm8tPmJvKTsK
QEAgLTU1MCw3ICs1NTcsOSBAQCBpbnQgaTkxNV9wZXJmX2dldF9vYV9jb25maWdfYW5kX2JvKHN0
cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCiAJCW11dGV4X3VubG9jaygmc3RyZWFtLT5j
b25maWdfbXV0ZXgpOwogCiAJCWlmICghb2FfYm8pIHsKLQkJCW9hX2JvID0gYWxsb2Nfb2FfY29u
ZmlnX2J1ZmZlcihpOTE1LCBvYV9jb25maWcpOworCQkJb2FfYm8gPSBhbGxvY19vYV9jb25maWdf
YnVmZmVyKGk5MTUsCisJCQkJCQkgICAgICAgc3RyZWFtLT5ub2Ffd2FpdCwKKwkJCQkJCSAgICAg
ICBvYV9jb25maWcpOwogCQkJaWYgKElTX0VSUihvYV9ibykpIHsKIAkJCQllcnIgPSBQVFJfRVJS
KG9hX2JvKTsKIAkJCQlnb3RvIGVycjsKQEAgLTE1MjQsNiArMTUzMywxNiBAQCBmcmVlX29hX2J1
ZmZlcihzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQogCXN0cmVhbS0+b2FfYnVmZmVy
LnZhZGRyID0gTlVMTDsKIH0KIAorc3RhdGljIHZvaWQKK2ZyZWVfbm9hX3dhaXQoc3RydWN0IGk5
MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHN0cmVhbS0+ZGV2X3ByaXY7CisKKwltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211
dGV4KTsKKwlpOTE1X3ZtYV91bnBpbl9hbmRfcmVsZWFzZSgmc3RyZWFtLT5ub2Ffd2FpdCwgMCk7
CisJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKK30KKwogc3RhdGljIHZv
aWQKIGZyZWVfb2FfY29uZmlncyhzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQogewpA
QCAtMTU1Miw2ICsxNTcxLDcgQEAgc3RhdGljIHZvaWQgaTkxNV9vYV9zdHJlYW1fZGVzdHJveShz
dHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQogCW11dGV4X3VubG9jaygmZGV2X3ByaXYt
PmRybS5zdHJ1Y3RfbXV0ZXgpOwogCiAJZnJlZV9vYV9idWZmZXIoc3RyZWFtKTsKKwlmcmVlX25v
YV93YWl0KHN0cmVhbSk7CiAKIAlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX3B1dCgmZGV2X3ByaXYt
PnVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7CiAJaW50ZWxfcnVudGltZV9wbV9wdXQoJmRldl9wcml2
LT5ydW50aW1lX3BtLCBzdHJlYW0tPndha2VyZWYpOwpAQCAtMTczMSw2ICsxNzUxLDIwMiBAQCBz
dGF0aWMgaW50IGFsbG9jX29hX2J1ZmZlcihzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFt
KQogCXJldHVybiByZXQ7CiB9CiAKK3N0YXRpYyB1MzIgKnNhdmVfcmVzdG9yZV9yZWdpc3Rlcihz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTMyICpjcywKKwkJCQkgIGJvb2wgc2F2ZSwg
aTkxNV9yZWdfdCByZWcsIHUzMiBvZmZzZXQsCisJCQkJICB1MzIgZHdvcmRfY291bnQpCit7CisJ
dWludDMyX3QgZDsKKworCWZvciAoZCA9IDA7IGQgPCBkd29yZF9jb3VudDsgZCsrKSB7CisJCWlm
IChzYXZlKSB7CisJCQkqY3MrKyA9IElOVEVMX0dFTihpOTE1KSA+PSA4ID8KKwkJCQlNSV9TVE9S
RV9SRUdJU1RFUl9NRU1fR0VOOCA6CisJCQkJTUlfU1RPUkVfUkVHSVNURVJfTUVNOworCQl9IGVs
c2UgIHsKKwkJCSpjcysrID0gSU5URUxfR0VOKGk5MTUpID49IDggPworCQkJCU1JX0xPQURfUkVH
SVNURVJfTUVNX0dFTjggOgorCQkJCU1JX0xPQURfUkVHSVNURVJfTUVNOworCQl9CisJCSpjcysr
ID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQocmVnKSArIDQgKiBkOworCQkqY3MrKyA9IGludGVsX2d0
X3NjcmF0Y2hfb2Zmc2V0KCZpOTE1LT5ndCwgb2Zmc2V0KSArIDQgKiBkOworCQkqY3MrKyA9IDA7
CisJfQorCisJcmV0dXJuIGNzOworfQorCitzdGF0aWMgaW50IGFsbG9jX25vYV93YWl0KHN0cnVj
dCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUgPSBzdHJlYW0tPmRldl9wcml2OworCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpi
bzsKKwlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKKwljb25zdCB1NjQgZGVsYXlfdGlja3MgPSAweGZm
ZmZmZmZmZmZmZmZmZmYgLQorCQlESVY2NF9VNjRfUk9VTkRfVVAoCisJCQlhdG9taWM2NF9yZWFk
KCZpOTE1LT5wZXJmLm5vYV9wcm9ncmFtbWluZ19kZWxheSkgKgorCQkJUlVOVElNRV9JTkZPKGk5
MTUpLT5jc190aW1lc3RhbXBfZnJlcXVlbmN5X2toeiwKKwkJCTEwMDAwMDB1bGwpOworCXUzMiAq
YmF0Y2gsICp0czAsICpjcywgKmp1bXA7CisJaW50IHJldCwgaTsKKwllbnVtIHsgU1RBUlRfVFMs
IE5PV19UUywgREVMVEFfVFMsIEpVTVBfUFJFRElDQVRFLCBERUxUQV9UQVJHRVQsIE5fQ1NfR1BS
IH07CisKKwlibyA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwgNDA5Nik7
CisJaWYgKElTX0VSUihibykpIHsKKwkJRFJNX0VSUk9SKCJGYWlsZWQgdG8gYWxsb2NhdGUgTk9B
IHdhaXQgYmF0Y2hidWZmZXJcbiIpOworCQlyZXR1cm4gUFRSX0VSUihibyk7CisJfQorCisJLyoK
KwkgKiBXZSBwaW4gaW4gR0dUVCBiZWNhdXNlIHdlIGp1bXAgaW50byB0aGlzIGJ1ZmZlciBub3cg
YmVjYXVzZQorCSAqIG11bHRpcGxlIE9BIGNvbmZpZyBCT3Mgd2lsbCBoYXZlIGEganVtcCB0byB0
aGlzIGFkZHJlc3MgYW5kIGl0CisJICogbmVlZHMgdG8gYmUgZml4ZWQgZHVyaW5nIHRoZSBsaWZl
dGltZSBvZiB0aGUgaTkxNS9wZXJmIHN0cmVhbS4KKwkgKi8KKwl2bWEgPSBpOTE1X2dlbV9vYmpl
Y3RfZ2d0dF9waW4oYm8sIE5VTEwsIDAsIDQwOTYsIDApOworCWlmIChJU19FUlIodm1hKSkgewor
CQlyZXQgPSBQVFJfRVJSKHZtYSk7CisJCWdvdG8gZXJyX3VucmVmOworCX0KKworCWJhdGNoID0g
Y3MgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcChibywgSTkxNV9NQVBfV0IpOworCWlmIChJU19F
UlIoYmF0Y2gpKSB7CisJCXJldCA9IFBUUl9FUlIoYmF0Y2gpOworCQlnb3RvIGVycl91bnBpbjsK
Kwl9CisKKwkvKiBTYXZlIHJlZ2lzdGVycy4gKi8KKwlmb3IgKGkgPSAwOyBpIDwgTl9DU19HUFI7
IGkrKykgeworCQljcyA9IHNhdmVfcmVzdG9yZV9yZWdpc3RlcigKKwkJCWk5MTUsIGNzLCB0cnVl
IC8qIHNhdmUgKi8sIEhTV19DU19HUFIoaSksCisJCQlJTlRFTF9HVF9TQ1JBVENIX0ZJRUxEX1BF
UkZfQ1NfR1BSICsgOCAqIGksIDIpOworCX0KKwljcyA9IHNhdmVfcmVzdG9yZV9yZWdpc3RlcigK
KwkJaTkxNSwgY3MsIHRydWUgLyogc2F2ZSAqLywgTUlfUFJFRElDQVRFX1JFU1VMVF8xLAorCQlJ
TlRFTF9HVF9TQ1JBVENIX0ZJRUxEX1BFUkZfUFJFRElDQVRFX1JFU1VMVF8xLCAxKTsKKworCS8q
IEZpcnN0IHRpbWVzdGFtcCBzbmFwc2hvdCBsb2NhdGlvbi4gKi8KKwl0czAgPSBjczsKKworCS8q
CisJICogSW5pdGlhbCBzbmFwc2hvdCBvZiB0aGUgdGltZXN0YW1wIHJlZ2lzdGVyIHRvIGltcGxl
bWVudCB0aGUgd2FpdC4KKwkgKiBXZSB3b3JrIHdpdGggMzJiIHZhbHVlcywgc28gY2xlYXIgb3V0
IHRoZSB0b3AgMzJiIGJpdHMgb2YgdGhlCisJICogcmVnaXN0ZXIgYmVjYXVzZSB0aGUgQUxVIHdv
cmtzIDY0Yml0cy4KKwkgKi8KKwkqY3MrKyA9IE1JX0xPQURfUkVHSVNURVJfSU1NKDEpOworCSpj
cysrID0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoSFNXX0NTX0dQUihTVEFSVF9UUykpICsgNDsKKwkq
Y3MrKyA9IDA7CisJKmNzKysgPSBNSV9MT0FEX1JFR0lTVEVSX1JFRyB8ICgzIC0gMik7CisJKmNz
KysgPSBpOTE1X21taW9fcmVnX29mZnNldChSSU5HX1RJTUVTVEFNUChSRU5ERVJfUklOR19CQVNF
KSk7CisJKmNzKysgPSBpOTE1X21taW9fcmVnX29mZnNldChIU1dfQ1NfR1BSKFNUQVJUX1RTKSk7
CisKKwkvKgorCSAqIFRoaXMgaXMgdGhlIGxvY2F0aW9uIHdlJ3JlIGdvaW5nIHRvIGp1bXAgYmFj
ayBpbnRvIHVudGlsIHRoZQorCSAqIHJlcXVpcmVkIGFtb3VudCBvZiB0aW1lIGhhcyBwYXNzZWQu
CisJICovCisJanVtcCA9IGNzOworCisJLyoKKwkgKiBUYWtlIGFub3RoZXIgc25hcHNob3Qgb2Yg
dGhlIHRpbWVzdGFtcCByZWdpc3Rlci4gVGFrZSBjYXJlIHRvIGNsZWFyCisJICogdXAgdGhlIHRv
cCAzMmJpdHMgb2YgQ1NfR1BSKDEpIGFzIHdlJ3JlIHVzaW5nIGl0IGZvciBvdGhlcgorCSAqIG9w
ZXJhdGlvbnMgYmVsb3cuCisJICovCisJKmNzKysgPSBNSV9MT0FEX1JFR0lTVEVSX0lNTSgxKTsK
KwkqY3MrKyA9IGk5MTVfbW1pb19yZWdfb2Zmc2V0KEhTV19DU19HUFIoTk9XX1RTKSkgKyA0Owor
CSpjcysrID0gMDsKKwkqY3MrKyA9IE1JX0xPQURfUkVHSVNURVJfUkVHIHwgKDMgLSAyKTsKKwkq
Y3MrKyA9IGk5MTVfbW1pb19yZWdfb2Zmc2V0KFJJTkdfVElNRVNUQU1QKFJFTkRFUl9SSU5HX0JB
U0UpKTsKKwkqY3MrKyA9IGk5MTVfbW1pb19yZWdfb2Zmc2V0KEhTV19DU19HUFIoTk9XX1RTKSk7
CisKKwkvKgorCSAqIERvIGEgZGlmZiBiZXR3ZWVuIHRoZSAyIHRpbWVzdGFtcHMgYW5kIHN0b3Jl
IHRoZSByZXN1bHQgYmFjayBpbnRvCisJICogQ1NfR1BSKDEpLgorCSAqLworCSpjcysrID0gTUlf
TUFUSCg1KTsKKwkqY3MrKyA9IE1JX0FMVV9PUChNSV9BTFVfT1BfTE9BRCwgTUlfQUxVX1NSQ19T
UkNBLCBNSV9BTFVfU1JDX1JFRyhOT1dfVFMpKTsKKwkqY3MrKyA9IE1JX0FMVV9PUChNSV9BTFVf
T1BfTE9BRCwgTUlfQUxVX1NSQ19TUkNCLCBNSV9BTFVfU1JDX1JFRyhTVEFSVF9UUykpOworCSpj
cysrID0gTUlfQUxVX09QKE1JX0FMVV9PUF9TVUIsIDAsIDApOworCSpjcysrID0gTUlfQUxVX09Q
KE1JX0FMVV9PUF9TVE9SRSwgTUlfQUxVX1NSQ19SRUcoREVMVEFfVFMpLCBNSV9BTFVfU1JDX0FD
Q1UpOworCSpjcysrID0gTUlfQUxVX09QKE1JX0FMVV9PUF9TVE9SRSwgTUlfQUxVX1NSQ19SRUco
SlVNUF9QUkVESUNBVEUpLCBNSV9BTFVfU1JDX0NGKTsKKworCS8qCisJICogVHJhbnNmZXIgdGhl
IGNhcnJ5IGZsYWcgKHNldCB0byAxIGlmIHRzMSA8IHRzMCwgbWVhbmluZyB0aGUKKwkgKiB0aW1l
c3RhbXAgaGF2ZSByb2xsZWQgb3ZlciB0aGUgMzJiaXRzKSBpbnRvIHRoZSBwcmVkaWNhdGUgcmVn
aXN0ZXIKKwkgKiB0byBiZSB1c2VkIGZvciB0aGUgcHJlZGljYXRlZCBqdW1wLgorCSAqLworCSpj
cysrID0gTUlfTE9BRF9SRUdJU1RFUl9SRUcgfCAoMyAtIDIpOworCSpjcysrID0gaTkxNV9tbWlv
X3JlZ19vZmZzZXQoSFNXX0NTX0dQUihKVU1QX1BSRURJQ0FURSkpOworCSpjcysrID0gaTkxNV9t
bWlvX3JlZ19vZmZzZXQoTUlfUFJFRElDQVRFX1JFU1VMVF8xKTsKKworCS8qIFJlc3RhcnQgZnJv
bSB0aGUgYmVnaW5uaW5nIGlmIHdlIGhhZCB0aW1lc3RhbXBzIHJvbGwgb3Zlci4gKi8KKwkqY3Mr
KyA9IChJTlRFTF9HRU4oaTkxNSkgPCA4ID8KKwkJIE1JX0JBVENIX0JVRkZFUl9TVEFSVCA6IE1J
X0JBVENIX0JVRkZFUl9TVEFSVF9HRU44KSB8CisJCU1JX0JBVENIX1BSRURJQ0FURTsKKwkqY3Mr
KyA9IGk5MTVfZ2d0dF9vZmZzZXQodm1hKSArICh0czAgLSBiYXRjaCkgKiA0OworCSpjcysrID0g
MDsKKworCS8qCisJICogTm93IGFkZCB0aGUgZGlmZiBiZXR3ZWVuIHRvIHByZXZpb3VzIHRpbWVz
dGFtcHMgYW5kIGFkZCBpdCB0byA6CisJICogICAgICAoKCgxICogPDwgNjQpIC0gMSkgLSBkZWxh
eV9ucykKKwkgKgorCSAqIFdoZW4gdGhlIENhcnJ5IEZsYWcgY29udGFpbnMgMSB0aGlzIG1lYW5z
IHRoZSBlbGFwc2VkIHRpbWUgaXMKKwkgKiBsb25nZXIgdGhhbiB0aGUgZXhwZWN0ZWQgZGVsYXks
IGFuZCB3ZSBjYW4gZXhpdCB0aGUgd2FpdCBsb29wLgorCSAqLworCSpjcysrID0gTUlfTE9BRF9S
RUdJU1RFUl9JTU0oMik7CisJKmNzKysgPSBpOTE1X21taW9fcmVnX29mZnNldChIU1dfQ1NfR1BS
KERFTFRBX1RBUkdFVCkpOworCSpjcysrID0gbG93ZXJfMzJfYml0cyhkZWxheV90aWNrcyk7CisJ
KmNzKysgPSBpOTE1X21taW9fcmVnX29mZnNldChIU1dfQ1NfR1BSKERFTFRBX1RBUkdFVCkpICsg
NDsKKwkqY3MrKyA9IHVwcGVyXzMyX2JpdHMoZGVsYXlfdGlja3MpOworCisJKmNzKysgPSBNSV9N
QVRIKDQpOworCSpjcysrID0gTUlfQUxVX09QKE1JX0FMVV9PUF9MT0FELCBNSV9BTFVfU1JDX1NS
Q0EsIE1JX0FMVV9TUkNfUkVHKERFTFRBX1RTKSk7CisJKmNzKysgPSBNSV9BTFVfT1AoTUlfQUxV
X09QX0xPQUQsIE1JX0FMVV9TUkNfU1JDQiwgTUlfQUxVX1NSQ19SRUcoREVMVEFfVEFSR0VUKSk7
CisJKmNzKysgPSBNSV9BTFVfT1AoTUlfQUxVX09QX0FERCwgMCwgMCk7CisJKmNzKysgPSBNSV9B
TFVfT1AoTUlfQUxVX09QX1NUT1JFSU5WLCBNSV9BTFVfU1JDX1JFRyhKVU1QX1BSRURJQ0FURSks
IE1JX0FMVV9TUkNfQ0YpOworCisJLyoKKwkgKiBUcmFuc2ZlciB0aGUgcmVzdWx0IGludG8gdGhl
IHByZWRpY2F0ZSByZWdpc3RlciB0byBiZSB1c2VkIGZvciB0aGUKKwkgKiBwcmVkaWNhdGVkIGp1
bXAuCisJICovCisJKmNzKysgPSBNSV9MT0FEX1JFR0lTVEVSX1JFRyB8ICgzIC0gMik7CisJKmNz
KysgPSBpOTE1X21taW9fcmVnX29mZnNldChIU1dfQ1NfR1BSKEpVTVBfUFJFRElDQVRFKSk7CisJ
KmNzKysgPSBpOTE1X21taW9fcmVnX29mZnNldChNSV9QUkVESUNBVEVfUkVTVUxUXzEpOworCisJ
LyogUHJlZGljYXRlIHRoZSBqdW1wLiAgKi8KKwkqY3MrKyA9IChJTlRFTF9HRU4oaTkxNSkgPCA4
ID8KKwkJIE1JX0JBVENIX0JVRkZFUl9TVEFSVCA6IE1JX0JBVENIX0JVRkZFUl9TVEFSVF9HRU44
KSB8CisJCU1JX0JBVENIX1BSRURJQ0FURTsKKwkqY3MrKyA9IGk5MTVfZ2d0dF9vZmZzZXQodm1h
KSArIChqdW1wIC0gYmF0Y2gpICogNDsKKwkqY3MrKyA9IDA7CisKKwkvKiBSZXN0b3JlIHJlZ2lz
dGVycy4gKi8KKwlmb3IgKGkgPSAwOyBpIDwgTl9DU19HUFI7IGkrKykgeworCQljcyA9IHNhdmVf
cmVzdG9yZV9yZWdpc3RlcigKKwkJCWk5MTUsIGNzLCBmYWxzZSAvKiBzYXZlICovLCBIU1dfQ1Nf
R1BSKGkpLAorCQkJSU5URUxfR1RfU0NSQVRDSF9GSUVMRF9QRVJGX0NTX0dQUiArIDggKiBpLCAy
KTsKKwl9CisJY3MgPSBzYXZlX3Jlc3RvcmVfcmVnaXN0ZXIoCisJCWk5MTUsIGNzLCBmYWxzZSAv
KiBzYXZlICovLCBNSV9QUkVESUNBVEVfUkVTVUxUXzEsCisJCUlOVEVMX0dUX1NDUkFUQ0hfRklF
TERfUEVSRl9QUkVESUNBVEVfUkVTVUxUXzEsIDEpOworCisJLyogQW5kIHJldHVybiB0byB0aGUg
cmluZy4gKi8KKwkqY3MrKyA9IE1JX0JBVENIX0JVRkZFUl9FTkQ7CisKKwlHRU1fQlVHX09OKChj
cyAtIGJhdGNoKSA+IChQQUdFX1NJWkUgLyBzaXplb2YoKmJhdGNoKSkpOworCisJaTkxNV9nZW1f
b2JqZWN0X2ZsdXNoX21hcChibyk7CisJaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChibyk7CisK
KwlzdHJlYW0tPm5vYV93YWl0ID0gdm1hOworCisJcmV0dXJuIDA7CisKK2Vycl91bnBpbjoKKwlf
X2k5MTVfdm1hX3VucGluKHZtYSk7CisKK2Vycl91bnJlZjoKKwlpOTE1X2dlbV9vYmplY3RfcHV0
KGJvKTsKKworCXJldHVybiByZXQ7Cit9CisKIHN0YXRpYyB2b2lkIGNvbmZpZ19vYV9yZWdzKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCSAgIGNvbnN0IHN0cnVjdCBpOTE1
X29hX3JlZyAqcmVncywKIAkJCSAgIHUzMiBuX3JlZ3MpCkBAIC0yNDAzLDYgKzI2MTksMTIgQEAg
c3RhdGljIGludCBpOTE1X29hX3N0cmVhbV9pbml0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpz
dHJlYW0sCiAJCX0KIAl9CiAKKwlyZXQgPSBhbGxvY19ub2Ffd2FpdChzdHJlYW0pOworCWlmIChy
ZXQpIHsKKwkJRFJNX0RFQlVHKCJVbmFibGUgdG8gYWxsb2NhdGUgTk9BIHdhaXQgYmF0Y2ggYnVm
ZmVyXG4iKTsKKwkJZ290byBlcnJfbm9hX3dhaXRfYWxsb2M7CisJfQorCiAJcmV0ID0gaTkxNV9w
ZXJmX2dldF9vYV9jb25maWcoZGV2X3ByaXYsIHByb3BzLT5tZXRyaWNzX3NldCwKIAkJCQkgICAg
ICAmc3RyZWFtLT5vYV9jb25maWcpOwogCWlmIChyZXQpIHsKQEAgLTI0NjksNiArMjY5MSw5IEBA
IHN0YXRpYyBpbnQgaTkxNV9vYV9zdHJlYW1faW5pdChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAq
c3RyZWFtLAogCWZyZWVfb2FfY29uZmlncyhzdHJlYW0pOwogCiBlcnJfY29uZmlnOgorCWZyZWVf
bm9hX3dhaXQoc3RyZWFtKTsKKworZXJyX25vYV93YWl0X2FsbG9jOgogCWlmIChzdHJlYW0tPmN0
eCkKIAkJb2FfcHV0X3JlbmRlcl9jdHhfaWQoc3RyZWFtKTsKIApAQCAtMzg1Niw2ICs0MDgxLDkg
QEAgdm9pZCBpOTE1X3BlcmZfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
CiAJCXJhdGVsaW1pdF9zZXRfZmxhZ3MoJmRldl9wcml2LT5wZXJmLnNwdXJpb3VzX3JlcG9ydF9y
cywKIAkJCQkgICAgUkFURUxJTUlUX01TR19PTl9SRUxFQVNFKTsKIAorCQlhdG9taWM2NF9zZXQo
JmRldl9wcml2LT5wZXJmLm5vYV9wcm9ncmFtbWluZ19kZWxheSwKKwkJCSAgICAgNTAwICogMTAw
MCAvKiA1MDB1cyAqLyk7CisKIAkJZGV2X3ByaXYtPnBlcmYuaW5pdGlhbGl6ZWQgPSB0cnVlOwog
CX0KIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZl90eXBlcy5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmX3R5cGVzLmgKaW5kZXggNTg0NjlkMmEz
OTcwLi44NDgwZTQ4OWRjYjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGVyZl90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZl90eXBlcy5o
CkBAIC0yNzAsNiArMjcwLDEyIEBAIHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtIHsKIAkJICovCiAJ
CXUzMiBoZWFkOwogCX0gb2FfYnVmZmVyOworCisJLyoqCisJICogQSBiYXRjaCBidWZmZXIgZG9p
bmcgYSB3YWl0IG9uIHRoZSBHUFUgZm9yIHRoZSBOT0EgbG9naWMgdG8gYmUKKwkgKiByZXByb2dy
YW1tZWQuCisJICovCisJc3RydWN0IGk5MTVfdm1hICpub2Ffd2FpdDsKIH07CiAKIC8qKgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggMDA2Y2ZmZDU2YmUyLi44ZmVhOTdiMDIzNjUgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNTQ1LDcgKzU0NSw5IEBAIHN0YXRpYyBpbmxpbmUgYm9v
bCBpOTE1X21taW9fcmVnX3ZhbGlkKGk5MTVfcmVnX3QgcmVnKQogI2RlZmluZSBNSV9QUkVESUNB
VEVfU1JDMF9VRFcJX01NSU8oMHgyNDAwICsgNCkKICNkZWZpbmUgTUlfUFJFRElDQVRFX1NSQzEJ
X01NSU8oMHgyNDA4KQogI2RlZmluZSBNSV9QUkVESUNBVEVfU1JDMV9VRFcJX01NSU8oMHgyNDA4
ICsgNCkKLQorI2RlZmluZSBNSV9QUkVESUNBVEVfREFUQSAgICAgICBfTU1JTygweDI0MTApCisj
ZGVmaW5lIE1JX1BSRURJQ0FURV9SRVNVTFQgICAgIF9NTUlPKDB4MjQxOCkKKyNkZWZpbmUgTUlf
UFJFRElDQVRFX1JFU1VMVF8xICAgX01NSU8oMHgyNDFjKQogI2RlZmluZSBNSV9QUkVESUNBVEVf
UkVTVUxUXzIJX01NSU8oMHgyMjE0KQogI2RlZmluZSAgTE9XRVJfU0xJQ0VfRU5BQkxFRAkoMSA8
PCAwKQogI2RlZmluZSAgTE9XRVJfU0xJQ0VfRElTQUJMRUQJKDAgPDwgMCkKLS0gCjIuMjMuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
