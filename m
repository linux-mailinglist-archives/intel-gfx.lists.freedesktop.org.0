Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E97B1079D2
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 22:09:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 113BC6F585;
	Fri, 22 Nov 2019 21:09:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 023336F574;
 Fri, 22 Nov 2019 21:09:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 13:09:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,231,1571727600"; d="scan'208";a="205575862"
Received: from nvishwa1-desk.sc.intel.com ([10.3.160.185])
 by fmsmga007.fm.intel.com with ESMTP; 22 Nov 2019 13:09:00 -0800
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Nov 2019 12:57:29 -0800
Message-Id: <20191122205734.15925-9-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20191122205734.15925-1-niranjana.vishwanathapura@intel.com>
References: <20191122205734.15925-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 08/13] drm/i915/svm: Implicitly migrate pages upon
 CPU fault
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
Cc: sanjay.k.kumar@intel.com, dri-devel@lists.freedesktop.org,
 dave.hansen@intel.com, jglisse@redhat.com, daniel.vetter@intel.com,
 dan.j.williams@intel.com, ira.weiny@intel.com, jgg@mellanox.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgUENJZSBpcyBub24tY29oZXJlbnQgbGluaywgZG8gbm90IGFsbG93IGRpcmVjdCBtZW1vcnkg
YWNjZXNzIGFjcm9zcwpQQ0llIGxpbmsuIEhhbmRsZSBDUFUgZmF1bHQgYnkgbWlncmF0aW5nIHBh
Z2VzIGJhY2sgdG8gaG9zdCBtZW1vcnkuCgpDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFo
dGluZW5AbGludXguaW50ZWwuY29tPgpDYzogSm9uIEJsb29tZmllbGQgPGpvbi5ibG9vbWZpZWxk
QGludGVsLmNvbT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpD
YzogU3VkZWVwIER1dHQgPHN1ZGVlcC5kdXR0QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTmly
YW5qYW5hIFZpc2h3YW5hdGhhcHVyYSA8bmlyYW5qYW5hLnZpc2h3YW5hdGhhcHVyYUBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zdm1fZGV2bWVtLmMgfCA3MCArKysr
KysrKysrKysrKysrKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDY5IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N2
bV9kZXZtZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3ZtX2Rldm1lbS5jCmluZGV4
IDQwYzJmNzlmZjYxNC4uMzdhMjA1ZDNhODJmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3N2bV9kZXZtZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N2
bV9kZXZtZW0uYwpAQCAtMjgwLDkgKzI4MCw3NyBAQCBpbnQgaTkxNV9kZXZtZW1fbWlncmF0ZV92
bWEoc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSwKIAlyZXR1cm4gcmV0OwogfQogCitz
dGF0aWMgdm1fZmF1bHRfdAoraTkxNV9kZXZtZW1fZmF1bHRfYWxsb2NfYW5kX2NvcHkoc3RydWN0
IGk5MTVfZGV2bWVtX21pZ3JhdGUgKm1pZ3JhdGUpCit7CisJc3RydWN0IGRldmljZSAqZGV2ID0g
bWlncmF0ZS0+aTkxNS0+ZHJtLmRldjsKKwlzdHJ1Y3QgbWlncmF0ZV92bWEgKmFyZ3MgPSBtaWdy
YXRlLT5hcmdzOworCXN0cnVjdCBwYWdlICpkcGFnZSwgKnNwYWdlOworCisJRFJNX0RFQlVHX0RS
SVZFUigic3RhcnQgMHglbHhcbiIsIGFyZ3MtPnN0YXJ0KTsKKwkvKiBBbGxvY2F0ZSBob3N0IHBh
Z2UgKi8KKwlzcGFnZSA9IG1pZ3JhdGVfcGZuX3RvX3BhZ2UoYXJncy0+c3JjWzBdKTsKKwlpZiAo
dW5saWtlbHkoIXNwYWdlIHx8ICEoYXJncy0+c3JjWzBdICYgTUlHUkFURV9QRk5fTUlHUkFURSkp
KQorCQlyZXR1cm4gMDsKKworCWRwYWdlID0gYWxsb2NfcGFnZV92bWEoR0ZQX0hJR0hVU0VSLCBh
cmdzLT52bWEsIGFyZ3MtPnN0YXJ0KTsKKwlpZiAodW5saWtlbHkoIWRwYWdlKSkKKwkJcmV0dXJu
IFZNX0ZBVUxUX1NJR0JVUzsKKwlsb2NrX3BhZ2UoZHBhZ2UpOworCisJYXJncy0+ZHN0WzBdID0g
bWlncmF0ZV9wZm4ocGFnZV90b19wZm4oZHBhZ2UpKSB8IE1JR1JBVEVfUEZOX0xPQ0tFRDsKKwor
CS8qIENvcHkgdGhlIHBhZ2VzICovCisJbWlncmF0ZS0+bnBhZ2VzID0gMTsKKworCXJldHVybiAw
OworfQorCit2b2lkIGk5MTVfZGV2bWVtX2ZhdWx0X2ZpbmFsaXplX2FuZF9tYXAoc3RydWN0IGk5
MTVfZGV2bWVtX21pZ3JhdGUgKm1pZ3JhdGUpCit7CisJRFJNX0RFQlVHX0RSSVZFUigiXG4iKTsK
K30KKworc3RhdGljIGlubGluZSBzdHJ1Y3QgaTkxNV9kZXZtZW0gKnBhZ2VfdG9fZGV2bWVtKHN0
cnVjdCBwYWdlICpwYWdlKQoreworCXJldHVybiBjb250YWluZXJfb2YocGFnZS0+cGdtYXAsIHN0
cnVjdCBpOTE1X2Rldm1lbSwgcGFnZW1hcCk7Cit9CisKIHN0YXRpYyB2bV9mYXVsdF90IGk5MTVf
ZGV2bWVtX21pZ3JhdGVfdG9fcmFtKHN0cnVjdCB2bV9mYXVsdCAqdm1mKQogewotCXJldHVybiBW
TV9GQVVMVF9TSUdCVVM7CisJc3RydWN0IGk5MTVfZGV2bWVtICpkZXZtZW0gPSBwYWdlX3RvX2Rl
dm1lbSh2bWYtPnBhZ2UpOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZGV2bWVt
LT5pOTE1OworCXN0cnVjdCBpOTE1X2Rldm1lbV9taWdyYXRlIG1pZ3JhdGUgPSB7MH07CisJdW5z
aWduZWQgbG9uZyBzcmMgPSAwLCBkc3QgPSAwOworCXZtX2ZhdWx0X3QgcmV0OworCXN0cnVjdCBt
aWdyYXRlX3ZtYSBhcmdzID0geworCQkudm1hCQk9IHZtZi0+dm1hLAorCQkuc3RhcnQJCT0gdm1m
LT5hZGRyZXNzLAorCQkuZW5kCQk9IHZtZi0+YWRkcmVzcyArIFBBR0VfU0laRSwKKwkJLnNyYwkJ
PSAmc3JjLAorCQkuZHN0CQk9ICZkc3QsCisJfTsKKworCS8qIFhYWDogT3Bwb3J0dW5pc3RpY2Fs
bHkgbWlncmF0ZSBtb3JlIHBhZ2VzPyAqLworCURSTV9ERUJVR19EUklWRVIoImFkZHIgMHglbHhc
biIsIGFyZ3Muc3RhcnQpOworCW1pZ3JhdGUuaTkxNSA9IGk5MTU7CisJbWlncmF0ZS5hcmdzID0g
JmFyZ3M7CisJbWlncmF0ZS5zcmNfaWQgPSBJTlRFTF9SRUdJT05fTE1FTTsKKwltaWdyYXRlLmRz
dF9pZCA9IElOVEVMX1JFR0lPTl9TTUVNOworCWlmIChtaWdyYXRlX3ZtYV9zZXR1cCgmYXJncykg
PCAwKQorCQlyZXR1cm4gVk1fRkFVTFRfU0lHQlVTOworCWlmICghYXJncy5jcGFnZXMpCisJCXJl
dHVybiAwOworCisJcmV0ID0gaTkxNV9kZXZtZW1fZmF1bHRfYWxsb2NfYW5kX2NvcHkoJm1pZ3Jh
dGUpOworCWlmIChyZXQgfHwgZHN0ID09IDApCisJCWdvdG8gZG9uZTsKKworCW1pZ3JhdGVfdm1h
X3BhZ2VzKCZhcmdzKTsKKwlpOTE1X2Rldm1lbV9mYXVsdF9maW5hbGl6ZV9hbmRfbWFwKCZtaWdy
YXRlKTsKK2RvbmU6CisJbWlncmF0ZV92bWFfZmluYWxpemUoJmFyZ3MpOworCXJldHVybiByZXQ7
CiB9CiAKIHN0YXRpYyB2b2lkIGk5MTVfZGV2bWVtX3BhZ2VfZnJlZShzdHJ1Y3QgcGFnZSAqcGFn
ZSkKLS0gCjIuMjEuMC5yYzAuMzIuZzI0M2E0YzdlMjcKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
