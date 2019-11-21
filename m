Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB1C1059B1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 19:37:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB4F66E169;
	Thu, 21 Nov 2019 18:37:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0ECA6E169
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 18:37:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 10:37:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,226,1571727600"; d="scan'208";a="210001956"
Received: from vrkonda-desk.ra.intel.com ([134.134.244.79])
 by orsmga003.jf.intel.com with ESMTP; 21 Nov 2019 10:37:29 -0800
Date: Thu, 21 Nov 2019 10:37:29 -0800
From: Vanshidhar Konda <vanshidhar.r.konda@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191121183729.sruf34xgw2iccwev@vrkonda-desk.ra.intel.com>
References: <20191121181101.401609-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121181101.401609-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915: disable set/get_tiling
 ioctl on gen12+"
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMjEsIDIwMTkgYXQgMDY6MTE6MDFQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+UmVzdG9yZSB0aGUgRFJJMi9EUkkzIHVBQkkgYmFja2NoYW5uZWwgdGhhdCB3YXMgcmVt
b3ZlZCBieSBhYjAxNjkxNDk4NGUKPigiZHJtL2k5MTU6IGRpc2FibGUgc2V0L2dldF90aWxpbmcg
aW9jdGwgb24gZ2VuMTIrIikgYmVmb3JlIHRoZSBBQkkKPmNoYW5nZSB3YXMgYWdyZWVkIHVwb24u
Cj4KPkZpeGVzOiBhYjAxNjkxNDk4NGUgKCJkcm0vaTkxNTogZGlzYWJsZSBzZXQvZ2V0X3RpbGlu
ZyBpb2N0bCBvbiBnZW4xMisiKQo+U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj5DYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5A
bGludXguaW50ZWwuY29tPgoKQWNrZWQtYnk6IFZhbnNoaWRoYXIgS29uZGEgPHZhbnNoaWRoYXIu
ci5rb25kYUBpbnRlbC5jb20+Cgo+LS0tCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3RpbGluZy5jIHwgNyAtLS0tLS0tCj4gMSBmaWxlIGNoYW5nZWQsIDcgZGVsZXRpb25zKC0p
Cj4KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdGlsaW5n
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdGlsaW5nLmMKPmluZGV4IDFm
YTU5MmQ4MmFmNS4uMzlmM2JkNWRlZmQ2IDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3RpbGluZy5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fdGlsaW5nLmMKPkBAIC0zMTcsMTQgKzMxNywxMCBAQCBpbnQKPiBpOTE1X2dlbV9z
ZXRfdGlsaW5nX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4gCQkJ
ICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCj4gewo+LQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSB0b19pOTE1KGRldik7Cj4gCXN0cnVjdCBkcm1faTkxNV9nZW1fc2V0X3RpbGlu
ZyAqYXJncyA9IGRhdGE7Cj4gCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4gCWlu
dCBlcnI7Cj4KPi0JaWYgKCFkZXZfcHJpdi0+Z2d0dC5udW1fZmVuY2VzKQo+LQkJcmV0dXJuIC1F
T1BOT1RTVVBQOwo+LQo+IAlvYmogPSBpOTE1X2dlbV9vYmplY3RfbG9va3VwKGZpbGUsIGFyZ3Mt
PmhhbmRsZSk7Cj4gCWlmICghb2JqKQo+IAkJcmV0dXJuIC1FTk9FTlQ7Cj5AQCAtNDA1LDkgKzQw
MSw2IEBAIGk5MTVfZ2VtX2dldF90aWxpbmdfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwg
dm9pZCAqZGF0YSwKPiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPiAJaW50IGVy
ciA9IC1FTk9FTlQ7Cj4KPi0JaWYgKCFkZXZfcHJpdi0+Z2d0dC5udW1fZmVuY2VzKQo+LQkJcmV0
dXJuIC1FT1BOT1RTVVBQOwo+LQo+IAlyY3VfcmVhZF9sb2NrKCk7Cj4gCW9iaiA9IGk5MTVfZ2Vt
X29iamVjdF9sb29rdXBfcmN1KGZpbGUsIGFyZ3MtPmhhbmRsZSk7Cj4gCWlmIChvYmopIHsKPi0t
IAo+Mi4yNC4wCj4KPl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj5JbnRlbC1nZnggbWFpbGluZyBsaXN0Cj5JbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj5odHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
