Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F1AC8C3A
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 17:03:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D7486E124;
	Wed,  2 Oct 2019 15:03:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 931236E124
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 15:03:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 08:03:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="185576234"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 02 Oct 2019 08:03:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Oct 2019 18:03:35 +0300
Date: Wed, 2 Oct 2019 18:03:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191002150335.GX1208@intel.com>
References: <20191002131800.21054-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002131800.21054-1-jani.nikula@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/vga: rename
 intel_vga_msr_write() to intel_vga_reset_io_mem()
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

T24gV2VkLCBPY3QgMDIsIDIwMTkgYXQgMDQ6MTc6NTdQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gUmVuYW1lIHRoZSBmdW5jdGlvbiBwZXIgVmlsbGUncyBzdWdnZXN0aW9uLiBObyBmdW5j
dGlvbmFsIGNoYW5nZXMuCj4gCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4gU3VnZ2VzdGVkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3ZnYS5jICAgICAgICAgICB8IDIgKy0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF92Z2EuaCAgICAgICAgICAgfCAyICstCj4gIDMgZmlsZXMgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCj4gaW5kZXggYmI2
NDJhMWEwZGQ0Li4wNjE2Mjg0YzZkYTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwo+IEBAIC0yNjcsNyArMjY3LDcgQEAg
c3RhdGljIHZvaWQgaHN3X3Bvd2VyX3dlbGxfcG9zdF9lbmFibGUoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAo+ICAJCQkJICAgICAgIHU4IGlycV9waXBlX21hc2ssIGJvb2wgaGFz
X3ZnYSkKPiAgewo+ICAJaWYgKGhhc192Z2EpCj4gLQkJaW50ZWxfdmdhX21zcl93cml0ZShkZXZf
cHJpdik7Cj4gKwkJaW50ZWxfdmdhX3Jlc2V0X2lvX21lbShkZXZfcHJpdik7Cj4gIAo+ICAJaWYg
KGlycV9waXBlX21hc2spCj4gIAkJZ2VuOF9pcnFfcG93ZXJfd2VsbF9wb3N0X2VuYWJsZShkZXZf
cHJpdiwgaXJxX3BpcGVfbWFzayk7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmdhLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3ZnYS5jCj4gaW5kZXggNzMyNTY4ZWFhOTg4Li4yZmY3MjkzOTg2ZDQgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2EuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmMKPiBAQCAtNzIsNyArNzIsNyBAQCB2b2lk
IGludGVsX3ZnYV9yZWRpc2FibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIAlp
bnRlbF9kaXNwbGF5X3Bvd2VyX3B1dChpOTE1LCBQT1dFUl9ET01BSU5fVkdBLCB3YWtlcmVmKTsK
PiAgfQo+ICAKPiAtdm9pZCBpbnRlbF92Z2FfbXNyX3dyaXRlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQo+ICt2b2lkIGludGVsX3ZnYV9yZXNldF9pb19tZW0oc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUpCj4gIHsKPiAgCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gaTkxNS0+ZHJt
LnBkZXY7Cj4gIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3ZnYS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2EuaAo+IGlu
ZGV4IDM1MTc4NzJlNjJhYy4uYmE1YjU1YjkxN2YwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3ZnYS5oCj4gQEAgLTgsNyArOCw3IEBACj4gIAo+ICBzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZTsKPiAgCj4gLXZvaWQgaW50ZWxfdmdhX21zcl93cml0ZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSk7Cj4gK3ZvaWQgaW50ZWxfdmdhX3Jlc2V0X2lvX21lbShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7Cj4gIHZvaWQgaW50ZWxfdmdhX2Rpc2FibGUoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+ICB2b2lkIGludGVsX3ZnYV9yZWRpc2FibGUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+ICB2b2lkIGludGVsX3ZnYV9yZWRpc2Fi
bGVfcG93ZXJfb24oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+IC0tIAo+IDIuMjAu
MQoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
