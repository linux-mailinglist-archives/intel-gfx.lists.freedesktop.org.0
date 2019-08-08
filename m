Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE0586361
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 15:44:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5554F6E845;
	Thu,  8 Aug 2019 13:44:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 431176E83E
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 13:44:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 06:38:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,361,1559545200"; d="scan'208";a="193158160"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 08 Aug 2019 06:38:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 16:42:46 +0300
Message-Id: <94f2884a3e5611c3e1f015104afb965e47bd8992.1565271681.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1565271681.git.jani.nikula@intel.com>
References: <cover.1565271681.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 07/10] drm/i915: extract i915_suspend.h from
 i915_drv.h
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQgdXNlZCB0byBiZSBoYW5keSB0aGF0IHdlIG9ubHkgaGFkIGEgY291cGxlIG9mIGhlYWRlcnMs
IGJ1dCBvdmVyIHRpbWUKaTkxNV9kcnYuaCBoYXMgYmVjb21lIHVud2llbGR5LiBFeHRyYWN0IGRl
Y2xhcmF0aW9ucyB0byBhIHNlcGFyYXRlCmhlYWRlciBmaWxlIGNvcnJlc3BvbmRpbmcgdG8gdGhl
IGltcGxlbWVudGF0aW9uIG1vZHVsZSwgY2xhcmlmeWluZyB0aGUKbW9kdWxhcml0eSBvZiB0aGUg
ZHJpdmVyLgoKRW5zdXJlIHRoZSBuZXcgaGVhZGVyIGlzIHNlbGYtY29udGFpbmVkLCBhbmQgZG8g
c28gd2l0aCBtaW5pbWFsIGZ1cnRoZXIKaW5jbHVkZXMsIHVzaW5nIGZvcndhcmQgZGVjbGFyYXRp
b25zIGFzIG5lZWRlZC4gSW5jbHVkZSB0aGUgbmV3IGhlYWRlcgpvbmx5IHdoZXJlIG5lZWRlZCwg
YW5kIHNvcnQgdGhlIG1vZGlmaWVkIGluY2x1ZGUgZGlyZWN0aXZlcyB3aGlsZSBhdCBpdAphbmQg
YXMgbmVlZGVkLgoKTm8gZnVuY3Rpb25hbCBjaGFuZ2VzLgoKU2lnbmVkLW9mZi1ieTogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jICAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAg
IHwgIDQgLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmMgfCAgMSArCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N1c3BlbmQuaCB8IDE0ICsrKysrKysrKysrKysrCiA0
IGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCiBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmgKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuYwppbmRleCA2NjIxZGE0ZjRmMTguLjZhZjMxYTRkOTMwOCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5jCkBAIC03MCw2ICs3MCw3IEBACiAjaW5jbHVkZSAiaTkxNV9pcnEuaCIK
ICNpbmNsdWRlICJpOTE1X3BlcmYuaCIKICNpbmNsdWRlICJpOTE1X3F1ZXJ5LmgiCisjaW5jbHVk
ZSAiaTkxNV9zdXNwZW5kLmgiCiAjaW5jbHVkZSAiaTkxNV9zeXNmcy5oIgogI2luY2x1ZGUgImk5
MTVfdHJhY2UuaCIKICNpbmNsdWRlICJpOTE1X3ZncHUuaCIKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
CmluZGV4IGI5ZjZjNDQzZWY3Yy4uZjMxMThiZDFkNzUxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgKQEAgLTI0OTgsMTAgKzI0OTgsNiBAQCBpbnQgaW50ZWxfZW5naW5lX2NtZF9wYXJzZXIoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAogCQkJICAgIHUzMiBiYXRjaF9sZW4sCiAJCQkg
ICAgYm9vbCBpc19tYXN0ZXIpOwogCi0vKiBpOTE1X3N1c3BlbmQuYyAqLwotaW50IGk5MTVfc2F2
ZV9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwotaW50IGk5MTVfcmVz
dG9yZV9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwotCiAvKiBpbnRl
bF9kZXZpY2VfaW5mby5jICovCiBzdGF0aWMgaW5saW5lIHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5m
byAqCiBta3dyaXRlX2RldmljZV9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmMKaW5kZXggZTQxY2Y3M2E5NzM3Li44NTA4
YTAxYWQ4YjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5jCkBAIC0zMSw2ICszMSw3
IEBACiAKICNpbmNsdWRlICJpOTE1X2Rydi5oIgogI2luY2x1ZGUgImk5MTVfcmVnLmgiCisjaW5j
bHVkZSAiaTkxNV9zdXNwZW5kLmgiCiAKIHN0YXRpYyB2b2lkIGk5MTVfc2F2ZV9kaXNwbGF5KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9z
dXNwZW5kLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4zYTM2ZmI0
ZWNjMDUKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N1c3Bl
bmQuaApAQCAtMCwwICsxLDE0IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICov
CisvKgorICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisjaWZu
ZGVmIF9fSTkxNV9TVVNQRU5EX0hfXworI2RlZmluZSBfX0k5MTVfU1VTUEVORF9IX18KKworc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGU7CisKK2ludCBpOTE1X3NhdmVfc3RhdGUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpOworaW50IGk5MTVfcmVzdG9yZV9zdGF0ZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSk7CisKKyNlbmRpZiAvKiBfX0k5MTVfU1VTUEVORF9IX18gKi8KLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
