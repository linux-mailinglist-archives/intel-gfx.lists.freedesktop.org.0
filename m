Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5169332B948
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 17:42:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B7E689DDF;
	Wed,  3 Mar 2021 16:42:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 082C089DA8
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 16:42:11 +0000 (UTC)
IronPort-SDR: Lrlvux9EskqmBV4i/fS/uyjEM0zLynw1WJ+001PszF6JCnP+MvVaaKj6mJBUVhT79OIdovy0H4
 VhHeg6ASSBRg==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="183852000"
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="183852000"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 08:42:10 -0800
IronPort-SDR: /rDdKBWig1jAYg8BXwN2rtayw2B4194R7Lv/H3V2yA4dIvvOp7bpDBgaL+XWiNZw5+5eglvifj
 s+c0Lq0B81Sg==
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="407311491"
Received: from helsinki.fi.intel.com ([10.237.66.162])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 08:42:09 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Mar 2021 18:42:00 +0200
Message-Id: <20210303164201.31301-2-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210303164201.31301-1-gwan-gyeong.mun@intel.com>
References: <20210303164201.31301-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display: Remove a redundant
 function argument from intel_psr_enable_source()
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

SXQgcmVtb3ZlcyBpbnRlbF9jcnRjX3N0YXRlIGZyb20gZnVuY3Rpb24gYXJndW1lbnQgb2YKaW50
ZWxfcHNyX2VuYWJsZV9zb3VyY2UoKSBpbiBvcmRlciB0byB1c2UgaW50ZWxfcHNyX2VuYWJsZV9z
b3VyY2UoKQp3aXRob3V0IGludGVsX2NydGNfc3RhdGUgb24gb3RoZXIgcHNyIGludGVybmFsIGZ1
bmN0aW9ucy4KQW5kIHdlIGNhbiBnZXQgY3B1X3RyYW5jb2RlciBmcm9tIGludGVsX3BzciwgdGhl
cmVmb3JlIHdlIGRvbid0IG5lZWQgdG8KcGFzcyBpbnRlbF9jcnRjX3N0YXRlIHRvIHRoaXMgZnVu
Y3Rpb24uCgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNyArKyst
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IDk3NjgyNjY1MzE0My4u
ZWE4Zjk1OThlNmEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMK
QEAgLTg5NiwxMSArODk2LDEwIEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9hY3RpdmF0ZShzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCWludGVsX2RwLT5wc3IuYWN0aXZlID0gdHJ1ZTsKIH0K
IAotc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwKLQkJCQkgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpCitzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3NvdXJjZShzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3Rv
X2k5MTUoaW50ZWxfZHApOwotCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGNydGNf
c3RhdGUtPmNwdV90cmFuc2NvZGVyOworCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9
IGludGVsX2RwLT5wc3IudHJhbnNjb2RlcjsKIAl1MzIgbWFzazsKIAogCS8qIE9ubHkgSFNXIGFu
ZCBCRFcgaGF2ZSBQU1IgQVVYIHJlZ2lzdGVycyB0aGF0IG5lZWQgdG8gYmUgc2V0dXAuIFNLTCsK
QEAgLTEwMDcsNyArMTAwNiw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfbG9ja2Vk
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJCQkJICAgICAmaW50ZWxfZHAtPnBzci52c2Mp
OwogCWludGVsX3dyaXRlX2RwX3ZzY19zZHAoZW5jb2RlciwgY3J0Y19zdGF0ZSwgJmludGVsX2Rw
LT5wc3IudnNjKTsKIAlpbnRlbF9wc3JfZW5hYmxlX3NpbmsoaW50ZWxfZHApOwotCWludGVsX3Bz
cl9lbmFibGVfc291cmNlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsKKwlpbnRlbF9wc3JfZW5hYmxl
X3NvdXJjZShpbnRlbF9kcCk7CiAJaW50ZWxfZHAtPnBzci5lbmFibGVkID0gdHJ1ZTsKIAogCWlu
dGVsX3Bzcl9hY3RpdmF0ZShpbnRlbF9kcCk7Ci0tIAoyLjMwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
