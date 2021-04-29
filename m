Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 136FB36E9ED
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 14:02:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CAF56EE55;
	Thu, 29 Apr 2021 12:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC5B66EE55
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 12:02:02 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Apr 2021 14:01:58 +0200
Message-Id: <20210429120158.1105318-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Remove erroneous i915_is_ggtt check
 for I915_GEM_OBJECT_UNBIND_VM_TRYLOCK
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgY2hhbmdlZCB0aGUgbG9ja2luZyBoaWVyYXJjaHkgZm9yIGJvdGggcHBndHQgYW5kIGdndHQs
IHNvIGJvdGggbG9ja3MKc2hvdWxkIGJlIHRyeWxvY2tlZCBpbnNpZGUgaTkxNV9nZW1fb2JqZWN0
X3VuYmluZCgpLgoKU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFu
a2hvcnN0QGxpbnV4LmludGVsLmNvbT4KRml4ZXM6IGJjNmY4MGNjZTlhZSAoImRybS9pOTE1OiBV
c2UgdHJ5bG9jayBpbiBzaHJpbmtlciBmb3IgZ2d0dCBvbiBic3cgdnQtZCBhbmQgYnh0LCB2Mi4i
KQpDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgfCAzICstLQogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bS5jCmluZGV4IDA3ZGE2YTkzNDJlMy4uZDAwMThjNWY4OGJkIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtLmMKQEAgLTE1OCw4ICsxNTgsNyBAQCBpbnQgaTkxNV9nZW1fb2JqZWN0X3VuYmluZChzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQkJcmV0ID0gLUVCVVNZOwogCQkJaWYgKGZs
YWdzICYgSTkxNV9HRU1fT0JKRUNUX1VOQklORF9BQ1RJVkUgfHwKIAkJCSAgICAhaTkxNV92bWFf
aXNfYWN0aXZlKHZtYSkpIHsKLQkJCQlpZiAoaTkxNV9pc19nZ3R0KHZtYS0+dm0pICYmCi0JCQkJ
ICAgIGZsYWdzICYgSTkxNV9HRU1fT0JKRUNUX1VOQklORF9WTV9UUllMT0NLKSB7CisJCQkJaWYg
KGZsYWdzICYgSTkxNV9HRU1fT0JKRUNUX1VOQklORF9WTV9UUllMT0NLKSB7CiAJCQkJCWlmICht
dXRleF90cnlsb2NrKCZ2bWEtPnZtLT5tdXRleCkpIHsKIAkJCQkJCXJldCA9IF9faTkxNV92bWFf
dW5iaW5kKHZtYSk7CiAJCQkJCQltdXRleF91bmxvY2soJnZtYS0+dm0tPm11dGV4KTsKLS0gCjIu
MzEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
