Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 565D13B455
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 14:06:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9158389130;
	Mon, 10 Jun 2019 12:06:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDC2D89137
 for <Intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 12:06:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 05:06:13 -0700
X-ExtLoop1: 1
Received: from jwwillia-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.8.43])
 by fmsmga001.fm.intel.com with ESMTP; 10 Jun 2019 05:06:13 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 13:06:08 +0100
Message-Id: <20190610120608.15477-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610120608.15477-1-tvrtko.ursulin@linux.intel.com>
References: <20190610120608.15477-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 6/6] drm/i915: Remove I915_READ64 and
 I915_READ64_32x2
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk5vdyB0aGF0
IGFsbCB0aGVpciB1c2VycyBhcmUgZ29uZSB3ZSBjYW4gcmVtb3ZlIHRoZSBtYWNyb3MgYW5kCmFj
Y29tcGFueWluZyBkdXBsaWNhdGVkIGNvbW1lbnQuCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpTdWdnZXN0ZWQtYnk6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggfCAx
OCAtLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxOCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCAyMGViMzdiNzYwYzQuLmQzYzAyZTAwOWE5OCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0yODUxLDI0ICsyODUxLDYgQEAgZXh0ZXJuIHZvaWQg
aW50ZWxfZGlzcGxheV9wcmludF9lcnJvcl9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfZXJyb3Jfc3Rh
dGVfYnVmICplLAogI2RlZmluZSBJOTE1X1JFQURfTk9UUkFDRShyZWdfXykJIF9fSTkxNV9SRUdf
T1AocmVhZF9ub3RyYWNlLCBkZXZfcHJpdiwgKHJlZ19fKSkKICNkZWZpbmUgSTkxNV9XUklURV9O
T1RSQUNFKHJlZ19fLCB2YWxfXykgX19JOTE1X1JFR19PUCh3cml0ZV9ub3RyYWNlLCBkZXZfcHJp
diwgKHJlZ19fKSwgKHZhbF9fKSkKIAotLyogQmUgdmVyeSBjYXJlZnVsIHdpdGggcmVhZC93cml0
ZSA2NC1iaXQgdmFsdWVzLiBPbiAzMi1iaXQgbWFjaGluZXMsIHRoZXkKLSAqIHdpbGwgYmUgaW1w
bGVtZW50ZWQgdXNpbmcgMiAzMi1iaXQgd3JpdGVzIGluIGFuIGFyYml0cmFyeSBvcmRlciB3aXRo
Ci0gKiBhbiBhcmJpdHJhcnkgZGVsYXkgYmV0d2VlbiB0aGVtLiBUaGlzIGNhbiBjYXVzZSB0aGUg
aGFyZHdhcmUgdG8KLSAqIGFjdCB1cG9uIHRoZSBpbnRlcm1lZGlhdGUgdmFsdWUsIHBvc3NpYmx5
IGxlYWRpbmcgdG8gY29ycnVwdGlvbiBhbmQKLSAqIG1hY2hpbmUgZGVhdGguIEZvciB0aGlzIHJl
YXNvbiB3ZSBkbyBub3Qgc3VwcG9ydCBJOTE1X1dSSVRFNjQsIG9yCi0gKiBkZXZfcHJpdi0+dW5j
b3JlLmZ1bmNzLm1taW9fd3JpdGVxLgotICoKLSAqIFdoZW4gcmVhZGluZyBhIDY0LWJpdCB2YWx1
ZSBhcyB0d28gMzItYml0IHZhbHVlcywgdGhlIGRlbGF5IG1heSBjYXVzZQotICogdGhlIHR3byBy
ZWFkcyB0byBtaXNtYXRjaCwgZS5nLiBhIHRpbWVzdGFtcCBvdmVyZmxvd2luZy4gQWxzbyBub3Rl
IHRoYXQKLSAqIG9jY2FzaW9uYWxseSBhIDY0LWJpdCByZWdpc3RlciBkb2VzIG5vdCBhY3R1YWx5
IHN1cHBvcnQgYSBmdWxsIHJlYWRxCi0gKiBhbmQgbXVzdCBiZSByZWFkIHVzaW5nIHR3byAzMi1i
aXQgcmVhZHMuCi0gKgotICogWW91IGhhdmUgYmVlbiB3YXJuZWQuCi0gKi8KLSNkZWZpbmUgSTkx
NV9SRUFENjQocmVnX18pCV9fSTkxNV9SRUdfT1AocmVhZDY0LCBkZXZfcHJpdiwgKHJlZ19fKSkK
LSNkZWZpbmUgSTkxNV9SRUFENjRfMngzMihsb3dlcl9yZWdfXywgdXBwZXJfcmVnX18pIFwKLQlf
X0k5MTVfUkVHX09QKHJlYWQ2NF8yeDMyLCBkZXZfcHJpdiwgKGxvd2VyX3JlZ19fKSwgKHVwcGVy
X3JlZ19fKSkKLQogI2RlZmluZSBQT1NUSU5HX1JFQUQocmVnX18pCV9fSTkxNV9SRUdfT1AocG9z
dGluZ19yZWFkLCBkZXZfcHJpdiwgKHJlZ19fKSkKICNkZWZpbmUgUE9TVElOR19SRUFEMTYocmVn
X18pCV9fSTkxNV9SRUdfT1AocG9zdGluZ19yZWFkMTYsIGRldl9wcml2LCAocmVnX18pKQogCi0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
