Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D750D6C4F
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 02:03:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CA8C6E1CF;
	Tue, 15 Oct 2019 00:03:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4E256E1CF
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 00:03:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 17:03:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,296,1566889200"; d="scan'208";a="185644155"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by orsmga007.jf.intel.com with ESMTP; 14 Oct 2019 17:03:44 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2019 17:05:26 -0700
Message-Id: <20191015000533.11425-4-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191015000533.11425-1-radhakrishna.sripada@intel.com>
References: <20191015000533.11425-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 03/10] drm/i915: Move CCS stride alignment
 W/A inside intel_fb_stride_alignment
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
Cc: nanley.g.chery@intel.com, dhinakaran.pandiyan@intel.com,
 ville.syrjala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+
CgpFYXNpZXIgdG8gcmVhZCBpZiBhbGwgdGhlIGFsaWdubWVudCBjaGFuZ2VzIGFyZSBpbiBvbmUg
cGxhY2UgYW5kIGNvbnRhaW5lZAp3aXRoaW4gYSBmdW5jdGlvbi4KCkNjOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogTWF0dCBSb3BlciA8bWF0dGhl
dy5kLnJvcGVyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8
ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAzMSArKysrKysrKysrLS0tLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggNjI2MDQ2ZTk3YjQwLi4w
YTJmNjhkZDc2MjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCkBAIC0yNTQ2LDcgKzI1NDYsMjIgQEAgaW50ZWxfZmJfc3RyaWRlX2FsaWdubWVudChj
b25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwgaW50IGNvbG9yX3BsYW5lKQogCQllbHNl
CiAJCQlyZXR1cm4gNjQ7CiAJfSBlbHNlIHsKLQkJcmV0dXJuIGludGVsX3RpbGVfd2lkdGhfYnl0
ZXMoZmIsIGNvbG9yX3BsYW5lKTsKKwkJdTMyIHRpbGVfd2lkdGggPSBpbnRlbF90aWxlX3dpZHRo
X2J5dGVzKGZiLCBjb2xvcl9wbGFuZSk7CisKKwkJLyoKKwkJICogRGlzcGxheSBXQSAjMDUzMTog
c2tsLGJ4dCxrYmwsZ2xrCisJCSAqCisJCSAqIFJlbmRlciBkZWNvbXByZXNzaW9uIGFuZCBwbGFu
ZSB3aWR0aCA+IDM4NDAKKwkJICogY29tYmluZWQgd2l0aCBob3Jpem9udGFsIHBhbm5pbmcgcmVx
dWlyZXMgdGhlCisJCSAqIHBsYW5lIHN0cmlkZSB0byBiZSBhIG11bHRpcGxlIG9mIDQuIFdlJ2xs
IGp1c3QKKwkJICogcmVxdWlyZSB0aGUgZW50aXJlIGZiIHRvIGFjY29tbW9kYXRlIHRoYXQgdG8g
YXZvaWQKKwkJICogcG90ZW50aWFsIHJ1bnRpbWUgZXJyb3JzIGF0IHBsYW5lIGNvbmZpZ3VyYXRp
b24gdGltZS4KKwkJICovCisJCWlmIChJU19HRU4oZGV2X3ByaXYsIDkpICYmIGlzX2Njc19tb2Rp
ZmllcihmYi0+bW9kaWZpZXIpICYmCisJCSAgICBjb2xvcl9wbGFuZSA9PSAwICYmIGZiLT53aWR0
aCA+IDM4NDApCisJCQl0aWxlX3dpZHRoICo9IDQ7CisKKwkJcmV0dXJuIHRpbGVfd2lkdGg7CiAJ
fQogfQogCkBAIC0xNTY5NCwyMCArMTU3MDksNiBAQCBzdGF0aWMgaW50IGludGVsX2ZyYW1lYnVm
ZmVyX2luaXQoc3RydWN0IGludGVsX2ZyYW1lYnVmZmVyICppbnRlbF9mYiwKIAkJfQogCiAJCXN0
cmlkZV9hbGlnbm1lbnQgPSBpbnRlbF9mYl9zdHJpZGVfYWxpZ25tZW50KGZiLCBpKTsKLQotCQkv
KgotCQkgKiBEaXNwbGF5IFdBICMwNTMxOiBza2wsYnh0LGtibCxnbGsKLQkJICoKLQkJICogUmVu
ZGVyIGRlY29tcHJlc3Npb24gYW5kIHBsYW5lIHdpZHRoID4gMzg0MAotCQkgKiBjb21iaW5lZCB3
aXRoIGhvcml6b250YWwgcGFubmluZyByZXF1aXJlcyB0aGUKLQkJICogcGxhbmUgc3RyaWRlIHRv
IGJlIGEgbXVsdGlwbGUgb2YgNC4gV2UnbGwganVzdAotCQkgKiByZXF1aXJlIHRoZSBlbnRpcmUg
ZmIgdG8gYWNjb21tb2RhdGUgdGhhdCB0byBhdm9pZAotCQkgKiBwb3RlbnRpYWwgcnVudGltZSBl
cnJvcnMgYXQgcGxhbmUgY29uZmlndXJhdGlvbiB0aW1lLgotCQkgKi8KLQkJaWYgKElTX0dFTihk
ZXZfcHJpdiwgOSkgJiYgaSA9PSAwICYmIGZiLT53aWR0aCA+IDM4NDAgJiYKLQkJICAgIGlzX2Nj
c19tb2RpZmllcihmYi0+bW9kaWZpZXIpKQotCQkJc3RyaWRlX2FsaWdubWVudCAqPSA0OwotCiAJ
CWlmIChmYi0+cGl0Y2hlc1tpXSAmIChzdHJpZGVfYWxpZ25tZW50IC0gMSkpIHsKIAkJCURSTV9E
RUJVR19LTVMoInBsYW5lICVkIHBpdGNoICglZCkgbXVzdCBiZSBhdCBsZWFzdCAldSBieXRlIGFs
aWduZWRcbiIsCiAJCQkJICAgICAgaSwgZmItPnBpdGNoZXNbaV0sIHN0cmlkZV9hbGlnbm1lbnQp
OwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
