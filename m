Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 597DF30FAD5
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 19:11:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97E276EE19;
	Thu,  4 Feb 2021 18:11:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D02F6EE15
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 18:11:08 +0000 (UTC)
IronPort-SDR: 7Ll+OUfAJWhSB5KVWRACzeEx1mWqeXBaJjLqUsLPlZIz+DPVZtrjqrhVWcMbnfvlihABCLCg57
 NEZ3m51eVDcw==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="200292709"
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="200292709"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 10:11:07 -0800
IronPort-SDR: 9AhWheJHfoyY3Kai/lAY/88BZmyJc7zKowfnXtMWN5Ae8wrMew+5ORJY5VqFFUvjNzGJT1ON6F
 iKPB3AbymneQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="393303857"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 04 Feb 2021 10:11:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Feb 2021 20:11:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Feb 2021 20:10:39 +0200
Message-Id: <20210204181048.24202-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210204181048.24202-1-ville.syrjala@linux.intel.com>
References: <20210204181048.24202-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 05/14] drm/i915: Convert DG1 over to .{enable,
 disable}_clock()
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
cGxhY2UgZGcxX3ttYXAsdW5tYXB9X3BsbHNfdG9fcG9ydHMoKSB3aXRoIHRoZSBhcHByb3ByaWF0
ZQplbmNvZGVyIHZmdW5jcy4gQW5kIGxldCdzIHJlbG9jYXRlIHRoZSBkaXNhYmxlIGZ1bmN0aW9u
IG5leHQgdG8KdGhlIGVuYWJsZSBmdW5jdGlvbiB3aGlsZSBhdCBpdC4KClJldmlld2VkLWJ5OiBM
dWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgNDMgKysrKysrKysrKysrLS0t
LS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggOWVhNDA4
ZmYyNTRiLi5jYmViNzVkMDAwMTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYwpAQCAtMzEyNyw4ICszMTI3LDggQEAgc3RhdGljIHUzMiBpY2xfZHBjbGthX2NmZ2Ny
MF9jbGtfb2ZmKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlyZXR1cm4gMDsK
IH0KIAotc3RhdGljIHZvaWQgZGcxX21hcF9wbGxzX3RvX3BvcnRzKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLAotCQkJCSAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpCitzdGF0aWMgdm9pZCBkZzFfZGRpX2VuYWJsZV9jbG9jayhzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKKwkJCQkgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShl
bmNvZGVyLT5iYXNlLmRldik7CiAJc3RydWN0IGludGVsX3NoYXJlZF9kcGxsICpwbGwgPSBjcnRj
X3N0YXRlLT5zaGFyZWRfZHBsbDsKQEAgLTMxNjEsNiArMzE2MSwxOSBAQCBzdGF0aWMgdm9pZCBk
ZzFfbWFwX3BsbHNfdG9fcG9ydHMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJbXV0
ZXhfdW5sb2NrKCZkZXZfcHJpdi0+ZHBsbC5sb2NrKTsKIH0KIAorc3RhdGljIHZvaWQgZGcxX2Rk
aV9kaXNhYmxlX2Nsb2NrKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQoreworCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYp
OworCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBlbmNvZGVyLT5w
b3J0KTsKKworCW11dGV4X2xvY2soJmRldl9wcml2LT5kcGxsLmxvY2spOworCisJaW50ZWxfZGVf
cm13KGRldl9wcml2LCBERzFfRFBDTEtBX0NGR0NSMChwaHkpLCAwLAorCQkgICAgIERHMV9EUENM
S0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBoeSkpOworCisJbXV0ZXhfdW5sb2NrKCZkZXZfcHJpdi0+
ZHBsbC5sb2NrKTsKK30KKwogc3RhdGljIHZvaWQgaWNsX21hcF9wbGxzX3RvX3BvcnRzKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJCSAgY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpCiB7CkBAIC0zMjEzLDE5ICszMjI2LDYgQEAgc3RhdGljIHZvaWQg
aWNsX21hcF9wbGxzX3RvX3BvcnRzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCW11
dGV4X3VubG9jaygmZGV2X3ByaXYtPmRwbGwubG9jayk7CiB9CiAKLXN0YXRpYyB2b2lkIGRnMV91
bm1hcF9wbGxzX3RvX3BvcnRzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQotewotCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5k
ZXYpOwotCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBlbmNvZGVy
LT5wb3J0KTsKLQotCW11dGV4X2xvY2soJmRldl9wcml2LT5kcGxsLmxvY2spOwotCi0JaW50ZWxf
ZGVfcm13KGRldl9wcml2LCBERzFfRFBDTEtBX0NGR0NSMChwaHkpLCAwLAotCQkgICAgIERHMV9E
UENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBoeSkpOwotCi0JbXV0ZXhfdW5sb2NrKCZkZXZfcHJp
di0+ZHBsbC5sb2NrKTsKLX0KLQogc3RhdGljIHZvaWQgaWNsX3VubWFwX3BsbHNfdG9fcG9ydHMo
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CkBAIC00MDA3LDkgKzQw
MDcsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcHJlX2VuYWJsZShzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwKIAogCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCBjcnRjX3N0
YXRlLT5oYXNfcGNoX2VuY29kZXIpOwogCi0JaWYgKElTX0RHMShkZXZfcHJpdikpCi0JCWRnMV9t
YXBfcGxsc190b19wb3J0cyhlbmNvZGVyLCBjcnRjX3N0YXRlKTsKLQllbHNlIGlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDExKQorCWlmICghSVNfREcxKGRldl9wcml2KSAmJiBJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDExKQogCQlpY2xfbWFwX3BsbHNfdG9fcG9ydHMoZW5jb2RlciwgY3J0Y19z
dGF0ZSk7CiAKIAlpbnRlbF9zZXRfY3B1X2ZpZm9fdW5kZXJydW5fcmVwb3J0aW5nKGRldl9wcml2
LCBwaXBlLCB0cnVlKTsKQEAgLTQyMTAsOSArNDIwOCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2Rk
aV9wb3N0X2Rpc2FibGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJCWludGVs
X2RkaV9wb3N0X2Rpc2FibGVfZHAoc3RhdGUsIGVuY29kZXIsIG9sZF9jcnRjX3N0YXRlLAogCQkJ
CQkgIG9sZF9jb25uX3N0YXRlKTsKIAotCWlmIChJU19ERzEoZGV2X3ByaXYpKQotCQlkZzFfdW5t
YXBfcGxsc190b19wb3J0cyhlbmNvZGVyKTsKLQllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDExKQorCWlmICghSVNfREcxKGRldl9wcml2KSAmJiBJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDExKQogCQlpY2xfdW5tYXBfcGxsc190b19wb3J0cyhlbmNvZGVyKTsKIAogCWlmIChpbnRlbF9j
cnRjX2hhc19kcF9lbmNvZGVyKG9sZF9jcnRjX3N0YXRlKSB8fCBpc190Y19wb3J0KQpAQCAtNTY1
Nyw3ICs1NjUzLDEwIEBAIHZvaWQgaW50ZWxfZGRpX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LCBlbnVtIHBvcnQgcG9ydCkKIAllbmNvZGVyLT5jbG9uZWFibGUgPSAwOwog
CWVuY29kZXItPnBpcGVfbWFzayA9IH4wOwogCi0JaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYp
KSB7CisJaWYgKElTX0RHMShkZXZfcHJpdikpIHsKKwkJZW5jb2Rlci0+ZW5hYmxlX2Nsb2NrID0g
ZGcxX2RkaV9lbmFibGVfY2xvY2s7CisJCWVuY29kZXItPmRpc2FibGVfY2xvY2sgPSBkZzFfZGRp
X2Rpc2FibGVfY2xvY2s7CisJfSBlbHNlIGlmIChJU19DQU5OT05MQUtFKGRldl9wcml2KSkgewog
CQllbmNvZGVyLT5lbmFibGVfY2xvY2sgPSBjbmxfZGRpX2VuYWJsZV9jbG9jazsKIAkJZW5jb2Rl
ci0+ZGlzYWJsZV9jbG9jayA9IGNubF9kZGlfZGlzYWJsZV9jbG9jazsKIAl9IGVsc2UgaWYgKElT
X0dFTjlfQkMoZGV2X3ByaXYpKSB7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
