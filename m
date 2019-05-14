Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CEAE1CBC2
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 17:24:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2122A892F2;
	Tue, 14 May 2019 15:23:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80A80892F2
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2019 15:23:56 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 08:23:55 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 14 May 2019 08:23:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 May 2019 18:23:52 +0300
Date: Tue, 14 May 2019 18:23:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Swati Sharma <swati2.sharma@intel.com>
Message-ID: <20190514152352.GB24299@intel.com>
References: <1557827010-24239-1-git-send-email-swati2.sharma@intel.com>
 <1557827010-24239-2-git-send-email-swati2.sharma@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557827010-24239-2-git-send-email-swati2.sharma@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBNYXkgMTQsIDIwMTkgYXQgMDM6MTM6MTlQTSArMDUzMCwgU3dhdGkgU2hhcm1hIHdy
b3RlOgo+IEluIHRoaXMgcGF0Y2gsIGEgdmZ1bmMgcmVhZF9sdXRzKCkgaXMgaW50cm9kdWNlZCB0
byBjcmVhdGUgYSBodyBsdXQKPiBpLmUuIGx1dCBoYXZpbmcgdmFsdWVzIHJlYWQgZnJvbSBnYW1t
YS9kZWdhbW1hIHJlZ2lzdGVycyB3aGljaCB3aWxsCj4gbGF0ZXIgYmUgdXNlZCB0byBjb21wYXJl
IHdpdGggc3cgbHV0IHRvIHZhbGlkYXRlIGdhbW1hL2RlZ2FtbWEgbHV0IHZhbHVlcy4KPiAKPiB2
MzogLVJlYmFzZQo+IHY0OiAtUmVuYW1lZCBpbnRlbF9nZXRfY29sb3JfY29uZmlnIHRvIGludGVs
X2NvbG9yX2dldF9jb25maWcgW0phbmldCj4gICAgIC1XcmFwcGVkIGdldF9jb2xvcl9jb25maWco
KSBbSmFuaV0KPiB2NTogLVJlbmFtZWQgaW50ZWxfY29sb3JfZ2V0X2NvbmZpZygpIHRvIGludGVs
X2NvbG9yX3JlYWRfbHV0cygpCj4gICAgIC1SZW5hbWVkIGdldF9jb2xvcl9jb25maWcgdG8gcmVh
ZF9sdXRzCj4gdjY6IC1SZW5hbWVkIGludGVsX2NvbG9yX3JlYWRfbHV0cygpIGJhY2sgdG8gaW50
ZWxfY29sb3JfZ2V0X2NvbmZpZygpCj4gICAgICBbSmFuaSBhbmQgVmlsbGVdCj4gCj4gU2lnbmVk
LW9mZi1ieTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KPiAtLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICB8IDEgKwo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9jb2xvci5jIHwgOCArKysrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9jb2xvci5oIHwgMSArCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygr
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IGluZGV4IGQwMjU3ODAuLjYzNDNlNzAgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBAQCAtMzQzLDYgKzM0Myw3IEBAIHN0cnVjdCBk
cm1faTkxNV9kaXNwbGF5X2Z1bmNzIHsKPiAgCSAqIGludm9sdmVkIHdpdGggdGhlIHNhbWUgY29t
bWl0Lgo+ICAJICovCj4gIAl2b2lkICgqbG9hZF9sdXRzKShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4gKwl2b2lkICgqcmVhZF9sdXRzKShzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CgpJIHRoaW5rIEphbmkgd2FudGVkIHRoZSBlbnRpcmUg
dmZ1bmMgcmVuYW1lZCBiYWNrLgoKPiAgfTsKPiAgCj4gIHN0cnVjdCBpbnRlbF9jc3Igewo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYwo+IGluZGV4IDk2MmRiMTIuLjUwYjk4ZWUgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMKPiBAQCAtODc5LDYgKzg3OSwxNCBAQCBpbnQg
aW50ZWxfY29sb3JfY2hlY2soc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4g
IAlyZXR1cm4gZGV2X3ByaXYtPmRpc3BsYXkuY29sb3JfY2hlY2soY3J0Y19zdGF0ZSk7Cj4gIH0K
PiAgCj4gK3ZvaWQgaW50ZWxfY29sb3JfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKPiArewo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShjcnRjX3N0YXRlLT5iYXNlLmNydGMtPmRldik7Cj4gKwo+ICsJaWYgKGRldl9w
cml2LT5kaXNwbGF5LnJlYWRfbHV0cykKPiArCQlkZXZfcHJpdi0+ZGlzcGxheS5yZWFkX2x1dHMo
Y3J0Y19zdGF0ZSk7Cj4gK30KPiArCj4gIHN0YXRpYyBib29sIG5lZWRfcGxhbmVfdXBkYXRlKHN0
cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCj4gIAkJCSAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICB7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2NvbG9yLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5o
Cj4gaW5kZXggYjhhM2NlNi4uMDU3ZThhYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9jb2xvci5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29s
b3IuaAo+IEBAIC0xMyw1ICsxMyw2IEBACj4gIGludCBpbnRlbF9jb2xvcl9jaGVjayhzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4gIHZvaWQgaW50ZWxfY29sb3JfY29tbWl0
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKPiAgdm9pZCBpbnRl
bF9jb2xvcl9sb2FkX2x1dHMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpOwo+ICt2b2lkIGludGVsX2NvbG9yX2dldF9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpOwo+ICAKPiAgI2VuZGlmIC8qIF9fSU5URUxfQ09MT1JfSF9fICovCj4g
LS0gCj4gMS45LjEKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
