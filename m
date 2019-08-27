Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C22E89F6B5
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 01:13:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26EC689BF5;
	Tue, 27 Aug 2019 23:13:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48C1689BF1
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 23:13:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 16:13:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,439,1559545200"; d="scan'208";a="185444179"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga006.jf.intel.com with ESMTP; 27 Aug 2019 16:13:41 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: 
Date: Tue, 27 Aug 2019 16:14:35 -0700
Message-Id: <20190827231435.398-3-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190827231435.398-1-stuart.summers@intel.com>
References: <20190827231435.398-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Add ring_mask module parameter
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGEgbmV3IG1vZHVsZSBwYXJhbWV0ZXIsIHJpbmdfbWFzaywgdG8gYWxsb3cgZm9yIGRpc2Fi
bGluZwplbmdpbmVzIGR1cmluZyBpOTE1IGxvYWQuIFRoaXMgbWFzayBmb2xsb3dzIHRoZSBpbnRl
bF9lbmdpbmVfaWQKZW51bSBhbmQgY2FuIGJlIHVzZWQgdG8gaGlkZSBzcGVjaWZpZWQgZW5naW5l
cyBmcm9tIGk5MTUgYW5kCmZyb20gdXNlcnNwYWNlLgoKU2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1
bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BhcmFtcy5jICAgICAgIHwgMyArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGFyYW1zLmggICAgICAgfCAzICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNl
X2luZm8uYyB8IDYgKysrKysrCiAzIGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFt
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuYwppbmRleCAyOTY0NTJmOWVm
ZTQuLjZhMTdmZTZlYTNhMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
YXJhbXMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5jCkBAIC0xNzgs
NiArMTc4LDkgQEAgaTkxNV9wYXJhbV9uYW1lZChlbmFibGVfZ3Z0LCBib29sLCAwNDAwLAogCSJF
bmFibGUgc3VwcG9ydCBmb3IgSW50ZWwgR1ZULWcgZ3JhcGhpY3MgdmlydHVhbGl6YXRpb24gaG9z
dCBzdXBwb3J0KGRlZmF1bHQ6ZmFsc2UpIik7CiAjZW5kaWYKIAoraTkxNV9wYXJhbV9uYW1lZF91
bnNhZmUocmluZ19tYXNrLCB1aW50LCAwNDAwLAorCSJNYXNrIG9mIGVuZ2luZSByaW5ncyB0byBl
bmFibGUuIChkZWZhdWx0OiBhbGwgc3VwcG9ydGVkIGVuZ2luZXMgZW5hYmxlZCkiKTsKKwogc3Rh
dGljIF9fYWx3YXlzX2lubGluZSB2b2lkIF9wcmludF9wYXJhbShzdHJ1Y3QgZHJtX3ByaW50ZXIg
KnAsCiAJCQkJCSBjb25zdCBjaGFyICpuYW1lLAogCQkJCQkgY29uc3QgY2hhciAqdHlwZSwKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCmluZGV4IGQyOWFkZTNiN2RlNi4uZDgwM2JmNWZhYWM0
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKQEAgLTc3LDcgKzc3LDggQEAgc3RydWN0
IGRybV9wcmludGVyOwogCXBhcmFtKGJvb2wsIHZlcmJvc2Vfc3RhdGVfY2hlY2tzLCB0cnVlKSBc
CiAJcGFyYW0oYm9vbCwgbnVjbGVhcl9wYWdlZmxpcCwgZmFsc2UpIFwKIAlwYXJhbShib29sLCBl
bmFibGVfZHBfbXN0LCB0cnVlKSBcCi0JcGFyYW0oYm9vbCwgZW5hYmxlX2d2dCwgZmFsc2UpCisJ
cGFyYW0oYm9vbCwgZW5hYmxlX2d2dCwgZmFsc2UpIFwKKwlwYXJhbSh1bnNpZ25lZCBpbnQsIHJp
bmdfbWFzaywgKHVuc2lnbmVkIGludCktMSkKIAogI2RlZmluZSBNRU1CRVIoVCwgbWVtYmVyLCAu
Li4pIFQgbWVtYmVyOwogc3RydWN0IGk5MTVfcGFyYW1zIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kZXZpY2VfaW5mby5jCmluZGV4IGNhZWYwMWIxZGEyMy4uZjgzMzI4MGYyZWY2IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKQEAgLTk5MywxMCArOTkzLDE2
IEBAIHZvaWQgaW50ZWxfZGV2aWNlX2luZm9faW5pdF9tbWlvKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAl1MzIgbWVkaWFfZnVzZTsKIAl1MTYgdmRib3hfbWFzazsKIAl1MTYg
dmVib3hfbWFzazsKKwl1MzIgb3JpZ19lbmdpbmVfbWFzayA9IGluZm8tPmVuZ2luZV9tYXNrOwog
CiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMSkKIAkJcmV0dXJuOwogCisJaW5mby0+ZW5n
aW5lX21hc2sgJj0gaTkxNV9tb2RwYXJhbXMucmluZ19tYXNrOworCWlmIChpbmZvLT5lbmdpbmVf
bWFzayAhPSBvcmlnX2VuZ2luZV9tYXNrKQorCQlEUk1fV0FSTigibG9hZGluZyB3aXRoIHJlZHVj
ZWQgZW5naW5lIG1hc2sgMHgleFxuIiwKKwkJCSBpbmZvLT5lbmdpbmVfbWFzayk7CisKIAltZWRp
YV9mdXNlID0gfkk5MTVfUkVBRChHRU4xMV9HVF9WRUJPWF9WREJPWF9ESVNBQkxFKTsKIAogCXZk
Ym94X21hc2sgPSBtZWRpYV9mdXNlICYgR0VOMTFfR1RfVkRCT1hfRElTQUJMRV9NQVNLOwotLSAK
Mi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
