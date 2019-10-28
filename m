Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25680E7116
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 13:13:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3538C6E7B2;
	Mon, 28 Oct 2019 12:13:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E01D06E7C6
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 12:13:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 05:13:09 -0700
X-IronPort-AV: E=Sophos;i="5.68,239,1569308400"; d="scan'208";a="193238840"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.18.53])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 05:13:07 -0700
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20191027150313.10802-1-chris@chris-wilson.co.uk>
References: <20191027150313.10802-1-chris@chris-wilson.co.uk>
Message-ID: <157226478507.8043.8486482740267218580@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Mon, 28 Oct 2019 14:13:05 +0200
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Check a few more fixed
 locations within the context image
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTAtMjcgMTc6MDM6MTMpCj4gQXMgd2UgdXNlIGhh
cmQgY29kZWQgb2Zmc2V0cyBmb3IgYSBmZXcgbG9jYXRpb25zIHdpdGhpbiB0aGUgY29udGV4dAo+
IGltYWdlLCBpbmNsdWRlIHRob3NlIGluIHRoZSBzZWxmdGVzdHMgdG8gYXNzZXJ0IHRoYXQgdGhl
eSBhcmUgdmFsaWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXgu
aW50ZWwuY29tPgoKPFNOSVA+Cgo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0
ZXN0X2xyYy5jCj4gQEAgLTMxOTQsNiArMzE5NCwyNiBAQCBzdGF0aWMgaW50IGxpdmVfbHJjX2Zp
eGVkKHZvaWQgKmFyZykKPiAgICAgICAgICAgICAgICAgICAgICAgICB1MzIgb2Zmc2V0Owo+ICAg
ICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IGNoYXIgKm5hbWU7Cj4gICAgICAgICAgICAgICAg
IH0gdGJsW10gPSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgewo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgaTkxNV9tbWlvX3JlZ19vZmZzZXQoUklOR19TVEFSVChlbmdpbmUt
Pm1taW9fYmFzZSkpLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgQ1RYX1JJTkdf
QlVGRkVSX1NUQVJUIC0gMSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJSSU5H
X1NUQVJUIgo+ICsgICAgICAgICAgICAgICAgICAgICAgIH0sCj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgewo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaTkxNV9tbWlvX3JlZ19v
ZmZzZXQoUklOR19DVEwoZW5naW5lLT5tbWlvX2Jhc2UpKSwKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIENUWF9SSU5HX0JVRkZFUl9DT05UUk9MIC0gMSwKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICJSSU5HX0NUTCIKPiArICAgICAgICAgICAgICAgICAgICAgICB9
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgIHsKPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGk5MTVfbW1pb19yZWdfb2Zmc2V0KFJJTkdfSEVBRChlbmdpbmUtPm1taW9fYmFzZSkp
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgQ1RYX1JJTkdfSEVBRCAtIDEsCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiUklOR19IRUFEIgo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIH0sCj4gKyAgICAgICAgICAgICAgICAgICAgICAgewo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgaTkxNV9tbWlvX3JlZ19vZmZzZXQoUklOR19UQUlMKGVuZ2lu
ZS0+bW1pb19iYXNlKSksCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBDVFhfUklO
R19UQUlMIC0gMSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJSSU5HX1RBSUwi
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgfSwKClF1aXRlIHJlcGV0aXRpdmUuIElmIHlvdSBh
cmUgbm90IGxvb2tpbmcgdG8gYWRkIGRpc3NpbWlsYXIgcGF0dGVybnMsCmNvdWxkIHVzZSBhICNk
ZWZpbmUsIGJ1dCB1cCB0byB5b3UuCgpSZXZpZXdlZC1ieTogSm9vbmFzIExhaHRpbmVuIDxqb29u
YXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgoKUmVnYXJkcywgSm9vbmFzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
