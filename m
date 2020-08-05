Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 808EE23CB9C
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 17:01:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAA456E7EA;
	Wed,  5 Aug 2020 15:01:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F9376E7EA
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 15:01:15 +0000 (UTC)
IronPort-SDR: smJLcMIp0UgKJWjiPY+rO9g2jLsgvVKurllfNQqrLTF0OGyYGeCtuwQtKAab9VzgbrMZFxcP2t
 HmMfz1SN8bzQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9703"; a="151772684"
X-IronPort-AV: E=Sophos;i="5.75,438,1589266800"; d="scan'208";a="151772684"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 08:01:08 -0700
IronPort-SDR: TRId2Et1VIhy1G+GHh57q4CPJv9w1kJo/O8fR6fKSZ18QnryL7l/8tUJlbYDpUixvdTOJOhF6R
 V6C9chX8vsqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,438,1589266800"; d="scan'208";a="288951535"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003.jf.intel.com with ESMTP; 05 Aug 2020 08:01:06 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Aug 2020 18:00:56 +0300
Message-Id: <20200805150056.24248-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] i915/tgl: Fix TC-cold block/unblock sequence
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
Cc: Nivedita Swaminathan <nivedita.swaminathan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGNvbW1hbmQgcmVnaXN0ZXIgaXMgdGhlIGxvdyBQQ09ERSBNQk9YIGxvdyByZWdpc3RlciBu
b3QgdGhlIGhpZ2gKb25lIGFzIGRlc2NyaWJlZCBieSB0aGUgc3BlYy4gVGhpcyBsZWZ0IHRoZSBz
eXN0ZW0gd2l0aCB0aGUgVEMtY29sZApwb3dlciBzdGF0ZSBiZWluZyBibG9ja2VkIGFsbCB0aGUg
dGltZS4gRml4IHRoaW5ncyBieSB1c2luZyB0aGUgY29ycmVjdApyZWdpc3Rlci4KCkFsc28gdG8g
bWFrZSBzdXJlIHdlIHJldHJ5IGEgcmVxdWVzdCBmb3IgYXQgbGVhc3QgNjAwdXNlYywgd2hlbiB0
aGUKUENPREUgTUJPWCBjb21tYW5kIGl0c2VsZiBzdWNjZWVkZWQsIGJ1dCB0aGUgVEMtY29sZCBi
bG9jayBjb21tYW5kCmZhaWxlZCwgc2xlZXAgZm9yIDFtc2VjIHVuY29uZGl0aW9uYWxseSBhZnRl
ciBhbnkgZmFpbC4KClRoZSBjaGFuZ2Ugd2FzIHRlc3RlZCB3aXRoIEpUQUcgcmVnaXN0ZXIgcmVh
ZCBvZiB0aGUgSFcvRlcncyBhY3R1YWwKVEMtY29sZCBzdGF0ZSwgd2hpY2ggcmVwb3J0ZWQgdGhl
IGV4cGVjdGVkIHN0YXRlcyBhZnRlciB0aGlzIGNoYW5nZS4KClRlc3RlZC1ieTogTml2ZWRpdGEg
U3dhbWluYXRoYW4gPG5pdmVkaXRhLnN3YW1pbmF0aGFuQGludGVsLmNvbT4KQ2M6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJl
IERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCAxMCArKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgICAgICB8ICA0ICsrLS0KIDIgZmlsZXMg
Y2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKaW5kZXggOWYwMjQx
YTUzYTQ1Li44ZjBiNzEyZWQ3YTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCkBAIC0zOTI3LDEyICszOTI3LDEzIEBAIHRnbF90
Y19jb2xkX3JlcXVlc3Qoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGJvb2wgYmxvY2sp
CiAJaW50IHJldDsKIAogCXdoaWxlICgxKSB7Ci0JCXUzMiBsb3dfdmFsID0gMCwgaGlnaF92YWw7
CisJCXUzMiBsb3dfdmFsOworCQl1MzIgaGlnaF92YWwgPSAwOwogCiAJCWlmIChibG9jaykKLQkJ
CWhpZ2hfdmFsID0gVEdMX1BDT0RFX0VYSVRfVENDT0xEX0RBVEFfSF9CTE9DS19SRVE7CisJCQls
b3dfdmFsID0gVEdMX1BDT0RFX0VYSVRfVENDT0xEX0RBVEFfTF9CTE9DS19SRVE7CiAJCWVsc2UK
LQkJCWhpZ2hfdmFsID0gVEdMX1BDT0RFX0VYSVRfVENDT0xEX0RBVEFfSF9VTkJMT0NLX1JFUTsK
KwkJCWxvd192YWwgPSBUR0xfUENPREVfRVhJVF9UQ0NPTERfREFUQV9MX1VOQkxPQ0tfUkVROwog
CiAJCS8qCiAJCSAqIFNwZWMgc3RhdGVzIHRoYXQgd2Ugc2hvdWxkIHRpbWVvdXQgdGhlIHJlcXVl
c3QgYWZ0ZXIgMjAwdXMKQEAgLTM5NTEsOCArMzk1Miw3IEBAIHRnbF90Y19jb2xkX3JlcXVlc3Qo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGJvb2wgYmxvY2spCiAJCWlmICgrK3RyaWVz
ID09IDMpCiAJCQlicmVhazsKIAotCQlpZiAocmV0ID09IC1FQUdBSU4pCi0JCQltc2xlZXAoMSk7
CisJCW1zbGVlcCgxKTsKIAl9CiAKIAlpZiAocmV0KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5k
ZXggMmI0MDNkZjAzNDA0Li5lODVjNmZjMWYzY2IgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApA
QCAtOTIyNiw4ICs5MjI2LDggQEAgZW51bSB7CiAjZGVmaW5lICAgRElTUExBWV9JUFNfQ09OVFJP
TAkJCTB4MTkKICNkZWZpbmUgICBUR0xfUENPREVfVENDT0xECQkJMHgyNgogI2RlZmluZSAgICAg
VEdMX1BDT0RFX0VYSVRfVENDT0xEX0RBVEFfTF9FWElUX0ZBSUxFRAlSRUdfQklUKDApCi0jZGVm
aW5lICAgICBUR0xfUENPREVfRVhJVF9UQ0NPTERfREFUQV9IX0JMT0NLX1JFUQkwCi0jZGVmaW5l
ICAgICBUR0xfUENPREVfRVhJVF9UQ0NPTERfREFUQV9IX1VOQkxPQ0tfUkVRCVJFR19CSVQoMCkK
KyNkZWZpbmUgICAgIFRHTF9QQ09ERV9FWElUX1RDQ09MRF9EQVRBX0xfQkxPQ0tfUkVRCTAKKyNk
ZWZpbmUgICAgIFRHTF9QQ09ERV9FWElUX1RDQ09MRF9EQVRBX0xfVU5CTE9DS19SRVEJUkVHX0JJ
VCgwKQogICAgICAgICAgICAgLyogU2VlIGFsc28gSVBTX0NUTCAqLwogI2RlZmluZSAgICAgSVBT
X1BDT0RFX0NPTlRST0wJCQkoMSA8PCAzMCkKICNkZWZpbmUgICBIU1dfUENPREVfRFlOQU1JQ19E
VVRZX0NZQ0xFX0NPTlRST0wJMHgxQQotLSAKMi4yMy4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
