Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0442D1E94E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2019 09:45:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55DBA895B5;
	Wed, 15 May 2019 07:45:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CC65895B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2019 07:45:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 May 2019 00:45:04 -0700
X-ExtLoop1: 1
Received: from mwesterb-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.151])
 by fmsmga001.fm.intel.com with ESMTP; 15 May 2019 00:45:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Swati
 Sharma <swati2.sharma@intel.com>
In-Reply-To: <20190514152352.GB24299@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1557827010-24239-1-git-send-email-swati2.sharma@intel.com>
 <1557827010-24239-2-git-send-email-swati2.sharma@intel.com>
 <20190514152352.GB24299@intel.com>
Date: Wed, 15 May 2019 10:45:05 +0300
Message-ID: <87v9yc6u0u.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v6][PATCH 01/12] drm/i915: Introduce vfunc
 read_luts() to create hw lut
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxNCBNYXkgMjAxOSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gVHVlLCBNYXkgMTQsIDIwMTkgYXQgMDM6MTM6MTlQTSAr
MDUzMCwgU3dhdGkgU2hhcm1hIHdyb3RlOgo+PiBJbiB0aGlzIHBhdGNoLCBhIHZmdW5jIHJlYWRf
bHV0cygpIGlzIGludHJvZHVjZWQgdG8gY3JlYXRlIGEgaHcgbHV0Cj4+IGkuZS4gbHV0IGhhdmlu
ZyB2YWx1ZXMgcmVhZCBmcm9tIGdhbW1hL2RlZ2FtbWEgcmVnaXN0ZXJzIHdoaWNoIHdpbGwKPj4g
bGF0ZXIgYmUgdXNlZCB0byBjb21wYXJlIHdpdGggc3cgbHV0IHRvIHZhbGlkYXRlIGdhbW1hL2Rl
Z2FtbWEgbHV0IHZhbHVlcy4KPj4gCj4+IHYzOiAtUmViYXNlCj4+IHY0OiAtUmVuYW1lZCBpbnRl
bF9nZXRfY29sb3JfY29uZmlnIHRvIGludGVsX2NvbG9yX2dldF9jb25maWcgW0phbmldCj4+ICAg
ICAtV3JhcHBlZCBnZXRfY29sb3JfY29uZmlnKCkgW0phbmldCj4+IHY1OiAtUmVuYW1lZCBpbnRl
bF9jb2xvcl9nZXRfY29uZmlnKCkgdG8gaW50ZWxfY29sb3JfcmVhZF9sdXRzKCkKPj4gICAgIC1S
ZW5hbWVkIGdldF9jb2xvcl9jb25maWcgdG8gcmVhZF9sdXRzCj4+IHY2OiAtUmVuYW1lZCBpbnRl
bF9jb2xvcl9yZWFkX2x1dHMoKSBiYWNrIHRvIGludGVsX2NvbG9yX2dldF9jb25maWcoKQo+PiAg
ICAgIFtKYW5pIGFuZCBWaWxsZV0KPj4gCj4+IFNpZ25lZC1vZmYtYnk6IFN3YXRpIFNoYXJtYSA8
c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCAgICB8IDEgKwo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3Iu
YyB8IDggKysrKysrKysKPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmggfCAx
ICsKPj4gIDMgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+PiAKPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oCj4+IGluZGV4IGQwMjU3ODAuLjYzNDNlNzAgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaAo+PiBAQCAtMzQzLDYgKzM0Myw3IEBAIHN0cnVjdCBkcm1faTkxNV9kaXNw
bGF5X2Z1bmNzIHsKPj4gIAkgKiBpbnZvbHZlZCB3aXRoIHRoZSBzYW1lIGNvbW1pdC4KPj4gIAkg
Ki8KPj4gIAl2b2lkICgqbG9hZF9sdXRzKShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSk7Cj4+ICsJdm9pZCAoKnJlYWRfbHV0cykoc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpOwo+Cj4gSSB0aGluayBKYW5pIHdhbnRlZCB0aGUgZW50aXJlIHZmdW5j
IHJlbmFtZWQgYmFjay4KCipzaHJ1Zyogbm90IHNvIGltcG9ydGFudCBhcyB0aGUgbWFpbiBlbnRy
eSBwb2ludCBiZWxvdy4KCkJSLApKYW5pLAoKPgo+PiAgfTsKPj4gIAo+PiAgc3RydWN0IGludGVs
X2NzciB7Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYwo+PiBpbmRleCA5NjJkYjEyLi41
MGI5OGVlIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5j
Cj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMKPj4gQEAgLTg3OSw2
ICs4NzksMTQgQEAgaW50IGludGVsX2NvbG9yX2NoZWNrKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKQo+PiAgCXJldHVybiBkZXZfcHJpdi0+ZGlzcGxheS5jb2xvcl9jaGVjayhj
cnRjX3N0YXRlKTsKPj4gIH0KPj4gIAo+PiArdm9pZCBpbnRlbF9jb2xvcl9nZXRfY29uZmlnKHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+PiArewo+PiArCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+YmFzZS5jcnRjLT5k
ZXYpOwo+PiArCj4+ICsJaWYgKGRldl9wcml2LT5kaXNwbGF5LnJlYWRfbHV0cykKPj4gKwkJZGV2
X3ByaXYtPmRpc3BsYXkucmVhZF9sdXRzKGNydGNfc3RhdGUpOwo+PiArfQo+PiArCj4+ICBzdGF0
aWMgYm9vbCBuZWVkX3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAo+PiAg
CQkJICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4+ICB7
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuaAo+PiBpbmRleCBiOGEzY2U2Li4wNTdlOGFj
IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5oCj4+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmgKPj4gQEAgLTEzLDUgKzEzLDYg
QEAKPj4gIGludCBpbnRlbF9jb2xvcl9jaGVjayhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSk7Cj4+ICB2b2lkIGludGVsX2NvbG9yX2NvbW1pdChjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4+ICB2b2lkIGludGVsX2NvbG9yX2xvYWRfbHV0cyhj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4+ICt2b2lkIGludGVs
X2NvbG9yX2dldF9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwo+
PiAgCj4+ICAjZW5kaWYgLyogX19JTlRFTF9DT0xPUl9IX18gKi8KPj4gLS0gCj4+IDEuOS4xCgot
LSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
