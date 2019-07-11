Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF5A65497
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 12:38:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC44E6E182;
	Thu, 11 Jul 2019 10:38:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0DF06E182
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 10:38:19 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 03:38:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,478,1557212400"; d="scan'208";a="174114041"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 11 Jul 2019 03:38:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Jul 2019 13:38:16 +0300
Date: Thu, 11 Jul 2019 13:38:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20190711103816.GR5942@intel.com>
References: <20190710213951.517-1-manasi.d.navare@intel.com>
 <20190710213951.517-2-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710213951.517-2-manasi.d.navare@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/display/icl: Bump up the
 plane/fb height
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

T24gV2VkLCBKdWwgMTAsIDIwMTkgYXQgMDI6Mzk6NTFQTSAtMDcwMCwgTWFuYXNpIE5hdmFyZSB3
cm90ZToKPiBPbiBJQ0wrLCB0aGUgbWF4IHN1cHBvcnRlZCBwbGFuZSBoZWlnaHQgaXMgNDMyMCwg
c28gYnVtcCBpdCB1cAo+IFRvIHN1cHBvcnQgNDMyMCwgd2UgbmVlZCB0byBpbmNyZWFzZSB0aGUg
bnVtYmVyIG9mIGJpdHMgdXNlZCB0bwo+IHJlYWQgcGxhbmVfaGVpZ2h0IHRvIDEzIGFzIG9wcG9z
ZWQgdG8gb2xkZXIgMTIgYml0cy4KPiAKPiB2MjoKPiAqIElDTCBwbGFuZSBoZWlnaHQgc3VwcG9y
dGVkIGlzIDQzMjAgKFZpbGxlKQo+ICogQWRkIGEgbmV3IGxpbmUgYmV0d2VlbiBtYXggd2lkdGgg
YW5kIG1heCBoZWlnaHQgKEpvc2UpCj4gCj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVu
Lmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFyZSA8
bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAyMiArKysrKysrKysrKysrKysrKystLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IDk4ODNmNjA3
YmI4OC4uZTQ5MTVkNjgxNDdhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtMzM0Myw2ICszMzQzLDE2IEBAIHN0YXRpYyBpbnQgaWNs
X21heF9wbGFuZV93aWR0aChjb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwKPiAgCXJl
dHVybiA1MTIwOwo+ICB9Cj4gIAo+ICtzdGF0aWMgaW50IHNrbF9tYXhfcGxhbmVfaGVpZ2h0KHZv
aWQpCj4gK3sKPiArCXJldHVybiA0MDk2Owo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGljbF9tYXhf
cGxhbmVfaGVpZ2h0KHZvaWQpCj4gK3sKPiArCXJldHVybiA0MzIwOwo+ICt9Cj4gKwo+ICBzdGF0
aWMgYm9vbCBza2xfY2hlY2tfbWFpbl9jY3NfY29vcmRpbmF0ZXMoc3RydWN0IGludGVsX3BsYW5l
X3N0YXRlICpwbGFuZV9zdGF0ZSwKPiAgCQkJCQkgICBpbnQgbWFpbl94LCBpbnQgbWFpbl95LCB1
MzIgbWFpbl9vZmZzZXQpCj4gIHsKPiBAQCAtMzM5MSw3ICszNDAxLDcgQEAgc3RhdGljIGludCBz
a2xfY2hlY2tfbWFpbl9zdXJmYWNlKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3Rh
dGUpCj4gIAlpbnQgdyA9IGRybV9yZWN0X3dpZHRoKCZwbGFuZV9zdGF0ZS0+YmFzZS5zcmMpID4+
IDE2Owo+ICAJaW50IGggPSBkcm1fcmVjdF9oZWlnaHQoJnBsYW5lX3N0YXRlLT5iYXNlLnNyYykg
Pj4gMTY7Cj4gIAlpbnQgbWF4X3dpZHRoOwo+IC0JaW50IG1heF9oZWlnaHQgPSA0MDk2Owo+ICsJ
aW50IG1heF9oZWlnaHQ7Cj4gIAl1MzIgYWxpZ25tZW50LCBvZmZzZXQsIGF1eF9vZmZzZXQgPSBw
bGFuZV9zdGF0ZS0+Y29sb3JfcGxhbmVbMV0ub2Zmc2V0Owo+ICAKPiAgCWlmIChJTlRFTF9HRU4o
ZGV2X3ByaXYpID49IDExKQo+IEBAIC0zNDAxLDYgKzM0MTEsMTEgQEAgc3RhdGljIGludCBza2xf
Y2hlY2tfbWFpbl9zdXJmYWNlKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUp
Cj4gIAllbHNlCj4gIAkJbWF4X3dpZHRoID0gc2tsX21heF9wbGFuZV93aWR0aChmYiwgMCwgcm90
YXRpb24pOwo+ICAKPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQo+ICsJCW1heF9o
ZWlnaHQgPSBpY2xfbWF4X3BsYW5lX2hlaWdodCgpOwo+ICsJZWxzZQo+ICsJCW1heF9oZWlnaHQg
PSBza2xfbWF4X3BsYW5lX2hlaWdodCgpOwo+ICsKPiAgCWlmICh3ID4gbWF4X3dpZHRoIHx8IGgg
PiBtYXhfaGVpZ2h0KSB7Cj4gIAkJRFJNX0RFQlVHX0tNUygicmVxdWVzdGVkIFkvUkdCIHNvdXJj
ZSBzaXplICVkeCVkIHRvbyBiaWcgKGxpbWl0ICVkeCVkKVxuIiwKPiAgCQkJICAgICAgdywgaCwg
bWF4X3dpZHRoLCBtYXhfaGVpZ2h0KTsKPiBAQCAtOTg2NSw3ICs5ODgwLDEwIEBAIHNreWxha2Vf
Z2V0X2luaXRpYWxfcGxhbmVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+ICAJb2Zm
c2V0ID0gSTkxNV9SRUFEKFBMQU5FX09GRlNFVChwaXBlLCBwbGFuZV9pZCkpOwo+ICAKPiAgCXZh
bCA9IEk5MTVfUkVBRChQTEFORV9TSVpFKHBpcGUsIHBsYW5lX2lkKSk7Cj4gLQlmYi0+aGVpZ2h0
ID0gKCh2YWwgPj4gMTYpICYgMHhmZmYpICsgMTsKPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDEyKQo+ICsJCWZiLT5oZWlnaHQgPSAoKHZhbCA+PiAxNikgJiAweDFmZmYpICsgMTsKPiAr
CWVsc2UKPiArCQlmYi0+aGVpZ2h0ID0gKCh2YWwgPj4gMTYpICYgMHhmZmYpICsgMTsKPiAgCWZi
LT53aWR0aCA9ICgodmFsID4+IDApICYgMHgxZmZmKSArIDE7CgpUaGUgZXh0cmEgYml0cyBzaG91
bGQgYmUgbWJ6IEkgdGhpbmssIHNvIG5vIG5lZWQgZm9yIHRoZSAnaWYnLgpKdXN0IHVzZSAweDFm
ZmYgYWx3YXlzLCBvciBldmVuIGV4dGVuZCBib3RoIG1hc2tzIHRvIDB4ZmZmZi4KCkxvb2tzIGxp
a2UgaTl4eF9nZXRfaW5pdGlhbF9wbGFuZV9jb25maWcoKSBpcyBhbHNvIG1pc3NpbmcgYSBiaXQg
b3IgdHdvLAp3aGljaCBzaG91bGQgYmUgZml4ZWQgd2l0aCBhIHNlcGFyYXRlIHBhdGNoLgoKPiAg
Cj4gIAl2YWwgPSBJOTE1X1JFQUQoUExBTkVfU1RSSURFKHBpcGUsIHBsYW5lX2lkKSk7Cj4gLS0g
Cj4gMi4xOS4xCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
