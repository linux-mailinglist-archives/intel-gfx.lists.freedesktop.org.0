Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4105968E
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 10:55:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 600A66E89A;
	Fri, 28 Jun 2019 08:55:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7A366E89C
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 08:55:21 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 10:55:15 +0200
Message-Id: <20190628085517.31886-5-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190628085517.31886-1-maarten.lankhorst@linux.intel.com>
References: <20190628085517.31886-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/6] drm/i915: Use intel_crtc_state in
 sanitize_watermarks() too
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

R2V0IHJpZCBvZiBhbGwgaW5zdGFuY2VzIG9mIGRybV9jcnRjX3N0YXRlLCBhbmQgcmVuYW1lIGNz
dGF0ZSB0bwpjcnRjX3N0YXRlIGZvciBtb3JlIGNsYXJpdHkuCgpTaWduZWQtb2ZmLWJ5OiBNYWFy
dGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpSZXZpZXdl
ZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE0ICsrKysr
Ky0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXgg
NmJlMmZkNzE0ZTM3Li40ZWE2MzAyNmQ5YzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNTgxMiw4ICsxNTgxMiw4IEBAIHN0YXRpYyB2b2lk
IHNhbml0aXplX3dhdGVybWFya3Moc3RydWN0IGRybV9kZXZpY2UgKmRldikKIAlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7CiAJc3RydWN0IGRybV9hdG9t
aWNfc3RhdGUgKnN0YXRlOwogCXN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKmludGVsX3N0YXRl
OwotCXN0cnVjdCBkcm1fY3J0YyAqY3J0YzsKLQlzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKmNzdGF0
ZTsKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZTsKIAlzdHJ1Y3QgZHJtX21vZGVzZXRfYWNxdWlyZV9jdHggY3R4OwogCWludCBy
ZXQ7CiAJaW50IGk7CkBAIC0xNTg2OCwxMyArMTU4NjgsMTEgQEAgc3RhdGljIHZvaWQgc2FuaXRp
emVfd2F0ZXJtYXJrcyhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogCX0KIAogCS8qIFdyaXRlIGNh
bGN1bGF0ZWQgd2F0ZXJtYXJrIHZhbHVlcyBiYWNrICovCi0JZm9yX2VhY2hfbmV3X2NydGNfaW5f
c3RhdGUoc3RhdGUsIGNydGMsIGNzdGF0ZSwgaSkgewotCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3MgPSB0b19pbnRlbF9jcnRjX3N0YXRlKGNzdGF0ZSk7Ci0KLQkJY3MtPndtLm5lZWRfcG9z
dHZibF91cGRhdGUgPSB0cnVlOwotCQlkZXZfcHJpdi0+ZGlzcGxheS5vcHRpbWl6ZV93YXRlcm1h
cmtzKGludGVsX3N0YXRlLCBjcyk7CisJZm9yX2VhY2hfbmV3X2ludGVsX2NydGNfaW5fc3RhdGUo
aW50ZWxfc3RhdGUsIGNydGMsIGNydGNfc3RhdGUsIGkpIHsKKwkJY3J0Y19zdGF0ZS0+d20ubmVl
ZF9wb3N0dmJsX3VwZGF0ZSA9IHRydWU7CisJCWRldl9wcml2LT5kaXNwbGF5Lm9wdGltaXplX3dh
dGVybWFya3MoaW50ZWxfc3RhdGUsIGNydGNfc3RhdGUpOwogCi0JCXRvX2ludGVsX2NydGNfc3Rh
dGUoY3J0Yy0+c3RhdGUpLT53bSA9IGNzLT53bTsKKwkJdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRj
LT5iYXNlLnN0YXRlKS0+d20gPSBjcnRjX3N0YXRlLT53bTsKIAl9CiAKIHB1dF9zdGF0ZToKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
