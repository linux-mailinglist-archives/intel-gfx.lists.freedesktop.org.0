Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D01A33808A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 23:37:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 409216EEC4;
	Thu, 11 Mar 2021 22:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60ADE6EE93
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 22:36:50 +0000 (UTC)
IronPort-SDR: Jh/VAyoVsuSMGNuX4tI0mGLr4h/TddHTvVV8f/dlX9+HgqvmODPd6TejhffuSj4uGhdPVmj5B1
 +zhIIyqoV+Xg==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="175865727"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="175865727"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:47 -0800
IronPort-SDR: sicitSlgtit8ZTFFqV15x+RKenA5DQRJ1G8UiBMQUB9XCZdq7OJx0fDgcDpNAmFR2KW7qR0I+g
 8naEMv6edamQ==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="438852776"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:45 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:36:18 -0800
Message-Id: <20210311223632.3191939-43-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210311223632.3191939-1-matthew.d.roper@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 42/56] drm/i915/adl_p: Add initial ADL_P
 Workarounds
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

RnJvbTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKTW9zdCBv
ZiB0aGUgY29udGV4dCBXQSBhcmUgYWxyZWFkeSBpbXBsZW1lbnRlZCBmb3IgcHJldmlvdXMgcGxh
dGZvcm1zLgpBZGRpbmcgYWRsX3AgcGxhdGZvcm0gdGFnIHRvIHJlZmxlY3Qgc28uCgpCU3BlYzog
NTQzNjkKQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CkNjOiBBZGl0
eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4KQ2M6IE1hZGh1bWl0aGEgVG9sYWth
bmFoYWxsaSBQcmFkZWVwIDxtYWRodW1pdGhhLnRvbGFrYW5haGFsbGkucHJhZGVlcEBpbnRlbC5j
b20+CkNjOiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwu
Y29tPgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkNj
OiBTd2F0aGkgRGhhbmF2YW50aHJpIDxzd2F0aGkuZGhhbmF2YW50aHJpQGludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBDbGludG9uIFRheWxvciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwgIDIgKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2dlbjhfZW5naW5lX2NzLmMgICAgICB8ICA0ICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jICAgfCA1OSArKysrKysr
KysrKy0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAgICAgICAg
ICAgfCAgOCArKy0KIDQgZmlsZXMgY2hhbmdlZCwgNDMgaW5zZXJ0aW9ucygrKSwgMzAgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cGxsX21nci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5j
CmluZGV4IDJlMDhmYmJhYjk0Mi4uOGM0MWY4MmJiZGMxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCkBAIC0yNjUwLDcgKzI2NTAsNyBAQCBlaGxf
Y29tYm9fcGxsX2Rpdl9mcmFjX3dhX25lZWRlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkKIHsKIAlyZXR1cm4gKChJU19QTEFURk9STShpOTE1LCBJTlRFTF9FTEtIQVJUTEFLRSkgJiYK
IAkJIElTX0pTTF9FSExfUkVWSUQoaTkxNSwgRUhMX1JFVklEX0IwLCBSRVZJRF9GT1JFVkVSKSkg
fHwKLQkJIElTX1RJR0VSTEFLRShpOTE1KSkgJiYKKwkJIElTX1RJR0VSTEFLRShpOTE1KSB8fCBJ
U19BTERFUkxBS0VfUChpOTE1KSkgJiYKIAkJIGk5MTUtPmRwbGwucmVmX2Nsa3MubnNzYyA9PSAz
ODQwMDsKIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuOF9lbmdp
bmVfY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2dlbjhfZW5naW5lX2NzLmMKaW5kZXgg
Y2FjODBhZjdhZDFjLi5kMTc5ZmU1YTgwOGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2dlbjhfZW5naW5lX2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2Vu
OF9lbmdpbmVfY3MuYwpAQCAtMjA4LDcgKzIwOCw3IEBAIGludCBnZW4xMl9lbWl0X2ZsdXNoX3Jj
cyhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgdTMyIG1vZGUpCiAJCWZsYWdzIHw9IFBJUEVfQ09O
VFJPTF9GTFVTSF9MMzsKIAkJZmxhZ3MgfD0gUElQRV9DT05UUk9MX1JFTkRFUl9UQVJHRVRfQ0FD
SEVfRkxVU0g7CiAJCWZsYWdzIHw9IFBJUEVfQ09OVFJPTF9ERVBUSF9DQUNIRV9GTFVTSDsKLQkJ
LyogV2FfMTQwOTYwMDkwNzp0Z2wgKi8KKwkJLyogV2FfMTQwOTYwMDkwNzp0Z2wsYWRsX3AgKi8K
IAkJZmxhZ3MgfD0gUElQRV9DT05UUk9MX0RFUFRIX1NUQUxMOwogCQlmbGFncyB8PSBQSVBFX0NP
TlRST0xfRENfRkxVU0hfRU5BQkxFOwogCQlmbGFncyB8PSBQSVBFX0NPTlRST0xfRkxVU0hfRU5B
QkxFOwpAQCAtNjI2LDcgKzYyNiw3IEBAIHUzMiAqZ2VuMTJfZW1pdF9maW5pX2JyZWFkY3J1bWJf
cmNzKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCB1MzIgKmNzKQogCQkJCSAgICAgICBQSVBFX0NP
TlRST0xfRkxVU0hfTDMgfAogCQkJCSAgICAgICBQSVBFX0NPTlRST0xfUkVOREVSX1RBUkdFVF9D
QUNIRV9GTFVTSCB8CiAJCQkJICAgICAgIFBJUEVfQ09OVFJPTF9ERVBUSF9DQUNIRV9GTFVTSCB8
Ci0JCQkJICAgICAgIC8qIFdhXzE0MDk2MDA5MDc6dGdsICovCisJCQkJICAgICAgIC8qIFdhXzE0
MDk2MDA5MDc6dGdsLGFkbF9wICovCiAJCQkJICAgICAgIFBJUEVfQ09OVFJPTF9ERVBUSF9TVEFM
TCB8CiAJCQkJICAgICAgIFBJUEVfQ09OVFJPTF9EQ19GTFVTSF9FTkFCTEUgfAogCQkJCSAgICAg
ICBQSVBFX0NPTlRST0xfRkxVU0hfRU5BQkxFKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IDNiNGE3ZGE2MGYwYi4uYjQ2NDdmNjNlZGU1IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKQEAgLTY1MCwxNSAr
NjUwLDE2IEBAIHN0YXRpYyB2b2lkIGdlbjEyX2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAkJCQkgICAgICAgc3RydWN0IGk5MTVfd2FfbGlzdCAq
d2FsKQogewogCS8qCi0JICogV2FfMTQwOTE0MjI1OTp0Z2wKLQkgKiBXYV8xNDA5MzQ3OTIyOnRn
bAotCSAqIFdhXzE0MDkyNTI2ODQ6dGdsCi0JICogV2FfMTQwOTIxNzYzMzp0Z2wKLQkgKiBXYV8x
NDA5MjA3NzkzOnRnbAotCSAqIFdhXzE0MDkxNzgwNzY6dGdsCi0JICogV2FfMTQwODk3OTcyNDp0
Z2wKLQkgKiBXYV8xNDAxMDQ0MzE5OTpya2wKLQkgKiBXYV8xNDAxMDY5ODc3MDpya2wKKwkgKiBX
YV8xNDA5MTQyMjU5OnRnbCwgYWRsX3AKKwkgKiBXYV8xNDA5MzQ3OTIyOnRnbCwgYWRsX3AKKwkg
KiBXYV8xNDA5MjUyNjg0OnRnbCwgYWRsX3AKKwkgKiBXYV8xNDA5MjE3NjMzOnRnbCwgYWRsX3AK
KwkgKiBXYV8xNDA5MjA3NzkzOnRnbCwgYWRsX3AKKwkgKiBXYV8xNDA5MTc4MDc2OnRnbCwgYWRs
X3AKKwkgKiBXYV8xNDA4OTc5NzI0OnRnbCwgYWRsX3AKKwkgKiBXYV8xNDAxMDQ0MzE5OTpya2ws
IGFkbF9wCisJICogV2FfMTQwMTA2OTg3NzA6cmtsLCBhZGxfcAorCSAqIFdhXzE0MDkzNDI5MTA6
IGFkbF9wCiAJICovCiAJd2FfbWFza2VkX2VuKHdhbCwgR0VOMTFfQ09NTU9OX1NMSUNFX0NISUNL
RU4zLAogCQkgICAgIEdFTjEyX0RJU0FCTEVfQ1BTX0FXQVJFX0NPTE9SX1BJUEUpOwpAQCAtMTY0
NCwzMSArMTY0NSwzMiBAQCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiAJICAgIElTX1JPQ0tFVExBS0Uo
aTkxNSkgfHwgSVNfVElHRVJMQUtFKGk5MTUpKSB7CiAJCS8qIFdhXzE2MDY5MzE2MDE6dGdsLHJr
bCxkZzEsYWRsLXMgKi8KIAkJd2FfbWFza2VkX2VuKHdhbCwgR0VON19ST1dfQ0hJQ0tFTjIsIEdF
TjEyX0RJU0FCTEVfRUFSTFlfUkVBRCk7CisJfQorCisJaWYgKElTX0FMREVSTEFLRV9QKGk5MTUp
IHx8IElTX0FMREVSTEFLRV9TKGk5MTUpIHx8IElTX0RHMShpOTE1KSB8fAorCSAgICBJU19ST0NL
RVRMQUtFKGk5MTUpIHx8IElTX1RJR0VSTEFLRShpOTE1KSkgeworCQkvKgorCQkgKiBXYV8xNjA2
NzAwNjE3OnRnbCxkZzEsYWRscAorCQkgKiBXYV8yMjAxMDI3MTAyMTp0Z2wscmtsLGRnMSxhZGxz
LGFkbHAKKwkJICogV2FfMTQwMTA4MjY2ODE6IHRnbCxkZzEKKwkJICovCisJCXdhX21hc2tlZF9l
bih3YWwsCisJCQkgICAgIEdFTjlfQ1NfREVCVUdfTU9ERTEsCisJCQkgICAgIEZGX0RPUF9DTE9D
S19HQVRFX0RJU0FCTEUpOwogCiAJCS8qCiAJCSAqIFdhXzE0MDc5Mjg5Nzk6dGdsIEEqCiAJCSAq
IFdhXzE4MDExNDY0MTY0OnRnbFtCMCtdLGRnMVtCMCtdCiAJCSAqIFdhXzIyMDEwOTMxMjk2OnRn
bFtCMCtdLGRnMVtCMCtdCi0JCSAqIFdhXzE0MDEwOTE5MTM4OnJrbCxkZzEsYWRsLXMKKwkJICog
V2FfMTQwMTA5MTkxMzg6cmtsLGRnMSxhZGwtcyxhZGwtcAogCQkgKi8KIAkJd2Ffd3JpdGVfb3Io
d2FsLCBHRU43X0ZGX1RIUkVBRF9NT0RFLAogCQkJICAgIEdFTjEyX0ZGX1RFU1NFTEFUSU9OX0RP
UF9HQVRFX0RJU0FCTEUpOwotCi0JCS8qCi0JCSAqIFdhXzE2MDY3MDA2MTc6dGdsLGRnMQotCQkg
KiBXYV8yMjAxMDI3MTAyMTp0Z2wscmtsLGRnMSwgYWRsLXMKLQkJICovCi0JCXdhX21hc2tlZF9l
bih3YWwsCi0JCQkgICAgIEdFTjlfQ1NfREVCVUdfTU9ERTEsCi0JCQkgICAgIEZGX0RPUF9DTE9D
S19HQVRFX0RJU0FCTEUpOwogCX0KIAotCWlmIChJU19BTERFUkxBS0VfUyhpOTE1KSB8fCBJU19E
RzFfUkVWSUQoaTkxNSwgREcxX1JFVklEX0EwLCBERzFfUkVWSURfQTApIHx8CisJaWYgKElTX0FM
REVSTEFLRV9QKGk5MTUpIHx8IElTX0FMREVSTEFLRV9TKGk5MTUpIHx8CisJICAgIElTX0RHMV9S
RVZJRChpOTE1LCBERzFfUkVWSURfQTAsIERHMV9SRVZJRF9BMCkgfHwKIAkgICAgSVNfUk9DS0VU
TEFLRShpOTE1KSB8fCBJU19USUdFUkxBS0UoaTkxNSkpIHsKLQkJLyogV2FfMTQwOTgwNDgwODp0
Z2wscmtsLGRnMVthMF0sYWRsLXMgKi8KLQkJd2FfbWFza2VkX2VuKHdhbCwgR0VON19ST1dfQ0hJ
Q0tFTjIsCi0JCQkgICAgIEdFTjEyX1BVU0hfQ09OU1RfREVSRUZfSE9MRF9ESVMpOwotCiAJCS8q
CiAJCSAqIFdhXzE0MDkwODUyMjU6dGdsCiAJCSAqIFdhXzE0MDEwMjI5MjA2OnRnbCxya2wsZGcx
W2EwXSxhZGwtcwpAQCAtMTY4Miw3ICsxNjg0LDcgQEAgcmNzX2VuZ2luZV93YV9pbml0KHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogCQkv
KgogCQkgKiBXYV8xNjA3MDMwMzE3OnRnbAogCQkgKiBXYV8xNjA3MTg2NTAwOnRnbAotCQkgKiBX
YV8xNjA3Mjk3NjI3OnRnbCxya2wsZGcxW2EwXQorCQkgKiBXYV8xNjA3Mjk3NjI3OnRnbCxya2ws
ZGcxW2EwXSxhZGwtcAogCQkgKgogCQkgKiBPbiBUR0wgYW5kIFJLTCB0aGVyZSBhcmUgbXVsdGlw
bGUgZW50cmllcyBmb3IgdGhpcyBXQSBpbiB0aGUKIAkJICogQlNwZWM7IHNvbWUgaW5kaWNhdGUg
dGhpcyBpcyBhbiBBMC1vbmx5IFdBLCBvdGhlcnMgaW5kaWNhdGUKQEAgLTE2OTUsNiArMTY5Nyw3
IEBAIHJjc19lbmdpbmVfd2FfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0
cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIAkJCSAgICAgR0VOOF9SQ19TRU1BX0lETEVfTVNHX0RJ
U0FCTEUpOwogCX0KIAorCiAJaWYgKElTX0RHMShpOTE1KSB8fCBJU19ST0NLRVRMQUtFKGk5MTUp
IHx8IElTX1RJR0VSTEFLRShpOTE1KSkgewogCQkvKiBXYV8xNDA2OTQxNDUzOnRnbCxya2wsZGcx
ICovCiAJCXdhX21hc2tlZF9lbih3YWwsCkBAIC0xNzAyLDYgKzE3MDUsMTQgQEAgcmNzX2VuZ2lu
ZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3RydWN0IGk5MTVfd2Ff
bGlzdCAqd2FsKQogCQkJICAgICBFTkFCTEVfU01BTExQTCk7CiAJfQogCisJaWYgKElTX0FMREVS
TEFLRV9QKGk5MTUpIHx8IElTX0FMREVSTEFLRV9TKGk5MTUpIHx8CisJICAgIElTX0RHMV9SRVZJ
RChpOTE1LCBERzFfUkVWSURfQTAsIERHMV9SRVZJRF9BMCkgfHwKKwkgICAgSVNfUk9DS0VUTEFL
RShpOTE1KSB8fCBJU19USUdFUkxBS0UoaTkxNSkpIHsKKwkJLyogV2FfMTQwOTgwNDgwODp0Z2ws
cmtsLGRnMVthMF0sYWRsLXMsYWRsLXAgKi8KKwkJd2FfbWFza2VkX2VuKHdhbCwgR0VON19ST1df
Q0hJQ0tFTjIsCisJCQkgICAgIEdFTjEyX1BVU0hfQ09OU1RfREVSRUZfSE9MRF9ESVMpOworCX0K
KwogCWlmIChJU19HRU4oaTkxNSwgMTEpKSB7CiAJCS8qIFRoaXMgaXMgbm90IGFuIFdhLiBFbmFi
bGUgZm9yIGJldHRlciBpbWFnZSBxdWFsaXR5ICovCiAJCXdhX21hc2tlZF9lbih3YWwsCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYwppbmRleCA3ZmFlOTIwZmE2YWUuLjQ4NjA4NjA4NjIwNSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9wbS5jCkBAIC03MzQ4LDE1ICs3MzQ4LDE3IEBAIHN0YXRpYyB2b2lkIGlj
bF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiBz
dGF0aWMgdm9pZCBnZW4xMmxwX2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIHsKIAkvKiBXYV8xNDA5MTIwMDEzOnRnbCxya2wsYWRsX3MsZGcxICov
Ci0JaW50ZWxfdW5jb3JlX3dyaXRlKCZkZXZfcHJpdi0+dW5jb3JlLCBJTEtfRFBGQ19DSElDS0VO
LAotCQkJICAgSUxLX0RQRkNfQ0hJQ0tFTl9DT01QX0RVTU1ZX1BJWEVMKTsKKwlpZiAoSVNfVElH
RVJMQUtFKGRldl9wcml2KSB8fCBJU19ST0NLRVRMQUtFKGRldl9wcml2KSB8fAorCSAgICBJU19B
TERFUkxBS0VfUyhkZXZfcHJpdikgfHwgSVNfREcxKGRldl9wcml2KSkKKwkJaW50ZWxfdW5jb3Jl
X3dyaXRlKCZkZXZfcHJpdi0+dW5jb3JlLCBJTEtfRFBGQ19DSElDS0VOLAorCQkJCSAgIElMS19E
UEZDX0NISUNLRU5fQ09NUF9EVU1NWV9QSVhFTCk7CiAKIAkvKiBXYV8xNDA5ODI1Mzc2OnRnbCAo
cHJlLXByb2QpKi8KIAlpZiAoSVNfVEdMX0RJU1BfU1RFUFBJTkcoZGV2X3ByaXYsIFNURVBfQTAs
IFNURVBfQjEpKQogCQlpbnRlbF91bmNvcmVfd3JpdGUoJmRldl9wcml2LT51bmNvcmUsIEdFTjlf
Q0xLR0FURV9ESVNfMywgaW50ZWxfdW5jb3JlX3JlYWQoJmRldl9wcml2LT51bmNvcmUsIEdFTjlf
Q0xLR0FURV9ESVNfMykgfAogCQkJICAgVEdMX1ZSSF9HQVRJTkdfRElTKTsKIAotCS8qIFdhXzE0
MDExMDU5Nzg4OnRnbCxya2wsYWRsX3MsZGcxICovCisJLyogV2FfMTQwMTEwNTk3ODg6dGdsLHJr
bCxhZGxfcyxkZzEsYWRsX3AgKi8KIAlpbnRlbF91bmNvcmVfcm13KCZkZXZfcHJpdi0+dW5jb3Jl
LCBHRU4xMF9ERlJfUkFUSU9fRU5fQU5EX0NISUNLRU4sCiAJCQkgMCwgREZSX0RJU0FCTEUpOwog
fQotLSAKMi4yNS40CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
