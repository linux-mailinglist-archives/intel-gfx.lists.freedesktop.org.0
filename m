Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9CA2CFD7
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 21:57:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 745596E061;
	Tue, 28 May 2019 19:57:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 253EC6E061
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 19:57:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 12:57:25 -0700
X-ExtLoop1: 1
Received: from jmliden-mobl.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.14.174])
 by fmsmga008.fm.intel.com with ESMTP; 28 May 2019 12:57:24 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 May 2019 20:57:23 +0100
Message-Id: <20190528195724.2786-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 1/2] drm/i915/gtt: grab wakeref in
 gen6_alloc_va_range
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

U29tZSBzdGVwcyBpbiBnZW42X2FsbG9jX3ZhX3JhbmdlIHJlcXVpcmUgdGhlIEhXIHRvIGJlIGF3
YWtlLCBzbyBpZGVhbGx5CndlIHNob3VsZCBiZSBncmFiYmluZyB0aGUgd2FrZXJlZiBvdXJzZWx2
ZXMgYW5kIG5vdCByZWx5aW5nIG9uIHRoZQpjYWxsZXIgYWxyZWFkeSBob2xkaW5nIGl0IGZvciB1
cy4KClN1Z2dlc3RlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
ClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KUmV2
aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgOCArKysrKysrLQogMSBmaWxlIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW1fZ3R0LmMKaW5kZXggNzQ5NmNjZTBkNzk4Li45ZjdiMTM2MjE5ZGMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC0xNzQ2LDEwICsxNzQ2LDEzIEBAIHN0YXRpYyBpbnQg
Z2VuNl9hbGxvY192YV9yYW5nZShzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIHsKIAlz
dHJ1Y3QgZ2VuNl9od19wcGd0dCAqcHBndHQgPSB0b19nZW42X3BwZ3R0KGk5MTVfdm1fdG9fcHBn
dHQodm0pKTsKIAlzdHJ1Y3QgaTkxNV9wYWdlX3RhYmxlICpwdDsKKwlpbnRlbF93YWtlcmVmX3Qg
d2FrZXJlZjsKIAl1NjQgZnJvbSA9IHN0YXJ0OwogCXVuc2lnbmVkIGludCBwZGU7CiAJYm9vbCBm
bHVzaCA9IGZhbHNlOwogCisJd2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KHZtLT5pOTE1
KTsKKwogCWdlbjZfZm9yX2VhY2hfcGRlKHB0LCAmcHBndHQtPmJhc2UucGQsIHN0YXJ0LCBsZW5n
dGgsIHBkZSkgewogCQljb25zdCB1bnNpZ25lZCBpbnQgY291bnQgPSBnZW42X3B0ZV9jb3VudChz
dGFydCwgbGVuZ3RoKTsKIApAQCAtMTc3NSwxMiArMTc3OCwxNSBAQCBzdGF0aWMgaW50IGdlbjZf
YWxsb2NfdmFfcmFuZ2Uoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCiAKIAlpZiAoZmx1
c2gpIHsKIAkJbWFya190bGJzX2RpcnR5KCZwcGd0dC0+YmFzZSk7Ci0JCWdlbjZfZ2d0dF9pbnZh
bGlkYXRlKHBwZ3R0LT5iYXNlLnZtLmk5MTUpOworCQlnZW42X2dndHRfaW52YWxpZGF0ZSh2bS0+
aTkxNSk7CiAJfQogCisJaW50ZWxfcnVudGltZV9wbV9wdXQodm0tPmk5MTUsIHdha2VyZWYpOwor
CiAJcmV0dXJuIDA7CiAKIHVud2luZF9vdXQ6CisJaW50ZWxfcnVudGltZV9wbV9wdXQodm0tPmk5
MTUsIHdha2VyZWYpOwogCWdlbjZfcHBndHRfY2xlYXJfcmFuZ2Uodm0sIGZyb20sIHN0YXJ0IC0g
ZnJvbSk7CiAJcmV0dXJuIC1FTk9NRU07CiB9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
