Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7062F4CA1E
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 10:58:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D745A892BC;
	Thu, 20 Jun 2019 08:58:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBB80892BC
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 08:58:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 01:58:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,396,1557212400"; d="scan'208";a="181821163"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 20 Jun 2019 01:58:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "1560933806-5184-1-git-send-email-shawn.c.lee\@intel.com"
 <1560933806-5184-1-git-send-email-shawn.c.lee@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <D42A2A322A1FCA4089E30E9A9BA36AC65D61A9DD@PGSMSX111.gar.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1560913807-10464-1-git-send-email-shawn.c.lee@intel.com>
 <1560933806-5184-1-git-send-email-shawn.c.lee@intel.com>
 <874l4lnca2.fsf@intel.com>
 <D42A2A322A1FCA4089E30E9A9BA36AC65D61A9DD@PGSMSX111.gar.corp.intel.com>
Date: Thu, 20 Jun 2019 12:00:53 +0300
Message-ID: <875zp0tyuy.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Check backlight type while
 doing eDP backlight initializaiton
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMCBKdW4gMjAxOSwgIkxlZSwgU2hhd24gQyIgPHNoYXduLmMubGVlQGludGVsLmNv
bT4gd3JvdGU6Cj4gT24gV2VkLCAxOSBKdW4gMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGludGVsLmNvbT4gd3JvdGU6Cj4+T24gV2VkLCAxOSBKdW4gMjAxOSwgTGVlIFNoYXduIEMgPHNo
YXduLmMubGVlQGludGVsLmNvbT4gd3JvdGU6Cj4+PiBJZiBMRlAgYmFja2xpZ2h0IHR5cGUgc2V0
dGluZyBmcm9tIFZCVCB3YXMgIlZFU0EgZURQIEFVWCBJbnRlcmZhY2UiLgo+Pj4gRHJpdmVyIHNo
b3VsZCBjaGVjayBwYW5lbCBjYXBhYmlsaXR5IGFuZCB0cnkgdG8gaW5pdGlhbGl6ZSBhdXggYmFj
a2xpZ2h0Lgo+Pj4gTm8gbWF0dGVyIGk5MTVfbW9kcGFyYW1zLmVuYWJsZV9kcGNkX2JhY2tsaWdo
dCB3YXMgZW5hYmxlZCBvciBub3QuCj4+Pgo+Pj4gdjI6IGFjY2VzcyBkZXZfcHJpdi0+dmJ0LmJh
Y2tsaWdodC50eXBlIGRpcmVjdGx5IGFuZCByZW1vdmUgdW51c2VkIGZ1bmN0aW9uLgo+Pj4KPj4+
IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+Pj4g
Q2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4+PiBDYzogSm9zZSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPj4+IENjOiBDb29wZXIgQ2hpb3Ug
PGNvb3Blci5jaGlvdUBpbnRlbC5jb20+Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTGVlIFNoYXdu
IEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4KPj4+IC0tLQo+Pj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oICAgICAgICAgICAgIHwgMSArCj4+PiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMgfCA0ICsrKy0KPj4+
ICAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pj4KPj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaCAK
Pj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgKPj4+IGluZGV4
IDRlNDJjZmFmNjFhNy4uMGI3YmU2Mzg5YTA3IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oCj4+PiBAQCAtNDIsNiArNDIsNyBAQCBlbnVtIGludGVs
X2JhY2tsaWdodF90eXBlIHsKPj4+ICAJSU5URUxfQkFDS0xJR0hUX0RJU1BMQVlfRERJLAo+Pj4g
IAlJTlRFTF9CQUNLTElHSFRfRFNJX0RDUywKPj4+ICAJSU5URUxfQkFDS0xJR0hUX1BBTkVMX0RS
SVZFUl9JTlRFUkZBQ0UsCj4+PiArCUlOVEVMX0JBQ0tMSUdIVF9WRVNBX0VEUF9BVVhfSU5URVJG
QUNFLAo+Pj4gIH07Cj4+PiAgCj4+PiAgc3RydWN0IGVkcF9wb3dlcl9zZXEgewo+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdo
dC5jIAo+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNr
bGlnaHQuYwo+Pj4gaW5kZXggN2RlZDk1YTMzNGRiLi5kYjdjN2I5ZjliNTYgMTAwNjQ0Cj4+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQu
Ywo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFj
a2xpZ2h0LmMKPj4+IEBAIC0yNjQsOCArMjY0LDEwIEBAIGludGVsX2RwX2F1eF9kaXNwbGF5X2Nv
bnRyb2xfY2FwYWJsZShzdHJ1Y3QgCj4+PiBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikgIGlu
dCAKPj4+IGludGVsX2RwX2F1eF9pbml0X2JhY2tsaWdodF9mdW5jcyhzdHJ1Y3QgaW50ZWxfY29u
bmVjdG9yICppbnRlbF9jb25uZWN0b3IpICB7Cj4+PiAgCXN0cnVjdCBpbnRlbF9wYW5lbCAqcGFu
ZWwgPSAmaW50ZWxfY29ubmVjdG9yLT5wYW5lbDsKPj4+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gCj4+PiArdG9faTkxNShpbnRlbF9jb25uZWN0b3ItPmJhc2UuZGV2KTsK
Pj4+ICAKPj4+IC0JaWYgKCFpOTE1X21vZHBhcmFtcy5lbmFibGVfZHBjZF9iYWNrbGlnaHQpCj4+
PiArCWlmICghaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2RwY2RfYmFja2xpZ2h0ICYmCj4+PiArCSAg
ICAoZGV2X3ByaXYtPnZidC5iYWNrbGlnaHQudHlwZSAhPSAKPj4+ICtJTlRFTF9CQUNLTElHSFRf
VkVTQV9FRFBfQVVYX0lOVEVSRkFDRSkpCj4+PiAgCQlyZXR1cm4gLUVOT0RFVjsKPj4KPj5UaGVy
ZSB3YXMgYWxzbyB0aGlzIHBhcnQgaW4gdGhlIHYxIHJldmlldzoKPj4KPj4gICAgVGhlIHVzdWFs
IHRoaW5nIHRvIGRvIGlzIHRvIHNldCBpOTE1LmVuYWJsZV9kcGNkX2JhY2tsaWdodCBpbml0aWFs
IHZhbHVlCj4+ICAgIHRvIC0xIChpLmUuIG1ha2UgaXQgYW4gaW50KSwgYW5kIHdpdGggdGhhdCBk
ZWZhdWx0IHZhbHVlIHJlc3BlY3QKPj4gICAgVkJULiBPdGhlcndpc2UsIHJlc3BlY3QgdGhlIHZh
bHVlIG9mIGVuYWJsZV9kcGNkX2JhY2tsaWdodC4KPj4KPj4KPj5CUiwKPj5KYW5pLgo+Cj4gRG8g
eW91IG1lYW4gd2Ugc2hvdWxkIGRvIGZvbGxvd2luZz8KPiAxLiBDaGFuZ2UgaTkxNS5lbmFibGVf
ZHBjZF9iYWNrbGlnaHQgdHlwZSBmcm9tIGJvb2wgdG8gaW50LgoKWWVzLgoKPiAyLiBHaXZlIGRl
ZmF1bHQgdmFsdWUgYXMgLTEgZm9yIGVuYWJsZV9kcGNkX2JhY2tsaWdodCBpbiBpOTE1X3BhcmFt
LmguCgpZZXMuCgo+IDMuIEFkZCBhIGp1ZGdlbWVudCB0byBjaGVjayBMRlAgYmFja2xpZ2h0IHR5
cGUgd2FzIGF1eCBpbnRlcmZhY2Ugb3Igbm90Lgo+ICAgIEJldHdlZW4gaWYgKCFpOTE1X21vZHBh
cmFtcy5lbmFibGVfZHBjZF9iYWNrbGlnaHQpIGFuZCAKPiAgICBpZiAoIWludGVsX2RwX2F1eF9k
aXNwbGF5X2NvbnRyb2xfY2FwYWJsZShpbnRlbF9jb25uZWN0b3IpKS4KCkJhc2ljYWxseSByZXBs
YWNlOgoKaWYgKCFpOTE1X21vZHBhcmFtcy5lbmFibGVfZHBjZF9iYWNrbGlnaHQpCglyZXR1cm4g
LUVOT0RFVjsKCndpdGggc29tZXRoaW5nIGxpa2UgdGhpczoKCmlmIChpOTE1X21vZHBhcmFtcy5l
bmFibGVfZHBjZF9iYWNrbGlnaHQgPT0gMCB8fAogICAgKGk5MTVfbW9kcGFyYW1zLmVuYWJsZV9k
cGNkX2JhY2tsaWdodCA9PSAtMSAmJiAKICAgICBkZXZfcHJpdi0+dmJ0LmJhY2tsaWdodC50eXBl
ICE9IElOVEVMX0JBQ0tMSUdIVF9WRVNBX0VEUF9BVVhfSU5URVJGQUNFKSkKCXJldHVybiAtRU5P
REVWOwoKaS5lLiBpZiBtb2RwYXJhbSA9PSAtMSwgdXNlIHZidCwgb3RoZXJ3aXNlIHVzZSBtb2Rw
YXJhbS4gVGhpcyBsZXRzIHlvdQpvdmVycmlkZSB2YnQgdXNpbmcgdGhlIG1vZHBhcmFtLgoKWW91
J2xsIHN0aWxsIGhhdmUgdGhlIGNhcGFiaWxpdHkgY2hlY2sgYmVsb3cgbGlrZSBiZWZvcmUuCgpC
UiwKSmFuaS4KCgo+Cj4gQmVzdCByZWdhcmRzLAo+IFNoYXduCj4KPj4+ICAKPj4+ICAJaWYgKCFp
bnRlbF9kcF9hdXhfZGlzcGxheV9jb250cm9sX2NhcGFibGUoaW50ZWxfY29ubmVjdG9yKSkKPj4K
Pj4tLQo+PkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKCi0t
IApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
