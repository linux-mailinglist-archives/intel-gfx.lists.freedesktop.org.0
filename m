Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A249310FEF1
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 14:39:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02FCC6E52F;
	Tue,  3 Dec 2019 13:39:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A271A6E52F
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 13:39:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 05:39:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,273,1571727600"; d="scan'208";a="293800374"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 03 Dec 2019 05:39:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Dec 2019 15:39:45 +0200
Date: Tue, 3 Dec 2019 15:39:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20191203133945.GS1208@intel.com>
References: <20191114160522.9699-1-maarten.lankhorst@linux.intel.com>
 <20191114160522.9699-4-maarten.lankhorst@linux.intel.com>
 <20191128190423.GZ1208@intel.com>
 <1172764a-3e43-29bb-848f-8bee4161ae45@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1172764a-3e43-29bb-848f-8bee4161ae45@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915/dp: Allow big joiner modes
 in intel_dp_mode_valid(), v3.
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

T24gVHVlLCBEZWMgMDMsIDIwMTkgYXQgMTA6MTg6NTFBTSArMDEwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gT3AgMjgtMTEtMjAxOSBvbSAyMDowNCBzY2hyZWVmIFZpbGxlIFN5cmrDpGzD
pDoKPiA+IE9uIFRodSwgTm92IDE0LCAyMDE5IGF0IDA1OjA1OjE1UE0gKzAxMDAsIE1hYXJ0ZW4g
TGFua2hvcnN0IHdyb3RlOgo+ID4+IFNtYWxsIGNoYW5nZXMgdG8gaW50ZWxfZHBfbW9kZV92YWxp
ZCgpLCBhbGxvdyBsaXN0aW5nIG1vZGVzIHRoYXQKPiA+PiBjYW4gb25seSBiZSBzdXBwb3J0ZWQg
aW4gdGhlIGJpZ2pvaW5lciBjb25maWd1cmF0aW9uLCB3aGljaCBpcwo+ID4+IG5vdCBzdXBwb3J0
ZWQgeWV0Lgo+ID4+Cj4gPj4gZURQIGRvZXMgbm90IHN1cHBvcnQgYmlnam9pbmVyLCBzbyBkbyBu
b3QgZXhwb3NlIGJpZ2pvaW5lciBvbmx5Cj4gPj4gbW9kZXMgb24gdGhlIGVEUCBwb3J0Lgo+ID4+
Cj4gPj4gQ2hhbmdlcyBzaW5jZSB2MToKPiA+PiAtIERpc2FsbG93IGJpZ2pvaW5lciBvbiBlRFAu
Cj4gPj4gQ2hhbmdlcyBzaW5jZSB2MjoKPiA+PiAtIFJlbmFtZSBpbnRlbF9kcF9kb3duc3RyZWFt
X21heF9kb3RjbG9jayB0byBpbnRlbF9kcF9tYXhfZG90Y2xvY2ssCj4gPj4gICBhbmQgc3BsaXQg
b2ZmIHRoZSBkb3duc3RyZWFtIGFuZCBzb3VyY2UgY2hlY2tpbmcgdG8gaXRzIG93biBmdW5jdGlv
bi4KPiA+PiAgIChWaWxsZSkKPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hv
cnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gPj4gLS0tCj4gPj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDExNyArKysrKysrKysrKysr
KysrKystLS0tLS0KPiA+PiAgMSBmaWxlIGNoYW5nZWQsIDg5IGluc2VydGlvbnMoKyksIDI4IGRl
bGV0aW9ucygtKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Ywo+ID4+IGluZGV4IDMxMjM5NThlMjA4MS4uOWI3ZGY4ZTg1ZWEyIDEwMDY0NAo+ID4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ID4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ID4+IEBAIC0yNDMsMjUgKzI0Mywz
NyBAQCBpbnRlbF9kcF9tYXhfZGF0YV9yYXRlKGludCBtYXhfbGlua19jbG9jaywgaW50IG1heF9s
YW5lcykKPiA+PiAgCXJldHVybiBtYXhfbGlua19jbG9jayAqIG1heF9sYW5lczsKPiA+PiAgfQo+
ID4+ICAKPiA+PiAtc3RhdGljIGludAo+ID4+IC1pbnRlbF9kcF9kb3duc3RyZWFtX21heF9kb3Rj
bG9jayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+ID4+ICtzdGF0aWMgaW50IHNvdXJjZV9t
YXhfZG90Y2xvY2soc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgYm9vbCBhbGxvd19iaWdqb2lu
ZXIpCj4gPj4gIHsKPiA+PiAgCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19w
b3J0ID0gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOwo+ID4+ICAJc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIgPSAmaW50ZWxfZGlnX3BvcnQtPmJhc2U7Cj4gPj4gLQlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKPiA+PiAt
CWludCBtYXhfZG90Y2xrID0gZGV2X3ByaXYtPm1heF9kb3RjbGtfZnJlcTsKPiA+PiAtCWludCBk
c19tYXhfZG90Y2xrOwo+ID4+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19p
OTE1KGVuY29kZXItPmJhc2UuZGV2KTsKPiA+PiArCj4gPj4gKwlpZiAoYWxsb3dfYmlnam9pbmVy
ICYmIElOVEVMX0dFTihpOTE1KSA+PSAxMSAmJiAhaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkK
PiA+IFNob3VsZCB0aGUgZWRwIGNoZWNrIGFjdHVhbGx5IGJlIGNoZWNrIGZvciB0aGUgZWRwIHRy
YW5zY29kZXIKPiA+IChpZS4gcG9ydCBBKSBvbiBpY2w/Cj4gSXNuJ3QgdGhhdCBlcXVpdmFsZW50
IHRvIHRoaXMgY2hlY2s/CgpZb3UgY2FuIGhhdmUgZURQIG9uIG90aGVyIHBvcnRzIChhdCBsZWFz
dCBpbiB0aGVvcnkpLgpBbHNvIG9uIHRnbCsgdGhlcmUgaXMgbm8gZURQIHRyYW5zY29kZXIgYW55
bW9yZS4KCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
