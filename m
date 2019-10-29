Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB485E8BED
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 16:39:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 058826EC2B;
	Tue, 29 Oct 2019 15:39:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42D476EC2B
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 15:39:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 08:39:48 -0700
X-IronPort-AV: E=Sophos;i="5.68,244,1569308400"; d="scan'208";a="203599732"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 08:39:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 17:39:29 +0200
Message-Id: <20191029153930.27103-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029153930.27103-1-jani.nikula@intel.com>
References: <20191029153930.27103-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/bios: parse DDI ports also on VLV
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3RhcnQgcGFyc2luZyBjaGlsZCBkZXZpY2VzIHRvIHRoZSBEREkgcG9ydHMgYXJyYXkgYWxzbyBv
biBWTFYuIFRoZQpiZW5lZml0IGlzIGJlaW5nIGFibGUgdG8gdW5pZnkgRFNJIGhhbmRsaW5nIGJl
dHdlZW4gVkxWIGFuZCBJQ0wgRFNJIGluCnRoZSBmdXR1cmUuCgpUaGVyZSBhcmUgc29tZSBzdWJ0
bGUgY2hhbmdlcyB3aGVyZSB3ZSBzdGFydCB1c2luZyB0aGUgVkJUIG1vcmUgZm9yIFZMViwKd2hp
Y2ggbWF5IGNhdXNlIHByb2JsZW1zIGluIGNhc2Ugb2YgYmFkIFZCVHM6CgotIFN0YXJ0IHVzaW5n
IG1heCBUTURTIGNsb2NrLiBMaW1pdGVkIHRvIG5ldyBWQlQgdmVyc2lvbnMsIHVubGlrZWx5LgoK
LSBTdGFydCB1c2luZyBtYXggRFAgcmF0ZS4gTGltaXRlZCB0byBuZXcgVkJUIHZlcnNpb25zLCB1
bmxpa2VseS4KCi0gU3RhcnQgdXNpbmcgSERNSSBhbHRlcm5hdGUgRERDIHBpbi4KCi0gU3RhcnQg
dXNpbmcgRFAgYWx0ZXJuYXRlIEFVWCBjaGFubmVsLgoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9iaW9zLmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKaW5k
ZXggN2Q3ZTk1M2U0YTMwLi5iMjcxMmUwYWNhZjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5jCkBAIC0xNTc3LDcgKzE1NzcsOCBAQCBzdGF0aWMgdm9pZCBwYXJz
ZV9kZGlfcG9ydHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1OCBiZGJfdmVy
c2lvbikKIAljb25zdCBzdHJ1Y3QgY2hpbGRfZGV2aWNlX2NvbmZpZyAqY2hpbGQ7CiAJaW50IGk7
CiAKLQlpZiAoIUhBU19EREkoZGV2X3ByaXYpICYmICFJU19DSEVSUllWSUVXKGRldl9wcml2KSkK
KwlpZiAoIUhBU19EREkoZGV2X3ByaXYpICYmCisJICAgICFJU19DSEVSUllWSUVXKGRldl9wcml2
KSAmJiAhSVNfVkFMTEVZVklFVyhkZXZfcHJpdikpCiAJCXJldHVybjsKIAogCWlmIChiZGJfdmVy
c2lvbiA8IDE1NSkKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
