Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF582AB7DC
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 14:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71BCA89276;
	Fri,  6 Sep 2019 12:09:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18BCA89276
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 12:09:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 05:09:47 -0700
X-IronPort-AV: E=Sophos;i="5.64,473,1559545200"; d="scan'208";a="334873514"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 05:09:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Swati Sharma <swati2.sharma@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <1567711031-26144-2-git-send-email-swati2.sharma@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1567711031-26144-1-git-send-email-swati2.sharma@intel.com>
 <1567711031-26144-2-git-send-email-swati2.sharma@intel.com>
Date: Fri, 06 Sep 2019 15:09:40 +0300
Message-ID: <87pnkd39tn.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display: Add gamma precision
 function for CHV
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

T24gRnJpLCAwNiBTZXAgMjAxOSwgU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNv
bT4gd3JvdGU6Cj4gaW50ZWxfY29sb3JfZ2V0X2dhbW1hX2JpdF9wcmVjaXNpb24oKSBpcyBleHRl
bmRlZCBmb3IKPiBjaGVycnl2aWV3IGJ5IGFkZGluZyBjaHZfZ2FtbWFfcHJlY2lzaW9uKCksIGk5
NjUgd2lsbCB1c2UgZXhpc3RpbmcKPiBpOXh4X2dhbW1hX3ByZWNpc2lvbigpIGZ1bmMgb25seS4K
Pgo+IFNpZ25lZC1vZmYtYnk6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+
CgpDb3VsZCBiZSBwYXJ0IG9mIHBhdGNoIDMvMywgYnV0IG5vIGJpZyBkZWFsLAoKUmV2aWV3ZWQt
Ynk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCAyNSArKysrKysrKysrKysrKysr
KysrLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y29sb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwo+IGlu
ZGV4IDZkNjQxZTEuLjRkOWE1NjggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jb2xvci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb2xvci5jCj4gQEAgLTE0MDAsNiArMTQwMCwxNCBAQCBzdGF0aWMgaW50IGlsa19n
YW1tYV9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
Cj4gIAl9Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQgY2h2X2dhbW1hX3ByZWNpc2lvbihjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiArewo+ICsJaWYgKGNydGNfc3Rh
dGUtPmNnbV9tb2RlICYgQ0dNX1BJUEVfTU9ERV9HQU1NQSkKPiArCQlyZXR1cm4gMTA7Cj4gKwll
bHNlCj4gKwkJcmV0dXJuIGk5eHhfZ2FtbWFfcHJlY2lzaW9uKGNydGNfc3RhdGUpOwo+ICt9Cj4g
Kwo+ICBzdGF0aWMgaW50IGdsa19nYW1tYV9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gIHsKPiAgCXN3aXRjaCAoY3J0Y19zdGF0ZS0+Z2FtbWFf
bW9kZSkgewo+IEBAIC0xNDIxLDEyICsxNDI5LDE3IEBAIGludCBpbnRlbF9jb2xvcl9nZXRfZ2Ft
bWFfYml0X3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
Cj4gIAlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSkKPiAgCQlyZXR1cm4gMDsKPiAgCj4g
LQlpZiAoSEFTX0dNQ0goZGV2X3ByaXYpICYmICFJU19DSEVSUllWSUVXKGRldl9wcml2KSkKPiAt
CQlyZXR1cm4gaTl4eF9nYW1tYV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7Cj4gLQllbHNlIGlmIChJ
U19DQU5OT05MQUtFKGRldl9wcml2KSB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKPiAtCQly
ZXR1cm4gZ2xrX2dhbW1hX3ByZWNpc2lvbihjcnRjX3N0YXRlKTsKPiAtCWVsc2UgaWYgKElTX0lS
T05MQUtFKGRldl9wcml2KSkKPiAtCQlyZXR1cm4gaWxrX2dhbW1hX3ByZWNpc2lvbihjcnRjX3N0
YXRlKTsKPiArCWlmIChIQVNfR01DSChkZXZfcHJpdikpIHsKPiArCQlpZiAoSVNfQ0hFUlJZVklF
VyhkZXZfcHJpdikpCj4gKwkJCXJldHVybiBjaHZfZ2FtbWFfcHJlY2lzaW9uKGNydGNfc3RhdGUp
Owo+ICsJCWVsc2UKPiArCQkJcmV0dXJuIGk5eHhfZ2FtbWFfcHJlY2lzaW9uKGNydGNfc3RhdGUp
Owo+ICsJfSBlbHNlIHsKPiArCQlpZiAoSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikgfHwgSVNfR0VN
SU5JTEFLRShkZXZfcHJpdikpCj4gKwkJCXJldHVybiBnbGtfZ2FtbWFfcHJlY2lzaW9uKGNydGNf
c3RhdGUpOwo+ICsJCWVsc2UgaWYgKElTX0lST05MQUtFKGRldl9wcml2KSkKPiArCQkJcmV0dXJu
IGlsa19nYW1tYV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7Cj4gKwl9Cj4gIAo+ICAJcmV0dXJuIDA7
Cj4gIH0KCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVy
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
