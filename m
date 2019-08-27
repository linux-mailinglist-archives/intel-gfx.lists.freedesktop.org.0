Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAD79F32C
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 21:18:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 670CD89C05;
	Tue, 27 Aug 2019 19:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94DAB89C03
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 19:18:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 12:18:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,438,1559545200"; d="scan'208";a="209863459"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga002.fm.intel.com with ESMTP; 27 Aug 2019 12:18:21 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Aug 2019 00:40:24 +0530
Message-Id: <20190827191026.26175-11-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190827191026.26175-1-animesh.manna@intel.com>
References: <20190827191026.26175-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 10/11] drm/i915/dsb: Enable gamma lut
 programming using DSB.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

R2FtbWEgbHV0IHByb2dyYW1taW5nIGNhbiBiZSBwcm9ncmFtbWVkIHVzaW5nIERTQgp3aGVyZSBi
dWxrIHJlZ2lzdGVyIHByb2dyYW1taW5nIGNhbiBiZSBkb25lIHVzaW5nIGluZGV4ZWQKcmVnaXN0
ZXIgd3JpdGUgd2hpY2ggdGFrZXMgbnVtYmVyIG9mIGRhdGEgYW5kIHRoZSBtbWlvIG9mZnNldAp0
byBiZSB3cml0dGVuLgoKdjE6IEluaXRpYWwgdmVyc2lvbi4KdjI6IERpcmVjdGx5IGNhbGwgZHNi
LWFwaSBhdCBjYWxsc2l0ZXMuIChKYW5pKQoKQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+CkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDY0ICsrKysrKysrKysr
KysrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICB8
ICAyICsKIDIgZmlsZXMgY2hhbmdlZCwgNDMgaW5zZXJ0aW9ucygrKSwgMjMgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCmluZGV4IDcxYTAy
MDE0MzdhOS4uZTQwOTBkOGU0NTQ3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NvbG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jb2xvci5jCkBAIC01ODksMzQgKzU4OSwzOCBAQCBzdGF0aWMgdm9pZCBiZHdfbG9hZF9s
dXRfMTAoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJY29uc3Qgc3RydWN0IGRybV9jb2xvcl9s
dXQgKmx1dCA9IGJsb2ItPmRhdGE7CiAJaW50IGksIGx1dF9zaXplID0gZHJtX2NvbG9yX2x1dF9z
aXplKGJsb2IpOwogCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKKwlzdHJ1Y3QgaW50ZWxf
ZHNiICpkc2IgPSBkZXZfcHJpdi0+ZHNiOwogCi0JSTkxNV9XUklURShQUkVDX1BBTF9JTkRFWChw
aXBlKSwgcHJlY19pbmRleCB8Ci0JCSAgIFBBTF9QUkVDX0FVVE9fSU5DUkVNRU5UKTsKKwlpbnRl
bF9kc2JfcmVnX3dyaXRlKGRzYiwgUFJFQ19QQUxfSU5ERVgocGlwZSksCisJCQkgICAgcHJlY19p
bmRleCB8IFBBTF9QUkVDX0FVVE9fSU5DUkVNRU5UKTsKIAogCWZvciAoaSA9IDA7IGkgPCBod19s
dXRfc2l6ZTsgaSsrKSB7CiAJCS8qIFdlIGRpc2NhcmQgaGFsZiB0aGUgdXNlciBlbnRyaWVzIGlu
IHNwbGl0IGdhbW1hIG1vZGUgKi8KIAkJY29uc3Qgc3RydWN0IGRybV9jb2xvcl9sdXQgKmVudHJ5
ID0KIAkJCSZsdXRbaSAqIChsdXRfc2l6ZSAtIDEpIC8gKGh3X2x1dF9zaXplIC0gMSldOwogCi0J
CUk5MTVfV1JJVEUoUFJFQ19QQUxfREFUQShwaXBlKSwgaWxrX2x1dF8xMChlbnRyeSkpOworCQlp
bnRlbF9kc2JfaW5kZXhlZF9yZWdfd3JpdGUoZHNiLCBQUkVDX1BBTF9EQVRBKHBpcGUpLAorCQkJ
CQkgICAgaWxrX2x1dF8xMChlbnRyeSkpOwogCX0KIAogCS8qCiAJICogUmVzZXQgdGhlIGluZGV4
LCBvdGhlcndpc2UgaXQgcHJldmVudHMgdGhlIGxlZ2FjeSBwYWxldHRlIHRvIGJlCiAJICogd3Jp
dHRlbiBwcm9wZXJseS4KIAkgKi8KLQlJOTE1X1dSSVRFKFBSRUNfUEFMX0lOREVYKHBpcGUpLCAw
KTsKKwlpbnRlbF9kc2JfcmVnX3dyaXRlKGRzYiwgUFJFQ19QQUxfSU5ERVgocGlwZSksIDApOwog
fQogCiBzdGF0aWMgdm9pZCBpdmJfbG9hZF9sdXRfZXh0X21heChzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0YykKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNy
dGMtPmJhc2UuZGV2KTsKKwlzdHJ1Y3QgaW50ZWxfZHNiICpkc2IgPSBkZXZfcHJpdi0+ZHNiOwog
CWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKIAogCS8qIFByb2dyYW0gdGhlIG1heCByZWdp
c3RlciB0byBjbGFtcCB2YWx1ZXMgPiAxLjAuICovCi0JSTkxNV9XUklURShQUkVDX1BBTF9FWFRf
R0NfTUFYKHBpcGUsIDApLCAxIDw8IDE2KTsKLQlJOTE1X1dSSVRFKFBSRUNfUEFMX0VYVF9HQ19N
QVgocGlwZSwgMSksIDEgPDwgMTYpOwotCUk5MTVfV1JJVEUoUFJFQ19QQUxfRVhUX0dDX01BWChw
aXBlLCAyKSwgMSA8PCAxNik7CisJaW50ZWxfZHNiX3JlZ193cml0ZShkc2IsIFBSRUNfUEFMX0VY
VF9HQ19NQVgocGlwZSwgMCksIDEgPDwgMTYpOworCWludGVsX2RzYl9yZWdfd3JpdGUoZHNiLCBQ
UkVDX1BBTF9FWFRfR0NfTUFYKHBpcGUsIDEpLCAxIDw8IDE2KTsKKwlpbnRlbF9kc2JfcmVnX3dy
aXRlKGRzYiwgUFJFQ19QQUxfRVhUX0dDX01BWChwaXBlLCAyKSwgMSA8PCAxNik7CisKIAogCS8q
CiAJICogUHJvZ3JhbSB0aGUgZ2MgbWF4IDIgcmVnaXN0ZXIgdG8gY2xhbXAgdmFsdWVzID4gMS4w
LgpAQCAtNjI0LDkgKzYyOCwxMiBAQCBzdGF0aWMgdm9pZCBpdmJfbG9hZF9sdXRfZXh0X21heChz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAkgKiBmcm9tIDMuMCB0byA3LjAKIAkgKi8KIAlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkgewot
CQlJOTE1X1dSSVRFKFBSRUNfUEFMX0VYVDJfR0NfTUFYKHBpcGUsIDApLCAxIDw8IDE2KTsKLQkJ
STkxNV9XUklURShQUkVDX1BBTF9FWFQyX0dDX01BWChwaXBlLCAxKSwgMSA8PCAxNik7Ci0JCUk5
MTVfV1JJVEUoUFJFQ19QQUxfRVhUMl9HQ19NQVgocGlwZSwgMiksIDEgPDwgMTYpOworCQlpbnRl
bF9kc2JfcmVnX3dyaXRlKGRzYiwgUFJFQ19QQUxfRVhUMl9HQ19NQVgocGlwZSwgMCksCisJCQkJ
ICAgIDEgPDwgMTYpOworCQlpbnRlbF9kc2JfcmVnX3dyaXRlKGRzYiwgUFJFQ19QQUxfRVhUMl9H
Q19NQVgocGlwZSwgMSksCisJCQkJICAgIDEgPDwgMTYpOworCQlpbnRlbF9kc2JfcmVnX3dyaXRl
KGRzYiwgUFJFQ19QQUxfRVhUMl9HQ19NQVgocGlwZSwgMiksCisJCQkJICAgIDEgPDwgMTYpOwog
CX0KIH0KIApAQCAtNzg4LDEyICs3OTUsMTMgQEAgaWNsX2xvYWRfZ2NtYXgoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiB7CiAJc3RydWN0IGludGVsX2NydGMgKmNy
dGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPmJhc2UuY3J0Yyk7CiAJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CisJc3RydWN0
IGludGVsX2RzYiAqZHNiID0gZGV2X3ByaXYtPmRzYjsKIAllbnVtIHBpcGUgcGlwZSA9IGNydGMt
PnBpcGU7CiAKIAkvKiBGaXhtZTogTFVUIGVudHJpZXMgYXJlIDE2IGJpdCBvbmx5LCBzbyB3ZSBj
YW4gcHJvZyAweEZGRkYgbWF4ICovCi0JSTkxNV9XUklURShQUkVDX1BBTF9HQ19NQVgocGlwZSwg
MCksIGNvbG9yLT5yZWQpOwotCUk5MTVfV1JJVEUoUFJFQ19QQUxfR0NfTUFYKHBpcGUsIDEpLCBj
b2xvci0+Z3JlZW4pOwotCUk5MTVfV1JJVEUoUFJFQ19QQUxfR0NfTUFYKHBpcGUsIDIpLCBjb2xv
ci0+Ymx1ZSk7CisJaW50ZWxfZHNiX3JlZ193cml0ZShkc2IsIFBSRUNfUEFMX0dDX01BWChwaXBl
LCAwKSwgY29sb3ItPnJlZCk7CisJaW50ZWxfZHNiX3JlZ193cml0ZShkc2IsIFBSRUNfUEFMX0dD
X01BWChwaXBlLCAxKSwgY29sb3ItPmdyZWVuKTsKKwlpbnRlbF9kc2JfcmVnX3dyaXRlKGRzYiwg
UFJFQ19QQUxfR0NfTUFYKHBpcGUsIDIpLCBjb2xvci0+Ymx1ZSk7CiB9CiAKIHN0YXRpYyB2b2lk
CkBAIC04MDMsNiArODExLDcgQEAgaWNsX3Byb2dyYW1fZ2FtbWFfc3VwZXJmaW5lX3NlZ21lbnQo
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CiAJY29uc3Qg
c3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iID0gY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9s
dXQ7CiAJY29uc3Qgc3RydWN0IGRybV9jb2xvcl9sdXQgKmx1dCA9IGJsb2ItPmRhdGE7CisJc3Ry
dWN0IGludGVsX2RzYiAqZHNiID0gZGV2X3ByaXYtPmRzYjsKIAllbnVtIHBpcGUgcGlwZSA9IGNy
dGMtPnBpcGU7CiAJdTMyIGk7CiAKQEAgLTgxMywxNSArODIyLDE2IEBAIGljbF9wcm9ncmFtX2dh
bW1hX3N1cGVyZmluZV9zZWdtZW50KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKQogCSAqIFN1cGVyZmluZSBzZWdtZW50IGhhcyA5IGVudHJpZXMsIGNvcnJlc3BvbmRp
bmcgdG8gdmFsdWVzCiAJICogMCwgMS8oOCAqIDEyOCAqIDI1NiksIDIvKDggKiAxMjggKiAyNTYp
IC4uLi4gOC8oOCAqIDEyOCAqIDI1NikuCiAJICovCi0JSTkxNV9XUklURShQUkVDX1BBTF9NVUxU
SV9TRUdfSU5ERVgocGlwZSksIFBBTF9QUkVDX0FVVE9fSU5DUkVNRU5UKTsKKwlpbnRlbF9kc2Jf
cmVnX3dyaXRlKGRzYiwgUFJFQ19QQUxfTVVMVElfU0VHX0lOREVYKHBpcGUpLAorCQkJICAgIFBB
TF9QUkVDX0FVVE9fSU5DUkVNRU5UKTsKIAogCWZvciAoaSA9IDA7IGkgPCA5OyBpKyspIHsKIAkJ
Y29uc3Qgc3RydWN0IGRybV9jb2xvcl9sdXQgKmVudHJ5ID0gJmx1dFtpXTsKIAotCQlJOTE1X1dS
SVRFKFBSRUNfUEFMX01VTFRJX1NFR19EQVRBKHBpcGUpLAotCQkJICAgaWxrX2x1dF8xMnA0X2xk
dyhlbnRyeSkpOwotCQlJOTE1X1dSSVRFKFBSRUNfUEFMX01VTFRJX1NFR19EQVRBKHBpcGUpLAot
CQkJICAgaWxrX2x1dF8xMnA0X3VkdyhlbnRyeSkpOworCQlpbnRlbF9kc2JfaW5kZXhlZF9yZWdf
d3JpdGUoZHNiLCBQUkVDX1BBTF9NVUxUSV9TRUdfREFUQShwaXBlKSwKKwkJCQkJICAgIGlsa19s
dXRfMTJwNF9sZHcoZW50cnkpKTsKKwkJaW50ZWxfZHNiX2luZGV4ZWRfcmVnX3dyaXRlKGRzYiwg
UFJFQ19QQUxfTVVMVElfU0VHX0RBVEEocGlwZSksCisJCQkJCSAgICBpbGtfbHV0XzEycDRfdWR3
KGVudHJ5KSk7CiAJfQogfQogCkBAIC04MzMsNiArODQzLDcgQEAgaWNsX3Byb2dyYW1fZ2FtbWFf
bXVsdGlfc2VnbWVudChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkK
IAljb25zdCBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2IgPSBjcnRjX3N0YXRlLT5iYXNl
LmdhbW1hX2x1dDsKIAljb25zdCBzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqbHV0ID0gYmxvYi0+ZGF0
YTsKIAljb25zdCBzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqZW50cnk7CisJc3RydWN0IGludGVsX2Rz
YiAqZHNiID0gZGV2X3ByaXYtPmRzYjsKIAllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7CiAJ
dTMyIGk7CiAKQEAgLTg0NywxMSArODU4LDEzIEBAIGljbF9wcm9ncmFtX2dhbW1hX211bHRpX3Nl
Z21lbnQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJICogUEFM
X1BSRUNfSU5ERVhbMF0gYW5kIFBBTF9QUkVDX0lOREVYWzFdIG1hcCB0byBzZWcyWzFdLAogCSAq
IHdpdGggc2VnMlswXSBiZWluZyB1bnVzZWQgYnkgdGhlIGhhcmR3YXJlLgogCSAqLwotCUk5MTVf
V1JJVEUoUFJFQ19QQUxfSU5ERVgocGlwZSksIFBBTF9QUkVDX0FVVE9fSU5DUkVNRU5UKTsKKwlp
bnRlbF9kc2JfcmVnX3dyaXRlKGRzYiwgUFJFQ19QQUxfSU5ERVgocGlwZSksIFBBTF9QUkVDX0FV
VE9fSU5DUkVNRU5UKTsKIAlmb3IgKGkgPSAxOyBpIDwgMjU3OyBpKyspIHsKIAkJZW50cnkgPSAm
bHV0W2kgKiA4XTsKLQkJSTkxNV9XUklURShQUkVDX1BBTF9EQVRBKHBpcGUpLCBpbGtfbHV0XzEy
cDRfbGR3KGVudHJ5KSk7Ci0JCUk5MTVfV1JJVEUoUFJFQ19QQUxfREFUQShwaXBlKSwgaWxrX2x1
dF8xMnA0X3VkdyhlbnRyeSkpOworCQlpbnRlbF9kc2JfaW5kZXhlZF9yZWdfd3JpdGUoZHNiLCBQ
UkVDX1BBTF9EQVRBKHBpcGUpLAorCQkJCQkgICAgaWxrX2x1dF8xMnA0X2xkdyhlbnRyeSkpOwor
CQlpbnRlbF9kc2JfaW5kZXhlZF9yZWdfd3JpdGUoZHNiLCBQUkVDX1BBTF9EQVRBKHBpcGUpLAor
CQkJCQkgICAgaWxrX2x1dF8xMnA0X3VkdyhlbnRyeSkpOwogCX0KIAogCS8qCkBAIC04NjgsOCAr
ODgxLDEwIEBAIGljbF9wcm9ncmFtX2dhbW1hX211bHRpX3NlZ21lbnQoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJICovCiAJZm9yIChpID0gMDsgaSA8IDI1Njsg
aSsrKSB7CiAJCWVudHJ5ID0gJmx1dFtpICogOCAqIDEyOF07Ci0JCUk5MTVfV1JJVEUoUFJFQ19Q
QUxfREFUQShwaXBlKSwgaWxrX2x1dF8xMnA0X2xkdyhlbnRyeSkpOwotCQlJOTE1X1dSSVRFKFBS
RUNfUEFMX0RBVEEocGlwZSksIGlsa19sdXRfMTJwNF91ZHcoZW50cnkpKTsKKwkJaW50ZWxfZHNi
X2luZGV4ZWRfcmVnX3dyaXRlKGRzYiwgUFJFQ19QQUxfREFUQShwaXBlKSwKKwkJCQkJICAgIGls
a19sdXRfMTJwNF9sZHcoZW50cnkpKTsKKwkJaW50ZWxfZHNiX2luZGV4ZWRfcmVnX3dyaXRlKGRz
YiwgUFJFQ19QQUxfREFUQShwaXBlKSwKKwkJCQkJICAgIGlsa19sdXRfMTJwNF91ZHcoZW50cnkp
KTsKIAl9CiAKIAkvKiBUaGUgbGFzdCBlbnRyeSBpbiB0aGUgTFVUIGlzIHRvIGJlIHByb2dyYW1t
ZWQgaW4gR0NNQVggKi8KQEAgLTk4MCw3ICs5OTUsMTAgQEAgdm9pZCBpbnRlbF9jb2xvcl9sb2Fk
X2x1dHMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CiAJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjX3N0YXRlLT5iYXNl
LmNydGMtPmRldik7CiAKKwlkZXZfcHJpdi0+ZHNiID0gaW50ZWxfZHNiX2dldCh0b19pbnRlbF9j
cnRjKGNydGNfc3RhdGUtPmJhc2UuY3J0YykpOwogCWRldl9wcml2LT5kaXNwbGF5LmxvYWRfbHV0
cyhjcnRjX3N0YXRlKTsKKwlpbnRlbF9kc2JfY29tbWl0KGRldl9wcml2LT5kc2IpOworCWludGVs
X2RzYl9wdXQoZGV2X3ByaXYtPmRzYik7CiB9CiAKIHZvaWQgaW50ZWxfY29sb3JfY29tbWl0KGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgKaW5kZXggZGQ2Y2ZiODliODMwLi5hY2U4MWNjYmQ3NjYgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaApAQCAtMTc1OSw2ICsxNzU5LDggQEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgewog
CS8qIE11dGV4IHRvIHByb3RlY3QgdGhlIGFib3ZlIGhkY3AgY29tcG9uZW50IHJlbGF0ZWQgdmFs
dWVzLiAqLwogCXN0cnVjdCBtdXRleCBoZGNwX2NvbXBfbXV0ZXg7CiAKKwlzdHJ1Y3QgaW50ZWxf
ZHNiICpkc2I7CisKIAkvKgogCSAqIE5PVEU6IFRoaXMgaXMgdGhlIGRyaTEvdW1zIGR1bmdlb24s
IGRvbid0IGFkZCBzdHVmZiBoZXJlLiBZb3VyIHBhdGNoCiAJICogd2lsbCBiZSByZWplY3RlZC4g
SW5zdGVhZCBsb29rIGZvciBhIGJldHRlciBwbGFjZS4KLS0gCjIuMjIuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
