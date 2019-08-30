Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E89A398D
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 16:48:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36EB16E369;
	Fri, 30 Aug 2019 14:47:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA0AA6E353
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 14:47:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 07:47:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; d="scan'208";a="188894206"
Received: from unknown (HELO delly.ger.corp.intel.com) ([10.252.38.85])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Aug 2019 07:47:36 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 17:47:19 +0300
Message-Id: <20190830144726.18291-5-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190830144726.18291-1-lionel.g.landwerlin@intel.com>
References: <20190830144726.18291-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v12 04/11] drm/i915/perf: store the associated
 engine of a stream
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

V2UnbGwgdXNlIHRoaXMgaW5mb3JtYXRpb24gbGF0ZXIgdG8gdmVyaWZ5IHRoYXQgYSBjbGllbnQg
dHJ5aW5nIHRvCnJlY29uZmlndXJlIHRoZSBzdHJlYW0gZG9lcyBzbyBvbiB0aGUgcmlnaHQgZW5n
aW5lLgoKU2lnbmVkLW9mZi1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJs
aW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggIHwgNSAr
KysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgfCA3ICsrKysrKysKIDIgZmls
ZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4
IDc1NjA3NDUwYmEwMC4uMjc0YTExOTNkNGYwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAg
LTEwODgsNiArMTA4OCwxMSBAQCBzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSB7CiAJICovCiAJaW50
ZWxfd2FrZXJlZl90IHdha2VyZWY7CiAKKwkvKioKKwkgKiBAZW5naW5lOiBFbmdpbmUgYXNzb2Np
YXRlZCB3aXRoIHRoaXMgcGVyZm9ybWFuY2Ugc3RyZWFtLgorCSAqLworCXN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZTsKKwogCS8qKgogCSAqIEBzYW1wbGVfZmxhZ3M6IEZsYWdzIHJlcHJl
c2VudGluZyB0aGUgYERSTV9JOTE1X1BFUkZfUFJPUF9TQU1QTEVfKmAKIAkgKiBwcm9wZXJ0aWVz
IGdpdmVuIHdoZW4gb3BlbmluZyBhIHN0cmVhbSwgcmVwcmVzZW50aW5nIHRoZSBjb250ZW50cwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BlcmYuYwppbmRleCA1ZmQyNzBlNzdhODguLjIyMTMwNzgyMmFiMiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKQEAgLTM2Myw2ICszNjMsOCBAQCBzdHJ1Y3QgcGVy
Zl9vcGVuX3Byb3BlcnRpZXMgewogCWludCBvYV9mb3JtYXQ7CiAJYm9vbCBvYV9wZXJpb2RpYzsK
IAlpbnQgb2FfcGVyaW9kX2V4cG9uZW50OworCisJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lOwogfTsKIAogc3RhdGljIGVudW0gaHJ0aW1lcl9yZXN0YXJ0IG9hX3BvbGxfY2hlY2tfdGlt
ZXJfY2Ioc3RydWN0IGhydGltZXIgKmhydGltZXIpOwpAQCAtMjIwMSw2ICsyMjAzLDggQEAgc3Rh
dGljIGludCBpOTE1X29hX3N0cmVhbV9pbml0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJl
YW0sCiAKIAlmb3JtYXRfc2l6ZSA9IGRldl9wcml2LT5wZXJmLm9hX2Zvcm1hdHNbcHJvcHMtPm9h
X2Zvcm1hdF0uc2l6ZTsKIAorCXN0cmVhbS0+ZW5naW5lID0gcHJvcHMtPmVuZ2luZTsKKwogCXN0
cmVhbS0+c2FtcGxlX2ZsYWdzIHw9IFNBTVBMRV9PQV9SRVBPUlQ7CiAJc3RyZWFtLT5zYW1wbGVf
c2l6ZSArPSBmb3JtYXRfc2l6ZTsKIApAQCAtMjg0MCw2ICsyODQ0LDkgQEAgc3RhdGljIGludCBy
ZWFkX3Byb3BlcnRpZXNfdW5sb2NrZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CiAKKwkvKiBBdCB0aGUgbW9tZW50IHdlIG9ubHkgc3Vw
cG9ydCB1c2luZyBpOTE1LXBlcmYgb24gdGhlIFJDUy4gKi8KKwlwcm9wcy0+ZW5naW5lID0gZGV2
X3ByaXYtPmVuZ2luZVtSQ1MwXTsKKwogCS8qIENvbnNpZGVyaW5nIHRoYXQgSUQgPSAwIGlzIHJl
c2VydmVkIGFuZCBhc3N1bWluZyB0aGF0IHdlIGRvbid0CiAJICogKGN1cnJlbnRseSkgZXhwZWN0
IGFueSBjb25maWd1cmF0aW9ucyB0byBldmVyIHNwZWNpZnkgZHVwbGljYXRlCiAJICogdmFsdWVz
IGZvciBhIHBhcnRpY3VsYXIgcHJvcGVydHkgSUQgdGhlbiB0aGUgbGFzdCBfUFJPUF9NQVggdmFs
dWUgaXMKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
