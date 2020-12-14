Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF752D9772
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 12:36:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A21C6E1B5;
	Mon, 14 Dec 2020 11:36:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C345C6E1B5
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 11:36:00 +0000 (UTC)
IronPort-SDR: W8HltRZ0cKCauplyTTf4n31z+dFpCKUE8grH8umynrTM/yo8Zl9Zu1WUYZF50zgcO2IBsTaROH
 1J3ppPYT+Zgg==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="174836227"
X-IronPort-AV: E=Sophos;i="5.78,418,1599548400"; d="scan'208";a="174836227"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 03:35:58 -0800
IronPort-SDR: eue428GU+8N/Tkr4seREWKLP71hXKJrY6eidzJJ9bhrQRwG3dePIx5BmmPIFUzWLYZK6KyguC6
 TZ44L3q8519Q==
X-IronPort-AV: E=Sophos;i="5.78,418,1599548400"; d="scan'208";a="333281710"
Received: from doshea2x-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.213.232.85])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 03:35:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
In-Reply-To: <20201214111537.GG9309@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201211171421.4048499-1-gwan-gyeong.mun@intel.com>
 <20201211171421.4048499-2-gwan-gyeong.mun@intel.com>
 <20201214111537.GG9309@intel.com>
Date: Mon, 14 Dec 2020 13:35:53 +0200
Message-ID: <87pn3c62na.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 2/2] drm/i915/display: Support Multiple
 Transcoders' PSR status on debugfs
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

