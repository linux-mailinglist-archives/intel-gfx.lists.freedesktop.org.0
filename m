Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42252C8E3B
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 18:25:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FB266E87F;
	Wed,  2 Oct 2019 16:25:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D69FA89F63
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 16:25:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 09:25:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,249,1566889200"; d="scan'208";a="275401439"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 02 Oct 2019 09:25:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Oct 2019 19:25:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 19:25:01 +0300
Message-Id: <20191002162505.30716-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191002162505.30716-1-ville.syrjala@linux.intel.com>
References: <20191002162505.30716-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Simplfy LVDS crtc_mask setup
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGRvbid0IG5lZWQgdG8gc3BlY2lhbCBjYXNlIFBDSCB2cy4gZ2VuNCB3aGVuIHNldHRpbmcgdXAg
dGhlIExWRFMKY3J0Y19tYXNrLiBKdXN0IGNsYWltIHBpcGVzIEF8QnxDIHdvcmsgYW5kCmludGVs
X2VuY29kZXJfcG9zc2libGVfY3J0Y3MoKSB3aWxsIGRyb3Agb3V0IGFueSBjcnRjIHRoYXQgZG9l
c24ndApleGlzdC4KCnYyOiBQdXQgdGhlIHNwZWNpYWwgY2FzZSBmaXJzdCB0byBtYXRjaCB3aGF0
IG1vc3Qgb3RoZXIgZW5jb2RlcnMgZG8KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9sdmRzLmMgfCA4ICsrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfbHZkcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9sdmRzLmMKaW5kZXggMTM4NDFkN2M0NTViLi5jZjFjZDIyOTViOWIgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHZkcy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHZkcy5jCkBAIC04OTksMTIgKzg5OSwxMCBAQCB2
b2lkIGludGVsX2x2ZHNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJ
aW50ZWxfZW5jb2Rlci0+cG93ZXJfZG9tYWluID0gUE9XRVJfRE9NQUlOX1BPUlRfT1RIRVI7CiAJ
aW50ZWxfZW5jb2Rlci0+cG9ydCA9IFBPUlRfTk9ORTsKIAlpbnRlbF9lbmNvZGVyLT5jbG9uZWFi
bGUgPSAwOwotCWlmIChIQVNfUENIX1NQTElUKGRldl9wcml2KSkKLQkJaW50ZWxfZW5jb2Rlci0+
Y3J0Y19tYXNrID0gQklUKFBJUEVfQSkgfCBCSVQoUElQRV9CKSB8IEJJVChQSVBFX0MpOwotCWVs
c2UgaWYgKElTX0dFTihkZXZfcHJpdiwgNCkpCi0JCWludGVsX2VuY29kZXItPmNydGNfbWFzayA9
IEJJVChQSVBFX0EpIHwgQklUKFBJUEVfQik7Ci0JZWxzZQorCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpIDwgNCkKIAkJaW50ZWxfZW5jb2Rlci0+Y3J0Y19tYXNrID0gQklUKFBJUEVfQik7CisJZWxz
ZQorCQlpbnRlbF9lbmNvZGVyLT5jcnRjX21hc2sgPSBCSVQoUElQRV9BKSB8IEJJVChQSVBFX0Ip
IHwgQklUKFBJUEVfQyk7CiAKIAlkcm1fY29ubmVjdG9yX2hlbHBlcl9hZGQoY29ubmVjdG9yLCAm
aW50ZWxfbHZkc19jb25uZWN0b3JfaGVscGVyX2Z1bmNzKTsKIAljb25uZWN0b3ItPmRpc3BsYXlf
aW5mby5zdWJwaXhlbF9vcmRlciA9IFN1YlBpeGVsSG9yaXpvbnRhbFJHQjsKLS0gCjIuMjEuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
