Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6359284C
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 17:25:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42B7189C51;
	Mon, 19 Aug 2019 15:24:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F012589C6C;
 Mon, 19 Aug 2019 15:24:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 08:24:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,405,1559545200"; d="scan'208";a="182898204"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by orsmga006.jf.intel.com with ESMTP; 19 Aug 2019 08:24:50 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sharma Shashank <shashank.sharma@intel.com>
Date: Mon, 19 Aug 2019 20:54:11 +0530
Message-Id: <20190819152412.21318-3-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190819152412.21318-1-ramalingam.c@intel.com>
References: <20190819152412.21318-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 2/3] misc/mei_hdcp: Adding the transcoder
 detail in payload input
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

TUUgRlcgdGFrZXMgdGhlIHRyYW5zY29kZXIgZGV0YWlscyBmb3IgR2VuMTIrIHBsYXRmb3Jtcywg
YXMgSERDUCBIVwpibG9jayBpcyBtb3ZlZCB0byB0cmFuc2NvZGVycy4KCmhkY3BfcG9ydF9kYXRh
IGlzIGV4dGVuZGVkIHdpdGggZW51bSB0cmFuc2NvZGVyLiBQYXlsb2FkIHN0cnVjdHVyZSBpcwpt
b2RpZmllZCBhbmQgcG9wdWxhdGVkIGZyb20gdGhlIGhkY3BfcG9ydF9kYXRhLgoKU2lnbmVkLW9m
Zi1ieTogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
bWlzYy9tZWkvaGRjcC9tZWlfaGRjcC5jICAgICAgfCAyNyArKysrKysrKysrKysrKysrKysrKysr
KysrKysKIGRyaXZlcnMvbWlzYy9tZWkvaGRjcC9tZWlfaGRjcC5oICAgICAgfCAxNSArKysrKysr
KysrKysrKy0KIGluY2x1ZGUvZHJtL2k5MTVfbWVpX2hkY3BfaW50ZXJmYWNlLmggfCAgMiArKwog
MyBmaWxlcyBjaGFuZ2VkLCA0MyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9taXNjL21laS9oZGNwL21laV9oZGNwLmMgYi9kcml2ZXJzL21pc2MvbWVp
L2hkY3AvbWVpX2hkY3AuYwppbmRleCBjNjgxZjZmYWIzNDIuLjdlZmUzYjY1YTk4NiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9taXNjL21laS9oZGNwL21laV9oZGNwLmMKKysrIGIvZHJpdmVycy9taXNj
L21laS9oZGNwL21laV9oZGNwLmMKQEAgLTM5LDYgKzM5LDIyIEBAIHN0YXRpYyBpbmxpbmUgdTgg
bWVpX2dldF9kZGlfaW5kZXgoZW51bSBwb3J0IHBvcnQpCiAJfQogfQogCitzdGF0aWMgaW5saW5l
IHU4IG1laV9nZXRfdGNfdHlwZShlbnVtIHRyYW5zY29kZXIgdGMpCit7CisJc3dpdGNoICh0Yykg
eworCWNhc2UgVFJBTlNDT0RFUl9BIC4uLiBUUkFOU0NPREVSX0Q6CisJCXJldHVybiAodTgpKHRj
IHwgMHgxMCk7CisJY2FzZSBUUkFOU0NPREVSX0VEUDoKKwkJcmV0dXJuIFRDX0VEUDsKKwljYXNl
IFRSQU5TQ09ERVJfRFNJXzA6CisJCXJldHVybiBUQ19EU0kwOworCWNhc2UgVFJBTlNDT0RFUl9E
U0lfMToKKwkJcmV0dXJuIFRDX0RTSTE7CisJZGVmYXVsdDoKKwkJcmV0dXJuIE1FSV9JTlZBTElE
X1RSQU5TQ09ERVI7CisJfQorfQorCiAvKioKICAqIG1laV9oZGNwX2luaXRpYXRlX3Nlc3Npb24o
KSAtIEluaXRpYXRlIGEgV2lyZWQgSERDUDIuMiBUeCBTZXNzaW9uIGluIE1FIEZXCiAgKiBAZGV2
OiBkZXZpY2UgY29ycmVzcG9uZGluZyB0byB0aGUgbWVpX2NsX2RldmljZQpAQCAtNzAsNiArODYs
NyBAQCBtZWlfaGRjcF9pbml0aWF0ZV9zZXNzaW9uKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0
IGhkY3BfcG9ydF9kYXRhICpkYXRhLAogCiAJc2Vzc2lvbl9pbml0X2luLnBvcnQuaW50ZWdyYXRl
ZF9wb3J0X3R5cGUgPSBkYXRhLT5wb3J0X3R5cGU7CiAJc2Vzc2lvbl9pbml0X2luLnBvcnQucGh5
c2ljYWxfcG9ydCA9IG1laV9nZXRfZGRpX2luZGV4KGRhdGEtPnBvcnQpOworCXNlc3Npb25faW5p
dF9pbi5wb3J0LmF0dGFjaGVkX3RyYW5zY29kZXIgPSBtZWlfZ2V0X3RjX3R5cGUoZGF0YS0+dGMp
OwogCXNlc3Npb25faW5pdF9pbi5wcm90b2NvbCA9IGRhdGEtPnByb3RvY29sOwogCiAJYnl0ZSA9
IG1laV9jbGRldl9zZW5kKGNsZGV2LCAodTggKikmc2Vzc2lvbl9pbml0X2luLApAQCAtMTM5LDYg
KzE1Niw3IEBAIG1laV9oZGNwX3ZlcmlmeV9yZWNlaXZlcl9jZXJ0X3ByZXBhcmVfa20oc3RydWN0
IGRldmljZSAqZGV2LAogCiAJdmVyaWZ5X3J4Y2VydF9pbi5wb3J0LmludGVncmF0ZWRfcG9ydF90
eXBlID0gZGF0YS0+cG9ydF90eXBlOwogCXZlcmlmeV9yeGNlcnRfaW4ucG9ydC5waHlzaWNhbF9w
b3J0ID0gbWVpX2dldF9kZGlfaW5kZXgoZGF0YS0+cG9ydCk7CisJdmVyaWZ5X3J4Y2VydF9pbi5w
b3J0LmF0dGFjaGVkX3RyYW5zY29kZXIgPSBtZWlfZ2V0X3RjX3R5cGUoZGF0YS0+dGMpOwogCiAJ
dmVyaWZ5X3J4Y2VydF9pbi5jZXJ0X3J4ID0gcnhfY2VydC0+Y2VydF9yeDsKIAltZW1jcHkodmVy
aWZ5X3J4Y2VydF9pbi5yX3J4LCAmcnhfY2VydC0+cl9yeCwgSERDUF8yXzJfUlJYX0xFTik7CkBA
IC0yMDksNiArMjI3LDcgQEAgbWVpX2hkY3BfdmVyaWZ5X2hwcmltZShzdHJ1Y3QgZGV2aWNlICpk
ZXYsIHN0cnVjdCBoZGNwX3BvcnRfZGF0YSAqZGF0YSwKIAogCXNlbmRfaHByaW1lX2luLnBvcnQu
aW50ZWdyYXRlZF9wb3J0X3R5cGUgPSBkYXRhLT5wb3J0X3R5cGU7CiAJc2VuZF9ocHJpbWVfaW4u
cG9ydC5waHlzaWNhbF9wb3J0ID0gbWVpX2dldF9kZGlfaW5kZXgoZGF0YS0+cG9ydCk7CisJc2Vu
ZF9ocHJpbWVfaW4ucG9ydC5hdHRhY2hlZF90cmFuc2NvZGVyID0gbWVpX2dldF90Y190eXBlKGRh
dGEtPnRjKTsKIAogCW1lbWNweShzZW5kX2hwcmltZV9pbi5oX3ByaW1lLCByeF9ocHJpbWUtPmhf
cHJpbWUsCiAJICAgICAgIEhEQ1BfMl8yX0hfUFJJTUVfTEVOKTsKQEAgLTI2Niw2ICsyODUsNyBA
QCBtZWlfaGRjcF9zdG9yZV9wYWlyaW5nX2luZm8oc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3Qg
aGRjcF9wb3J0X2RhdGEgKmRhdGEsCiAKIAlwYWlyaW5nX2luZm9faW4ucG9ydC5pbnRlZ3JhdGVk
X3BvcnRfdHlwZSA9IGRhdGEtPnBvcnRfdHlwZTsKIAlwYWlyaW5nX2luZm9faW4ucG9ydC5waHlz
aWNhbF9wb3J0ID0gbWVpX2dldF9kZGlfaW5kZXgoZGF0YS0+cG9ydCk7CisJcGFpcmluZ19pbmZv
X2luLnBvcnQuYXR0YWNoZWRfdHJhbnNjb2RlciA9IG1laV9nZXRfdGNfdHlwZShkYXRhLT50Yyk7
CiAKIAltZW1jcHkocGFpcmluZ19pbmZvX2luLmVfa2hfa20sIHBhaXJpbmdfaW5mby0+ZV9raF9r
bSwKIAkgICAgICAgSERDUF8yXzJfRV9LSF9LTV9MRU4pOwpAQCAtMzI0LDYgKzM0NCw3IEBAIG1l
aV9oZGNwX2luaXRpYXRlX2xvY2FsaXR5X2NoZWNrKHN0cnVjdCBkZXZpY2UgKmRldiwKIAogCWxj
X2luaXRfaW4ucG9ydC5pbnRlZ3JhdGVkX3BvcnRfdHlwZSA9IGRhdGEtPnBvcnRfdHlwZTsKIAls
Y19pbml0X2luLnBvcnQucGh5c2ljYWxfcG9ydCA9IG1laV9nZXRfZGRpX2luZGV4KGRhdGEtPnBv
cnQpOworCWxjX2luaXRfaW4ucG9ydC5hdHRhY2hlZF90cmFuc2NvZGVyID0gbWVpX2dldF90Y190
eXBlKGRhdGEtPnRjKTsKIAogCWJ5dGUgPSBtZWlfY2xkZXZfc2VuZChjbGRldiwgKHU4ICopJmxj
X2luaXRfaW4sIHNpemVvZihsY19pbml0X2luKSk7CiAJaWYgKGJ5dGUgPCAwKSB7CkBAIC0zNzks
NiArNDAwLDcgQEAgbWVpX2hkY3BfdmVyaWZ5X2xwcmltZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0
cnVjdCBoZGNwX3BvcnRfZGF0YSAqZGF0YSwKIAogCXZlcmlmeV9scHJpbWVfaW4ucG9ydC5pbnRl
Z3JhdGVkX3BvcnRfdHlwZSA9IGRhdGEtPnBvcnRfdHlwZTsKIAl2ZXJpZnlfbHByaW1lX2luLnBv
cnQucGh5c2ljYWxfcG9ydCA9IG1laV9nZXRfZGRpX2luZGV4KGRhdGEtPnBvcnQpOworCXZlcmlm
eV9scHJpbWVfaW4ucG9ydC5hdHRhY2hlZF90cmFuc2NvZGVyID0gbWVpX2dldF90Y190eXBlKGRh
dGEtPnRjKTsKIAogCW1lbWNweSh2ZXJpZnlfbHByaW1lX2luLmxfcHJpbWUsIHJ4X2xwcmltZS0+
bF9wcmltZSwKIAkgICAgICAgSERDUF8yXzJfTF9QUklNRV9MRU4pOwpAQCAtNDM2LDYgKzQ1OCw3
IEBAIHN0YXRpYyBpbnQgbWVpX2hkY3BfZ2V0X3Nlc3Npb25fa2V5KHN0cnVjdCBkZXZpY2UgKmRl
diwKIAogCWdldF9za2V5X2luLnBvcnQuaW50ZWdyYXRlZF9wb3J0X3R5cGUgPSBkYXRhLT5wb3J0
X3R5cGU7CiAJZ2V0X3NrZXlfaW4ucG9ydC5waHlzaWNhbF9wb3J0ID0gbWVpX2dldF9kZGlfaW5k
ZXgoZGF0YS0+cG9ydCk7CisJZ2V0X3NrZXlfaW4ucG9ydC5hdHRhY2hlZF90cmFuc2NvZGVyID0g
bWVpX2dldF90Y190eXBlKGRhdGEtPnRjKTsKIAogCWJ5dGUgPSBtZWlfY2xkZXZfc2VuZChjbGRl
diwgKHU4ICopJmdldF9za2V5X2luLCBzaXplb2YoZ2V0X3NrZXlfaW4pKTsKIAlpZiAoYnl0ZSA8
IDApIHsKQEAgLTUwMCw2ICs1MjMsNyBAQCBtZWlfaGRjcF9yZXBlYXRlcl9jaGVja19mbG93X3By
ZXBhcmVfYWNrKHN0cnVjdCBkZXZpY2UgKmRldiwKIAogCXZlcmlmeV9yZXBlYXRlcl9pbi5wb3J0
LmludGVncmF0ZWRfcG9ydF90eXBlID0gZGF0YS0+cG9ydF90eXBlOwogCXZlcmlmeV9yZXBlYXRl
cl9pbi5wb3J0LnBoeXNpY2FsX3BvcnQgPSBtZWlfZ2V0X2RkaV9pbmRleChkYXRhLT5wb3J0KTsK
Kwl2ZXJpZnlfcmVwZWF0ZXJfaW4ucG9ydC5hdHRhY2hlZF90cmFuc2NvZGVyID0gbWVpX2dldF90
Y190eXBlKGRhdGEtPnRjKTsKIAogCW1lbWNweSh2ZXJpZnlfcmVwZWF0ZXJfaW4ucnhfaW5mbywg
cmVwX3RvcG9sb2d5LT5yeF9pbmZvLAogCSAgICAgICBIRENQXzJfMl9SWElORk9fTEVOKTsKQEAg
LTU3MCw2ICs1OTQsNyBAQCBzdGF0aWMgaW50IG1laV9oZGNwX3ZlcmlmeV9tcHJpbWUoc3RydWN0
IGRldmljZSAqZGV2LAogCiAJdmVyaWZ5X21wcmltZV9pbi5wb3J0LmludGVncmF0ZWRfcG9ydF90
eXBlID0gZGF0YS0+cG9ydF90eXBlOwogCXZlcmlmeV9tcHJpbWVfaW4ucG9ydC5waHlzaWNhbF9w
b3J0ID0gbWVpX2dldF9kZGlfaW5kZXgoZGF0YS0+cG9ydCk7CisJdmVyaWZ5X21wcmltZV9pbi5w
b3J0LmF0dGFjaGVkX3RyYW5zY29kZXIgPSBtZWlfZ2V0X3RjX3R5cGUoZGF0YS0+dGMpOwogCiAJ
bWVtY3B5KHZlcmlmeV9tcHJpbWVfaW4ubV9wcmltZSwgc3RyZWFtX3JlYWR5LT5tX3ByaW1lLAog
CSAgICAgICBIRENQXzJfMl9NUFJJTUVfTEVOKTsKQEAgLTYzMSw2ICs2NTYsNyBAQCBzdGF0aWMg
aW50IG1laV9oZGNwX2VuYWJsZV9hdXRoZW50aWNhdGlvbihzdHJ1Y3QgZGV2aWNlICpkZXYsCiAK
IAllbmFibGVfYXV0aF9pbi5wb3J0LmludGVncmF0ZWRfcG9ydF90eXBlID0gZGF0YS0+cG9ydF90
eXBlOwogCWVuYWJsZV9hdXRoX2luLnBvcnQucGh5c2ljYWxfcG9ydCA9IG1laV9nZXRfZGRpX2lu
ZGV4KGRhdGEtPnBvcnQpOworCWVuYWJsZV9hdXRoX2luLnBvcnQuYXR0YWNoZWRfdHJhbnNjb2Rl
ciA9IG1laV9nZXRfdGNfdHlwZShkYXRhLT50Yyk7CiAJZW5hYmxlX2F1dGhfaW4uc3RyZWFtX3R5
cGUgPSBkYXRhLT5zdHJlYW1zWzBdLnN0cmVhbV90eXBlOwogCiAJYnl0ZSA9IG1laV9jbGRldl9z
ZW5kKGNsZGV2LCAodTggKikmZW5hYmxlX2F1dGhfaW4sCkBAIC02ODUsNiArNzExLDcgQEAgbWVp
X2hkY3BfY2xvc2Vfc2Vzc2lvbihzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBoZGNwX3BvcnRf
ZGF0YSAqZGF0YSkKIAogCXNlc3Npb25fY2xvc2VfaW4ucG9ydC5pbnRlZ3JhdGVkX3BvcnRfdHlw
ZSA9IGRhdGEtPnBvcnRfdHlwZTsKIAlzZXNzaW9uX2Nsb3NlX2luLnBvcnQucGh5c2ljYWxfcG9y
dCA9IG1laV9nZXRfZGRpX2luZGV4KGRhdGEtPnBvcnQpOworCXNlc3Npb25fY2xvc2VfaW4ucG9y
dC5hdHRhY2hlZF90cmFuc2NvZGVyID0gbWVpX2dldF90Y190eXBlKGRhdGEtPnRjKTsKIAogCWJ5
dGUgPSBtZWlfY2xkZXZfc2VuZChjbGRldiwgKHU4ICopJnNlc3Npb25fY2xvc2VfaW4sCiAJCQkg
ICAgICBzaXplb2Yoc2Vzc2lvbl9jbG9zZV9pbikpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9taXNj
L21laS9oZGNwL21laV9oZGNwLmggYi9kcml2ZXJzL21pc2MvbWVpL2hkY3AvbWVpX2hkY3AuaApp
bmRleCBlNGIxY2Q1NGM4NTMuLjg5ZTJmOTlmZjYwYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9taXNj
L21laS9oZGNwL21laV9oZGNwLmgKKysrIGIvZHJpdmVycy9taXNjL21laS9oZGNwL21laV9oZGNw
LmgKQEAgLTE4NCw4ICsxODQsMTAgQEAgc3RydWN0IGhkY3BfY21kX25vX2RhdGEgewogLyogVW5p
cXVlbHkgaWRlbnRpZmllcyB0aGUgaGRjcCBwb3J0IGJlaW5nIGFkZHJlc3NlZCBmb3IgYSBnaXZl
biBjb21tYW5kLiAqLwogc3RydWN0IGhkY3BfcG9ydF9pZCB7CiAJdTgJaW50ZWdyYXRlZF9wb3J0
X3R5cGU7CisJLyogVXNlZCB1bnRpbCBHZW4xMS41LiBNdXN0IGJlIHplcm8gZm9yIEdlbjExLjUr
ICovCiAJdTgJcGh5c2ljYWxfcG9ydDsKLQl1MTYJcmVzZXJ2ZWQ7CisJdTgJYXR0YWNoZWRfdHJh
bnNjb2RlcjsKKwl1OAlyZXNlcnZlZDsKIH0gX19wYWNrZWQ7CiAKIC8qCkBAIC0zNzQsNCArMzc2
LDE1IEBAIGVudW0gbWVpX2Z3X2RkaSB7CiAJTUVJX0RESV9BID0gNywKIAlNRUlfRERJX1JBTkdF
X0VORCA9IE1FSV9ERElfQSwKIH07CisKK2VudW0gbWVpX2Z3X3RjIHsKKwlNRUlfSU5WQUxJRF9U
UkFOU0NPREVSID0gMHgwMCwJLy8gSW52YWxpZCB0cmFuc2NvZGVyIHR5cGUKKwlUQ19FRFAsCQkJ
CS8vIFRyYW5zY29kZXIgZm9yIGVEUAorCVRDX0RTSTAsCQkJLy8gVHJhbnNjb2RlciBmb3IgRFNJ
MAorCVRDX0RTSTEsCQkJLy8gVHJhbnNjb2RlciBmb3IgRFNJMQorCVRDX0EgPSAweDEwLAkJCS8v
IFRyYW5zY29kZXIgVENBCisJVENfQiwJCQkJLy8gVHJhbnNjb2RlciBUQ0IKKwlUQ19DLAkJCQkv
LyBUcmFuc2NvZGVyIFRDQworCVRDX0QJCQkJLy8gVHJhbnNjb2RlciBUQ0QKK307CiAjZW5kaWYg
LyogX19NRUlfSERDUF9IX18gKi8KZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVfbWVpX2hk
Y3BfaW50ZXJmYWNlLmggYi9pbmNsdWRlL2RybS9pOTE1X21laV9oZGNwX2ludGVyZmFjZS5oCmlu
ZGV4IDhjMzQ0MjU1MTQ2YS4uZGMwZGU2M2NlMGNiIDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9p
OTE1X21laV9oZGNwX2ludGVyZmFjZS5oCisrKyBiL2luY2x1ZGUvZHJtL2k5MTVfbWVpX2hkY3Bf
aW50ZXJmYWNlLmgKQEAgLTQ1LDYgKzQ1LDcgQEAgZW51bSBoZGNwX3dpcmVkX3Byb3RvY29sIHsK
IC8qKgogICogc3RydWN0IGhkY3BfcG9ydF9kYXRhIC0gaW50ZWwgc3BlY2lmaWMgSERDUCBwb3J0
IGRhdGEKICAqIEBwb3J0OiBwb3J0IGluZGV4IGFzIHBlciBJOTE1CisgKiBAdGM6IHRyYW5zY29k
ZXIgaW5kZXggYXMgcGVyIEk5MTUKICAqIEBwb3J0X3R5cGU6IEhEQ1AgcG9ydCB0eXBlIGFzIHBl
ciBNRSBGVyBjbGFzc2lmaWNhdGlvbgogICogQHByb3RvY29sOiBIRENQIGFkYXB0YXRpb24gYXMg
cGVyIE1FIEZXCiAgKiBAazogTm8gb2Ygc3RyZWFtcyB0cmFuc21pdHRlZCBvbiBhIHBvcnQuIE9u
bHkgb24gRFAgTVNUIHRoaXMgaXMgIT0gMQpAQCAtNTcsNiArNTgsNyBAQCBlbnVtIGhkY3Bfd2ly
ZWRfcHJvdG9jb2wgewogICovCiBzdHJ1Y3QgaGRjcF9wb3J0X2RhdGEgewogCWVudW0gcG9ydCBw
b3J0OworCWVudW0gdHJhbnNjb2RlciB0YzsKIAl1OCBwb3J0X3R5cGU7CiAJdTggcHJvdG9jb2w7
CiAJdTE2IGs7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
