Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD054C071
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 20:03:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2D246E446;
	Wed, 19 Jun 2019 18:03:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6578B6E446
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 18:03:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 11:03:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,393,1557212400"; d="scan'208";a="165089139"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 19 Jun 2019 11:03:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Jun 2019 21:03:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 21:03:08 +0300
Message-Id: <20190619180312.31817-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190619180312.31817-1-ville.syrjala@linux.intel.com>
References: <20190619180312.31817-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/sdvo: Use named initializers for
 the SDVO command names
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClVz
ZSBuYW1lZCBpbml0aWFsaXplcnMgdG8gbWFrZSBpdCBlYXNpZXIgdG8gYXNzb2NpYXRlIHRoZSBT
RFZPIGRlYnVnCnByaW50cyB3aXRoIHRoZSBTRFZPIGNvbW1hbmQgZGVmaW5lcy4gQWxzbyBzd2l0
Y2ggdG8gdXNpbmcgQVJSQVlfU0laRSgpCmluc3RlYWQgb2YgYXNzdW1pbmcgdGhhdCBTRFZPX0NN
RF9TVEFUVVNfU0NBTElOR19OT1RfU1VQUCBpcyB0aGUgbGFzdApjb21tYW5kIHR5cGUuCgpTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jIHwgMTYgKysr
KysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nk
dm8uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jCmluZGV4IDY4
MTQxMWFhZTc1NC4uZmI3NzE3NmI5YThjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Nkdm8uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Nkdm8uYwpAQCAtNDI5LDEzICs0MjksMTMgQEAgc3RhdGljIHZvaWQgaW50ZWxfc2R2
b19kZWJ1Z193cml0ZShzdHJ1Y3QgaW50ZWxfc2R2byAqaW50ZWxfc2R2bywgdTggY21kLAogfQog
CiBzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IGNtZF9zdGF0dXNfbmFtZXNbXSA9IHsKLQkiUG93
ZXIgb24iLAotCSJTdWNjZXNzIiwKLQkiTm90IHN1cHBvcnRlZCIsCi0JIkludmFsaWQgYXJnIiwK
LQkiUGVuZGluZyIsCi0JIlRhcmdldCBub3Qgc3BlY2lmaWVkIiwKLQkiU2NhbGluZyBub3Qgc3Vw
cG9ydGVkIgorCVtTRFZPX0NNRF9TVEFUVVNfUE9XRVJfT05dID0gIlBvd2VyIG9uIiwKKwlbU0RW
T19DTURfU1RBVFVTX1NVQ0NFU1NdID0gIlN1Y2Nlc3MiLAorCVtTRFZPX0NNRF9TVEFUVVNfTk9U
U1VQUF0gPSAiTm90IHN1cHBvcnRlZCIsCisJW1NEVk9fQ01EX1NUQVRVU19JTlZBTElEX0FSR10g
PSAiSW52YWxpZCBhcmciLAorCVtTRFZPX0NNRF9TVEFUVVNfUEVORElOR10gPSAiUGVuZGluZyIs
CisJW1NEVk9fQ01EX1NUQVRVU19UQVJHRVRfTk9UX1NQRUNJRklFRF0gPSAiVGFyZ2V0IG5vdCBz
cGVjaWZpZWQiLAorCVtTRFZPX0NNRF9TVEFUVVNfU0NBTElOR19OT1RfU1VQUF0gPSAiU2NhbGlu
ZyBub3Qgc3VwcG9ydGVkIiwKIH07CiAKIHN0YXRpYyBib29sIF9faW50ZWxfc2R2b193cml0ZV9j
bWQoc3RydWN0IGludGVsX3Nkdm8gKmludGVsX3Nkdm8sIHU4IGNtZCwKQEAgLTU2Miw3ICs1NjIs
NyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9zZHZvX3JlYWRfcmVzcG9uc2Uoc3RydWN0IGludGVsX3Nk
dm8gKmludGVsX3Nkdm8sCiAjZGVmaW5lIEJVRl9QUklOVChhcmdzLi4uKSBcCiAJcG9zICs9IHNu
cHJpbnRmKGJ1ZmZlciArIHBvcywgbWF4X3QoaW50LCBCVUZfTEVOIC0gcG9zLCAwKSwgYXJncykK
IAotCWlmIChzdGF0dXMgPD0gU0RWT19DTURfU1RBVFVTX1NDQUxJTkdfTk9UX1NVUFApCisJaWYg
KHN0YXR1cyA8IEFSUkFZX1NJWkUoY21kX3N0YXR1c19uYW1lcykpCiAJCUJVRl9QUklOVCgiKCVz
KSIsIGNtZF9zdGF0dXNfbmFtZXNbc3RhdHVzXSk7CiAJZWxzZQogCQlCVUZfUFJJTlQoIig/Pz8g
JWQpIiwgc3RhdHVzKTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
