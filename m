Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A185C210
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 19:36:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60EF689BD4;
	Mon,  1 Jul 2019 17:36:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 622B389BD4
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 17:36:33 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 10:36:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,440,1557212400"; d="scan'208";a="174290494"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 01 Jul 2019 10:36:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Jul 2019 20:36:30 +0300
Date: Mon, 1 Jul 2019 20:36:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190701173629.GL5942@intel.com>
References: <20190625175437.14840-1-lucas.demarchi@intel.com>
 <20190625175437.14840-13-lucas.demarchi@intel.com>
 <20190628095517.GE5942@intel.com>
 <20190628163104.tlttdsvqbjx3lgym@ldmartin-desk1>
 <20190701173259.GK5942@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701173259.GK5942@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 12/28] drm/i915/tgl: Add TRANSCODER_A_VDSC
 power domain
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

T24gTW9uLCBKdWwgMDEsIDIwMTkgYXQgMDg6MzI6NTlQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIEZyaSwgSnVuIDI4LCAyMDE5IGF0IDA5OjMxOjA0QU0gLTA3MDAsIEx1Y2Fz
IERlIE1hcmNoaSB3cm90ZToKPiA+IE9uIEZyaSwgSnVuIDI4LCAyMDE5IGF0IDEyOjU1OjE3UE0g
KzAzMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiA+ID5PbiBUdWUsIEp1biAyNSwgMjAxOSBh
dCAxMDo1NDoyMUFNIC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6Cj4gPiA+PiBGcm9tOiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiA+ID4+Cj4gPiA+
PiBPbiBUR0wgdGhlIHNwZWNpYWwgRURQIHRyYW5zY29kZXIgaXMgZ29uZSBhbmQgaXQgc2hvdWxk
IGJlIGhhbmRsZWQgYnkKPiA+ID4+IHRyYW5zY29kZXIgQS4gQWRkIFBPV0VSX0RPTUFJTl9UUkFO
U0NPREVSX0FfVkRTQyB0byBtYWtlIHRoaXMKPiA+ID4+IGRpc3RpbmN0aW9uIGNsZWFyIGFuZCB1
cGRhdGUgdmRzYyBjb2RlIHBhdGguCj4gPiA+Pgo+ID4gPj4gQ2M6IEltcmUgRGVhayA8aW1yZS5k
ZWFrQGludGVsLmNvbT4KPiA+ID4+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+ID4gPj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUg
TWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gPiA+PiAtLS0KPiA+ID4+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8ICAyICsrCj4g
PiA+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgg
fCAgMSArCj4gPiA+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMg
ICAgICAgICAgfCAxMSArKysrKysrKy0tLQo+ID4gPj4gIDMgZmlsZXMgY2hhbmdlZCwgMTEgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+ID4+Cj4gPiA+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwo+ID4gPj4gaW5kZXgg
MGM3ZDRhMzYzZGViLi4xNTU4Mjg0MWZlZmMgMTAwNjQ0Cj4gPiA+PiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwo+ID4gPj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKPiA+ID4+IEBA
IC01OCw2ICs1OCw4IEBAIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluX3N0cihzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiA+ID4+ICAJCXJldHVybiAiVFJBTlNDT0RFUl9FRFAiOwo+
ID4gPj4gIAljYXNlIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0VEUF9WRFNDOgo+ID4gPj4gIAkJ
cmV0dXJuICJUUkFOU0NPREVSX0VEUF9WRFNDIjsKPiA+ID4+ICsJY2FzZSBQT1dFUl9ET01BSU5f
VFJBTlNDT0RFUl9BX1ZEU0M6Cj4gPiA+PiArCQlyZXR1cm4gIlRSQU5TQ09ERVJfQV9WRFNDIjsK
PiA+ID4+ICAJY2FzZSBQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9EU0lfQToKPiA+ID4+ICAJCXJl
dHVybiAiVFJBTlNDT0RFUl9EU0lfQSI7Cj4gPiA+PiAgCWNhc2UgUE9XRVJfRE9NQUlOX1RSQU5T
Q09ERVJfRFNJX0M6Cj4gPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcG93ZXIuaAo+ID4gPj4gaW5kZXggNzkyNjJhNWJjZWI0Li43NzYxYjQ5
MzYwOGEgMTAwNjQ0Cj4gPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuaAo+ID4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgKPiA+ID4+IEBAIC0yOSw2ICsyOSw3IEBAIGVudW0g
aW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gewo+ID4gPj4gIAlQT1dFUl9ET01BSU5fVFJBTlND
T0RFUl9ELAo+ID4gPj4gIAlQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9FRFAsCj4gPiA+PiAgCVBP
V0VSX0RPTUFJTl9UUkFOU0NPREVSX0VEUF9WRFNDLAo+ID4gPj4gKwlQT1dFUl9ET01BSU5fVFJB
TlNDT0RFUl9BX1ZEU0MsCj4gPiA+Cj4gPiA+VHdvIHBvd2VyIGRvbWFpbnMgZm9yIGVzc2VudGlh
bGx5IHRoZSBzYW1lIHRoaW5nIHNlZW1zIGEgYml0IHdhc3RlZnVsLgo+ID4gCj4gPiBqdXN0IHJl
dXNlIHRoZSBuYW1lIHRoZW4/Cj4gPiAKPiA+IGFuZCBvbiBnZW4xMisgY2hlY2sgZm9yIFRSQU5T
Q09ERVJfQSBsaWtlIGJlbG93Pwo+IAo+IFRoYXQgd2FzIG15IGluaXRpYWwgaWRlYSB5ZXMuIElu
IHRoZW9yeSBpdCB3b3VsZCBiZSBuaWNlIHRvIGhhdmUgZnVsbHkKPiBhYnN0cmFjdGVkIHBvd2Vy
IGRvbWFpbnMgYnV0IHRoYXQgd291bGQgbGVhZCB0byBhIGxvdCBvZiBiaXRzIGdldHRpbmcKPiB1
c2VkLiBJIHN1c3BlY3Qgd2UgbWlnaHQgaGF2ZSB0byBzd2l0Y2ggdG8gdXNpbmcgdGhlIGtlcm5l
bCBiaXRtYXNrCj4gc3R1ZmYgaW4gdGhhdCBjYXNlLiBOb3Qgc3VyZSBob3cgbWFueSBiaXRzIHdl
IGhhdmUgZnJlZSBBVE0uCgpJJ3ZlIGFsc28gcG9uZGVyZWQgYWJvdXQgc2hhdmluZyBvZmYgYSBm
ZXcgYml0cyBieSBzcGVjaWFsIGNhc2luZyB0aGUKSFNXIHBhbmVsIGZpdHRlciBzdHVmZiBpbiBh
IHNpbWlsYXIgZmFzaGlvbi4KCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
