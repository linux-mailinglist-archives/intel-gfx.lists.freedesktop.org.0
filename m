Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7ECBE3C81
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 21:51:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18CC46E63B;
	Thu, 24 Oct 2019 19:51:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DE2F6E629
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 19:51:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 12:51:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,225,1569308400"; d="scan'208";a="349807099"
Received: from ldmartin-desk1.jf.intel.com ([10.7.200.70])
 by orsmga004.jf.intel.com with ESMTP; 24 Oct 2019 12:51:29 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 12:51:22 -0700
Message-Id: <20191024195122.22877-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191024195122.22877-1-lucas.demarchi@intel.com>
References: <20191024195122.22877-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: split gen11_irq_handler to make
 it shareable
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

U3BsaXQgZ2VuMTFfaXJxX2hhbmRsZXIoKSB0byByZWNlaXZlIGFzIHBhcmFtZXRlciB0aGUgZnVu
Y3Rpb24KcG9pbnRlcnMuIFRoaXMgYWxsb3dzIHRvIHNoYXJlIHRoZSBpbnRlcnJ1cHQgaGFuZGxl
ciBldmVuIGlmIHRoZSBlbmFibGUvZGlzYWJsZQpmdW5jdGlvbnMgYXJlIGRpZmZlcmVudC4KCk1h
a2Ugc3VyZSBpdCdzIGFsd2F5cyBpbmxpbmVkIHRvIGF2b2lkIHRoZSBleHRyYSBpbmRpcmVjdCBj
YWxsIG9uIHRoZQpob3QgcGF0aC4gQ2hlY2tpbmcgd2l0aCBnY2MgOSB0aGlzIHByb2R1Y2UgdGhl
IGV4YWN0IHNhbWUgY29kZSBhcyBvZgpub3c6CgokIHNpemUgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9pcnEqLm8KICAgdGV4dAkgICBkYXRhCSAgICBic3MJICAgIGRlYwkgICAgaGV4CWZpbGVu
YW1lCiAgNDc1MTEJICAgIDU2MAkgICAgICAwCSAgNDgwNzEJICAgYmJjNwlkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2lycS5vCiAgNDc1MTEJICAgIDU2MAkgICAgICAwCSAgNDgwNzEJICAgYmJj
Nwlkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycV9uZXcubwoKJCBnZGIgLWJhdGNoIC1leCAn
ZmlsZSBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5vJyAtZXggJ2Rpc2Fzc2VtYmxlIGdl
bjExX2lycV9oYW5kbGVyJyA+IC90bXAvb2xkLnMKJCBnZGIgLWJhdGNoIC1leCAnZmlsZSBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycV9uZXcubycgLWV4ICdkaXNhc3NlbWJsZSBnZW4xMV9p
cnFfaGFuZGxlcicgPiAvdG1wL25ldy5zCiQgZ2l0IGRpZmYgLS1uby1pbmRleCAvdG1wL3tvbGQs
bmV3fS5zCiQKClNvLCBubyBjaGFuZ2UgaW4gYmVoYXZpb3IsIGp1c3QgYSBzaW1wbGUgcmVmYWN0
b3IuCgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDE5ICsrKysr
KysrKysrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCmluZGV4IDU3MmE1YzM3Y2M2MS4uOGViN2Qw
MmI0YTU1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKQEAgLTI4NTksOSArMjg1OSwxMSBAQCBz
dGF0aWMgaW5saW5lIHZvaWQgZ2VuMTFfbWFzdGVyX2ludHJfZW5hYmxlKHZvaWQgX19pb21lbSAq
IGNvbnN0IHJlZ3MpCiAJcmF3X3JlZ193cml0ZShyZWdzLCBHRU4xMV9HRlhfTVNUUl9JUlEsIEdF
TjExX01BU1RFUl9JUlEpOwogfQogCi1zdGF0aWMgaXJxcmV0dXJuX3QgZ2VuMTFfaXJxX2hhbmRs
ZXIoaW50IGlycSwgdm9pZCAqYXJnKQorc3RhdGljIF9fYWx3YXlzX2lubGluZSBpcnFyZXR1cm5f
dAorX19nZW4xMV9pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqIGNvbnN0IGk5
MTUsCisJCSAgICB1MzIgKCppbnRyX2Rpc2FibGUpKHZvaWQgX19pb21lbSAqIGNvbnN0IHJlZ3Mp
LAorCQkgICAgdm9pZCAoKmludHJfZW5hYmxlKSh2b2lkIF9faW9tZW0gKiBjb25zdCByZWdzKSkK
IHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqIGNvbnN0IGk5MTUgPSBhcmc7CiAJdm9pZCBf
X2lvbWVtICogY29uc3QgcmVncyA9IGk5MTUtPnVuY29yZS5yZWdzOwogCXN0cnVjdCBpbnRlbF9n
dCAqZ3QgPSAmaTkxNS0+Z3Q7CiAJdTMyIG1hc3Rlcl9jdGw7CkBAIC0yODcwLDkgKzI4NzIsOSBA
QCBzdGF0aWMgaXJxcmV0dXJuX3QgZ2VuMTFfaXJxX2hhbmRsZXIoaW50IGlycSwgdm9pZCAqYXJn
KQogCWlmICghaW50ZWxfaXJxc19lbmFibGVkKGk5MTUpKQogCQlyZXR1cm4gSVJRX05PTkU7CiAK
LQltYXN0ZXJfY3RsID0gZ2VuMTFfbWFzdGVyX2ludHJfZGlzYWJsZShyZWdzKTsKKwltYXN0ZXJf
Y3RsID0gaW50cl9kaXNhYmxlKHJlZ3MpOwogCWlmICghbWFzdGVyX2N0bCkgewotCQlnZW4xMV9t
YXN0ZXJfaW50cl9lbmFibGUocmVncyk7CisJCWludHJfZW5hYmxlKHJlZ3MpOwogCQlyZXR1cm4g
SVJRX05PTkU7CiAJfQogCkBAIC0yODk0LDEzICsyODk2LDIwIEBAIHN0YXRpYyBpcnFyZXR1cm5f
dCBnZW4xMV9pcnFfaGFuZGxlcihpbnQgaXJxLCB2b2lkICphcmcpCiAKIAlndV9taXNjX2lpciA9
IGdlbjExX2d1X21pc2NfaXJxX2FjayhndCwgbWFzdGVyX2N0bCk7CiAKLQlnZW4xMV9tYXN0ZXJf
aW50cl9lbmFibGUocmVncyk7CisJaW50cl9lbmFibGUocmVncyk7CiAKIAlnZW4xMV9ndV9taXNj
X2lycV9oYW5kbGVyKGd0LCBndV9taXNjX2lpcik7CiAKIAlyZXR1cm4gSVJRX0hBTkRMRUQ7CiB9
CiAKK3N0YXRpYyBpcnFyZXR1cm5fdCBnZW4xMV9pcnFfaGFuZGxlcihpbnQgaXJxLCB2b2lkICph
cmcpCit7CisJcmV0dXJuIF9fZ2VuMTFfaXJxX2hhbmRsZXIoYXJnLAorCQkJCSAgIGdlbjExX21h
c3Rlcl9pbnRyX2Rpc2FibGUsCisJCQkJICAgZ2VuMTFfbWFzdGVyX2ludHJfZW5hYmxlKTsKK30K
KwogLyogQ2FsbGVkIGZyb20gZHJtIGdlbmVyaWMgY29kZSwgcGFzc2VkICdjcnRjJyB3aGljaAog
ICogd2UgdXNlIGFzIGEgcGlwZSBpbmRleAogICovCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
