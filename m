Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 547EC63568
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 14:14:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39DC98916C;
	Tue,  9 Jul 2019 12:14:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4940D88894
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 12:14:19 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 05:14:18 -0700
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="159433637"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Jul 2019 05:14:18 -0700
Date: Tue, 9 Jul 2019 05:14:54 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190709121454.GH16315@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-13-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708231629.9296-13-lucas.demarchi@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH v2 12/25] drm/i915/tgl: Add pll manager
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

T24gTW9uLCBKdWwgMDgsIDIwMTkgYXQgMDQ6MTY6MTZQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEZyb206IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwu
Y29tPgo+IAo+IEFkZCBhIG5ldyBwbGwgYXJyYXkgZm9yIFRpZ2VyIExha2UuIFRoZSBUQyBwbGwg
ZnVuY3Rpb25zIGZvciB0eXBlIEMgd2lsbAo+IGJlIGNvdmVyZWQgaW4gbGF0ZXIgcGF0Y2hlcyBh
ZnRlciBpdHMgcGh5IGlzIGltcGxlbWVudGVkLgo+IAo+IENjOiBNYWRoYXYgQ2hhdWhhbiA8bWFk
aGF2LmNoYXVoYW5AaW50ZWwuY29tPgo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBp
bnRlbC5jb20+CgpSZXZpZXdlZC1ieTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwu
Y29tPgoKPiBTaWduZWQtb2ZmLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5p
QGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcGxsX21nci5jIHwgMTkgKysrKysrKysrKysrKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MTggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKPiBpbmRleCA2N2NmZTgzNjI4NmUuLmFlMWM1
NTJkN2FmYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwbGxfbWdyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
bGxfbWdyLmMKPiBAQCAtMzQ1NSw2ICszNDU1LDIxIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50
ZWxfZHBsbF9tZ3IgZWhsX3BsbF9tZ3IgPSB7Cj4gIAkuZHVtcF9od19zdGF0ZSA9IGljbF9kdW1w
X2h3X3N0YXRlLAo+ICB9Owo+ICAKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBkcGxsX2luZm8gdGds
X3BsbHNbXSA9IHsKPiArCXsgIkRQTEwgMCIsICZjb21ib19wbGxfZnVuY3MsIERQTExfSURfSUNM
X0RQTEwwLCAgMCB9LAo+ICsJeyAiRFBMTCAxIiwgJmNvbWJvX3BsbF9mdW5jcywgRFBMTF9JRF9J
Q0xfRFBMTDEsICAwIH0sCj4gKwl7ICJUQlQgUExMIiwgICZ0YnRfcGxsX2Z1bmNzLCBEUExMX0lE
X0lDTF9UQlRQTEwsIDAgfSwKPiArCS8qIFRPRE86IEFkZCB0eXBlQyBwbGxzICovCj4gKwl7IH0s
Cj4gK307Cj4gKwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RwbGxfbWdyIHRnbF9wbGxf
bWdyID0gewo+ICsJLmRwbGxfaW5mbyA9IHRnbF9wbGxzLAo+ICsJLmdldF9kcGxscyA9IGljbF9n
ZXRfZHBsbHMsCj4gKwkucHV0X2RwbGxzID0gaWNsX3B1dF9kcGxscywKPiArCS5kdW1wX2h3X3N0
YXRlID0gaWNsX2R1bXBfaHdfc3RhdGUsCj4gK307Cj4gKwo+ICAvKioKPiAgICogaW50ZWxfc2hh
cmVkX2RwbGxfaW5pdCAtIEluaXRpYWxpemUgc2hhcmVkIERQTExzCj4gICAqIEBkZXY6IGRybSBk
ZXZpY2UKPiBAQCAtMzQ2OCw3ICszNDgzLDkgQEAgdm9pZCBpbnRlbF9zaGFyZWRfZHBsbF9pbml0
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4gIAljb25zdCBzdHJ1Y3QgZHBsbF9pbmZvICpkcGxs
X2luZm87Cj4gIAlpbnQgaTsKPiAgCj4gLQlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKQo+
ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCj4gKwkJZHBsbF9tZ3IgPSAmdGdsX3Bs
bF9tZ3I7Cj4gKwllbHNlIGlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikpCj4gIAkJZHBsbF9t
Z3IgPSAmZWhsX3BsbF9tZ3I7Cj4gIAllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEx
KQo+ICAJCWRwbGxfbWdyID0gJmljbF9wbGxfbWdyOwo+IC0tIAo+IDIuMjEuMAo+IAo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
