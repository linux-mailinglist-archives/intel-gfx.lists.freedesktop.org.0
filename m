Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1586E2B6774
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 15:33:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 122B86EA97;
	Tue, 17 Nov 2020 14:33:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6445D6EA97
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 14:33:30 +0000 (UTC)
IronPort-SDR: EMmftJCV++tC5SJW8mMUfk5Juo6TF7pHxV2vtBQ66VMJPm7CcbLVs0uCfD+vpcpp6aOpWuYq1V
 j58zO0nF04Ag==
X-IronPort-AV: E=McAfee;i="6000,8403,9807"; a="167421252"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="167421252"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 06:33:29 -0800
IronPort-SDR: nVTiUEfrUjS7++DZHLWtowOtf9c7iuxi4pKgQQR6uNWGr7bNHxAZ3qeb7K3rpryiWlwULhZX5S
 b1aNZvhvF0qA==
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="533832635"
Received: from nlugasi-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.19.70])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 06:33:27 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20201028213323.5423-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201028213323.5423-1-ville.syrjala@linux.intel.com>
 <20201028213323.5423-4-ville.syrjala@linux.intel.com>
Date: Tue, 17 Nov 2020 16:33:24 +0200
Message-ID: <87wnykoxxn.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 03/19] drm/i915: Give DDI encoders even
 better names
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyOCBPY3QgMjAyMCwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBMZXQncyBwaW1wIHRoZSBEREkgZW5jb2Rlci0+bmFtZSB0byBy
ZWZsZWN0IHdoYXQgdGhlIHNwZWMgY2FsbHMgdGhlbS4KPiBJZS4gb24gcHJlLXRnbCBEREkgQS1G
LCBvbiB0Z2wrIERESSBBLUMgb3IgRERJIFRDMS02Lgo+Cj4gQWxzbyBzaW5jZSBlYWNoIGVuY29k
ZXIgaXMgcmVhbGx5IGEgY29tYmluYXRpb24gb2YgdGhlIERESSBhbmQgdGhlIFBIWQo+IHdlIGlu
Y2x1ZGUgdGhlIFBIWSBuYW1lIGFzIHdlbGwuCj4KPiBJQ0wgaXMgYSBiaXQgc3BlY2lhbCBzaW5j
ZSBpdCBhbHJlYWR5IGhhcyB0aGUgdHdvIGRpZmZlcmVudCB0eXBlcwo+IG9mIERESXMgKGNvbWJv
IG9yIFRDKSBidXQgaXQgc3RpbGwgY2FsbHMgdGhlbSBqdXN0IERESSBBLUYgcmVnYXJsZXNzCj4g
b2YgdGhlIHR5cGUuIEZvciB0aGF0IGxldCdzIGFkZCBhbiBleHRyYSAiKFRDKSIgbm90ZSB0byBy
ZW1pbmQKPiBpcyB3aGljaCB0eXBlIG9mIERESSBpdCByZWFsbHkgaXMuCj4KPiBUaGUgY29kZSBp
cyBkYXJuIHVnbHksIGJ1dCBub3Qgc3VyZSB0aGVyZSdzIG11Y2ggd2UgY2FuIGRvIGFib3V0IGl0
Lgo+Cj4gUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwu
Y29tPgo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMgfCAyNyArKysrKysrKysrKysrKysrKysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDI1
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMKPiBpbmRleCAyNDI0NTE1N2RjYjkuLjE5YjE2NTE3YTUwMiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+IEBAIC01MTc0LDgg
KzUxNzQsMzEgQEAgdm9pZCBpbnRlbF9kZGlfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0KQo+ICAKPiAgCWVuY29kZXIgPSAmZGlnX3BvcnQtPmJh
c2U7Cj4gIAo+IC0JZHJtX2VuY29kZXJfaW5pdCgmZGV2X3ByaXYtPmRybSwgJmVuY29kZXItPmJh
c2UsICZpbnRlbF9kZGlfZnVuY3MsCj4gLQkJCSBEUk1fTU9ERV9FTkNPREVSX1RNRFMsICJEREkg
JWMiLCBwb3J0X25hbWUocG9ydCkpOwo+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIp
IHsKPiArCQllbnVtIHRjX3BvcnQgdGNfcG9ydCA9IGludGVsX3BvcnRfdG9fdGMoZGV2X3ByaXYs
IHBvcnQpOwo+ICsKPiArCQlkcm1fZW5jb2Rlcl9pbml0KCZkZXZfcHJpdi0+ZHJtLCAmZW5jb2Rl
ci0+YmFzZSwgJmludGVsX2RkaV9mdW5jcywKPiArCQkJCSBEUk1fTU9ERV9FTkNPREVSX1RNRFMs
Cj4gKwkJCQkgIkRESSAlcyVjL1BIWSAlcyVjIiwKPiArCQkJCSBwb3J0ID49IFBPUlRfVEMxID8g
IlRDIiA6ICIiLAo+ICsJCQkJIHBvcnQgPj0gUE9SVF9UQzEgPyBwb3J0X25hbWUocG9ydCkgOiBw
b3J0IC0gUE9SVF9UQzEgKyAnMScsCj4gKwkJCQkgdGNfcG9ydCAhPSBUQ19QT1JUX05PTkUgPyAi
VEMiIDogIiIsCj4gKwkJCQkgdGNfcG9ydCAhPSBUQ19QT1JUX05PTkUgPyBwaHlfbmFtZShwaHkp
IDogdGNfcG9ydCAtIFRDX1BPUlRfMSArICcxJyk7CgpGcmFua2x5LCB0aGlzIGlzIGEgcmVhbGx5
IHVnbHkgd2F5IHRvIGRlZmluZSBlbmNvZGVyIG5hbWVzLCBhbmQgaXQncwpoYXJkIHRvIGRlY2lw
aGVyIHdoYXQncyBhY3R1YWxseSBnb2luZyBvbi4gRXZlbiBhZnRlciBJIHNlZSBsb2dzIHdpdGgK
b2J2aW91c2x5IGJvZ3VzIG5hbWVzIHN1Y2ggYXM6CgpbRU5DT0RFUjoyMzU6RERJIC4vUEhZIDBd
CgpJIGZpbmQgaXQgdGVkaW91cyB0byBkZWNpcGhlciB3aGF0IGV4YWN0bHkgaXMgd3JvbmcgaGVy
ZS4KCkkgZ3Vlc3MgdGhlIDJuZCBwb3J0ID49IFBPUlRfVEMxIGNoZWNrIHNob3VsZCBiZSByZXZl
cnNlZCwgYnV0IGl0CmRvZXNuJ3QgZXhhY3RseSBnaXZlIG1lIGNvbmZpZGVuY2UgYWJvdXQgdGhl
IHJlc3QuCgpCUiwKSmFuaS4KCgo+ICsJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDExKSB7Cj4gKwkJZW51bSB0Y19wb3J0IHRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGRldl9w
cml2LCBwb3J0KTsKPiArCj4gKwkJZHJtX2VuY29kZXJfaW5pdCgmZGV2X3ByaXYtPmRybSwgJmVu
Y29kZXItPmJhc2UsICZpbnRlbF9kZGlfZnVuY3MsCj4gKwkJCQkgRFJNX01PREVfRU5DT0RFUl9U
TURTLAo+ICsJCQkJICJEREkgJWMlcy9QSFkgJXMlYyIsCj4gKwkJCQkgcG9ydF9uYW1lKHBvcnQp
LAo+ICsJCQkJIHBvcnQgPj0gUE9SVF9DID8gIiAoVEMpIiA6ICIiLAo+ICsJCQkJIHRjX3BvcnQg
IT0gVENfUE9SVF9OT05FID8gIlRDIiA6ICIiLAo+ICsJCQkJIHRjX3BvcnQgIT0gVENfUE9SVF9O
T05FID8gcGh5X25hbWUocGh5KSA6IHRjX3BvcnQgLSBUQ19QT1JUXzEgKyAnMScpOwo+ICsJfSBl
bHNlIHsKPiArCQlkcm1fZW5jb2Rlcl9pbml0KCZkZXZfcHJpdi0+ZHJtLCAmZW5jb2Rlci0+YmFz
ZSwgJmludGVsX2RkaV9mdW5jcywKPiArCQkJCSBEUk1fTU9ERV9FTkNPREVSX1RNRFMsCj4gKwkJ
CQkgIkRESSAlYy9QSFkgJWMiLCBwb3J0X25hbWUocG9ydCksICBwaHlfbmFtZShwaHkpKTsKPiAr
CX0KPiAgCj4gIAltdXRleF9pbml0KCZkaWdfcG9ydC0+aGRjcF9tdXRleCk7Cj4gIAlkaWdfcG9y
dC0+bnVtX2hkY3Bfc3RyZWFtcyA9IDA7CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291
cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
