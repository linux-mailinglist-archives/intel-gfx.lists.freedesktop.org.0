Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 919E1FBCCA
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 01:02:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 839C089B29;
	Thu, 14 Nov 2019 00:02:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00F018984D
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 00:02:24 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 16:02:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,302,1569308400"; d="scan'208";a="379397514"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga005.jf.intel.com with ESMTP; 13 Nov 2019 16:02:23 -0800
Date: Wed, 13 Nov 2019 16:05:21 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191114000521.GD28227@intel.com>
References: <20191112141503.1116-1-ville.syrjala@linux.intel.com>
 <20191112141503.1116-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112141503.1116-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/i915: Move
 assert_vblank_disabled() into intel_crtc_vblank_on()
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

T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMDQ6MTQ6NTZQTSArMDIwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IE1vdmUgdGhlIGFzc2VydF92YmxhbmtfZGlzYWJsZWQoKSBpbnRvIGludGVsX2Ny
dGNfdmJsYW5rX29uKCkKPiBzbyB0aGF0IHdlIGRvbid0IGhhdmUgdG8gaW5saW5lIGl0IGFsbCBv
dmVyLgo+IAo+IFRoaXMgZG9lcyBtZWFuIHdlIG5vdyBhc3NlcnRfdmJsYW5rX2Rpc2FibGVkKCkg
ZHVyaW5nIHJlYWRvdXQgYXMgd2VsbAo+IGJ1dCB0aGF0IGlzIHRvdGFsbHkgZmluZSBhcyBpdCBo
YXBwZW5zIGFmdGVyIGRybV9jcnRjX3ZibGFua19yZXNldCgpLgo+IE9uZSBjYW4gZXZlbiBhcmd1
ZSBpdCdzIHdoYXQgd2Ugd2FudCB0byBkbyBhbnl3YXkgdG8gbWFrZSBzdXJlCj4gdGhlIHJlc2V0
IGFjdHVhbGx5IGhhcHBlbmVkLgoKWWVzIHRoaXMgbWFrZXMgdG90YWwgc2Vuc2UgdG8gbWUgYW5k
IGRvdWJsZSBjaGVja2luZyB3aXRoIHRoZSBjb2RlCml0IGxvb2tzIGZpbmUgdG8gaGF2ZSBpdCBk
dXJpbmcgdGhlIHJlYWRvdXQgYWZ0ZXIgZHJtX2NydGNfdmJsYW5rX3Jlc2V0KCkKaGVuY2UsCgpS
ZXZpZXdlZC1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KCk1h
bmFzaQoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyB8IDUgKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCj4gaW5kZXggMTk0MDI5ZmY4NjE3Li44OWQxNTBiNDU1MjAgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0xODI2
LDYgKzE4MjYsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX3ZibGFua19vbihjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiAgewo+ICAJc3RydWN0IGludGVsX2Ny
dGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7Cj4gIAo+ICsJ
YXNzZXJ0X3ZibGFua19kaXNhYmxlZCgmY3J0Yy0+YmFzZSk7Cj4gIAlkcm1fY3J0Y19zZXRfbWF4
X3ZibGFua19jb3VudCgmY3J0Yy0+YmFzZSwKPiAgCQkJCSAgICAgIGludGVsX2NydGNfbWF4X3Zi
bGFua19jb3VudChjcnRjX3N0YXRlKSk7Cj4gIAlkcm1fY3J0Y192Ymxhbmtfb24oJmNydGMtPmJh
c2UpOwo+IEBAIC02NTM1LDcgKzY1MzYsNiBAQCBzdGF0aWMgdm9pZCBpcm9ubGFrZV9jcnRjX2Vu
YWJsZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcsCj4gIAlpZiAocGlwZV9j
b25maWctPmhhc19wY2hfZW5jb2RlcikKPiAgCQlpcm9ubGFrZV9wY2hfZW5hYmxlKHN0YXRlLCBw
aXBlX2NvbmZpZyk7Cj4gIAo+IC0JYXNzZXJ0X3ZibGFua19kaXNhYmxlZChjcnRjKTsKPiAgCWlu
dGVsX2NydGNfdmJsYW5rX29uKHBpcGVfY29uZmlnKTsKPiAgCj4gIAlpbnRlbF9lbmNvZGVyc19l
bmFibGUoc3RhdGUsIGludGVsX2NydGMpOwo+IEBAIC02Njg5LDcgKzY2ODksNiBAQCBzdGF0aWMg
dm9pZCBoYXN3ZWxsX2NydGNfZW5hYmxlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2Nv
bmZpZywKPiAgCWlmIChpbnRlbF9jcnRjX2hhc190eXBlKHBpcGVfY29uZmlnLCBJTlRFTF9PVVRQ
VVRfRFBfTVNUKSkKPiAgCQlpbnRlbF9kZGlfc2V0X3ZjX3BheWxvYWRfYWxsb2MocGlwZV9jb25m
aWcsIHRydWUpOwo+ICAKPiAtCWFzc2VydF92YmxhbmtfZGlzYWJsZWQoY3J0Yyk7Cj4gIAlpbnRl
bF9jcnRjX3ZibGFua19vbihwaXBlX2NvbmZpZyk7Cj4gIAo+ICAJaW50ZWxfZW5jb2RlcnNfZW5h
YmxlKHN0YXRlLCBpbnRlbF9jcnRjKTsKPiBAQCAtNzA2OCw3ICs3MDY3LDYgQEAgc3RhdGljIHZv
aWQgdmFsbGV5dmlld19jcnRjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9j
b25maWcsCj4gIAlkZXZfcHJpdi0+ZGlzcGxheS5pbml0aWFsX3dhdGVybWFya3Moc3RhdGUsIHBp
cGVfY29uZmlnKTsKPiAgCWludGVsX2VuYWJsZV9waXBlKHBpcGVfY29uZmlnKTsKPiAgCj4gLQlh
c3NlcnRfdmJsYW5rX2Rpc2FibGVkKGNydGMpOwo+ICAJaW50ZWxfY3J0Y192Ymxhbmtfb24ocGlw
ZV9jb25maWcpOwo+ICAKPiAgCWludGVsX2VuY29kZXJzX2VuYWJsZShzdGF0ZSwgaW50ZWxfY3J0
Yyk7Cj4gQEAgLTcxMjgsNyArNzEyNiw2IEBAIHN0YXRpYyB2b2lkIGk5eHhfY3J0Y19lbmFibGUo
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLAo+ICAJCWludGVsX3VwZGF0ZV93
YXRlcm1hcmtzKGludGVsX2NydGMpOwo+ICAJaW50ZWxfZW5hYmxlX3BpcGUocGlwZV9jb25maWcp
Owo+ICAKPiAtCWFzc2VydF92YmxhbmtfZGlzYWJsZWQoY3J0Yyk7Cj4gIAlpbnRlbF9jcnRjX3Zi
bGFua19vbihwaXBlX2NvbmZpZyk7Cj4gIAo+ICAJaW50ZWxfZW5jb2RlcnNfZW5hYmxlKHN0YXRl
LCBpbnRlbF9jcnRjKTsKPiAtLSAKPiAyLjIzLjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
