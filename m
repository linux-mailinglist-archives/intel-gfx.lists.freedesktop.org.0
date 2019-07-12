Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC31675EA
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 22:30:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3952E89BFB;
	Fri, 12 Jul 2019 20:30:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B9BC89BFB
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 20:30:31 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 13:30:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,483,1557212400"; d="scan'208";a="186666817"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 12 Jul 2019 13:30:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Jul 2019 23:30:28 +0300
Date: Fri, 12 Jul 2019 23:30:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20190712203028.GR5942@intel.com>
References: <20190712202214.3906-1-manasi.d.navare@intel.com>
 <20190712202214.3906-2-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712202214.3906-2-manasi.d.navare@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/display/icl: Bump up the
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

T24gRnJpLCBKdWwgMTIsIDIwMTkgYXQgMDE6MjI6MTRQTSAtMDcwMCwgTWFuYXNpIE5hdmFyZSB3
cm90ZToKPiBPbiBJQ0wrLCB0aGUgbWF4IHN1cHBvcnRlZCBwbGFuZSBoZWlnaHQgaXMgNDMyMCwg
c28gYnVtcCBpdCB1cAo+IFRvIHN1cHBvcnQgNDMyMCwgd2UgbmVlZCB0byBpbmNyZWFzZSB0aGUg
bnVtYmVyIG9mIGJpdHMgdXNlZCB0bwo+IHJlYWQgcGxhbmVfaGVpZ2h0IHRvIDEzIGFzIG9wcG9z
ZWQgdG8gb2xkZXIgMTIgYml0cy4KPiAKPiB2MzoKPiAqIFVzZSAweGZmZmYgZm9yIG1hc2sgYXMg
ZXh0cmEgYml0cyBhcmUgbWJ6IChWaWxsZSkKPiB2MjoKPiAqIElDTCBwbGFuZSBoZWlnaHQgc3Vw
cG9ydGVkIGlzIDQzMjAgKFZpbGxlKQo+ICogQWRkIGEgbmV3IGxpbmUgYmV0d2VlbiBtYXggd2lk
dGggYW5kIG1heCBoZWlnaHQgKEpvc2UpCj4gCj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFy
dGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFy
ZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxOSArKysrKysrKysrKysrKysrKy0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggMTUwMDY3
NjQ4NjJiLi41MTAzNTA0YmJiZWMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0zMzQzLDYgKzMzNDMsMTYgQEAgc3RhdGljIGludCBp
Y2xfbWF4X3BsYW5lX3dpZHRoKGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLAo+ICAJ
cmV0dXJuIDUxMjA7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQgc2tsX21heF9wbGFuZV9oZWlnaHQo
dm9pZCkKPiArewo+ICsJcmV0dXJuIDQwOTY7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgaWNsX21h
eF9wbGFuZV9oZWlnaHQodm9pZCkKPiArewo+ICsJcmV0dXJuIDQzMjA7Cj4gK30KPiArCj4gIHN0
YXRpYyBib29sIHNrbF9jaGVja19tYWluX2Njc19jb29yZGluYXRlcyhzdHJ1Y3QgaW50ZWxfcGxh
bmVfc3RhdGUgKnBsYW5lX3N0YXRlLAo+ICAJCQkJCSAgIGludCBtYWluX3gsIGludCBtYWluX3ks
IHUzMiBtYWluX29mZnNldCkKPiAgewo+IEBAIC0zMzkxLDcgKzM0MDEsNyBAQCBzdGF0aWMgaW50
IHNrbF9jaGVja19tYWluX3N1cmZhY2Uoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9z
dGF0ZSkKPiAgCWludCB3ID0gZHJtX3JlY3Rfd2lkdGgoJnBsYW5lX3N0YXRlLT5iYXNlLnNyYykg
Pj4gMTY7Cj4gIAlpbnQgaCA9IGRybV9yZWN0X2hlaWdodCgmcGxhbmVfc3RhdGUtPmJhc2Uuc3Jj
KSA+PiAxNjsKPiAgCWludCBtYXhfd2lkdGg7Cj4gLQlpbnQgbWF4X2hlaWdodCA9IDQwOTY7Cj4g
KwlpbnQgbWF4X2hlaWdodDsKPiAgCXUzMiBhbGlnbm1lbnQsIG9mZnNldCwgYXV4X29mZnNldCA9
IHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVsxXS5vZmZzZXQ7Cj4gIAo+ICAJaWYgKElOVEVMX0dF
TihkZXZfcHJpdikgPj0gMTEpCj4gQEAgLTM0MDEsNiArMzQxMSwxMSBAQCBzdGF0aWMgaW50IHNr
bF9jaGVja19tYWluX3N1cmZhY2Uoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0
ZSkKPiAgCWVsc2UKPiAgCQltYXhfd2lkdGggPSBza2xfbWF4X3BsYW5lX3dpZHRoKGZiLCAwLCBy
b3RhdGlvbik7Cj4gIAo+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCj4gKwkJbWF4
X2hlaWdodCA9IGljbF9tYXhfcGxhbmVfaGVpZ2h0KCk7Cj4gKwllbHNlCj4gKwkJbWF4X2hlaWdo
dCA9IHNrbF9tYXhfcGxhbmVfaGVpZ2h0KCk7Cj4gKwo+ICAJaWYgKHcgPiBtYXhfd2lkdGggfHwg
aCA+IG1heF9oZWlnaHQpIHsKPiAgCQlEUk1fREVCVUdfS01TKCJyZXF1ZXN0ZWQgWS9SR0Igc291
cmNlIHNpemUgJWR4JWQgdG9vIGJpZyAobGltaXQgJWR4JWQpXG4iLAo+ICAJCQkgICAgICB3LCBo
LCBtYXhfd2lkdGgsIG1heF9oZWlnaHQpOwo+IEBAIC05ODY1LDcgKzk4ODAsNyBAQCBza3lsYWtl
X2dldF9pbml0aWFsX3BsYW5lX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKPiAgCW9m
ZnNldCA9IEk5MTVfUkVBRChQTEFORV9PRkZTRVQocGlwZSwgcGxhbmVfaWQpKTsKPiAgCj4gIAl2
YWwgPSBJOTE1X1JFQUQoUExBTkVfU0laRShwaXBlLCBwbGFuZV9pZCkpOwo+IC0JZmItPmhlaWdo
dCA9ICgodmFsID4+IDE2KSAmIDB4ZmZmKSArIDE7Cj4gKwlmYi0+aGVpZ2h0ID0gKCh2YWwgPj4g
MTYpICYgMHhmZmZmKSArIDE7Cj4gIAlmYi0+d2lkdGggPSAoKHZhbCA+PiAwKSAmIDB4MWZmZikg
KyAxOwoKSSB3b3VsZCBhZGp1c3QgdGhlIG1hc2sgZm9yIHdpZHRoIGFzIHdlbGwuCgpSZXZpZXdl
ZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCgo+
ICAKPiAgCXZhbCA9IEk5MTVfUkVBRChQTEFORV9TVFJJREUocGlwZSwgcGxhbmVfaWQpKTsKPiAt
LSAKPiAyLjE5LjEKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
