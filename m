Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3BC140DDA
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 16:29:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0AE26F5F1;
	Fri, 17 Jan 2020 15:29:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FD556F5F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 15:29:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 07:28:27 -0800
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="214511048"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 07:28:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200117151325.GQ13686@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1579270868.git.jani.nikula@intel.com>
 <4338a29e4ed49e69f859dff1490fd85f6ae6177e.1579270868.git.jani.nikula@intel.com>
 <20200117151238.GP13686@intel.com> <20200117151325.GQ13686@intel.com>
Date: Fri, 17 Jan 2020 17:28:23 +0200
Message-ID: <87d0bigl0o.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915/bios: check port presence
 based on child device
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

T24gRnJpLCAxNyBKYW4gMjAyMCwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gRnJpLCBKYW4gMTcsIDIwMjAgYXQgMDU6MTI6MzhQTSAr
MDIwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+PiBPbiBGcmksIEphbiAxNywgMjAyMCBhdCAw
NDoyOToyOFBNICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPj4gPiBBZmZlY3RzIG9ubHkgdHdv
IGNhbGxzIGluIG91dHB1dCBzZXR1cCwgYW5kIGRkaSBpbml0IHdpbGwgY2hlY2sgdGhlCj4+ID4g
ZmVhdHVyZXMgaW4gbW9yZSBmaW5lIGdyYWluZWQgd2F5Lgo+PiA+IAo+PiA+IFRoaXMgd2lsbCBt
YWtlIGZ1dHVyZSBjaGFuZ2VzIGVhc2llci4KPj4gPiAKPj4gPiBTaWduZWQtb2ZmLWJ5OiBKYW5p
IE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+PiA+IC0tLQo+PiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8IDQgKy0tLQo+PiA+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVsZXRpb25zKC0pCj4+ID4gCj4+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPj4gPiBpbmRleCA0YzY5MjUzNzM5ZWMu
LjcwZmI4N2U3YWZiNiAxMDA2NDQKPj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Jpb3MuYwo+PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYmlvcy5jCj4+ID4gQEAgLTIyMzYsOSArMjIzNiw3IEBAIGJvb2wgaW50ZWxfYmlvc19p
c19wb3J0X3ByZXNlbnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBv
cnQgcG9yCj4+ID4gIAkJY29uc3Qgc3RydWN0IGRkaV92YnRfcG9ydF9pbmZvICpwb3J0X2luZm8g
PQo+PiA+ICAJCQkmZGV2X3ByaXYtPnZidC5kZGlfcG9ydF9pbmZvW3BvcnRdOwo+PiA+ICAKPj4g
PiAtCQlyZXR1cm4gcG9ydF9pbmZvLT5zdXBwb3J0c19kcCB8fAo+PiA+IC0JCSAgICAgICBwb3J0
X2luZm8tPnN1cHBvcnRzX2R2aSB8fAo+PiA+IC0JCSAgICAgICBwb3J0X2luZm8tPnN1cHBvcnRz
X2hkbWk7Cj4+ID4gKwkJcmV0dXJuIHBvcnRfaW5mby0+Y2hpbGQ7Cj4+IAo+PiBQb25kZXJpbmcg
d2hhdCBoYXBwZW5zIGlmIHRoZXJlJ3MgYSBub24tRFAvRFZJL0hETUkgcG9ydCBkZWNsYXJlZCBp
biB0aGUKPj4gVkJULi4uIEkgZ3Vlc3MgdGhvc2Ugc2hvdWxkIG5vdCBoYXZlIHRoZWlyIGR2byBw
b3J0IHNldCB0byBhbnl0aGluZyB3ZQo+PiBhY2NlcHQ/Cj4KPiBVbW0sIG5vLiBXZSBhY2NlcHQg
RFZPX1BPUlRfQ1JUIGFzIFBPUlRfRS4KCk15IGFyZ3VtZW50IGlzIHRoaXM6CgotIFNob3VsZG4n
dCBpbnRlbF9iaW9zX2lzX3BvcnRfcHJlc2VudChQT1JUX0UpIHJldHVybiB0cnVlIGluIHRoYXQg
Y2FzZT8KCi0gV2hlcmUgZG9lcyB0aGUgY2hhbmdlIG1ha2UgYSBmdW5jdGlvbmFsIGRpZmZlcmVu
Y2UgaW4gdGhlCiAgaW50ZWxfYmlvc19pc19wb3J0X3ByZXNlbnQoKSB1c2VycyBhbnl3YXk/IEFG
QUlDVCBhbGwgdGhlIGNhc2VzIHdpbGwKICBhbHNvIGNoZWNrIHRoZSBzdXBwb3J0c19YIGZsYWdz
IGFueXdheSAob3IgaGF2ZSBjaGVja2VkIGJlZm9yZSkuCgoKQlIsCkphbmkuCgoKPgo+PiAKPj4g
PiAgCX0KPj4gPiAgCj4+ID4gIAkvKiBGSVhNRSBtYXliZSBkZWFsIHdpdGggcG9ydCBBIGFzIHdl
bGw/ICovCj4+ID4gLS0gCj4+ID4gMi4yMC4xCj4+ID4gCj4+ID4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0
Cj4+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiA+IGh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4+IAo+PiAtLSAKPj4g
VmlsbGUgU3lyasOkbMOkCj4+IEludGVsCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291
cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