T24gTW9uLCAxNCBEZWMgMjAyMCwgQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVs
LmNvbT4gd3JvdGU6Cj4gT24gMjAyMC0xMi0xMSBhdCAxOToxNDoyMSArMDIwMCwgR3dhbi1neWVv
bmcgTXVuIHdyb3RlOgo+PiBJbiBvcmRlciB0byBzdXBwb3J0IHRoZSBQU1Igc3RhdGUgb2YgZWFj
aCB0cmFuc2NvZGVyLCBpdCBhZGRzCj4+IGk5MTVfcHNyX3N0YXR1cyB0byBzdWItZGlyZWN0b3J5
IG9mIGVhY2ggdHJhbnNjb2Rlci4KPj4gCj4+IHYyOiBDaGFuZ2UgdXNpbmcgb2YgU3ltYm9saWMg
cGVybWlzc2lvbnMgJ1NfSVJVR08nIHRvIHVzaW5nIG9mIG9jdGFsCj4+ICAgICBwZXJtaXNzaW9u
cyAnMDQ0NCcKPj4gdjU6IEFkZHJlc3NlZCBKSmFuaSBOaWt1bGEncyByZXZpZXcgY29tbWVudHMK
Pj4gIC0gUmVtb3ZlIGNoZWNraW5nIG9mIEdlbjEyIGZvciBpOTE1X3Bzcl9zdGF0dXMuCj4+ICAt
IEFkZCBjaGVjayBvZiBIQVNfUFNSKCkKPj4gIC0gUmVtb3ZlIG1lYW5pbmdsZXNzIGNoZWNrIHJv
dXRpbmUuCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25n
Lm11bkBpbnRlbC5jb20+Cj4+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4KPj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4+
IENjOiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgo+PiAtLS0KPj4g
IC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYyB8IDE2ICsr
KysrKysrKysrKysrKysKPj4gIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspCj4+IAo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9k
ZWJ1Z2ZzLmMKPj4gaW5kZXggMDQxMDUzMTY3ZDdmLi5kMmRkNjFjNGVlMGIgMTAwNjQ0Cj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMK
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVn
ZnMuYwo+PiBAQCAtMjIyNCw2ICsyMjI0LDE2IEBAIHN0YXRpYyBpbnQgaTkxNV9oZGNwX3Npbmtf
Y2FwYWJpbGl0eV9zaG93KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqZGF0YSkKPj4gIH0KPj4g
IERFRklORV9TSE9XX0FUVFJJQlVURShpOTE1X2hkY3Bfc2lua19jYXBhYmlsaXR5KTsKPj4gIAo+
PiArc3RhdGljIGludCBpOTE1X3Bzcl9zdGF0dXNfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZv
aWQgKmRhdGEpCj4+ICt7Cj4+ICsJc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciA9IG0t
PnByaXZhdGU7Cj4+ICsJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9Cj4+ICsJCWludGVsX2F0
dGFjaGVkX2RwKHRvX2ludGVsX2Nvbm5lY3Rvcihjb25uZWN0b3IpKTsKPj4gKwo+PiArCXJldHVy
biBpbnRlbF9wc3Jfc3RhdHVzKG0sIGludGVsX2RwKTsKPj4gK30KPj4gK0RFRklORV9TSE9XX0FU
VFJJQlVURShpOTE1X3Bzcl9zdGF0dXMpOwo+PiArCj4+ICAjZGVmaW5lIExQU1BfQ0FQQUJMRShD
T05EKSAoQ09ORCA/IHNlcV9wdXRzKG0sICJMUFNQOiBjYXBhYmxlXG4iKSA6IFwKPj4gIAkJCQlz
ZXFfcHV0cyhtLCAiTFBTUDogaW5jYXBhYmxlXG4iKSkKPj4gIAo+PiBAQCAtMjM5OSw2ICsyNDA5
LDEyIEBAIGludCBpbnRlbF9jb25uZWN0b3JfZGVidWdmc19hZGQoc3RydWN0IGRybV9jb25uZWN0
b3IgKmNvbm5lY3RvcikKPj4gIAkJCQkgICAgY29ubmVjdG9yLCAmaTkxNV9wc3Jfc2lua19zdGF0
dXNfZm9wcyk7Cj4+ICAJfQo+PiAgCj4+ICsJaWYgKEhBU19QU1IoZGV2X3ByaXYpICYmCj4+ICsJ
ICAgIGNvbm5lY3Rvci0+Y29ubmVjdG9yX3R5cGUgPT0gRFJNX01PREVfQ09OTkVDVE9SX2VEUCkg
ewo+PiArCQlkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJpOTE1X3Bzcl9zdGF0dXMiLCAwNDQ0LCByb290
LAo+IENvdWxkIHdlIGtlZXAgdGhlIGZpbGUgbmFtZSBhcyBpOTE1X2VkcF9wc3Jfc3RhdHVzLCBh
cyB3ZSBoYXZlIHRvZGF5Pwo+IHdpdGggdGhhdCBhZGRyZXNzZWQuCgpEZXBlbmRzIG9uIHdoZXRo
ZXIgdGhlIHBsYW4gaXMgdG8gdXNlIHRoZSBzYW1lIGZpbGUgZm9yIHJlZ3VsYXIgRFAgcGFuZWwK
cmVwbGF5IGluIHRoZSBmdXR1cmUuIFRoZW4gZWRwIHdvdWxkIGJlIG1pc2xlYWRpbmcuCgpCUiwK
SmFuaS4KCj4gUmV2aWV3ZWQtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRl
bC5jb20+Cj4+ICsJCQkJICAgIGNvbm5lY3RvciwgJmk5MTVfcHNyX3N0YXR1c19mb3BzKTsKPj4g
Kwl9Cj4+ICsKPj4gIAlpZiAoY29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSA9PSBEUk1fTU9ERV9D
T05ORUNUT1JfRGlzcGxheVBvcnQgfHwKPj4gIAkgICAgY29ubmVjdG9yLT5jb25uZWN0b3JfdHlw
ZSA9PSBEUk1fTU9ERV9DT05ORUNUT1JfSERNSUEgfHwKPj4gIAkgICAgY29ubmVjdG9yLT5jb25u
ZWN0b3JfdHlwZSA9PSBEUk1fTU9ERV9DT05ORUNUT1JfSERNSUIpIHsKPj4gLS0gCj4+IDIuMjUu
MAo+PiAKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVy
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
