Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2337EE3D5
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 16:31:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AE376E58E;
	Mon,  4 Nov 2019 15:31:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BB386E58E
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2019 15:31:33 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 07:31:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,267,1569308400"; d="scan'208";a="213564334"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 04 Nov 2019 07:31:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 Nov 2019 17:31:28 +0200
Date: Mon, 4 Nov 2019 17:31:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191104153128.GK1208@intel.com>
References: <20191101142024.13877-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101142024.13877-1-jani.nikula@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: update rawclk also on resume
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

T24gRnJpLCBOb3YgMDEsIDIwMTkgYXQgMDQ6MjA6MjRQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gU2luY2UgQ05QIGl0J3MgcG9zc2libGUgZm9yIHJhd2NsayB0byBoYXZlIHR3byBkaWZm
ZXJlbnQgdmFsdWVzLCAxOS4yCj4gYW5kIDI0IE1Iei4gSWYgdGhlIHZhbHVlIGluZGljYXRlZCBi
eSBTRlVTRV9TVFJBUCByZWdpc3RlciBpcyBkaWZmZXJlbnQKPiBmcm9tIHRoZSBwb3dlciBvbiBk
ZWZhdWx0IGZvciBQQ0hfUkFXQ0xLX0ZSRVEsIHdlJ2xsIGVuZCB1cCBoYXZpbmcgYQo+IG1pc21h
dGNoIGJldHdlZW4gdGhlIHJhd2NsayBoYXJkd2FyZSBhbmQgc29mdHdhcmUgc3RhdGVzIGFmdGVy
Cj4gc3VzcGVuZC9yZXN1bWUuIE9uIHByZXZpb3VzIHBsYXRmb3JtcyB0aGlzIHVzZWQgdG8gd29y
ayBieSBhY2NpZGVudCwKPiBiZWNhdXNlIHRoZSBwb3dlciBvbiBkZWZhdWx0cyB3b3JrZWQganVz
dCBmaW5lLgo+IAo+IFVwZGF0ZSB0aGUgcmF3Y2xrIGFsc28gb24gcmVzdW1lLiBUaGUgbmF0dXJh
bCBwbGFjZSB0byBkbyB0aGlzIHdvdWxkIGJlCj4gaW50ZWxfbW9kZXNldF9pbml0X2h3KCksIGhv
d2V2ZXIgVkxWL0NIViBuZWVkIGl0IGRvbmUgYmVmb3JlCj4gaW50ZWxfcG93ZXJfZG9tYWluc19p
bml0X2h3KCkuIFRodXMgcHV0IGl0IHRoZXJlIGV2ZW4gaWYgaXQgZmVlbHMKPiBzbGlnaHRseSBv
dXQgb2YgcGxhY2UuCj4gCj4gdjI6IENhbGwgaW50ZWxfdXBkYXRlX3Jhd2NsY2soKSBpbiBpbnRl
bF9wb3dlcl9kb21haW5zX2luaXRfaHcoKSBmb3IgYWxsCj4gICAgIHBsYXRmb3JtcyAoVmlsbGUp
Lgo+IAo+IFJlcG9ydGVkLWJ5OiBTaGF3biBMZWUgPHNoYXduLmMubGVlQGludGVsLmNvbT4KPiBD
YzogU2hhd24gTGVlIDxzaGF3bi5jLmxlZUBpbnRlbC5jb20+Cj4gQ2M6IFZpbGxlIFN5cmphbGEg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwgMyArKysKPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgICAgICAgfCAzIC0tLQo+ICAyIGZp
bGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwo+IGlu
ZGV4IDcwN2FjMTEwZTI3MS4uY2UxYjY0ZjRkZDQ0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKPiBAQCAtNTAxNSw2ICs1
MDE1LDkgQEAgdm9pZCBpbnRlbF9wb3dlcl9kb21haW5zX2luaXRfaHcoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUsIGJvb2wgcmVzdW1lKQo+ICAKPiAgCXBvd2VyX2RvbWFpbnMtPmluaXRp
YWxpemluZyA9IHRydWU7Cj4gIAo+ICsJLyogTXVzdCBoYXBwZW4gYmVmb3JlIHBvd2VyIGRvbWFp
biBpbml0IG9uIFZMVi9DSFYgKi8KPiArCWludGVsX3VwZGF0ZV9yYXdjbGsoaTkxNSk7Cj4gKwo+
ICAJaWYgKElOVEVMX0dFTihpOTE1KSA+PSAxMSkgewo+ICAJCWljbF9kaXNwbGF5X2NvcmVfaW5p
dChpOTE1LCByZXN1bWUpOwo+ICAJfSBlbHNlIGlmIChJU19DQU5OT05MQUtFKGk5MTUpKSB7Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gaW5kZXggMzM0MDQ4NWMxMmUzLi43MTk0NDM5OWRjZmMg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBAQCAtMjk2LDkgKzI5Niw2IEBAIHN0YXRp
YyBpbnQgaTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkKPiAgCWlmIChyZXQpCj4gIAkJZ290byBjbGVhbnVwX3ZnYV9jbGllbnQ7Cj4gIAo+IC0J
LyogbXVzdCBoYXBwZW4gYmVmb3JlIGludGVsX3Bvd2VyX2RvbWFpbnNfaW5pdF9odygpIG9uIFZM
Vi9DSFYgKi8KPiAtCWludGVsX3VwZGF0ZV9yYXdjbGsoaTkxNSk7Cj4gLQo+ICAJaW50ZWxfcG93
ZXJfZG9tYWluc19pbml0X2h3KGk5MTUsIGZhbHNlKTsKPiAgCj4gIAlpbnRlbF9jc3JfdWNvZGVf
aW5pdChpOTE1KTsKPiAtLSAKPiAyLjIwLjEKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
