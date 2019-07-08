Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E64A761F69
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 15:16:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56D2B89CD4;
	Mon,  8 Jul 2019 13:16:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C517989D79
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 13:16:45 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 06:16:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="159123926"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 08 Jul 2019 06:16:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 08 Jul 2019 16:16:42 +0300
Date: Mon, 8 Jul 2019 16:16:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20190708131642.GR5942@intel.com>
References: <20190705140423.28404-1-imre.deak@intel.com>
 <20190705140423.28404-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190705140423.28404-2-imre.deak@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/icl: Clear the shared port
 PLLs from the new crtc state
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

T24gRnJpLCBKdWwgMDUsIDIwMTkgYXQgMDU6MDQ6MjNQTSArMDMwMCwgSW1yZSBEZWFrIHdyb3Rl
Ogo+IEZvciBjb25zaXN0ZW5jeSBjbGVhciB0aGUgaWNsX3BvcnRfZHBsbHMgZnJvbSB0aGUgbmV3
IGNydGMgc3RhdGUsIHdoZW4KPiByZWxlYXNpbmcgdGhlIERQTExzIGZyb20gdGhlIG9sZCBjcnRj
IHN0YXRlLiBMZWF2aW5nIHRoZW0gc2V0IGNvdWxkCj4gcmVzdWx0IGluIHJlbGVhc2luZyB0aGUg
c2FtZSBQTExzIG11bHRpcGxlIHRpbWVzIGZyb20gdGhlIHNhbWUgQ1JUQwo+IHN0YXRlIGluY29y
cmVjdGx5IChpZiB0aGUgc2FtZSBDUlRDIHdhcyBmaXJzdCB1c2VkIGZvciBhIFR5cGVDIHBvcnQg
dGhlbgo+IGZvciBhIGNvbWJvIFBIWSBwb3J0KS4KPiAKPiBMZWF2aW5nIHRoZSBzdGFsZSBwb2lu
dGVycyBiZWhpbmQgaGFwcGVucyBub3QgdG8gY2F1c2UgYSBwcm9ibGVtIGF0bQo+IChzaW5jZSB0
aGUgaW5jb3JyZWN0IHJlbGVhc2luZyB3aWxsIGJlIGEgTk9QKSwgYnV0IHdlIG5lZWQgdG8gZml4
IHRoYXQKPiBmb3IgY29uc2lzdGVuY3kuCj4gCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxp
bXJlLmRlYWtAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwbGxfbWdyLmMgfCAxMiArKysrKysrLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCj4gaW5kZXggNzIyYjFkZWNhOTk5Li5mNGRiMjQx
MGNhOTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cGxsX21nci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxs
X21nci5jCj4gQEAgLTMwMjEsMTUgKzMwMjEsMTcgQEAgc3RhdGljIHZvaWQgaWNsX3B1dF9kcGxs
cyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiAgCW5ld19jcnRjX3N0YXRlLT5z
aGFyZWRfZHBsbCA9IE5VTEw7Cj4gIAo+ICAJZm9yIChpZCA9IElDTF9QT1JUX0RQTExfREVGQVVM
VDsgaWQgPCBJQ0xfUE9SVF9EUExMX0NPVU5UOyBpZCsrKSB7Cj4gLQkJc3RydWN0IGljbF9wb3J0
X2RwbGwgKnBvcnRfZHBsbCA9Cj4gKwkJc3RydWN0IGljbF9wb3J0X2RwbGwgKm9sZF9wb3J0X2Rw
bGwgPQo+ICAJCQkmb2xkX2NydGNfc3RhdGUtPmljbF9wb3J0X2RwbGxzW2lkXTsKPiArCQlzdHJ1
Y3QgaWNsX3BvcnRfZHBsbCAqbmV3X3BvcnRfZHBsbCA9Cj4gKwkJCSZuZXdfY3J0Y19zdGF0ZS0+
aWNsX3BvcnRfZHBsbHNbaWRdOwoKSSB3b3VsZCBjb25zdGlmeSB0aGUgb2xkIHN0YXRlcyBpbiBi
b3RoIHBhdGNoZXMuCgpTZXJpZXMgaXMKUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cgo+ICAKPiAtCQlpZiAoIXBvcnRfZHBsbC0+cGxs
KQo+IC0JCQljb250aW51ZTsKPiArCQluZXdfcG9ydF9kcGxsLT5wbGwgPSBOVUxMOwo+ICAKPiAt
CQlpbnRlbF91bnJlZmVyZW5jZV9zaGFyZWRfZHBsbChzdGF0ZSwgY3J0YywgcG9ydF9kcGxsLT5w
bGwpOwo+ICsJCWlmICghb2xkX3BvcnRfZHBsbC0+cGxsKQo+ICsJCQljb250aW51ZTsKPiAgCj4g
LQkJLyogRklYTUU6IENsZWFyIHRoZSBpY2xfcG9ydF9kcGxscyBmcm9tIHRoZSBuZXcgY3J0YyBz
dGF0ZSAqLwo+ICsJCWludGVsX3VucmVmZXJlbmNlX3NoYXJlZF9kcGxsKHN0YXRlLCBjcnRjLCBv
bGRfcG9ydF9kcGxsLT5wbGwpOwo+ICAJfQo+ICB9Cj4gIAo+IC0tIAo+IDIuMTcuMQo+IAo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gClZp
bGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
