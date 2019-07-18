Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 484196D009
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 16:43:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D80E6E3EE;
	Thu, 18 Jul 2019 14:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69CD76E3EB
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 14:43:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jul 2019 07:43:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,278,1559545200"; d="scan'208";a="158799114"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 18 Jul 2019 07:43:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Jul 2019 17:43:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Jul 2019 17:43:40 +0300
Message-Id: <20190718144340.1114-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190718144340.1114-1-ville.syrjala@linux.intel.com>
References: <20190718144340.1114-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Check some transcoder timing
 minimum limits
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk9u
IElMSysgdGhlIGRvY3VtZW50ZWQgbWluIGhkaXNwbGF5IGlzIDY0LCBtaW4gaGJsYW5rIGlzIDMy
LCBhbmQgbWluCnZibGFuayBpcyA1LiBPbiBlYXJsaWVyIHBsYXRmb3JtcyBtaW4gaGJsYW5rIGlz
IGFsc28gMzIsIGFuZCBtaW4KdmJsYW5rIGlzIDMuIE1ha2Ugc3VyZSB0aGUgbW9kZSBzYXRpc2Zp
ZXMgdGhvc2UgbGltaXRzLgoKVGhlcmUgYXJlIGZ1cnRoZXIgbGltaXRzIGZvciBIRE1JIGFuZCBw
Zml0IHVzZSBjYXNlcywgYnV0IHdlJ2xsIGNoZWNrCmZvciB0aG9zZSBpbiBhIG1vcmUgc3BlY2lm
aWMgbG9jYXRpb24uCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIHwgMTUgKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKaW5kZXggZTI1YjgyZDA3ZDRmLi4xMTQxZjRhYTMxYzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNTgxNiw2ICsxNTgxNiwyMSBAQCBp
bnRlbF9tb2RlX3ZhbGlkKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJICAgIG1vZGUtPnZ0b3Rh
bCA+IHZ0b3RhbF9tYXgpCiAJCXJldHVybiBNT0RFX1ZfSUxMRUdBTDsKIAorCWlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDUpIHsKKwkJaWYgKG1vZGUtPmhkaXNwbGF5IDwgNjQgfHwKKwkJICAg
IG1vZGUtPmh0b3RhbCAtIG1vZGUtPmhkaXNwbGF5IDwgMzIpCisJCQlyZXR1cm4gTU9ERV9IX0lM
TEVHQUw7CisKKwkJaWYgKG1vZGUtPnZ0b3RhbCAtIG1vZGUtPnZkaXNwbGF5IDwgNSkKKwkJCXJl
dHVybiBNT0RFX1ZfSUxMRUdBTDsKKwl9IGVsc2UgeworCQlpZiAobW9kZS0+aHRvdGFsIC0gbW9k
ZS0+aGRpc3BsYXkgPCAzMikKKwkJCXJldHVybiBNT0RFX0hfSUxMRUdBTDsKKworCQlpZiAobW9k
ZS0+dnRvdGFsIC0gbW9kZS0+dmRpc3BsYXkgPCAzKQorCQkJcmV0dXJuIE1PREVfVl9JTExFR0FM
OworCX0KKwogCXJldHVybiBNT0RFX09LOwogfQogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
