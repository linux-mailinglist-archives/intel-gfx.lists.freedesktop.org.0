Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F993C99C0
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 10:23:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E71D6E2DC;
	Thu,  3 Oct 2019 08:23:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11D5F6E2DD
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 08:23:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 01:23:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,251,1566889200"; d="scan'208";a="221700022"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by fmsmga002.fm.intel.com with ESMTP; 03 Oct 2019 01:23:45 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Oct 2019 13:47:36 +0530
Message-Id: <20191003081738.22101-5-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191003081738.22101-1-anshuman.gupta@intel.com>
References: <20191003081738.22101-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 4/6] drm/i915/tgl: Do modeset to enable and
 configure DC3CO exitline
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

REMzQ08gZW5hYmxpbmcgQi5TcGVjcyBzZXF1ZW5jZSByZXF1aXJlcyB0byBlbmFibGUgZW5kIGNv
bmZpZ3VyZQpleGl0IHNjYW5saW5lcyB0byBUUkFOU19FWElUTElORSByZWdpc3RlciwgcHJvZ3Jh
bW1pbmcgdGhpcyByZWdpc3RlcgpoYXMgdG8gYmUgcGFydCBvZiBtb2Rlc2V0IHNlcXVlbmNlIGFz
IHRoaXMgY2FuJ3QgYmUgY2hhbmdlIHdoZW4KdHJhbnNjb2RlciBvciBwb3J0IGlzIGVuYWJsZWQu
CldoZW4gc3lzdGVtIGJvb3RzIHdpdGggb25seSBlRFAgcGFuZWwgdGhlcmUgbWF5IG5vdCBiZSBy
ZWFsCm1vZGVzZXQgYXMgQklPUyBoYXMgYWxyZWFkeSBwcm9ncmFtbWVkIHRoZSBuZWNlc3Nhcnkg
cmVnaXN0ZXJzLAp0aGVyZWZvcmUgaXQgbmVlZHMgdG8gZm9yY2UgYSBtb2Rlc2V0IHRvIGVuYWJs
ZSBhbmQgY29uZmlndXJlCkRDM0NPIGV4aXRsaW5lLgoKdjE6IENvbXB1dGluZyBkYzNjb19leGl0
bGluZSBjcnRjIHN0YXRlIGZyb20gYSBEUCBlbmNvZGVyCiAgICBjb21wdXRlIGNvbmZpZy4gW0lt
cmVdCiAgICBFbmFibGluZyBhbmQgZGlzYWJsaW5nIERDM0NPIFBTUjIgdHJhbnNjb2RlciBleGl0
bGluZSBmcm9tCiAgICBlbmNvZGVyIHByZV9lbmFibGUgYW5kIHBvc3RfZGlzYWJsZSBob29rcy4g
W0ltcmVdCiAgICBDb21wdXRpbmcgZGMzY29fZXhpdGxpbmUgaW5zdGVhZCBvZiBoYXNfZGMzY29f
ZXhpdGxpbmUgYm9vbC4gW0ltcmVdCnYyOiBDb2RlIHJlZmFjdG9yaW5nIGZvciBzeW1tZXRyeSBh
bmQgdG8gYXZvaWQgZXhwb3J0ZWQgZnVuY3Rpb24uIFtJbXJlXQogICAgUmVtb3ZpbmcgSVNfVElH
RVJMQUtFIGNoZWNrIGZyb20gY29tcHV0ZV9jb25maWcsIGFkZGluZyBQSVBFX0EKICAgIHJlc3Ry
aWN0aW9uIGFuZCBjbGVhcmluZyBkYzNjb19leGl0bGluZSBzdGF0ZSBpZiBjcnRjIGlzIG5vdCBh
Y3RpdmUKICAgIG9yIGl0IGlzIG5vdCBQU1IyIGNhcGFibGUgaW4gZGMzY28gZXhpdGxpbmUgY29t
cHV0ZV9jb25maWcuIFtJbXJlXQogICAgVXNpbmcgR0VOID49IDEyIGNoZWNrIGluIGRjM2NvIGV4
aXRsaW5lIGdldF9jb25maWcuIFtJbXJlXQoKQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+CkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+CkNjOiBBbmltZXNo
IE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEltcmUgRGVhayA8
aW1yZS5kZWFrQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1
bWFuLmd1cHRhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jICAgICAgfCA5MyArKysrKysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgMSArCiAuLi4vZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgMSArCiAzIGZpbGVzIGNoYW5nZWQsIDkzIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMKaW5kZXggM2MxZTg4NWUwMTg3Li42YzEzMTVjN2JjZGUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtNDUsNiArNDUsNyBAQAogI2luY2x1
ZGUgImludGVsX2xzcGNvbi5oIgogI2luY2x1ZGUgImludGVsX3BhbmVsLmgiCiAjaW5jbHVkZSAi
aW50ZWxfcHNyLmgiCisjaW5jbHVkZSAiaW50ZWxfc3ByaXRlLmgiCiAjaW5jbHVkZSAiaW50ZWxf
dGMuaCIKICNpbmNsdWRlICJpbnRlbF92ZHNjLmgiCiAKQEAgLTMzMzAsNiArMzMzMSw4NiBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9kZGlfZGlzYWJsZV9mZWNfc3RhdGUoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsCiAJUE9TVElOR19SRUFEKGludGVsX2RwLT5yZWdzLmRwX3RwX2N0bCk7CiB9
CiAKK3N0YXRpYyB2b2lkCit0Z2xfY2xlYXJfcHNyMl90cmFuc2NvZGVyX2V4aXRsaW5lKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjc3RhdGUpCit7CisJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjc3RhdGUtPmJhc2UuY3J0Yy0+ZGV2KTsKKwl1MzIg
dmFsOworCisJaWYgKCFjc3RhdGUtPmRjM2NvX2V4aXRsaW5lKQorCQlyZXR1cm47CisKKwl2YWwg
PSBJOTE1X1JFQUQoRVhJVExJTkUoY3N0YXRlLT5jcHVfdHJhbnNjb2RlcikpOworCXZhbCAmPSB+
KEVYSVRMSU5FX01BU0sgfCBFWElUTElORV9FTkFCTEUpOworCUk5MTVfV1JJVEUoRVhJVExJTkUo
Y3N0YXRlLT5jcHVfdHJhbnNjb2RlciksIHZhbCk7Cit9CisKK3N0YXRpYyB2b2lkCit0Z2xfc2V0
X3BzcjJfdHJhbnNjb2Rlcl9leGl0bGluZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3N0YXRlKQoreworCXUzMiB2YWwsIGV4aXRfc2NhbmxpbmVzOworCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3N0YXRlLT5iYXNlLmNydGMtPmRldik7CisKKwlp
ZiAoIWNzdGF0ZS0+ZGMzY29fZXhpdGxpbmUpCisJCXJldHVybjsKKworCWV4aXRfc2NhbmxpbmVz
ID0gY3N0YXRlLT5kYzNjb19leGl0bGluZTsKKwlleGl0X3NjYW5saW5lcyA8PD0gRVhJVExJTkVf
U0hJRlQ7CisJdmFsID0gSTkxNV9SRUFEKEVYSVRMSU5FKGNzdGF0ZS0+Y3B1X3RyYW5zY29kZXIp
KTsKKwl2YWwgJj0gfihFWElUTElORV9NQVNLIHwgRVhJVExJTkVfRU5BQkxFKTsKKwl2YWwgfD0g
ZXhpdF9zY2FubGluZXM7CisJdmFsIHw9IEVYSVRMSU5FX0VOQUJMRTsKKwlJOTE1X1dSSVRFKEVY
SVRMSU5FKGNzdGF0ZS0+Y3B1X3RyYW5zY29kZXIpLCB2YWwpOworfQorCitzdGF0aWMgdm9pZCB0
Z2xfZGMzY29fZXhpdGxpbmVfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsCisJCQkJCSAgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjc3RhdGUpCit7CisJ
dTMyIGV4aXRfc2NhbmxpbmVzOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoY3N0YXRlLT5iYXNlLmNydGMtPmRldik7CisJdTMyIGNydGNfdmRpc3BsYXkgPSBj
c3RhdGUtPmJhc2UuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZkaXNwbGF5OworCisJY3N0YXRlLT5kYzNj
b19leGl0bGluZSA9IDA7CisKKwlpZiAoIShkZXZfcHJpdi0+Y3NyLmFsbG93ZWRfZGNfbWFzayAm
IERDX1NUQVRFX0VOX0RDM0NPKSkKKwkJcmV0dXJuOworCisJLyogQi5TcGVjczo0OTE5NiBEQzND
TyBvbmx5IHdvcmtzIHdpdGggcGlwZUEgYW5kIERESUEuKi8KKwlpZiAodG9faW50ZWxfY3J0Yyhj
c3RhdGUtPmJhc2UuY3J0YyktPnBpcGUgIT0gUElQRV9BIHx8CisJICAgIGVuY29kZXItPnBvcnQg
IT0gUE9SVF9BKQorCQlyZXR1cm47CisKKwlpZiAoIWNzdGF0ZS0+aGFzX3BzcjIgfHwgIWNzdGF0
ZS0+YmFzZS5hY3RpdmUpCisJCXJldHVybjsKKworCS8qCisJICogREMzQ08gRXhpdCB0aW1lIDIw
MHVzIEIuU3BlYyA0OTE5NgorCSAqIFBTUjIgdHJhbnNjb2RlciBFYXJseSBFeGl0IHNjYW5saW5l
cyA9IFJPVU5EVVAoMjAwIC8gbGluZSB0aW1lKSArIDEKKwkgKi8KKwlleGl0X3NjYW5saW5lcyA9
CisJCWludGVsX3VzZWNzX3RvX3NjYW5saW5lcygmY3N0YXRlLT5iYXNlLmFkanVzdGVkX21vZGUs
IDIwMCkgKyAxOworCisJaWYgKFdBUk5fT04oZXhpdF9zY2FubGluZXMgPiBjcnRjX3ZkaXNwbGF5
KSkKKwkJcmV0dXJuOworCisJY3N0YXRlLT5kYzNjb19leGl0bGluZSA9IGNydGNfdmRpc3BsYXkg
LSBleGl0X3NjYW5saW5lczsKKwlEUk1fREVCVUdfS01TKCJEQzNDTyBleGl0IHNjYW5saW5lcyAl
ZFxuIiwgY3N0YXRlLT5kYzNjb19leGl0bGluZSk7Cit9CisKK3N0YXRpYyB2b2lkIHRnbF9kYzNj
b19leGl0bGluZV9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KQoreworCXUzMiB2YWw7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9f
aTkxNShjcnRjX3N0YXRlLT5iYXNlLmNydGMtPmRldik7CisKKwlpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA8IDEyKQorCQlyZXR1cm47CisKKwl2YWwgPSBJOTE1X1JFQUQoRVhJVExJTkUoY3J0Y19z
dGF0ZS0+Y3B1X3RyYW5zY29kZXIpKTsKKworCWlmICh2YWwgJiBFWElUTElORV9FTkFCTEUpCisJ
CWNydGNfc3RhdGUtPmRjM2NvX2V4aXRsaW5lID0gdmFsICYgRVhJVExJTkVfTUFTSzsKK30KKwog
c3RhdGljIHZvaWQgdGdsX2RkaV9wcmVfZW5hYmxlX2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAogCQkJCSAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUs
CiAJCQkJICBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSkKQEAg
LTMzNDIsNiArMzQyMyw3IEBAIHN0YXRpYyB2b2lkIHRnbF9kZGlfcHJlX2VuYWJsZV9kcChzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAlpbnQgbGV2ZWwgPSBpbnRlbF9kZGlfZHBfbGV2
ZWwoaW50ZWxfZHApOwogCWVudW0gdHJhbnNjb2RlciB0cmFuc2NvZGVyID0gY3J0Y19zdGF0ZS0+
Y3B1X3RyYW5zY29kZXI7CiAKKwl0Z2xfc2V0X3BzcjJfdHJhbnNjb2Rlcl9leGl0bGluZShjcnRj
X3N0YXRlKTsKIAlpbnRlbF9kcF9zZXRfbGlua19wYXJhbXMoaW50ZWxfZHAsIGNydGNfc3RhdGUt
PnBvcnRfY2xvY2ssCiAJCQkJIGNydGNfc3RhdGUtPmxhbmVfY291bnQsIGlzX21zdCk7CiAKQEAg
LTM2NjYsNiArMzc0OCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9wb3N0X2Rpc2FibGVfZHAo
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkJCQkgIGRpZ19wb3J0LT5kZGlfaW9f
cG93ZXJfZG9tYWluKTsKIAogCWludGVsX2RkaV9jbGtfZGlzYWJsZShlbmNvZGVyKTsKKwl0Z2xf
Y2xlYXJfcHNyMl90cmFuc2NvZGVyX2V4aXRsaW5lKG9sZF9jcnRjX3N0YXRlKTsKIH0KIAogc3Rh
dGljIHZvaWQgaW50ZWxfZGRpX3Bvc3RfZGlzYWJsZV9oZG1pKHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyLApAQCAtNDIxMiw2ICs0Mjk1LDkgQEAgdm9pZCBpbnRlbF9kZGlfZ2V0X2NvbmZp
ZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJYnJlYWs7CiAJfQogCisJaWYgKGVu
Y29kZXItPnR5cGUgPT0gSU5URUxfT1VUUFVUX0VEUCkKKwkJdGdsX2RjM2NvX2V4aXRsaW5lX2dl
dF9jb25maWcocGlwZV9jb25maWcpOworCiAJcGlwZV9jb25maWctPmhhc19hdWRpbyA9CiAJCWlu
dGVsX2RkaV9pc19hdWRpb19lbmFibGVkKGRldl9wcml2LCBjcHVfdHJhbnNjb2Rlcik7CiAKQEAg
LTQyODksMTAgKzQzNzUsMTMgQEAgc3RhdGljIGludCBpbnRlbF9kZGlfY29tcHV0ZV9jb25maWco
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJaWYgKEhBU19UUkFOU0NPREVSX0VEUChk
ZXZfcHJpdikgJiYgcG9ydCA9PSBQT1JUX0EpCiAJCXBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2Rl
ciA9IFRSQU5TQ09ERVJfRURQOwogCi0JaWYgKGludGVsX2NydGNfaGFzX3R5cGUocGlwZV9jb25m
aWcsIElOVEVMX09VVFBVVF9IRE1JKSkKKwlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShwaXBlX2Nv
bmZpZywgSU5URUxfT1VUUFVUX0hETUkpKSB7CiAJCXJldCA9IGludGVsX2hkbWlfY29tcHV0ZV9j
b25maWcoZW5jb2RlciwgcGlwZV9jb25maWcsIGNvbm5fc3RhdGUpOwotCWVsc2UKKwl9IGVsc2Ug
ewogCQlyZXQgPSBpbnRlbF9kcF9jb21wdXRlX2NvbmZpZyhlbmNvZGVyLCBwaXBlX2NvbmZpZywg
Y29ubl9zdGF0ZSk7CisJCXRnbF9kYzNjb19leGl0bGluZV9jb21wdXRlX2NvbmZpZyhlbmNvZGVy
LCBwaXBlX2NvbmZpZyk7CisJfQorCiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAyMGVjOGExZGM1
ZTEuLmY3MjQyOWNkMDg2MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKQEAgLTEyODIwLDYgKzEyODIwLDcgQEAgaW50ZWxfcGlwZV9jb25maWdfY29t
cGFyZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3VycmVudF9jb25maWcsCiAKIAlQ
SVBFX0NPTkZfQ0hFQ0tfSShwaXhlbF9tdWx0aXBsaWVyKTsKIAlQSVBFX0NPTkZfQ0hFQ0tfSShv
dXRwdXRfZm9ybWF0KTsKKwlQSVBFX0NPTkZfQ0hFQ0tfSShkYzNjb19leGl0bGluZSk7CiAJUElQ
RV9DT05GX0NIRUNLX0JPT0woaGFzX2hkbWlfc2luayk7CiAJaWYgKChJTlRFTF9HRU4oZGV2X3By
aXYpIDwgOCAmJiAhSVNfSEFTV0VMTChkZXZfcHJpdikpIHx8CiAJICAgIElTX1ZBTExFWVZJRVco
ZGV2X3ByaXYpIHx8IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAppbmRleCA5NzY2NjlmMDFh
OGMuLjhhYTM4YWNlNzg0NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKQEAgLTg3MCw2ICs4NzAsNyBAQCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSB7CiAKIAlib29sIGhhc19wc3I7CiAJYm9vbCBoYXNfcHNyMjsKKwl1MzIgZGMz
Y29fZXhpdGxpbmU7CiAKIAkvKgogCSAqIEZyZXF1ZW5jZSB0aGUgZHBsbCBmb3IgdGhlIHBvcnQg
c2hvdWxkIHJ1biBhdC4gRGlmZmVycyBmcm9tIHRoZQotLSAKMi4yMS4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
