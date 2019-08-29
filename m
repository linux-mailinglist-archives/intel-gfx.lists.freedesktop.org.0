Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1C6A15F6
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 12:29:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A9E589548;
	Thu, 29 Aug 2019 10:29:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 792EB89548
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 10:29:44 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 03:29:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="180838698"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 29 Aug 2019 03:29:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Aug 2019 13:29:40 +0300
Date: Thu, 29 Aug 2019 13:29:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Ser, Simon" <simon.ser@intel.com>
Message-ID: <20190829102940.GM7482@intel.com>
References: <20190823094946.5708-1-simon.ser@intel.com>
 <20190828164013.GI7482@intel.com>
 <4673eb7efdc859a852caff9cf56e124c9a05029d.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4673eb7efdc859a852caff9cf56e124c9a05029d.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: add port info to debugfs
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "nanasi.d.navare@intel.com" <nanasi.d.navare@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMjksIDIwMTkgYXQgMDk6MDg6NTRBTSArMDAwMCwgU2VyLCBTaW1vbiB3cm90
ZToKPiBPbiBXZWQsIDIwMTktMDgtMjggYXQgMTk6NDAgKzAzMDAsIFZpbGxlIFN5cmrDpGzDpCB3
cm90ZToKPiA+IE9uIEZyaSwgQXVnIDIzLCAyMDE5IGF0IDEyOjQ5OjQ2UE0gKzAzMDAsIFNpbW9u
IFNlciB3cm90ZToKPiA+ID4gVGhpcyBwYXRjaCBhZGRzIGEgbGluZSB3aXRoIHRoZSBwb3J0IG5h
bWUgdG8gY29ubmVjdG9ycyBpbgo+ID4gPiBkZWJ1Z2ZzL2k5MTVfZGVidWdfaW5mby4gSWYgdGhl
IHBvcnQgaXMgVHlwZS1DLCB0aGUgVHlwZS1DIHBvcnQgbnVtYmVyIGlzCj4gPiA+IHByaW50ZWQg
dG9vLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogU2ltb24gU2VyIDxzaW1vbi5zZXJAaW50
ZWwuY29tPgo+ID4gPiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+ID4gPiBD
YzogTWFuYXNpIE5hdmFyZSA8bmFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPiA+ID4gUmV2aWV3
ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KPiA+ID4gLS0tCj4gPiA+IAo+
ID4gPiBSZXNlbmRpbmcgdjIgdG8gdGhlIGNvcnJlY3QgbWFpbGluZyBsaXN0Lgo+ID4gPiAKPiA+
ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIHwgMTAgKysrKysrKysrKwo+
ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKPiA+ID4gCj4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4gPiA+IGluZGV4IGIzOTIyNmQ3ZjhkMi4uNGJhNTA4
Yzk1NGY4IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVn
ZnMuYwo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+ID4g
PiBAQCAtMjU1Nyw5ICsyNTU3LDExIEBAIHN0YXRpYyB2b2lkIGludGVsX2x2ZHNfaW5mbyhzdHJ1
Y3Qgc2VxX2ZpbGUgKm0sCj4gPiA+ICBzdGF0aWMgdm9pZCBpbnRlbF9jb25uZWN0b3JfaW5mbyhz
dHJ1Y3Qgc2VxX2ZpbGUgKm0sCj4gPiA+ICAJCQkJIHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25u
ZWN0b3IpCj4gPiA+ICB7Cj4gPiA+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0
b19pOTE1KGNvbm5lY3Rvci0+ZGV2KTsKPiA+ID4gIAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpp
bnRlbF9jb25uZWN0b3IgPSB0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKTsKPiA+ID4gIAlz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqaW50ZWxfZW5jb2RlciA9IGludGVsX2Nvbm5lY3Rvci0+ZW5j
b2RlcjsKPiA+ID4gIAlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZTsKPiA+ID4gKwllbnVt
IHRjX3BvcnQgdGNfcG9ydDsKPiA+ID4gCj4gPiA+ICAJc2VxX3ByaW50ZihtLCAiY29ubmVjdG9y
ICVkOiB0eXBlICVzLCBzdGF0dXM6ICVzXG4iLAo+ID4gPiAgCQkgICBjb25uZWN0b3ItPmJhc2Uu
aWQsIGNvbm5lY3Rvci0+bmFtZSwKPiA+ID4gQEAgLTI1NzgsNiArMjU4MCwxNCBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9jb25uZWN0b3JfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sCj4gPiA+ICAJaWYg
KCFpbnRlbF9lbmNvZGVyKQo+ID4gPiAgCQlyZXR1cm47Cj4gPiA+IAo+ID4gPiArCWlmIChpbnRl
bF9lbmNvZGVyLT5wb3J0ICE9IFBPUlRfTk9ORSkgewo+ID4gPiArCQlzZXFfcHJpbnRmKG0sICJc
dHBvcnQ6ICVjIiwgcG9ydF9uYW1lKGludGVsX2VuY29kZXItPnBvcnQpKTsKPiA+ID4gKwkJdGNf
cG9ydCA9IGludGVsX3BvcnRfdG9fdGMoaTkxNSwgaW50ZWxfZW5jb2Rlci0+cG9ydCk7Cj4gPiA+
ICsJCWlmICh0Y19wb3J0ICE9IFBPUlRfVENfTk9ORSkKPiA+ID4gKwkJCXNlcV9wcmludGYobSwg
Ii9UQyMlZCIsIHRjX3BvcnQgKyAxKTsKPiA+ID4gKwkJc2VxX3ByaW50ZihtLCAiXG4iKTsKPiA+
IAo+ID4gTWF5YmUganVzdCBwcmludCBlbmNvZGVyLT5uYW1lIGluc3RlYWQ/Cj4gCj4gSXQgc2Vl
bXMgdGhhdCBmb3IgRGlzcGxheVBvcnQgY29ubmVjdG9ycywgdGhlIGVuY29kZXItPm5hbWUgd2ls
bCBiZSBzZXQKPiB0byAiRFAgPHBvcnQgbmFtZT4iLiBUaGlzIG1pc3NlcyB0aGUgVHlwZS1DIHBh
cnQsIGFuZCB3ZSBhbHJlYWR5IGV4cG9zZQo+IHRoZSBjb25uZWN0b3IgdHlwZS4KCklmIHRoZSBU
QyBwYXJ0IGlzIG1pc3NpbmcgZnJvbSB0aGUgZW5jb2RlciBuYW1lIHRoZW4gaXQgc2hvdWxkIGJl
IGZpeGVkLgoKPiAKPiA+ID4gKwl9Cj4gPiA+ICsKPiA+ID4gIAlzd2l0Y2ggKGNvbm5lY3Rvci0+
Y29ubmVjdG9yX3R5cGUpIHsKPiA+ID4gIAljYXNlIERSTV9NT0RFX0NPTk5FQ1RPUl9EaXNwbGF5
UG9ydDoKPiA+ID4gIAljYXNlIERSTV9NT0RFX0NPTk5FQ1RPUl9lRFA6Cj4gPiA+IC0tCj4gPiA+
IDIuMjIuMQo+ID4gPiAKPiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiA+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+ID4gPiBJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
