Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC640306CF7
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 06:30:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D06F46E8D3;
	Thu, 28 Jan 2021 05:30:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 725016E8D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 05:30:39 +0000 (UTC)
IronPort-SDR: IPjcsirKSUudOx0/v6fpRjOrZZ0tVfArmNsMil8Eq+iijsVMoNzDF7U1Ygv6Q5MbZ1xeHs2nWt
 OWTo9KVqwIYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="167279164"
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="167279164"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 21:30:38 -0800
IronPort-SDR: DRkURcBrtgD3aWo6qwqmAc/JgbuHxKROlr/v09F1kzfoJ9fkDEp0ADcu1lY54bJHrJyTV9vqPi
 TRRbVMuJT5zA==
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; d="scan'208";a="430386095"
Received: from kamathas-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.24.125])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 21:30:39 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jan 2021 21:30:24 -0800
Message-Id: <20210128053024.23540-10-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210128053024.23540-1-aditya.swarup@intel.com>
References: <20210128053024.23540-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 9/9] drm/i915/adl_s: Add GT and CTX WAs for ADL-S
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LSBFeHRlbmQgV2FfMTYwNjkzMTYwMSBhbmQgV2FfMTQwOTgwNDgwOCB0byBBREwtUy4KLSBFeHRl
bmQgV2FfMTQwMTA5MTkxMzggYW5kIFdhXzE0MDEwMjI5MjA2IHRvIEFETC1TIChNYWRodW1pdGhh
KQotIEV4dGVuZCBXYV8yMjAxMDI3MTAyMSB0byBBRExTIChjeW9rb3lhbSkKCnYyOgotIEV4dGVu
ZCBXYV8xNDA5ODA0ODA4IGFuZCByZW1vdmUgdW5uZWNlc3NhcnkgYnJhbmNoaW5nL3JlZHVuZGFu
dAogIGFkbHMgd29ya2Fyb3VuZCBwbGFjZWhvbGRlciBmdW5jdGlvbnMuCi0gU3BsaXQgV0FzIHBy
b3Blcmx5IGJhc2VkIG9uIHByZXZpb3VzIHBsYXRmb3JtcyBhbmQgYXBwbGljYWJsZSBBRExTCiAg
V0EuCgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBJbXJlIERlYWsgPGlt
cmUuZGVha0BpbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwu
Y29tPgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IE1hZGh1bWl0aGEgVG9sYWthbmFoYWxsaSBQcmFkZWVwIDxtYWRodW1pdGhhLnRv
bGFrYW5haGFsbGkucHJhZGVlcEBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFkaXR5YSBTd2Fy
dXAgPGFkaXR5YS5zd2FydXBAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0
dGhldy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jIHwgMzQgKysrKysrKysrKysrKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgMjEgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggNzFkMWMxOWM4NjhiLi4zYjRhN2RhNjBm
MGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAt
NzI5LDcgKzcyOSw4IEBAIF9faW50ZWxfZW5naW5lX2luaXRfY3R4X3dhKHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSwKIAogCWlmIChJU19ERzEoaTkxNSkpCiAJCWRnMV9jdHhfd29ya2Fy
b3VuZHNfaW5pdChlbmdpbmUsIHdhbCk7Ci0JZWxzZSBpZiAoSVNfUk9DS0VUTEFLRShpOTE1KSB8
fCBJU19USUdFUkxBS0UoaTkxNSkpCisJZWxzZSBpZiAoSVNfQUxERVJMQUtFX1MoaTkxNSkgfHwg
SVNfUk9DS0VUTEFLRShpOTE1KSB8fAorCQkgSVNfVElHRVJMQUtFKGk5MTUpKQogCQl0Z2xfY3R4
X3dvcmthcm91bmRzX2luaXQoZW5naW5lLCB3YWwpOwogCWVsc2UgaWYgKElTX0dFTihpOTE1LCAx
MikpCiAJCWdlbjEyX2N0eF93b3JrYXJvdW5kc19pbml0KGVuZ2luZSwgd2FsKTsKQEAgLTE2Mzks
NDUgKzE2NDAsNDUgQEAgcmNzX2VuZ2luZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogCQkJICAgIEdFTjdfRElTQUJMRV9T
QU1QTEVSX1BSRUZFVENIKTsKIAl9CiAKLQlpZiAoSVNfREcxKGk5MTUpIHx8IElTX1JPQ0tFVExB
S0UoaTkxNSkgfHwgSVNfVElHRVJMQUtFKGk5MTUpKSB7Ci0JCS8qIFdhXzE2MDY5MzE2MDE6dGds
LHJrbCxkZzEgKi8KKwlpZiAoSVNfQUxERVJMQUtFX1MoaTkxNSkgfHwgSVNfREcxKGk5MTUpIHx8
CisJICAgIElTX1JPQ0tFVExBS0UoaTkxNSkgfHwgSVNfVElHRVJMQUtFKGk5MTUpKSB7CisJCS8q
IFdhXzE2MDY5MzE2MDE6dGdsLHJrbCxkZzEsYWRsLXMgKi8KIAkJd2FfbWFza2VkX2VuKHdhbCwg
R0VON19ST1dfQ0hJQ0tFTjIsIEdFTjEyX0RJU0FCTEVfRUFSTFlfUkVBRCk7CiAKIAkJLyoKIAkJ
ICogV2FfMTQwNzkyODk3OTp0Z2wgQSoKIAkJICogV2FfMTgwMTE0NjQxNjQ6dGdsW0IwK10sZGcx
W0IwK10KIAkJICogV2FfMjIwMTA5MzEyOTY6dGdsW0IwK10sZGcxW0IwK10KLQkJICogV2FfMTQw
MTA5MTkxMzg6cmtsLCBkZzEKKwkJICogV2FfMTQwMTA5MTkxMzg6cmtsLGRnMSxhZGwtcwogCQkg
Ki8KIAkJd2Ffd3JpdGVfb3Iod2FsLCBHRU43X0ZGX1RIUkVBRF9NT0RFLAogCQkJICAgIEdFTjEy
X0ZGX1RFU1NFTEFUSU9OX0RPUF9HQVRFX0RJU0FCTEUpOwogCiAJCS8qCiAJCSAqIFdhXzE2MDY3
MDA2MTc6dGdsLGRnMQotCQkgKiBXYV8yMjAxMDI3MTAyMTp0Z2wscmtsLGRnMQorCQkgKiBXYV8y
MjAxMDI3MTAyMTp0Z2wscmtsLGRnMSwgYWRsLXMKIAkJICovCiAJCXdhX21hc2tlZF9lbih3YWws
CiAJCQkgICAgIEdFTjlfQ1NfREVCVUdfTU9ERTEsCiAJCQkgICAgIEZGX0RPUF9DTE9DS19HQVRF
X0RJU0FCTEUpOwotCi0JCS8qIFdhXzE0MDY5NDE0NTM6dGdsLHJrbCxkZzEgKi8KLQkJd2FfbWFz
a2VkX2VuKHdhbCwKLQkJCSAgICAgR0VOMTBfU0FNUExFUl9NT0RFLAotCQkJICAgICBFTkFCTEVf
U01BTExQTCk7CiAJfQogCi0JaWYgKElTX0RHMV9SRVZJRChpOTE1LCBERzFfUkVWSURfQTAsIERH
MV9SRVZJRF9BMCkgfHwKKwlpZiAoSVNfQUxERVJMQUtFX1MoaTkxNSkgfHwgSVNfREcxX1JFVklE
KGk5MTUsIERHMV9SRVZJRF9BMCwgREcxX1JFVklEX0EwKSB8fAogCSAgICBJU19ST0NLRVRMQUtF
KGk5MTUpIHx8IElTX1RJR0VSTEFLRShpOTE1KSkgewotCQkvKiBXYV8xNDA5ODA0ODA4OnRnbCxy
a2wsZGcxW2EwXSAqLworCQkvKiBXYV8xNDA5ODA0ODA4OnRnbCxya2wsZGcxW2EwXSxhZGwtcyAq
LwogCQl3YV9tYXNrZWRfZW4od2FsLCBHRU43X1JPV19DSElDS0VOMiwKIAkJCSAgICAgR0VOMTJf
UFVTSF9DT05TVF9ERVJFRl9IT0xEX0RJUyk7CiAKIAkJLyoKIAkJICogV2FfMTQwOTA4NTIyNTp0
Z2wKLQkJICogV2FfMTQwMTAyMjkyMDY6dGdsLHJrbCxkZzFbYTBdCisJCSAqIFdhXzE0MDEwMjI5
MjA2OnRnbCxya2wsZGcxW2EwXSxhZGwtcwogCQkgKi8KIAkJd2FfbWFza2VkX2VuKHdhbCwgR0VO
OV9ST1dfQ0hJQ0tFTjQsIEdFTjEyX0RJU0FCTEVfVERMX1BVU0gpOworCX0KKwogCisJaWYgKElT
X0RHMV9SRVZJRChpOTE1LCBERzFfUkVWSURfQTAsIERHMV9SRVZJRF9BMCkgfHwKKwkgICAgSVNf
Uk9DS0VUTEFLRShpOTE1KSB8fCBJU19USUdFUkxBS0UoaTkxNSkpIHsKIAkJLyoKIAkJICogV2Ff
MTYwNzAzMDMxNzp0Z2wKIAkJICogV2FfMTYwNzE4NjUwMDp0Z2wKQEAgLTE2OTQsNiArMTY5NSwx
MyBAQCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBz
dHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiAJCQkgICAgIEdFTjhfUkNfU0VNQV9JRExFX01TR19E
SVNBQkxFKTsKIAl9CiAKKwlpZiAoSVNfREcxKGk5MTUpIHx8IElTX1JPQ0tFVExBS0UoaTkxNSkg
fHwgSVNfVElHRVJMQUtFKGk5MTUpKSB7CisJCS8qIFdhXzE0MDY5NDE0NTM6dGdsLHJrbCxkZzEg
Ki8KKwkJd2FfbWFza2VkX2VuKHdhbCwKKwkJCSAgICAgR0VOMTBfU0FNUExFUl9NT0RFLAorCQkJ
ICAgICBFTkFCTEVfU01BTExQTCk7CisJfQorCiAJaWYgKElTX0dFTihpOTE1LCAxMSkpIHsKIAkJ
LyogVGhpcyBpcyBub3QgYW4gV2EuIEVuYWJsZSBmb3IgYmV0dGVyIGltYWdlIHF1YWxpdHkgKi8K
IAkJd2FfbWFza2VkX2VuKHdhbCwKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
