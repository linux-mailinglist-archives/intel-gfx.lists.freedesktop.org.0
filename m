Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC4734635E
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 16:51:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97E4B6EA94;
	Tue, 23 Mar 2021 15:51:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9BF16EA7A
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 15:51:21 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Mar 2021 16:50:48 +0100
Message-Id: <20210323155059.628690-60-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
References: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 59/70] drm/i915/selftests: Prepare cs engine
 tests for obj->mm.lock removal
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

U2FtZSBhcyBvdGhlciB0ZXN0cywgdXNlIHBpbl9tYXBfdW5sb2NrZWQuCgpTaWduZWQtb2ZmLWJ5
OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpS
ZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9jcy5j
IHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9j
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2NzLmMKaW5kZXgg
N2U0NjZhZTExNGY4Li5iMzI4MTRhMWYyMGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9jcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NlbGZ0ZXN0X2VuZ2luZV9jcy5jCkBAIC03NSw3ICs3NSw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkx
NV92bWEgKmNyZWF0ZV9lbXB0eV9iYXRjaChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCiAJaWYg
KElTX0VSUihvYmopKQogCQlyZXR1cm4gRVJSX0NBU1Qob2JqKTsKIAotCWNzID0gaTkxNV9nZW1f
b2JqZWN0X3Bpbl9tYXAob2JqLCBJOTE1X01BUF9XQik7CisJY3MgPSBpOTE1X2dlbV9vYmplY3Rf
cGluX21hcF91bmxvY2tlZChvYmosIEk5MTVfTUFQX1dCKTsKIAlpZiAoSVNfRVJSKGNzKSkgewog
CQllcnIgPSBQVFJfRVJSKGNzKTsKIAkJZ290byBlcnJfcHV0OwpAQCAtMjExLDcgKzIxMSw3IEBA
IHN0YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKmNyZWF0ZV9ub3BfYmF0Y2goc3RydWN0IGludGVsX2Nv
bnRleHQgKmNlKQogCWlmIChJU19FUlIob2JqKSkKIAkJcmV0dXJuIEVSUl9DQVNUKG9iaik7CiAK
LQljcyA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKG9iaiwgSTkxNV9NQVBfV0IpOworCWNzID0g
aTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXBfdW5sb2NrZWQob2JqLCBJOTE1X01BUF9XQik7CiAJaWYg
KElTX0VSUihjcykpIHsKIAkJZXJyID0gUFRSX0VSUihjcyk7CiAJCWdvdG8gZXJyX3B1dDsKLS0g
CjIuMzEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
