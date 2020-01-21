Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A201439BD
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 10:44:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4EA26EC1D;
	Tue, 21 Jan 2020 09:44:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C58136EC1D
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 09:44:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 01:44:27 -0800
X-IronPort-AV: E=Sophos;i="5.70,345,1574150400"; d="scan'208";a="219896395"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 01:44:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200117153716.GT13686@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1579270868.git.jani.nikula@intel.com>
 <4338a29e4ed49e69f859dff1490fd85f6ae6177e.1579270868.git.jani.nikula@intel.com>
 <20200117151238.GP13686@intel.com> <20200117151325.GQ13686@intel.com>
 <87d0bigl0o.fsf@intel.com> <20200117153716.GT13686@intel.com>
Date: Tue, 21 Jan 2020 11:44:22 +0200
Message-ID: <877e1lf8jt.fsf@intel.com>
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
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gRnJpLCBKYW4gMTcsIDIwMjAgYXQgMDU6Mjg6MjNQTSAr
MDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IE9uIEZyaSwgMTcgSmFuIDIwMjAsIFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+PiA+IE9uIEZy
aSwgSmFuIDE3LCAyMDIwIGF0IDA1OjEyOjM4UE0gKzAyMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90
ZToKPj4gPj4gT24gRnJpLCBKYW4gMTcsIDIwMjAgYXQgMDQ6Mjk6MjhQTSArMDIwMCwgSmFuaSBO
aWt1bGEgd3JvdGU6Cj4+ID4+ID4gQWZmZWN0cyBvbmx5IHR3byBjYWxscyBpbiBvdXRwdXQgc2V0
dXAsIGFuZCBkZGkgaW5pdCB3aWxsIGNoZWNrIHRoZQo+PiA+PiA+IGZlYXR1cmVzIGluIG1vcmUg
ZmluZSBncmFpbmVkIHdheS4KPj4gPj4gPiAKPj4gPj4gPiBUaGlzIHdpbGwgbWFrZSBmdXR1cmUg
Y2hhbmdlcyBlYXNpZXIuCj4+ID4+ID4gCj4+ID4+ID4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1
bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4gPj4gPiAtLS0KPj4gPj4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgfCA0ICstLS0KPj4gPj4gPiAgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAzIGRlbGV0aW9ucygtKQo+PiA+PiA+IAo+PiA+PiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4+ID4+ID4gaW5kZXgg
NGM2OTI1MzczOWVjLi43MGZiODdlN2FmYjYgMTAwNjQ0Cj4+ID4+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPj4gPj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+PiA+PiA+IEBAIC0yMjM2LDkgKzIyMzYs
NyBAQCBib29sIGludGVsX2Jpb3NfaXNfcG9ydF9wcmVzZW50KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcgo+PiA+PiA+ICAJCWNvbnN0IHN0cnVjdCBkZGlf
dmJ0X3BvcnRfaW5mbyAqcG9ydF9pbmZvID0KPj4gPj4gPiAgCQkJJmRldl9wcml2LT52YnQuZGRp
X3BvcnRfaW5mb1twb3J0XTsKPj4gPj4gPiAgCj4+ID4+ID4gLQkJcmV0dXJuIHBvcnRfaW5mby0+
c3VwcG9ydHNfZHAgfHwKPj4gPj4gPiAtCQkgICAgICAgcG9ydF9pbmZvLT5zdXBwb3J0c19kdmkg
fHwKPj4gPj4gPiAtCQkgICAgICAgcG9ydF9pbmZvLT5zdXBwb3J0c19oZG1pOwo+PiA+PiA+ICsJ
CXJldHVybiBwb3J0X2luZm8tPmNoaWxkOwo+PiA+PiAKPj4gPj4gUG9uZGVyaW5nIHdoYXQgaGFw
cGVucyBpZiB0aGVyZSdzIGEgbm9uLURQL0RWSS9IRE1JIHBvcnQgZGVjbGFyZWQgaW4gdGhlCj4+
ID4+IFZCVC4uLiBJIGd1ZXNzIHRob3NlIHNob3VsZCBub3QgaGF2ZSB0aGVpciBkdm8gcG9ydCBz
ZXQgdG8gYW55dGhpbmcgd2UKPj4gPj4gYWNjZXB0Pwo+PiA+Cj4+ID4gVW1tLCBuby4gV2UgYWNj
ZXB0IERWT19QT1JUX0NSVCBhcyBQT1JUX0UuCj4+IAo+PiBNeSBhcmd1bWVudCBpcyB0aGlzOgo+
PiAKPj4gLSBTaG91bGRuJ3QgaW50ZWxfYmlvc19pc19wb3J0X3ByZXNlbnQoUE9SVF9FKSByZXR1
cm4gdHJ1ZSBpbiB0aGF0IGNhc2U/Cj4KPiBPbmx5IG9uIGhzdy9iZHcgcmVhbGx5Lgo+Cj4+IAo+
PiAtIFdoZXJlIGRvZXMgdGhlIGNoYW5nZSBtYWtlIGEgZnVuY3Rpb25hbCBkaWZmZXJlbmNlIGlu
IHRoZQo+PiAgIGludGVsX2Jpb3NfaXNfcG9ydF9wcmVzZW50KCkgdXNlcnMgYW55d2F5PyBBRkFJ
Q1QgYWxsIHRoZSBjYXNlcyB3aWxsCj4+ICAgYWxzbyBjaGVjayB0aGUgc3VwcG9ydHNfWCBmbGFn
cyBhbnl3YXkgKG9yIGhhdmUgY2hlY2tlZCBiZWZvcmUpLgo+Cj4gQWZ0ZXIgc29tZSB0cmF3bGlu
ZyBJIGNhbid0IHNlZSBhbnl0aGluZyB0aGF0IHNob3VsZCBicmVhayBmcm9tIHRoaXMsCj4gc28g
cHJvYmFibHkgZmluZS4gQnV0IHRoZSBjb21taXQgbWVzc2FnZSBzaG91bGQgcHJvYmFibHkgZWxh
Ym9yYXRlCj4gb24gdGhpcyBhIGJpdCBtb3JlLCBqdXN0IGluIGNhc2UgdGhlcmUgaXMgYSByZWdy
ZXNzaW9uLgo+Cj4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+CgpUaGFua3MgZm9yIGFsbCB0aGUgcmV2aWV3cyEgRXhwYW5kZWQgb24g
dGhlIGNvbW1pdCBtZXNzYWdlIG9uIHRoaXMgb25lLAphbmQgcHVzaGVkIHRoZSBsb3QuCgpCUiwK
SmFuaS4KCgo+Cj4+IAo+PiAKPj4gQlIsCj4+IEphbmkuCj4+IAo+PiAKPj4gPgo+PiA+PiAKPj4g
Pj4gPiAgCX0KPj4gPj4gPiAgCj4+ID4+ID4gIAkvKiBGSVhNRSBtYXliZSBkZWFsIHdpdGggcG9y
dCBBIGFzIHdlbGw/ICovCj4+ID4+ID4gLS0gCj4+ID4+ID4gMi4yMC4xCj4+ID4+ID4gCj4+ID4+
ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gPj4g
PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4+ID4+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwo+PiA+PiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cj4+ID4+IAo+PiA+PiAtLSAKPj4gPj4gVmlsbGUgU3lyasOkbMOkCj4+
ID4+IEludGVsCj4+IAo+PiAtLSAKPj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdy
YXBoaWNzIENlbnRlcgoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGlj
cyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
