Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 722E313760F
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 19:32:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B75946EA86;
	Fri, 10 Jan 2020 18:32:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ABEC6EA86
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 18:32:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 10:32:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,418,1571727600"; d="scan'208";a="218145659"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 10 Jan 2020 10:32:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 Jan 2020 20:32:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 20:32:27 +0200
Message-Id: <20200110183228.8199-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
References: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915: Balance prepare_fb/cleanup_fb
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmlu
dGVsX3ByZXBhcmVfcGxhbmVfZmIoKSBiYWlscyBlYXJseSBpZiB0aGVyZSBpcyBubyBmYiAob3Ig
cmF0aGVyCm5vIG9iaiwgd2hpY2ggaXMgdGhlIHNhbWUgdGhpbmcpLiBpbnRlbF9jbGVhbnVwX3Bs
YW5lX2ZiKCkgZG9lcyBub3QuClRoaXMgbWVhbnMgdGhlIHN0ZXBzIHBlcmZvcm1lZCBieSBpbnRl
bF9jbGVhbnVwX3BsYW5lX2ZiKCkgYXJlbid0CmJhbGFuY2VkIHdpdGggd2l0aCB3aGF0IHdhcyBk
b25lIGludGVsX3ByZXBhcmVfcGxhbmVfZmIoKSBpZiB0aGVyZQppcyBubyBmYiBmb3IgdGhlIHBs
YW5lLiBUaGVzZSBob29rcyBnZXQgY2FsbGVkIGZvciBldmVyeSBwbGFuZSBpbgp0aGUgc3RhdGUg
cmVnYXJkbGVzcyBvZiB3aGV0aGVyIHRoZXkgaGF2ZSBhbiBmYiBvciBub3QuCgpBZGQgYSBtYXRj
aGluZyBudWxsIG9iaiBjaGVjayB0byBpbnRlbF9jbGVhbnVwX3BsYW5lX2ZiKCkgdG8gcmVzdG9y
ZQp0aGUgYmFsYW5jZS4KCk5vdGUgdGhhdCBpbnRlbF9jbGVhbnVwX3BsYW5lX2ZiKCkgaGFzIHN1
ZmZpY2llbnQgcHJvdGVjdGlvbnMKYWxyZWFkeSBpbiBwbGFjZSB0aGF0IHRoZSBpbWJhbGFuY2Ug
ZG9lc24ndCBjYXVzZSBhbnkgcmVhbCBwcm9ibGVtcy4KQnV0IGhhdmluZyB0aGluZ3MgYmUgaW4g
YmFsYW5jZSBzZWVtcyBuaWNlciBhbnl3YXksIGFuZCBtaWdodCBoZWxwCmF2b2lkIHNvbWUgc3Vy
cHJpc2VzIGluIHRoZSBmdXR1cmUuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpp
bmRleCAyN2I0MzgyMjM0NGIuLmY3OWE2Mzc2YmJmMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE1ODY4LDYgKzE1ODY4LDEwIEBAIGludGVs
X2NsZWFudXBfcGxhbmVfZmIoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsCiAJc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUgPQogCQl0b19pbnRlbF9hdG9taWNfc3RhdGUob2xkX3BsYW5l
X3N0YXRlLT51YXBpLnN0YXRlKTsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KHBsYW5lLT5kZXYpOworCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmog
PSBpbnRlbF9mYl9vYmoob2xkX3BsYW5lX3N0YXRlLT5ody5mYik7CisKKwlpZiAoIW9iaikKKwkJ
cmV0dXJuOwogCiAJaWYgKHN0YXRlLT5ycHNfaW50ZXJhY3RpdmUpIHsKIAkJaW50ZWxfcnBzX21h
cmtfaW50ZXJhY3RpdmUoJmRldl9wcml2LT5ndC5ycHMsIGZhbHNlKTsKLS0gCjIuMjQuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
