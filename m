Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 841BA82F68
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 12:03:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A9E16E369;
	Tue,  6 Aug 2019 10:03:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 262226E35F
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 10:03:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 03:03:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="192631861"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 06 Aug 2019 03:03:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Aug 2019 13:07:31 +0300
Message-Id: <589d5449a504ec9742dc1fa8d4871d0d6d0cddca.1565085692.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1565085691.git.jani.nikula@intel.com>
References: <cover.1565085691.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 10/10] drm/i915: move property enums to
 intel_display_types.h
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW92ZSB0aGUgcHJvcGVydHkgZW51bXMgY2xvc2VyIHRvIGhvbWUuIEFjdWFsbHkgbWFrZSB0aGUg
YnJvYWRjYXN0Cm1hY3JvcyBhbiBlbnVtIHdoaWxlIGF0IGl0LgoKU2lnbmVkLW9mZi1ieTogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8IDE0ICsrKysrKysrKysrKysrCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgICAgICB8IDEyIC0tLS0t
LS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oCmluZGV4IGQ2Zjg1MWQ1ODFhMy4uNzhkYTI2ZDZkMTlkIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtNjcsNiAr
NjcsMjAgQEAgZW51bSBpbnRlbF9vdXRwdXRfdHlwZSB7CiAJSU5URUxfT1VUUFVUX0RQX01TVCA9
IDExLAogfTsKIAorZW51bSBoZG1pX2ZvcmNlX2F1ZGlvIHsKKwlIRE1JX0FVRElPX09GRl9EVkkg
PSAtMiwJLyogbm8gYXV4IGRhdGEgZm9yIEhETUktRFZJIGNvbnZlcnRlciAqLworCUhETUlfQVVE
SU9fT0ZGLAkJCS8qIGZvcmNlIHR1cm4gb2ZmIEhETUkgYXVkaW8gKi8KKwlIRE1JX0FVRElPX0FV
VE8sCQkvKiB0cnVzdCBFRElEICovCisJSERNSV9BVURJT19PTiwJCQkvKiBmb3JjZSB0dXJuIG9u
IEhETUkgYXVkaW8gKi8KK307CisKKy8qICJCcm9hZGNhc3QgUkdCIiBwcm9wZXJ0eSAqLworZW51
bSBpbnRlbF9icm9hZGNhc3RfcmdiIHsKKwlJTlRFTF9CUk9BRENBU1RfUkdCX0FVVE8sCisJSU5U
RUxfQlJPQURDQVNUX1JHQl9GVUxMLAorCUlOVEVMX0JST0FEQ0FTVF9SR0JfTElNSVRFRCwKK307
CisKIHN0cnVjdCBpbnRlbF9mcmFtZWJ1ZmZlciB7CiAJc3RydWN0IGRybV9mcmFtZWJ1ZmZlciBi
YXNlOwogCXN0cnVjdCBpbnRlbF9yb3RhdGlvbl9pbmZvIHJvdF9pbmZvOwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmgKaW5kZXggOWIzMjg2NWEwNzJhLi42ZDYyYmI3NDM5NDggMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaApAQCAtMTkyMCwxMyArMTkyMCw2IEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKndvcGNtX3RvX2k5MTUoc3RydWN0IGludGVsX3dvcGNtICp3b3BjbSkK
IAkgICAgICgoZW5naW5lX18pID0gKGRldl9wcml2X18pLT5lbmdpbmVbX19tYXNrX25leHRfYml0
KHRtcF9fKV0pLCAxIDogXAogCSAgICAgMDspCiAKLWVudW0gaGRtaV9mb3JjZV9hdWRpbyB7Ci0J
SERNSV9BVURJT19PRkZfRFZJID0gLTIsCS8qIG5vIGF1eCBkYXRhIGZvciBIRE1JLURWSSBjb252
ZXJ0ZXIgKi8KLQlIRE1JX0FVRElPX09GRiwJCQkvKiBmb3JjZSB0dXJuIG9mZiBIRE1JIGF1ZGlv
ICovCi0JSERNSV9BVURJT19BVVRPLAkJLyogdHJ1c3QgRURJRCAqLwotCUhETUlfQVVESU9fT04s
CQkJLyogZm9yY2UgdHVybiBvbiBIRE1JIGF1ZGlvICovCi19OwotCiAjZGVmaW5lIEk5MTVfR1RU
X09GRlNFVF9OT05FICgodTMyKS0xKQogCiAvKgpAQCAtMjY3NCwxMSArMjY2Nyw2IEBAIGludCBp
OTE1X3JlZ19yZWFkX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAj
ZGVmaW5lIEk5MTVfUkVBRF9GVyhyZWdfXykgX19JOTE1X1JFR19PUChyZWFkX2Z3LCBkZXZfcHJp
diwgKHJlZ19fKSkKICNkZWZpbmUgSTkxNV9XUklURV9GVyhyZWdfXywgdmFsX18pIF9fSTkxNV9S
RUdfT1Aod3JpdGVfZncsIGRldl9wcml2LCAocmVnX18pLCAodmFsX18pKQogCi0vKiAiQnJvYWRj
YXN0IFJHQiIgcHJvcGVydHkgKi8KLSNkZWZpbmUgSU5URUxfQlJPQURDQVNUX1JHQl9BVVRPIDAK
LSNkZWZpbmUgSU5URUxfQlJPQURDQVNUX1JHQl9GVUxMIDEKLSNkZWZpbmUgSU5URUxfQlJPQURD
QVNUX1JHQl9MSU1JVEVEIDIKLQogdm9pZCBpOTE1X21lbWNweV9pbml0X2Vhcmx5KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CiBib29sIGk5MTVfbWVtY3B5X2Zyb21fd2Modm9p
ZCAqZHN0LCBjb25zdCB2b2lkICpzcmMsIHVuc2lnbmVkIGxvbmcgbGVuKTsKIAotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
