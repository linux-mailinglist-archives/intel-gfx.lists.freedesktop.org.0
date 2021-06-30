Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2D63B8739
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 18:44:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39DE96EA4E;
	Wed, 30 Jun 2021 16:44:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 134016EA4F
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Jun 2021 16:44:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10031"; a="230026790"
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="230026790"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 09:44:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="457316165"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 30 Jun 2021 09:44:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Jun 2021 19:44:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Jun 2021 19:44:13 +0300
Message-Id: <20210630164413.25481-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Fix -EDEADLK handling regression
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBjb252ZXJzaW9uIHRvIHd3IG11dGV4ZXMgZmFpbGVkIHRvIGFkZHJlc3MgdGhlIGZlbmNlIGNv
ZGUgd2hpY2gKYWxyZWFkeSByZXR1cm5zIC1FREVBRExLIHdoZW4gd2UgcnVuIG91dCBvZiBmZW5j
ZXMuIFd3IG11dGV4ZXMgb24KdGhlIG90aGVyIGhhbmQgdHJlYXQgLUVERUFETEsgYXMgYW4gaW50
ZXJuYWwgZXJybm8gdmFsdWUgaW5kaWNhdGluZwphIG5lZWQgdG8gcmVzdGFydCB0aGUgb3BlcmF0
aW9uIGR1ZSB0byBhIGRlYWRsb2NrLiBTbyBub3cgd2hlbiB0aGUKZmVuY2UgY29kZSByZXR1cm5z
IC1FREVBRExLIHRoZSBoaWdoZXIgbGV2ZWwgY29kZSBlcnJvbmVvdXNseQpyZXN0YXJ0cyBldmVy
eXRoaW5nIGluc3RlYWQgb2YgcmV0dXJuaW5nIHRoZSBlcnJvciB0byB1c2Vyc3BhY2UKYXMgaXMg
ZXhwZWN0ZWQuCgpUbyByZW1lZHkgdGhpcyBsZXQncyBzd2l0Y2ggdGhlIGZlbmNlIGNvZGUgdG8g
dXNlIGEgZGlmZmVyZW50IGVycm5vCnZhbHVlIGZvciB0aGlzLiAtRU5PQlVGUyBzZWVtcyBsaWtl
IGEgc2VtaS1yZWFzb25hYmxlIHVuaXF1ZSBjaG9pY2UuCkFwYXJ0IGZyb20gaWd0IHRoZSBvbmx5
IHVzZXIgb2YgdGhpcyBJIGNvdWxkIGZpbmQgaXMgc25hLCBhbmQgZXZlbgp0aGVyZSBhbGwgd2Ug
ZG8gaXMgZHVtcCB0aGUgY3VycmVudCBmZW5jZSByZWdpc3RlcnMgZnJvbSBkZWJ1Z2ZzCmludG8g
dGhlIFggc2VydmVyIGxvZy4gU28gbm8gdXNlciB2aXNpYmxlIGZ1bmN0aW9uYWxpdHkgaXMgYWZm
ZWN0ZWQuCklmIHdlIHJlYWxseSBjYXJlZCBhYm91dCBwcmVzZXJ2aW5nIHRoaXMgd2UgY291bGQg
b2YgY291cnNlIGNvbnZlcnQKYmFjayB0byAtRURFQURMSyBoaWdoZXIgdXAsIGJ1dCBkb2Vzbid0
IHNlZW0gbGlrZSB0aGF0J3Mgd29ydGgKdGhlIGhhc3NsZSBoZXJlLgoKTm90IHF1aXRlIHN1cmUg
d2hpY2ggY29tbWl0IHNwZWNpZmljYWxseSBicm9rZSB0aGlzLCBidXQgSSdsbApqdXN0IGF0dHJp
YnV0ZSBpdCB0byB0aGUgZ2VuZXJhbCBnZW0gd3cgbXV0ZXggd29yay4KCkNjOiBzdGFibGVAdmdl
ci5rZXJuZWwub3JnCkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGlu
dXguaW50ZWwuY29tPgpDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AaW50
ZWwuY29tPgpUZXN0Y2FzZTogaWd0L2dlbV9wcmVhZC9leGhhdXN0aW9uClRlc3RjYXNlOiBpZ3Qv
Z2VtX3B3cml0ZS9iYXNpYy1leGhhdXN0aW9uClRlc3RjYXNlOiBpZ3QvZ2VtX2ZlbmNlZF9leGVj
X3RocmFzaC90b28tbWFueS1mZW5jZXMKRml4ZXM6IDgwZjBiNjc5ZDZmMCAoImRybS9pOTE1OiBB
ZGQgYW4gaW1wbGVtZW50YXRpb24gZm9yIGk5MTVfZ2VtX3d3X2N0eCBsb2NraW5nLCB2Mi4iKQpT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHRfZmVuY2luZy5jIHwg
MiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ2d0dF9mZW5jaW5nLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9nZ3R0X2ZlbmNpbmcuYwppbmRleCBjYWM3ZjNm
NDQ2NDIuLmY4OTQ4ZGU3MjAzNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ2d0dF9mZW5jaW5nLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z2d0dF9mZW5jaW5nLmMKQEAgLTM0OCw3ICszNDgsNyBAQCBzdGF0aWMgc3RydWN0IGk5MTVfZmVu
Y2VfcmVnICpmZW5jZV9maW5kKHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCiAJaWYgKGludGVsX2hh
c19wZW5kaW5nX2ZiX3VucGluKGdndHQtPnZtLmk5MTUpKQogCQlyZXR1cm4gRVJSX1BUUigtRUFH
QUlOKTsKIAotCXJldHVybiBFUlJfUFRSKC1FREVBRExLKTsKKwlyZXR1cm4gRVJSX1BUUigtRU5P
QlVGUyk7CiB9CiAKIGludCBfX2k5MTVfdm1hX3Bpbl9mZW5jZShzdHJ1Y3QgaTkxNV92bWEgKnZt
YSkKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
