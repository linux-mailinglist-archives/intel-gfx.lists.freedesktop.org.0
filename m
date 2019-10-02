Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA536C8C34
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 17:00:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 318056E120;
	Wed,  2 Oct 2019 15:00:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CBD76E120
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 15:00:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 08:00:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="221427936"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 02 Oct 2019 08:00:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Oct 2019 18:00:25 +0300
Date: Wed, 2 Oct 2019 18:00:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191002150025.GW1208@intel.com>
References: <20191002145405.27848-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002145405.27848-1-jani.nikula@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: use DRM_ERROR() instead of
 drm_err()
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

T24gV2VkLCBPY3QgMDIsIDIwMTkgYXQgMDU6NTQ6MDRQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gVW5pZnkgb24gY3VycmVudCBjb21tb24gdXNhZ2UgdG8gYWxsb3cgcmVwdXJwb3Npbmcg
ZHJtX2VycigpIGxhdGVyLiBGaXgKPiBuZXdsaW5lcyB3aGlsZSBhdCBpdC4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgoKU2VyaWVzIGlzClJl
dmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
fCA4ICsrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKPiBpbmRleCBkOTljNTllOTc1NjguLjc4MWY2ZWE3Y2NmOSAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTEyNTYyLDEwICsxMjU2
MiwxMCBAQCBwaXBlX2NvbmZpZ19pbmZvZnJhbWVfbWlzbWF0Y2goc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAo+ICAJCWRybV9kYmcoRFJNX1VUX0tNUywgImZvdW5kIik7Cj4gIAkJ
aGRtaV9pbmZvZnJhbWVfbG9nKEtFUk5fREVCVUcsIGRldl9wcml2LT5kcm0uZGV2LCBiKTsKPiAg
CX0gZWxzZSB7Cj4gLQkJZHJtX2VycigibWlzbWF0Y2ggaW4gJXMgaW5mb2ZyYW1lIiwgbmFtZSk7
Cj4gLQkJZHJtX2VycigiZXhwZWN0ZWQ6Iik7Cj4gKwkJRFJNX0VSUk9SKCJtaXNtYXRjaCBpbiAl
cyBpbmZvZnJhbWVcbiIsIG5hbWUpOwo+ICsJCURSTV9FUlJPUigiZXhwZWN0ZWQ6XG4iKTsKPiAg
CQloZG1pX2luZm9mcmFtZV9sb2coS0VSTl9FUlIsIGRldl9wcml2LT5kcm0uZGV2LCBhKTsKPiAt
CQlkcm1fZXJyKCJmb3VuZCIpOwo+ICsJCURSTV9FUlJPUigiZm91bmQ6XG4iKTsKPiAgCQloZG1p
X2luZm9mcmFtZV9sb2coS0VSTl9FUlIsIGRldl9wcml2LT5kcm0uZGV2LCBiKTsKPiAgCX0KPiAg
fQo+IEBAIC0xMjU4Myw3ICsxMjU4Myw3IEBAIHBpcGVfY29uZmlnX21pc21hdGNoKGJvb2wgZmFz
dHNldCwgY29uc3QgY2hhciAqbmFtZSwgY29uc3QgY2hhciAqZm9ybWF0LCAuLi4pCj4gIAlpZiAo
ZmFzdHNldCkKPiAgCQlkcm1fZGJnKERSTV9VVF9LTVMsICJmYXN0c2V0IG1pc21hdGNoIGluICVz
ICVwViIsIG5hbWUsICZ2YWYpOwo+ICAJZWxzZQo+IC0JCWRybV9lcnIoIm1pc21hdGNoIGluICVz
ICVwViIsIG5hbWUsICZ2YWYpOwo+ICsJCURSTV9FUlJPUigibWlzbWF0Y2ggaW4gJXMgJXBWXG4i
LCBuYW1lLCAmdmFmKTsKPiAgCj4gIAl2YV9lbmQoYXJncyk7Cj4gIH0KPiAtLSAKPiAyLjIwLjEK
PiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IElu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4g
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
Ci0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
