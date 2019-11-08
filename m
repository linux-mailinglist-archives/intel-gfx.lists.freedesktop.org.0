Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15305F4431
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 11:09:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5874C6F900;
	Fri,  8 Nov 2019 10:08:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 464176F900
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 10:08:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 02:08:56 -0800
X-IronPort-AV: E=Sophos;i="5.68,281,1569308400"; d="scan'208";a="196859288"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 02:08:55 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191108003602.33526-3-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191108003602.33526-1-lucas.demarchi@intel.com>
 <20191108003602.33526-3-lucas.demarchi@intel.com>
Date: Fri, 08 Nov 2019 12:08:52 +0200
Message-ID: <87h83e65or.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/bios: make sure to check vbt
 size
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAwNyBOb3YgMjAxOSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IFdoZW4gd2UgY2FsbCBpbnRlbF9iaW9zX2lzX3ZhbGlkX3ZidCgpLCBz
aXplIG1heSBub3QgYWN0dWFsbHkgYmUgdGhlCj4gc2l6ZSBvZiB0aGUgVkJULCBidXQgcmF0aGVy
IHRoZSBzaXplIG9mIHRoZSBibG9iIHRoZSBWQlQgaXMgY29udGFpbmVkCj4gaW4uIEZvciBleGFt
cGxlLCB3aGVuIG1hcHBpbmcgdGhlIFBDSSBvcHJvbSwgc2l6ZSB3aWxsIGJlIHRoZSBlbnRpcmUK
PiBvcHJvbSBzaXplLiBXZSBkb24ndCB3YW50IHRvIHJlYWQgYmV5b25kIHdoYXQgaXMgcmVwb3J0
ZWQgdG8gYmUgdGhlCj4gVkJULiBTbyBtYWtlIHN1cmUgd2UgdmJ0LT52YnRfc2l6ZSBtYWtlcyBz
ZW5zZSBhbmQgdXNlIHRoYXQgZm9yCj4gdGhlIGxhdHRlciBjaGVja3MuCj4KPiBTaWduZWQtb2Zm
LWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiAtLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgfCA0ICsrKy0KPiAgMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPiBpbmRleCAxZjgzNjE2Y2ZjMzIuLjY3
MWJiY2U2YmE1YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Jpb3MuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlv
cy5jCj4gQEAgLTE3NzcsMTEgKzE3NzcsMTMgQEAgYm9vbCBpbnRlbF9iaW9zX2lzX3ZhbGlkX3Zi
dChjb25zdCB2b2lkICpidWYsIHNpemVfdCBzaXplKQo+ICAJaWYgKCF2YnQpCj4gIAkJcmV0dXJu
IGZhbHNlOwo+ICAKPiAtCWlmIChzaXplb2Yoc3RydWN0IHZidF9oZWFkZXIpID4gc2l6ZSkgewo+
ICsJaWYgKHNpemVvZihzdHJ1Y3QgdmJ0X2hlYWRlcikgPiBzaXplIHx8IHZidC0+dmJ0X3NpemUg
PiBzaXplKSB7Cj4gIAkJRFJNX0RFQlVHX0RSSVZFUigiVkJUIGhlYWRlciBpbmNvbXBsZXRlXG4i
KTsKCk5pdHBpY2sgIzEsIHNlbWFudGljYWxseSB5b3Ugc2hvdWxkIGNoZWNrIHRoZSBWQlQgc2ln
bmF0dXJlIGJlZm9yZSB5b3UKa25vdyAtPnZidF9zaXplIG1pZ2h0IG1ha2Ugc2Vuc2UuCgpOaXRw
aWNrICMyLCB0aGUgZGVidWcgbWVzc2FnZSBiZWNvbWVzIGluY3JlYXNpbmdseSBub24taW5mb3Jt
YXRpdmUuIEJ1dApiYXNpY2FsbHkgbW9zdCBtZXNzYWdlcyBpbiB0aGlzIGZ1bmN0aW9uIGFyZSBs
ZXNzIHRoYW4gc3RlbGxhci4KCkluIGFueSBjYXNlLCB0aGUgZ29hbCBpcyBzYW5lLAoKUmV2aWV3
ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cgo+ICAJCXJldHVybiBm
YWxzZTsKPiAgCX0KPiAgCj4gKwlzaXplID0gdmJ0LT52YnRfc2l6ZTsKPiArCj4gIAlpZiAobWVt
Y21wKHZidC0+c2lnbmF0dXJlLCAiJFZCVCIsIDQpKSB7Cj4gIAkJRFJNX0RFQlVHX0RSSVZFUigi
VkJUIGludmFsaWQgc2lnbmF0dXJlXG4iKTsKPiAgCQlyZXR1cm4gZmFsc2U7CgotLSAKSmFuaSBO
aWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
