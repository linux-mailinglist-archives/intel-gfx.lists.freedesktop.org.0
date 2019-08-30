Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21298A3639
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 14:06:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 670786E2D5;
	Fri, 30 Aug 2019 12:06:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9818E6E2D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 12:06:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 05:06:12 -0700
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; d="scan'208";a="181188730"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 05:06:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Swati Sharma <swati2.sharma@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <1567153913-20166-3-git-send-email-swati2.sharma@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1567153913-20166-1-git-send-email-swati2.sharma@intel.com>
 <1567153913-20166-3-git-send-email-swati2.sharma@intel.com>
Date: Fri, 30 Aug 2019 15:06:05 +0300
Message-ID: <87r2526eoi.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v9][PATCH 02/11] drm/i915/display: Add debug log
 for color parameters
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
Cc: daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAzMCBBdWcgMjAxOSwgU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNv
bT4gd3JvdGU6Cj4gQWRkIGRlYnVnIGxvZyBmb3IgY29sb3IgcmVsYXRlZCBwYXJhbWV0ZXJzIGxp
a2UgZ2FtbWFfbW9kZSwgZ2FtbWFfZW5hYmxlLAo+IGNzY19lbmFibGUsIGV0YyBpbnNpZGUgaW50
ZWxfZHVtcF9waXBlX2NvbmZpZygpLgo+Cj4gdjY6IC1BZGRlZCBkZWJ1ZyBsb2cgZm9yIGNvbG9y
IHBhcmEgaW4gaW50ZWxfZHVtcF9waXBlX2NvbmZpZyBbSmFuaV0KPiB2NzogLVNwbGl0IHBhdGNo
IDMgaW50byA0IHBhdGNoZXMKPiB2ODogLUNvcnJlY3RlZCBhbGlnbm1lbnQgW1VtYV0KPgo+IFNp
Z25lZC1vZmYtYnk6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+CgpSZXZp
ZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCj4gLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgOSArKysrKysrKysK
PiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCBlYTI5MTVkLi5mOWMwODQyIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBA
QCAtMTIxMzgsNiArMTIxMzgsMTUgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHVtcF9waXBlX2NvbmZp
Zyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcsCj4gIAo+ICAJaW50
ZWxfZHBsbF9kdW1wX2h3X3N0YXRlKGRldl9wcml2LCAmcGlwZV9jb25maWctPmRwbGxfaHdfc3Rh
dGUpOwo+ICAKPiArCWlmIChJU19DSEVSUllWSUVXKGRldl9wcml2KSkKPiArCQlEUk1fREVCVUdf
S01TKCJjZ21fbW9kZTogMHgleCBnYW1tYV9tb2RlOiAweCV4IGdhbW1hX2VuYWJsZTogJWQgY3Nj
X2VuYWJsZTogJWRcbiIsCj4gKwkJCSAgICAgIHBpcGVfY29uZmlnLT5jZ21fbW9kZSwgcGlwZV9j
b25maWctPmdhbW1hX21vZGUsCj4gKwkJCSAgICAgIHBpcGVfY29uZmlnLT5nYW1tYV9lbmFibGUs
IHBpcGVfY29uZmlnLT5jc2NfZW5hYmxlKTsKPiArCWVsc2UKPiArCQlEUk1fREVCVUdfS01TKCJj
c2NfbW9kZTogMHgleCBnYW1tYV9tb2RlOiAweCV4IGdhbW1hX2VuYWJsZTogJWQgY3NjX2VuYWJs
ZTogJWRcbiIsCj4gKwkJCSAgICAgIHBpcGVfY29uZmlnLT5jc2NfbW9kZSwgcGlwZV9jb25maWct
PmdhbW1hX21vZGUsCj4gKwkJCSAgICAgIHBpcGVfY29uZmlnLT5nYW1tYV9lbmFibGUsIHBpcGVf
Y29uZmlnLT5jc2NfZW5hYmxlKTsKPiArCj4gIGR1bXBfcGxhbmVzOgo+ICAJaWYgKCFzdGF0ZSkK
PiAgCQlyZXR1cm47CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNz
IENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
