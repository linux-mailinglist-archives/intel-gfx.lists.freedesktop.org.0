Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 149E6388370
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 02:06:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A3FE6E12C;
	Wed, 19 May 2021 00:06:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E2136E111
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 00:06:53 +0000 (UTC)
IronPort-SDR: 9X4RxZUNrFop2J2ZDwRAqtUieYM3+KUebf4VcbN6ho+fHCBfAwVmvEN5I0ZEU5ljzLoop1Di7z
 ZJeLoatIlDCw==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="264768406"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="264768406"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 17:06:51 -0700
IronPort-SDR: 7/NyrDAqr98kfoo2upYYGHgI37n8Jqx1WudgiddPVb7HUD3xpv26obN84lrGZl+kQ+avgY4xjU
 C9dP1qPqffTQ==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="473214759"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 17:06:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 May 2021 17:06:13 -0700
Message-Id: <20210519000625.3184321-6-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210519000625.3184321-1-lucas.demarchi@intel.com>
References: <20210519000625.3184321-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 05/17] drm/i915/adl_p: Implement TC sequences
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpBREwt
UCBoYXZlIGJhc2ljYWxseSB0aGUgc2FtZSBUQyBjb25uZWN0aW9uIGFuZCBkaXNjb25uZWN0aW9u
CnNlcXVlbmNlcyBhcyBJQ0wgYW5kIFRHTCwgdGhlIG1ham9yIGRpZmZlcmVuY2UgaXMgdGhlIG5l
dyByZWdpc3RlcnMuCgpTbyBoZXJlIGFkZGluZyBmdW5jdGlvbnMgd2l0aG91dCB0aGUgaWNsIHBy
ZWZpeCBpbiB0aGUgbmFtZSBhbmQKbWFraW5nIHRoZSBuZXcgZnVuY3Rpb25zIGNhbGwgdGhlIHBs
YXRmb3JtIHNwZWNpZmljIGZ1bmN0aW9uIHRvIGFjY2Vzcwp0aGUgY29ycmVjdCByZWdpc3Rlci4K
CnYyOgogLSBSZXRhaW4gRERJIFRDIFBIWSBvd25lcnNoaXAgZmxhZyBkdXJpbmcgbW9kZXNldHRp
bmcuCgpCU3BlYzogNTU0ODAKQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IENsaW50b24gVGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVsLmNv
bT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4K
UmV2aWV3ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8ICAgNiArKwogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jICB8IDEzMiArKysrKysrKysrKysrKysrKysrKyst
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICB8ICAxMCArKwogMyBm
aWxlcyBjaGFuZ2VkLCAxMzcgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggZWNjYmRkNDJkMjIzLi4zOGE0
ZjI1MWI5YzkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAt
MjUyLDEyICsyNTIsMTggQEAgc3RhdGljIHUzMiBpY2xfcGxsX3RvX2RkaV9jbGtfc2VsKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogc3RhdGljIHZvaWQgaW50ZWxfZGRpX2luaXRfZHBf
YnVmX3JlZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJCQkgICAgICBjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwogCXN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7CiAJc3RydWN0IGludGVs
X2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQgPSBlbmNfdG9fZGlnX3BvcnQoZW5jb2Rlcik7CisJZW51
bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoaTkxNSwgZW5jb2Rlci0+cG9ydCk7CiAKIAlp
bnRlbF9kcC0+RFAgPSBkaWdfcG9ydC0+c2F2ZWRfcG9ydF9iaXRzIHwKIAkJRERJX0JVRl9DVExf
RU5BQkxFIHwgRERJX0JVRl9UUkFOU19TRUxFQ1QoMCk7CiAJaW50ZWxfZHAtPkRQIHw9IERESV9Q
T1JUX1dJRFRIKGNydGNfc3RhdGUtPmxhbmVfY291bnQpOworCisJaWYgKElTX0FMREVSTEFLRV9Q
KGk5MTUpICYmCisJICAgIGludGVsX3BoeV9pc190YyhpOTE1LCBwaHkpICYmIGRpZ19wb3J0LT50
Y19tb2RlICE9IFRDX1BPUlRfVEJUX0FMVCkKKwkJaW50ZWxfZHAtPkRQIHw9IERESV9CVUZfQ1RM
X1RDX1BIWV9PV05FUlNISVA7CiB9CiAKIHN0YXRpYyBpbnQgaWNsX2NhbGNfdGJ0X3BsbF9saW5r
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdGMuYwppbmRleCBlMzI1NDYzYWNkZGQuLjVmMDMyMTVhMDNlNCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYwpAQCAtMjA1LDcgKzIwNSw3IEBAIHN0
YXRpYyB2b2lkIHRjX3BvcnRfZml4dXBfbGVnYWN5X2ZsYWcoc3RydWN0IGludGVsX2RpZ2l0YWxf
cG9ydCAqZGlnX3BvcnQsCiAJZGlnX3BvcnQtPnRjX2xlZ2FjeV9wb3J0ID0gIWRpZ19wb3J0LT50
Y19sZWdhY3lfcG9ydDsKIH0KIAotc3RhdGljIHUzMiB0Y19wb3J0X2xpdmVfc3RhdHVzX21hc2so
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpCitzdGF0aWMgdTMyIGljbF90Y19w
b3J0X2xpdmVfc3RhdHVzX21hc2soc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQp
CiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LT5i
YXNlLmJhc2UuZGV2KTsKIAlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSAmaTkxNS0+dW5j
b3JlOwpAQCAtMjM4LDYgKzIzOCw0MCBAQCBzdGF0aWMgdTMyIHRjX3BvcnRfbGl2ZV9zdGF0dXNf
bWFzayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKIAlyZXR1cm4gbWFzazsK
IH0KIAorc3RhdGljIHUzMiBhZGxfdGNfcG9ydF9saXZlX3N0YXR1c19tYXNrKHN0cnVjdCBpbnRl
bF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1ID0gdG9faTkxNShkaWdfcG9ydC0+YmFzZS5iYXNlLmRldik7CisJZW51bSB0Y19wb3J0IHRj
X3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGk5MTUsIGRpZ19wb3J0LT5iYXNlLnBvcnQpOworCXUz
MiBpc3JfYml0ID0gaTkxNS0+aG90cGx1Zy5wY2hfaHBkW2RpZ19wb3J0LT5iYXNlLmhwZF9waW5d
OworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9ICZpOTE1LT51bmNvcmU7CisJdTMyIHZh
bCwgbWFzayA9IDA7CisKKwl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIFRDU1NfRERJ
X1NUQVRVUyh0Y19wb3J0KSk7CisJaWYgKHZhbCAmIFRDU1NfRERJX1NUQVRVU19IUERfTElWRV9T
VEFUVVNfQUxUKQorCQltYXNrIHw9IEJJVChUQ19QT1JUX0RQX0FMVCk7CisJaWYgKHZhbCAmIFRD
U1NfRERJX1NUQVRVU19IUERfTElWRV9TVEFUVVNfVEJUKQorCQltYXNrIHw9IEJJVChUQ19QT1JU
X1RCVF9BTFQpOworCisJaWYgKGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgU0RFSVNSKSAmIGlz
cl9iaXQpCisJCW1hc2sgfD0gQklUKFRDX1BPUlRfTEVHQUNZKTsKKworCS8qIFRoZSBzaW5rIGNh
biBiZSBjb25uZWN0ZWQgb25seSBpbiBhIHNpbmdsZSBtb2RlLiAqLworCWlmICghZHJtX1dBUk5f
T04oJmk5MTUtPmRybSwgaHdlaWdodDMyKG1hc2spID4gMSkpCisJCXRjX3BvcnRfZml4dXBfbGVn
YWN5X2ZsYWcoZGlnX3BvcnQsIG1hc2spOworCisJcmV0dXJuIG1hc2s7Cit9CisKK3N0YXRpYyB1
MzIgdGNfcG9ydF9saXZlX3N0YXR1c19tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRp
Z19wb3J0KQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkaWdf
cG9ydC0+YmFzZS5iYXNlLmRldik7CisKKwlpZiAoSVNfQUxERVJMQUtFX1AoaTkxNSkpCisJCXJl
dHVybiBhZGxfdGNfcG9ydF9saXZlX3N0YXR1c19tYXNrKGRpZ19wb3J0KTsKKworCXJldHVybiBp
Y2xfdGNfcG9ydF9saXZlX3N0YXR1c19tYXNrKGRpZ19wb3J0KTsKK30KKwogc3RhdGljIGJvb2wg
aWNsX3RjX3BoeV9zdGF0dXNfY29tcGxldGUoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGln
X3BvcnQpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19w
b3J0LT5iYXNlLmJhc2UuZGV2KTsKQEAgLTI1Niw2ICsyOTAsMzMgQEAgc3RhdGljIGJvb2wgaWNs
X3RjX3BoeV9zdGF0dXNfY29tcGxldGUoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3Bv
cnQpCiAJcmV0dXJuIHZhbCAmIERQX1BIWV9NT0RFX1NUQVRVU19DT01QTEVURUQoZGlnX3BvcnQt
PnRjX3BoeV9maWFfaWR4KTsKIH0KIAorc3RhdGljIGJvb2wgYWRsX3RjX3BoeV9zdGF0dXNfY29t
cGxldGUoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpCit7CisJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsK
KwlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSAmaTkxNS0+dW5jb3JlOworCXUzMiB2YWw7
CisKKwl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIFRDU1NfRERJX1NUQVRVUyhkaWdf
cG9ydC0+dGNfcGh5X2ZpYV9pZHgpKTsKKwlpZiAodmFsID09IDB4ZmZmZmZmZmYpIHsKKwkJZHJt
X2RiZ19rbXMoJmk5MTUtPmRybSwKKwkJCSAgICAiUG9ydCAlczogUEhZIGluIFRDQ09MRCwgYXNz
dW1pbmcgbm90IGNvbXBsZXRlXG4iLAorCQkJICAgIGRpZ19wb3J0LT50Y19wb3J0X25hbWUpOwor
CQlyZXR1cm4gZmFsc2U7CisJfQorCisJcmV0dXJuIHZhbCAmIFRDU1NfRERJX1NUQVRVU19SRUFE
WTsKK30KKworc3RhdGljIGJvb2wgdGNfcGh5X3N0YXR1c19jb21wbGV0ZShzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOworCisJaWYgKElTX0FMREVSTEFL
RV9QKGk5MTUpKQorCQlyZXR1cm4gYWRsX3RjX3BoeV9zdGF0dXNfY29tcGxldGUoZGlnX3BvcnQp
OworCisJcmV0dXJuIGljbF90Y19waHlfc3RhdHVzX2NvbXBsZXRlKGRpZ19wb3J0KTsKK30KKwog
c3RhdGljIGJvb2wgaWNsX3RjX3BoeV90YWtlX293bmVyc2hpcChzdHJ1Y3QgaW50ZWxfZGlnaXRh
bF9wb3J0ICpkaWdfcG9ydCwKIAkJCQkgICAgICBib29sIHRha2UpCiB7CkBAIC0yODAsNyArMzQx
LDcgQEAgc3RhdGljIGJvb2wgaWNsX3RjX3BoeV90YWtlX293bmVyc2hpcChzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwKIAlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLAogCQkJ
ICAgUE9SVF9UWF9ERkxFWERQQ1NTUyhkaWdfcG9ydC0+dGNfcGh5X2ZpYSksIHZhbCk7CiAKLQlp
ZiAoIXRha2UgJiYgd2FpdF9mb3IoIWljbF90Y19waHlfc3RhdHVzX2NvbXBsZXRlKGRpZ19wb3J0
KSwgMTApKQorCWlmICghdGFrZSAmJiB3YWl0X2ZvcighdGNfcGh5X3N0YXR1c19jb21wbGV0ZShk
aWdfcG9ydCksIDEwKSkKIAkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwKIAkJCSAgICAiUG9ydCAl
czogUEhZIGNvbXBsZXRlIGNsZWFyIHRpbWVkIG91dFxuIiwKIAkJCSAgICBkaWdfcG9ydC0+dGNf
cG9ydF9uYW1lKTsKQEAgLTI4OCw2ICszNDksMzQgQEAgc3RhdGljIGJvb2wgaWNsX3RjX3BoeV90
YWtlX293bmVyc2hpcChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwKIAlyZXR1
cm4gdHJ1ZTsKIH0KIAorc3RhdGljIGJvb2wgYWRsX3RjX3BoeV90YWtlX293bmVyc2hpcChzdHJ1
Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwKKwkJCQkgICAgICBib29sIHRha2UpCit7
CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNl
LmJhc2UuZGV2KTsKKwlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSAmaTkxNS0+dW5jb3Jl
OworCWVudW0gcG9ydCBwb3J0ID0gZGlnX3BvcnQtPmJhc2UucG9ydDsKKwl1MzIgdmFsOworCisJ
dmFsID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBERElfQlVGX0NUTChwb3J0KSk7CisJaWYg
KHRha2UpCisJCXZhbCB8PSBERElfQlVGX0NUTF9UQ19QSFlfT1dORVJTSElQOworCWVsc2UKKwkJ
dmFsICY9IH5ERElfQlVGX0NUTF9UQ19QSFlfT1dORVJTSElQOworCWludGVsX3VuY29yZV93cml0
ZSh1bmNvcmUsIERESV9CVUZfQ1RMKHBvcnQpLCB2YWwpOworCisJcmV0dXJuIHRydWU7Cit9CisK
K3N0YXRpYyBib29sIHRjX3BoeV90YWtlX293bmVyc2hpcChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9w
b3J0ICpkaWdfcG9ydCwgYm9vbCB0YWtlKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1ID0gdG9faTkxNShkaWdfcG9ydC0+YmFzZS5iYXNlLmRldik7CisKKwlpZiAoSVNfQUxERVJM
QUtFX1AoaTkxNSkpCisJCXJldHVybiBhZGxfdGNfcGh5X3Rha2Vfb3duZXJzaGlwKGRpZ19wb3J0
LCB0YWtlKTsKKworCXJldHVybiBpY2xfdGNfcGh5X3Rha2Vfb3duZXJzaGlwKGRpZ19wb3J0LCB0
YWtlKTsKK30KKwogc3RhdGljIGJvb2wgaWNsX3RjX3BoeV9pc19vd25lZChzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOwpAQCAtMzA2LDYgKzM5NSwyNyBA
QCBzdGF0aWMgYm9vbCBpY2xfdGNfcGh5X2lzX293bmVkKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3Bv
cnQgKmRpZ19wb3J0KQogCXJldHVybiB2YWwgJiBEUF9QSFlfTU9ERV9TVEFUVVNfTk9UX1NBRkUo
ZGlnX3BvcnQtPnRjX3BoeV9maWFfaWR4KTsKIH0KIAorc3RhdGljIGJvb2wgYWRsX3RjX3BoeV9p
c19vd25lZChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKK3sKKwlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYp
OworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9ICZpOTE1LT51bmNvcmU7CisJZW51bSBw
b3J0IHBvcnQgPSBkaWdfcG9ydC0+YmFzZS5wb3J0OworCXUzMiB2YWw7CisKKwl2YWwgPSBpbnRl
bF91bmNvcmVfcmVhZCh1bmNvcmUsIERESV9CVUZfQ1RMKHBvcnQpKTsKKwlyZXR1cm4gdmFsICYg
RERJX0JVRl9DVExfVENfUEhZX09XTkVSU0hJUDsKK30KKworc3RhdGljIGJvb2wgdGNfcGh5X2lz
X293bmVkKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQoreworCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkaWdfcG9ydC0+YmFzZS5iYXNlLmRldik7
CisKKwlpZiAoSVNfQUxERVJMQUtFX1AoaTkxNSkpCisJCXJldHVybiBhZGxfdGNfcGh5X2lzX293
bmVkKGRpZ19wb3J0KTsKKworCXJldHVybiBpY2xfdGNfcGh5X2lzX293bmVkKGRpZ19wb3J0KTsK
K30KKwogLyoKICAqIFRoaXMgZnVuY3Rpb24gaW1wbGVtZW50cyB0aGUgZmlyc3QgcGFydCBvZiB0
aGUgQ29ubmVjdCBGbG93IGRlc2NyaWJlZCBieSBvdXIKICAqIHNwZWNpZmljYXRpb24sIEdlbjEx
IFR5cGVDIFByb2dyYW1taW5nIGNoYXB0ZXIuIFRoZSByZXN0IG9mIHRoZSBmbG93IChyZWFkaW5n
CkBAIC0zMjMsMTMgKzQzMywxMyBAQCBzdGF0aWMgdm9pZCBpY2xfdGNfcGh5X2Nvbm5lY3Qoc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsCiAJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKIAlpbnQgbWF4X2xh
bmVzOwogCi0JaWYgKCFpY2xfdGNfcGh5X3N0YXR1c19jb21wbGV0ZShkaWdfcG9ydCkpIHsKKwlp
ZiAoIXRjX3BoeV9zdGF0dXNfY29tcGxldGUoZGlnX3BvcnQpKSB7CiAJCWRybV9kYmdfa21zKCZp
OTE1LT5kcm0sICJQb3J0ICVzOiBQSFkgbm90IHJlYWR5XG4iLAogCQkJICAgIGRpZ19wb3J0LT50
Y19wb3J0X25hbWUpOwogCQlnb3RvIG91dF9zZXRfdGJ0X2FsdF9tb2RlOwogCX0KIAotCWlmICgh
aWNsX3RjX3BoeV90YWtlX293bmVyc2hpcChkaWdfcG9ydCwgdHJ1ZSkgJiYKKwlpZiAoIXRjX3Bo
eV90YWtlX293bmVyc2hpcChkaWdfcG9ydCwgdHJ1ZSkgJiYKIAkgICAgIWRybV9XQVJOX09OKCZp
OTE1LT5kcm0sIGRpZ19wb3J0LT50Y19sZWdhY3lfcG9ydCkpCiAJCWdvdG8gb3V0X3NldF90YnRf
YWx0X21vZGU7CiAKQEAgLTM2NCw3ICs0NzQsNyBAQCBzdGF0aWMgdm9pZCBpY2xfdGNfcGh5X2Nv
bm5lY3Qoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsCiAJcmV0dXJuOwogCiBv
dXRfcmVsZWFzZV9waHk6Ci0JaWNsX3RjX3BoeV90YWtlX293bmVyc2hpcChkaWdfcG9ydCwgZmFs
c2UpOworCXRjX3BoeV90YWtlX293bmVyc2hpcChkaWdfcG9ydCwgZmFsc2UpOwogb3V0X3NldF90
YnRfYWx0X21vZGU6CiAJZGlnX3BvcnQtPnRjX21vZGUgPSBUQ19QT1JUX1RCVF9BTFQ7CiB9CkBA
IC0zODAsNyArNDkwLDcgQEAgc3RhdGljIHZvaWQgaWNsX3RjX3BoeV9kaXNjb25uZWN0KHN0cnVj
dCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQogCQkvKiBOb3RoaW5nIHRvIGRvLCB3ZSBu
ZXZlciBkaXNjb25uZWN0IGZyb20gbGVnYWN5IG1vZGUgKi8KIAkJYnJlYWs7CiAJY2FzZSBUQ19Q
T1JUX0RQX0FMVDoKLQkJaWNsX3RjX3BoeV90YWtlX293bmVyc2hpcChkaWdfcG9ydCwgZmFsc2Up
OworCQl0Y19waHlfdGFrZV9vd25lcnNoaXAoZGlnX3BvcnQsIGZhbHNlKTsKIAkJZGlnX3BvcnQt
PnRjX21vZGUgPSBUQ19QT1JUX1RCVF9BTFQ7CiAJCWJyZWFrOwogCWNhc2UgVENfUE9SVF9UQlRf
QUxUOgpAQCAtMzk1LDEzICs1MDUsMTMgQEAgc3RhdGljIGJvb2wgaWNsX3RjX3BoeV9pc19jb25u
ZWN0ZWQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpCiB7CiAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsK
IAotCWlmICghaWNsX3RjX3BoeV9zdGF0dXNfY29tcGxldGUoZGlnX3BvcnQpKSB7CisJaWYgKCF0
Y19waHlfc3RhdHVzX2NvbXBsZXRlKGRpZ19wb3J0KSkgewogCQlkcm1fZGJnX2ttcygmaTkxNS0+
ZHJtLCAiUG9ydCAlczogUEhZIHN0YXR1cyBub3QgY29tcGxldGVcbiIsCiAJCQkgICAgZGlnX3Bv
cnQtPnRjX3BvcnRfbmFtZSk7CiAJCXJldHVybiBkaWdfcG9ydC0+dGNfbW9kZSA9PSBUQ19QT1JU
X1RCVF9BTFQ7CiAJfQogCi0JaWYgKCFpY2xfdGNfcGh5X2lzX293bmVkKGRpZ19wb3J0KSkgewor
CWlmICghdGNfcGh5X2lzX293bmVkKGRpZ19wb3J0KSkgewogCQlkcm1fZGJnX2ttcygmaTkxNS0+
ZHJtLCAiUG9ydCAlczogUEhZIG5vdCBvd25lZFxuIiwKIAkJCSAgICBkaWdfcG9ydC0+dGNfcG9y
dF9uYW1lKTsKIApAQCAtNDE5LDggKzUyOSw4IEBAIGludGVsX3RjX3BvcnRfZ2V0X2N1cnJlbnRf
bW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKIAl1MzIgbGl2ZV9zdGF0
dXNfbWFzayA9IHRjX3BvcnRfbGl2ZV9zdGF0dXNfbWFzayhkaWdfcG9ydCk7CiAJZW51bSB0Y19w
b3J0X21vZGUgbW9kZTsKIAotCWlmICghaWNsX3RjX3BoeV9pc19vd25lZChkaWdfcG9ydCkgfHwK
LQkgICAgZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgIWljbF90Y19waHlfc3RhdHVzX2NvbXBsZXRl
KGRpZ19wb3J0KSkpCisJaWYgKCF0Y19waHlfaXNfb3duZWQoZGlnX3BvcnQpIHx8CisJICAgIGRy
bV9XQVJOX09OKCZpOTE1LT5kcm0sICF0Y19waHlfc3RhdHVzX2NvbXBsZXRlKGRpZ19wb3J0KSkp
CiAJCXJldHVybiBUQ19QT1JUX1RCVF9BTFQ7CiAKIAltb2RlID0gZGlnX3BvcnQtPnRjX2xlZ2Fj
eV9wb3J0ID8gVENfUE9SVF9MRUdBQ1kgOiBUQ19QT1JUX0RQX0FMVDsKQEAgLTQ0Miw3ICs1NTIs
NyBAQCBpbnRlbF90Y19wb3J0X2dldF90YXJnZXRfbW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9w
b3J0ICpkaWdfcG9ydCkKIAlpZiAobGl2ZV9zdGF0dXNfbWFzaykKIAkJcmV0dXJuIGZscyhsaXZl
X3N0YXR1c19tYXNrKSAtIDE7CiAKLQlyZXR1cm4gaWNsX3RjX3BoeV9zdGF0dXNfY29tcGxldGUo
ZGlnX3BvcnQpICYmCisJcmV0dXJuIHRjX3BoeV9zdGF0dXNfY29tcGxldGUoZGlnX3BvcnQpICYm
CiAJICAgICAgIGRpZ19wb3J0LT50Y19sZWdhY3lfcG9ydCA/IFRDX1BPUlRfTEVHQUNZIDoKIAkJ
CQkJICBUQ19QT1JUX1RCVF9BTFQ7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCAyZTU4
MjY4NjBiNDAuLjhiZDZjMzY4MzdhYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC0xMDE0
OSw2ICsxMDE0OSw3IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewogI2RlZmluZSAgRERJX0JVRl9F
TVBfTUFTSwkJCSgweGYgPDwgMjQpCiAjZGVmaW5lICBERElfQlVGX1BPUlRfUkVWRVJTQUwJCQko
MSA8PCAxNikKICNkZWZpbmUgIERESV9CVUZfSVNfSURMRQkJCSgxIDw8IDcpCisjZGVmaW5lICBE
RElfQlVGX0NUTF9UQ19QSFlfT1dORVJTSElQCQlSRUdfQklUKDYpCiAjZGVmaW5lICBERElfQV80
X0xBTkVTCQkJCSgxIDw8IDQpCiAjZGVmaW5lICBERElfUE9SVF9XSURUSCh3aWR0aCkJCQkoKCh3
aWR0aCkgLSAxKSA8PCAxKQogI2RlZmluZSAgRERJX1BPUlRfV0lEVEhfTUFTSwkJCSg3IDw8IDEp
CkBAIC0xMjU4NSw2ICsxMjU4NiwxNSBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKICNkZWZpbmUg
ICBEUF9QSU5fQVNTSUdOTUVOVF9NQVNLKGlkeCkJCSgweGYgPDwgKChpZHgpICogNCkpCiAjZGVm
aW5lICAgRFBfUElOX0FTU0lHTk1FTlQoaWR4LCB4KQkJKCh4KSA8PCAoKGlkeCkgKiA0KSkKIAor
I2RlZmluZSBfVENTU19ERElfU1RBVFVTXzEJCQkweDE2MTUwMAorI2RlZmluZSBfVENTU19ERElf
U1RBVFVTXzIJCQkweDE2MTUwNAorI2RlZmluZSBUQ1NTX0RESV9TVEFUVVModGMpCQkJX01NSU8o
X1BJQ0tfRVZFTih0YywgXAorCQkJCQkJCQkgX1RDU1NfRERJX1NUQVRVU18xLCBcCisJCQkJCQkJ
CSBfVENTU19ERElfU1RBVFVTXzIpKQorI2RlZmluZSAgVENTU19ERElfU1RBVFVTX1JFQURZCQkJ
UkVHX0JJVCgyKQorI2RlZmluZSAgVENTU19ERElfU1RBVFVTX0hQRF9MSVZFX1NUQVRVU19UQlQJ
UkVHX0JJVCgxKQorI2RlZmluZSAgVENTU19ERElfU1RBVFVTX0hQRF9MSVZFX1NUQVRVU19BTFQJ
UkVHX0JJVCgwKQorCiAvKiBUaGlzIHJlZ2lzdGVyIGNvbnRyb2xzIHRoZSBEaXNwbGF5IFN0YXRl
IEJ1ZmZlciAoRFNCKSBlbmdpbmVzLiAqLwogI2RlZmluZSBfRFNCU0xfSU5TVEFOQ0VfQkFTRQkJ
MHg3MEIwMAogI2RlZmluZSBEU0JTTF9JTlNUQU5DRShwaXBlLCBpZCkJKF9EU0JTTF9JTlNUQU5D
RV9CQVNFICsgXAotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
