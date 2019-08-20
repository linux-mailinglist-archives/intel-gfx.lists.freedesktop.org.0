Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 370069604D
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 15:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAC346E5D2;
	Tue, 20 Aug 2019 13:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B25C6E5D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 13:40:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 06:40:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="195772690"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2019 06:40:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Aug 2019 16:40:17 +0300
Message-Id: <20190820134019.13229-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190820134019.13229-1-jani.nikula@intel.com>
References: <20190820134019.13229-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/dp: make hdcp2_dp_msg_data const
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

SXQncyBzdGF0aWMgY29uc3QgZGF0YSwgbWFrZSBpdCBzby4KCkNjOiBSYW1hbGluZ2FtIEMgPHJh
bWFsaW5nYW0uY0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jIHwgMTAgKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXgg
MGQ4YThjNDcyOTZiLi45MjFhZDBhMmY3YmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMKQEAgLTU4MjAsNyArNTgyMCw3IEBAIHN0cnVjdCBoZGNwMl9kcF9tc2dfZGF0
YSB7CiAJdTMyIHRpbWVvdXQyOyAvKiBBZGRlZCBmb3Igbm9uX3BhaXJlZCBzaXR1YXRpb24gKi8K
IH07CiAKLXN0YXRpYyBzdHJ1Y3QgaGRjcDJfZHBfbXNnX2RhdGEgaGRjcDJfZHBfbXNnX2RhdGFb
XSA9IHsKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaGRjcDJfZHBfbXNnX2RhdGEgaGRjcDJfZHBfbXNn
X2RhdGFbXSA9IHsKIAl7IEhEQ1BfMl8yX0FLRV9JTklULCBEUF9IRENQXzJfMl9BS0VfSU5JVF9P
RkZTRVQsIGZhbHNlLCAwLCAwIH0sCiAJeyBIRENQXzJfMl9BS0VfU0VORF9DRVJULCBEUF9IRENQ
XzJfMl9BS0VfU0VORF9DRVJUX09GRlNFVCwKIAkgIGZhbHNlLCBIRENQXzJfMl9DRVJUX1RJTUVP
VVRfTVMsIDAgfSwKQEAgLTU5MDgsNyArNTkwOCw3IEBAIGludCBoZGNwMl9kZXRlY3RfbXNnX2F2
YWlsYWJpbGl0eShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCwKIAog
c3RhdGljIHNzaXplX3QKIGludGVsX2RwX2hkY3AyX3dhaXRfZm9yX21zZyhzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCwKLQkJCSAgICBzdHJ1Y3QgaGRjcDJfZHBfbXNn
X2RhdGEgKmhkY3AyX21zZ19kYXRhKQorCQkJICAgIGNvbnN0IHN0cnVjdCBoZGNwMl9kcF9tc2df
ZGF0YSAqaGRjcDJfbXNnX2RhdGEpCiB7CiAJc3RydWN0IGludGVsX2RwICpkcCA9ICZpbnRlbF9k
aWdfcG9ydC0+ZHA7CiAJc3RydWN0IGludGVsX2hkY3AgKmhkY3AgPSAmZHAtPmF0dGFjaGVkX2Nv
bm5lY3Rvci0+aGRjcDsKQEAgLTU5NDcsNyArNTk0Nyw3IEBAIGludGVsX2RwX2hkY3AyX3dhaXRf
Zm9yX21zZyhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCwKIAlyZXR1
cm4gcmV0OwogfQogCi1zdGF0aWMgc3RydWN0IGhkY3AyX2RwX21zZ19kYXRhICpnZXRfaGRjcDJf
ZHBfbXNnX2RhdGEodTggbXNnX2lkKQorc3RhdGljIGNvbnN0IHN0cnVjdCBoZGNwMl9kcF9tc2df
ZGF0YSAqZ2V0X2hkY3AyX2RwX21zZ19kYXRhKHU4IG1zZ19pZCkKIHsKIAlpbnQgaTsKIApAQCAt
NTk2Nyw3ICs1OTY3LDcgQEAgaW50IGludGVsX2RwX2hkY3AyX3dyaXRlX21zZyhzdHJ1Y3QgaW50
ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCwKIAl1bnNpZ25lZCBpbnQgb2Zmc2V0Owog
CXU4ICpieXRlID0gYnVmOwogCXNzaXplX3QgcmV0LCBieXRlc190b193cml0ZSwgbGVuOwotCXN0
cnVjdCBoZGNwMl9kcF9tc2dfZGF0YSAqaGRjcDJfbXNnX2RhdGE7CisJY29uc3Qgc3RydWN0IGhk
Y3AyX2RwX21zZ19kYXRhICpoZGNwMl9tc2dfZGF0YTsKIAogCWhkY3AyX21zZ19kYXRhID0gZ2V0
X2hkY3AyX2RwX21zZ19kYXRhKCpieXRlKTsKIAlpZiAoIWhkY3AyX21zZ19kYXRhKQpAQCAtNjAz
MSw3ICs2MDMxLDcgQEAgaW50IGludGVsX2RwX2hkY3AyX3JlYWRfbXNnKHN0cnVjdCBpbnRlbF9k
aWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LAogCXVuc2lnbmVkIGludCBvZmZzZXQ7CiAJdTgg
KmJ5dGUgPSBidWY7CiAJc3NpemVfdCByZXQsIGJ5dGVzX3RvX3JlY3YsIGxlbjsKLQlzdHJ1Y3Qg
aGRjcDJfZHBfbXNnX2RhdGEgKmhkY3AyX21zZ19kYXRhOworCWNvbnN0IHN0cnVjdCBoZGNwMl9k
cF9tc2dfZGF0YSAqaGRjcDJfbXNnX2RhdGE7CiAKIAloZGNwMl9tc2dfZGF0YSA9IGdldF9oZGNw
Ml9kcF9tc2dfZGF0YShtc2dfaWQpOwogCWlmICghaGRjcDJfbXNnX2RhdGEpCi0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
