Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEF42A4FE2
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 20:19:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 286D46E5BF;
	Tue,  3 Nov 2020 19:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97EFE6E5BF
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 19:18:54 +0000 (UTC)
IronPort-SDR: G9KTFIQWOQeV5+/06b1hnpSDqCqrglovPOvY29zNq1p7KxuLTPPz9dPkL0OSLxM2WI/e9lMjYT
 ZF2+NvJKJw4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="148964703"
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="148964703"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 11:18:54 -0800
IronPort-SDR: KZwLGYwNtRK8Vrg8iNre9brAz9dJt2DPy0JALpl6u3WcsUbPChZ+wyhwyWKIjj2NVSf/IeyISy
 IQdbY3VWaRfg==
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="470913901"
Received: from helsinki.fi.intel.com ([10.237.66.162])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 11:18:53 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Nov 2020 21:18:38 +0200
Message-Id: <20201103191838.192386-2-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20201103191838.192386-1-gwan-gyeong.mun@intel.com>
References: <20201103191838.192386-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/display: Support Multiple
 Transcoders' PSR status on debugfs
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

SW4gb3JkZXIgdG8gc3VwcG9ydCB0aGUgUFNSIHN0YXRlIG9mIGVhY2ggdHJhbnNjb2RlciwgaXQg
YWRkcwppOTE1X3Bzcl9zdGF0dXMgdG8gc3ViLWRpcmVjdG9yeSBvZiBlYWNoIHRyYW5zY29kZXIu
Cgp2MjogQ2hhbmdlIHVzaW5nIG9mIFN5bWJvbGljIHBlcm1pc3Npb25zICdTX0lSVUdPJyB0byB1
c2luZyBvZiBvY3RhbAogICAgcGVybWlzc2lvbnMgJzA0NDQnCgpTaWduZWQtb2ZmLWJ5OiBHd2Fu
LWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+CkNjOiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiAuLi4vZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYyAgfCAyMyArKysrKysrKysrKysrKysrKysrCiAxIGZp
bGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jCmluZGV4IDg0MDJlNmFjOWY3Ni4u
Mzc4MDU2MTVhMjIxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMKQEAgLTIwOTMsNiArMjA5MywyMyBAQCBzdGF0aWMgaW50
IGk5MTVfaGRjcF9zaW5rX2NhcGFiaWxpdHlfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQg
KmRhdGEpCiB9CiBERUZJTkVfU0hPV19BVFRSSUJVVEUoaTkxNV9oZGNwX3NpbmtfY2FwYWJpbGl0
eSk7CiAKK3N0YXRpYyBpbnQgaTkxNV9wc3Jfc3RhdHVzX3Nob3coc3RydWN0IHNlcV9maWxlICpt
LCB2b2lkICpkYXRhKQoreworCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IgPSBtLT5w
cml2YXRlOworCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPQorCQlpbnRlbF9hdHRhY2hlZF9k
cCh0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKSk7CisJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7CisKKwlpZiAoY29ubmVjdG9yLT5z
dGF0dXMgIT0gY29ubmVjdG9yX3N0YXR1c19jb25uZWN0ZWQpCisJCXJldHVybiAtRU5PREVWOwor
CisJaWYgKCFIQVNfUFNSKGRldl9wcml2KSkKKwkJcmV0dXJuIC1FTk9ERVY7CisKKwlyZXR1cm4g
aW50ZWxfcHNyX3N0YXR1cyhtLCBpbnRlbF9kcCk7Cit9CitERUZJTkVfU0hPV19BVFRSSUJVVEUo
aTkxNV9wc3Jfc3RhdHVzKTsKKwogI2RlZmluZSBMUFNQX0NBUEFCTEUoQ09ORCkgKENPTkQgPyBz
ZXFfcHV0cyhtLCAiTFBTUDogY2FwYWJsZVxuIikgOiBcCiAJCQkJc2VxX3B1dHMobSwgIkxQU1A6
IGluY2FwYWJsZVxuIikpCiAKQEAgLTIyNjgsNiArMjI4NSwxMiBAQCBpbnQgaW50ZWxfY29ubmVj
dG9yX2RlYnVnZnNfYWRkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCiAJCQkJICAg
IGNvbm5lY3RvciwgJmk5MTVfcHNyX3Npbmtfc3RhdHVzX2ZvcHMpOwogCX0KIAorCWlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDEyICYmCisJICAgIGNvbm5lY3Rvci0+Y29ubmVjdG9yX3R5cGUg
PT0gRFJNX01PREVfQ09OTkVDVE9SX2VEUCkgeworCQlkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJpOTE1
X3Bzcl9zdGF0dXMiLCAwNDQ0LCByb290LAorCQkJCSAgICBjb25uZWN0b3IsICZpOTE1X3Bzcl9z
dGF0dXNfZm9wcyk7CisJfQorCiAJaWYgKGNvbm5lY3Rvci0+Y29ubmVjdG9yX3R5cGUgPT0gRFJN
X01PREVfQ09OTkVDVE9SX0Rpc3BsYXlQb3J0IHx8CiAJICAgIGNvbm5lY3Rvci0+Y29ubmVjdG9y
X3R5cGUgPT0gRFJNX01PREVfQ09OTkVDVE9SX0hETUlBIHx8CiAJICAgIGNvbm5lY3Rvci0+Y29u
bmVjdG9yX3R5cGUgPT0gRFJNX01PREVfQ09OTkVDVE9SX0hETUlCKSB7Ci0tIAoyLjI1LjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
