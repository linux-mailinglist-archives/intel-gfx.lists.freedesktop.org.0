Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE87C346353
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 16:51:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBBEA6EAB3;
	Tue, 23 Mar 2021 15:51:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB5ED6EA4C
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 15:51:13 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Mar 2021 16:50:00 +0100
Message-Id: <20210323155059.628690-12-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
References: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 11/70] drm/i915: Disable userptr pread/pwrite
 support.
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VXNlcnB0ciBzaG91bGQgbm90IG5lZWQgdGhlIGtlcm5lbCBmb3IgYSB1c2Vyc3BhY2UgbWVtY3B5
LCB1c2Vyc3BhY2UKbmVlZHMgdG8gY2FsbCBtZW1jcHkgZGlyZWN0bHkuCgpTcGVjaWZpY2FsbHks
IGRpc2FibGUgaTkxNV9nZW1fcHdyaXRlX2lvY3RsKCkgYW5kIGk5MTVfZ2VtX3ByZWFkX2lvY3Rs
KCkuCgpTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RA
bGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgoKLS0gU3RpbGwgbmVlZHMgYW4gYWNrIGZyb20gcmVs
ZXZhbnQgdXNlcnNwYWNlIHRoYXQgaXQgd29uJ3QgYnJlYWssIGJ1dCBzaG91bGQgYmUgZ29vZC4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jIHwgMjAgKysr
KysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAg
ICAgICAgfCAgNSArKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMKaW5kZXggMGY5MDI0YzYy
YzA2Li41YTE5Njk5YzJkN2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV91c2VycHRyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3VzZXJwdHIuYwpAQCAtNzAwLDYgKzcwMCwyNCBAQCBpOTE1X2dlbV91c2VycHRyX2RtYWJ1Zl9l
eHBvcnQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIAlyZXR1cm4gaTkxNV9nZW1f
dXNlcnB0cl9pbml0X19tbXVfbm90aWZpZXIob2JqLCAwKTsKIH0KIAorc3RhdGljIGludAoraTkx
NV9nZW1fdXNlcnB0cl9wd3JpdGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKKwkJ
CWNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fcHdyaXRlICphcmdzKQoreworCWRybV9kYmcob2Jq
LT5iYXNlLmRldiwgInB3cml0ZSB0byB1c2VycHRyIG5vIGxvbmdlciBhbGxvd2VkXG4iKTsKKwor
CXJldHVybiAtRUlOVkFMOworfQorCitzdGF0aWMgaW50CitpOTE1X2dlbV91c2VycHRyX3ByZWFk
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCisJCSAgICAgICBjb25zdCBzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX3ByZWFkICphcmdzKQoreworCWRybV9kYmcob2JqLT5iYXNlLmRldiwgInBy
ZWFkIGZyb20gdXNlcnB0ciBubyBsb25nZXIgYWxsb3dlZFxuIik7CisKKwlyZXR1cm4gLUVJTlZB
TDsKK30KKwogc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0X29wcyBpOTE1
X2dlbV91c2VycHRyX29wcyA9IHsKIAkubmFtZSA9ICJpOTE1X2dlbV9vYmplY3RfdXNlcnB0ciIs
CiAJLmZsYWdzID0gSTkxNV9HRU1fT0JKRUNUX0lTX1NIUklOS0FCTEUgfApAQCAtNzA4LDYgKzcy
Niw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdF9vcHMgaTkxNV9n
ZW1fdXNlcnB0cl9vcHMgPSB7CiAJLmdldF9wYWdlcyA9IGk5MTVfZ2VtX3VzZXJwdHJfZ2V0X3Bh
Z2VzLAogCS5wdXRfcGFnZXMgPSBpOTE1X2dlbV91c2VycHRyX3B1dF9wYWdlcywKIAkuZG1hYnVm
X2V4cG9ydCA9IGk5MTVfZ2VtX3VzZXJwdHJfZG1hYnVmX2V4cG9ydCwKKwkucHdyaXRlID0gaTkx
NV9nZW1fdXNlcnB0cl9wd3JpdGUsCisJLnByZWFkID0gaTkxNV9nZW1fdXNlcnB0cl9wcmVhZCwK
IAkucmVsZWFzZSA9IGk5MTVfZ2VtX3VzZXJwdHJfcmVsZWFzZSwKIH07CiAKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbS5jCmluZGV4IDI1NDQ0ZDM2MGY3Zi4uZGRlMTJjZTRmOTBiIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtLmMKQEAgLTQwMyw2ICs0MDMsMTEgQEAgaTkxNV9nZW1fcHJlYWRfaW9jdGwoc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAl9CiAKIAl0cmFjZV9pOTE1X2dlbV9v
YmplY3RfcHJlYWQob2JqLCBhcmdzLT5vZmZzZXQsIGFyZ3MtPnNpemUpOworCXJldCA9IC1FTk9E
RVY7CisJaWYgKG9iai0+b3BzLT5wcmVhZCkKKwkJcmV0ID0gb2JqLT5vcHMtPnByZWFkKG9iaiwg
YXJncyk7CisJaWYgKHJldCAhPSAtRU5PREVWKQorCQlnb3RvIG91dDsKIAogCXJldCA9IC1FTk9E
RVY7CiAJaWYgKG9iai0+b3BzLT5wcmVhZCkKLS0gCjIuMzEuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
