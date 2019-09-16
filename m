Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 562CFB40FA
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2019 21:17:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA5A96EA46;
	Mon, 16 Sep 2019 19:17:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DDAD6EA46
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2019 19:17:21 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Sep 2019 12:17:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,513,1559545200"; d="scan'208";a="193527614"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Sep 2019 12:17:20 -0700
Date: Mon, 16 Sep 2019 12:19:00 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190916191859.GA13413@intel.com>
References: <20190712202214.3906-1-manasi.d.navare@intel.com>
 <20190712202938.GQ5942@intel.com> <20190729191753.GI2632@intel.com>
 <eb58efd5-c193-c176-d18d-b7b793794fd1@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eb58efd5-c193-c176-d18d-b7b793794fd1@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915/display/icl: Bump up the
 hdisplay and vdisplay as per transcoder limits
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

T24gRnJpLCBTZXAgMTMsIDIwMTkgYXQgMDM6MzY6MzlQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gSGV5LAo+IAo+IE9wIDI5LTA3LTIwMTkgb20gMjE6MTcgc2NocmVlZiBNYW5h
c2kgTmF2YXJlOgo+ID4gSGkgVmlsbGUsCj4gPgo+ID4gVGhhbmtzIGZvciB5b3VyIHJldmlldywg
c28gZG8gd2Ugd2FudCB0byBtZXJnZSB0aGlzIGFzIGlzIG9yCj4gPiBkbyB3ZSBuZWVkIHNvbWUg
ZnVuY3Rpb24gdG8gcmVqZWN0IHRoZSA4SyBtb2RlIG9uIElDTCBpbiBpbnRlbF9kcF9tb2RlX3Zh
bGlkKCk/Cj4gPgo+ID4gTWFuYXNpCj4gCj4gSSd2ZSBwdXNoZWQgdGhpcyBzZXJpZXMgYXMtaXMg
YmVjYXVzZSBpdCBibG9ja3MgbXkgYmlnam9pbmVyIHdvcmsuIFdlIHNob3VsZCBwcm9iYWJseSBy
ZWplY3QgbW9kZXMgaW4gdGhlIGNvbm5lY3RvciBzcGVjaWZpYyBmdW5jdGlvbnMgaWYgd2UgY2Fu
J3QgaGFuZGxlIGl0LiA6KQoKVGhhbmtzIE1hYXJ0ZW4uIFNvIGluIGNhc2Ugb2YgaW50ZWxfZHBf
bW9kZV92YWxpZCgpIGZvciBleGFtcGxlIHRoZSA4SyBtb2RlIHdpbGwgYmUgcmVqZWN0ZWQgaWYg
YmlnIGpvaW5lciBub3Qgc3VwcG9ydGVkIGNvcnJlY3Q/CgpNYW5hc2kKCj4gCj4gCj4gPgo+ID4g
T24gRnJpLCBKdWwgMTIsIDIwMTkgYXQgMTE6Mjk6MzhQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+ID4+IE9uIEZyaSwgSnVsIDEyLCAyMDE5IGF0IDAxOjIyOjEzUE0gLTA3MDAsIE1h
bmFzaSBOYXZhcmUgd3JvdGU6Cj4gPj4+IE9uIElDTCssIHRoZSB2ZXJ0aWNhbCBsaW1pdHMgZm9y
IHRoZSB0cmFuc2NvZGVycyBhcmUgaW5jcmVhc2VkIHRvIDgxOTIKPiA+Pj4gYW5kIGhvcml6b250
YWwgbGltaXRzIGFyZSBidW1wZWQgdG8gMTZLIHNvIGJ1bXAgdXAKPiA+Pj4gbGltaXRzIGluIGlu
dGVsX21vZGVfdmFsaWQoKQo+ID4+Pgo+ID4+PiB2NDoKPiA+Pj4gKiBJbmNyZWFzZSB0aGUgaGRp
c3BsYXkgdG8gMTZLIChWaWxsZSkKPiA+Pj4gdjM6Cj4gPj4+ICogU3VwcG9ydGVkIHN0YXJ0aW5n
IElDTCAoVmlsbGUpCj4gPj4+ICogVXNlIHRoZSBoaWdoZXIgbGltaXRzIGZyb20gVFJBTlNfVlRP
VEFMIHJlZ2lzdGVyIChWaWxsZSkKPiA+Pj4gdjI6Cj4gPj4+ICogQ2hlY2twYXRjaCB3YXJuaW5n
IChNYW5hc2kpCj4gPj4+Cj4gPj4+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5r
aG9yc3RAbGludXguaW50ZWwuY29tPgo+ID4+PiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+Pj4gU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFy
ZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPiA+PiBSZXZpZXdlZC1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+Pgo+ID4+PiAtLS0KPiA+
Pj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgOSArKysr
KysrLS0KPiA+Pj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCj4gPj4+Cj4gPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCj4gPj4+IGluZGV4IGYwNzA4MTgxNWI4MC4uMTUwMDY3NjQ4NjJiIDEwMDY0NAo+ID4+
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4+
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4+
PiBAQCAtMTU3NjQsOCArMTU3NjQsMTMgQEAgaW50ZWxfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LAo+ID4+PiAgCQkJICAgRFJNX01PREVfRkxBR19DTEtESVYyKSkKPiA+Pj4gIAkJ
cmV0dXJuIE1PREVfQkFEOwo+ID4+PiAgCj4gPj4+IC0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gOSB8fAo+ID4+PiAtCSAgICBJU19CUk9BRFdFTEwoZGV2X3ByaXYpIHx8IElTX0hBU1dFTEwo
ZGV2X3ByaXYpKSB7Cj4gPj4+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpIHsKPiA+
Pj4gKwkJaGRpc3BsYXlfbWF4ID0gMTYzODQ7Cj4gPj4+ICsJCXZkaXNwbGF5X21heCA9IDgxOTI7
Cj4gPj4+ICsJCWh0b3RhbF9tYXggPSAxNjM4NDsKPiA+Pj4gKwkJdnRvdGFsX21heCA9IDgxOTI7
Cj4gPj4+ICsJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkgfHwKPiA+Pj4gKwkJ
ICAgSVNfQlJPQURXRUxMKGRldl9wcml2KSB8fCBJU19IQVNXRUxMKGRldl9wcml2KSkgewo+ID4+
PiAgCQloZGlzcGxheV9tYXggPSA4MTkyOyAvKiBGREkgbWF4IDQwOTYgaGFuZGxlZCBlbHNld2hl
cmUgKi8KPiA+Pj4gIAkJdmRpc3BsYXlfbWF4ID0gNDA5NjsKPiA+Pj4gIAkJaHRvdGFsX21heCA9
IDgxOTI7Cj4gPj4+IC0tIAo+ID4+PiAyLjE5LjEKPiA+PiAtLSAKPiA+PiBWaWxsZSBTeXJqw6Rs
w6QKPiA+PiBJbnRlbAo+IAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
