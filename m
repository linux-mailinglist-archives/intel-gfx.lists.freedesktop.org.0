Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F31C4C8E40
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 18:25:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DBEC6E8A4;
	Wed,  2 Oct 2019 16:25:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91F3E6E8A4
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 16:25:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 09:25:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,249,1566889200"; d="scan'208";a="182095315"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 02 Oct 2019 09:25:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Oct 2019 19:25:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 19:25:05 +0300
Message-Id: <20191002162505.30716-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191002162505.30716-1-ville.syrjala@linux.intel.com>
References: <20191002162505.30716-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/mst: Document the userspace fail
 with possible_crtcs
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRv
IGF2b2lkIGFjY2lkZW50YWxseSBicmVha2luZyB0aGluZ3MgaW4gdGhlIGZ1dHVyZSBhZGQgYQpj
b21tZW50IGV4cGxhaW5pbmcgd2h5IHdlIG1pc2NvbmZpZ3VyZSB0aGUgcGlwZV9tYXNrLgoKQWxz
byB0b3NzIGluIGEgVE9ETyBmb3IgaW52ZXN0aWdhdGluZyBhIHNpbmdsZSBlbmNvZGVyCmFwcHJv
YWNoIGFzIG9wcG9zZWQgdG8gdGhlIGVuY29kZXItcGVyLXBpcGUgYXBwcm9hY2guCgpTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgfCAxMiArKysr
KysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKaW5kZXggN2JlODJjZjkyNmNhLi5jYjMw
NDdmZTJkMDIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3Qu
YwpAQCAtNjE1LDYgKzYxNSwxOCBAQCBpbnRlbF9kcF9jcmVhdGVfZmFrZV9tc3RfZW5jb2Rlcihz
dHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCwgZW51bQogCWludGVsX2Vu
Y29kZXItPnBvd2VyX2RvbWFpbiA9IGludGVsX2RpZ19wb3J0LT5iYXNlLnBvd2VyX2RvbWFpbjsK
IAlpbnRlbF9lbmNvZGVyLT5wb3J0ID0gaW50ZWxfZGlnX3BvcnQtPmJhc2UucG9ydDsKIAlpbnRl
bF9lbmNvZGVyLT5jbG9uZWFibGUgPSAwOworCS8qCisJICogVGhpcyBpcyB3cm9uZywgYnV0IGJy
b2tlbiB1c2Vyc3BhY2UgdXNlcyB0aGUgaW50ZXJzZWN0aW9uCisJICogb2YgcG9zc2libGVfY3J0
Y3Mgb2YgYWxsIHRoZSBlbmNvZGVycyBvZiBhIGdpdmVuIGNvbm5lY3RvcgorCSAqIHRvIGZpZ3Vy
ZSBvdXQgd2hpY2ggY3J0Y3MgY2FuIGRyaXZlIHNhaWQgY29ubmVjdG9yLiBXaGF0CisJICogc2hv
dWxkIGJlIHVzZWQgaW5zdGVhZCBpcyB0aGUgdW5pb24gb2YgcG9zc2libGVfY3J0Y3MuCisJICog
VG8ga2VlcCBzdWNoIHVzZXJzcGFjZSBmdW5jdGlvbmluZyB3ZSBtdXN0IG1pc2NvbmZpZ3VyZQor
CSAqIHRoaXMgdG8gbWFrZSBzdXJlIHRoZSBpbnRlcnNlY3Rpb24gaXMgbm90IGVtcHR5IDooCisJ
ICoKKwkgKiBUT0RPOiBmaWd1cmUgb3V0IGlmIHdlIGNvdWxkIGVsaW1pbmF0ZSB0aGUgcGVyLXBp
cGUKKwkgKiBlbmNvZGVycyBoZXJlIGFuZCBqdXN0IGhhdmUgYSBzaW5nbGUgZW5jb2RlciBmb3Ig
ZWFjaAorCSAqIE1TVCBjb25uZWN0b3IuIFRoYXQgd291bGQgc2lkZXN0ZXAgdGhlIHVzZXJzcGFj
ZSBidWcuCisJICovCiAJaW50ZWxfZW5jb2Rlci0+cGlwZV9tYXNrID0gfjA7CiAKIAlpbnRlbF9l
bmNvZGVyLT5jb21wdXRlX2NvbmZpZyA9IGludGVsX2RwX21zdF9jb21wdXRlX2NvbmZpZzsKLS0g
CjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
