Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E82CA15AA63
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 14:50:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E52B46E05A;
	Wed, 12 Feb 2020 13:50:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0F0A6E05A
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 13:50:16 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 05:50:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="347518727"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 12 Feb 2020 05:50:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2020 15:50:12 +0200
Date: Wed, 12 Feb 2020 15:50:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200212135012.GB13686@intel.com>
References: <20200211172532.14287-1-anshuman.gupta@intel.com>
 <20200211172532.14287-2-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211172532.14287-2-anshuman.gupta@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 1/7] drm/i915: Iterate over pipe and skip
 the disabled one
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBGZWIgMTEsIDIwMjAgYXQgMTA6NTU6MjZQTSArMDUzMCwgQW5zaHVtYW4gR3VwdGEg
d3JvdGU6Cj4gSXQgc2hvdWxkIG5vdCBiZSBhc3N1bWVkIHRoYXQgYSBkaXNhYmxlZCBkaXNwbGF5
IHBpcGUgd2lsbCBiZQo+IGFsd2F5cyBsYXN0IHRoZSBwaXBlLgo+IGZvcl9lYWNoX3BpcGUoKSBz
aG91bGQgaXRlcmF0ZSBvdmVyIEk5MTVfTUFYX1BJUEVTIGFuZCBjaGVjawo+IGZvciB0aGUgZGlz
YWJsZWQgcGlwZSBhbmQgc2tpcCB0aGF0IHBpcGUgc28gdGhhdCBpdCBzaG91bGQgbm90Cj4gaW5p
dGlhbGl6ZSB0aGUgaW50ZWwgY3J0YyBmb3IgYW55IGRpc2FibGVkIHBpcGVzLgo+IAo+IEJlbG93
IGNvbXBpbGF0aW9uIGVycm9yIHJlcXVpcmUgdG8gYmUgaGFuZGxlIGR1ZSB0byBjaGFuZ2UgaW4K
PiBmb3JfZWFjaF9waXBlKCkgbWFjcm8uCj4gInN1Z2dlc3QgZXhwbGljaXQgYnJhY2VzIHRvIGF2
b2lkIGFtYmlndW91cyDigJhlbHNl4oCZIFstV2Vycm9yPWRhbmdsaW5nLWVsc2VdIgo+IAo+IENj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIHwgNSArKyst
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jICAgICAgICAgICAgICB8IDYgKysr
Ky0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCj4gaW5k
ZXggNzU0MzhhMTM2ZDU4Li43YTUzMWU0ODViNTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaAo+IEBAIC0zMTMsMTAgKzMxMywxMSBAQCBlbnVt
IHBoeV9maWEgewo+ICB9Owo+ICAKPiAgI2RlZmluZSBmb3JfZWFjaF9waXBlKF9fZGV2X3ByaXYs
IF9fcCkgXAo+IC0JZm9yICgoX19wKSA9IDA7IChfX3ApIDwgSU5URUxfTlVNX1BJUEVTKF9fZGV2
X3ByaXYpOyAoX19wKSsrKQo+ICsJZm9yICgoX19wKSA9IDA7IChfX3ApIDwgSTkxNV9NQVhfUElQ
RVM7IChfX3ApKyspIFwKPiArCQlmb3JfZWFjaF9pZigoSU5URUxfSU5GTyhfX2Rldl9wcml2KS0+
cGlwZV9tYXNrKSAmIEJJVChfX3ApKQo+ICAKPiAgI2RlZmluZSBmb3JfZWFjaF9waXBlX21hc2tl
ZChfX2Rldl9wcml2LCBfX3AsIF9fbWFzaykgXAo+IC0JZm9yICgoX19wKSA9IDA7IChfX3ApIDwg
SU5URUxfTlVNX1BJUEVTKF9fZGV2X3ByaXYpOyAoX19wKSsrKSBcCj4gKwlmb3JfZWFjaF9waXBl
KF9fZGV2X3ByaXYsIF9fcCkgXAo+ICAJCWZvcl9lYWNoX2lmKChfX21hc2spICYgQklUKF9fcCkp
CgpZb3UgZGlkbid0IGFkZHJlc3MgbXkgY29tbWVudHMgZm9yIHRoaXMgc3R1ZmYhIFBsZWFzZSBk
b24ndCBsZWF2ZQpyZXZpZXcgY29tbWVudHMgdW5hZGRyZXNzZWQsIGl0J3MganVzdCB3YXN0aW5n
IGV2ZXJ5b25lJ3MgdGltZS4KCj4gIAo+ICAjZGVmaW5lIGZvcl9lYWNoX2NwdV90cmFuc2NvZGVy
X21hc2tlZChfX2Rldl9wcml2LCBfX3QsIF9fbWFzaykgXAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEu
Ywo+IGluZGV4IDNkMGNkMDk2MGJkMi4uYTI2ZjJiZjFiNmVhIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jCj4gQEAgLTE3MzksMTEgKzE3MzksMTIgQEAgc3RhdGljIHZvaWQgaWJ4X2lycV9o
YW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIHBjaF9paXIpCj4g
IAlpZiAocGNoX2lpciAmIFNERV9QT0lTT04pCj4gIAkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwg
IlBDSCBwb2lzb24gaW50ZXJydXB0XG4iKTsKPiAgCj4gLQlpZiAocGNoX2lpciAmIFNERV9GRElf
TUFTSykKPiArCWlmIChwY2hfaWlyICYgU0RFX0ZESV9NQVNLKSB7Cj4gIAkJZm9yX2VhY2hfcGlw
ZShkZXZfcHJpdiwgcGlwZSkKPiAgCQkJZHJtX2RiZygmZGV2X3ByaXYtPmRybSwgIiAgcGlwZSAl
YyBGREkgSUlSOiAweCUwOHhcbiIsCj4gIAkJCQlwaXBlX25hbWUocGlwZSksCj4gIAkJCQlJOTE1
X1JFQUQoRkRJX1JYX0lJUihwaXBlKSkpOwo+ICsJfQo+ICAKPiAgCWlmIChwY2hfaWlyICYgKFNE
RV9UUkFOU0JfQ1JDX0RPTkUgfCBTREVfVFJBTlNBX0NSQ19ET05FKSkKPiAgCQlkcm1fZGJnKCZk
ZXZfcHJpdi0+ZHJtLCAiUENIIHRyYW5zY29kZXIgQ1JDIGRvbmUgaW50ZXJydXB0XG4iKTsKPiBA
QCAtMTgyMywxMSArMTgyNCwxMiBAQCBzdGF0aWMgdm9pZCBjcHRfaXJxX2hhbmRsZXIoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgcGNoX2lpcikKPiAgCWlmIChwY2hfaWly
ICYgU0RFX0FVRElPX0NQX0NIR19DUFQpCj4gIAkJZHJtX2RiZygmZGV2X3ByaXYtPmRybSwgIkF1
ZGlvIENQIGNoYW5nZSBpbnRlcnJ1cHRcbiIpOwo+ICAKPiAtCWlmIChwY2hfaWlyICYgU0RFX0ZE
SV9NQVNLX0NQVCkKPiArCWlmIChwY2hfaWlyICYgU0RFX0ZESV9NQVNLX0NQVCkgewo+ICAJCWZv
cl9lYWNoX3BpcGUoZGV2X3ByaXYsIHBpcGUpCj4gIAkJCWRybV9kYmcoJmRldl9wcml2LT5kcm0s
ICIgIHBpcGUgJWMgRkRJIElJUjogMHglMDh4XG4iLAo+ICAJCQkJcGlwZV9uYW1lKHBpcGUpLAo+
ICAJCQkJSTkxNV9SRUFEKEZESV9SWF9JSVIocGlwZSkpKTsKPiArCX0KPiAgCj4gIAlpZiAocGNo
X2lpciAmIFNERV9FUlJPUl9DUFQpCj4gIAkJY3B0X3NlcnJfaW50X2hhbmRsZXIoZGV2X3ByaXYp
Owo+IC0tIAo+IDIuMjQuMAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
