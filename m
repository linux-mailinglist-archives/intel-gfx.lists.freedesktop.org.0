Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2572CDB8B
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 17:49:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E3916E037;
	Thu,  3 Dec 2020 16:49:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85E646E037
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 16:49:33 +0000 (UTC)
IronPort-SDR: pL2xd1GjSbxHGbxI1OHld9Iru5oRsbN61xUtBBoMIPLRvd0Sf2eM1rdakyZRBQMWM7ItV8yZdt
 zBCUdi1J0eYg==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="173322002"
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; d="scan'208";a="173322002"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 08:49:32 -0800
IronPort-SDR: KAERUjbZL3LN5UZSx5JLueLcV40+s99O97cFVFLZ+3MLKRStqLfdk/vbA2OH8oN1mmFFrHEZqV
 LwM14uV9urUA==
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; d="scan'208";a="365902182"
Received: from isobow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.16.51])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 08:49:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Navare\, Manasi" <manasi.d.navare@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20201201225905.GE22644@labuser-Z97X-UD5H>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
 <20201022222709.29386-11-manasi.d.navare@intel.com>
 <20201201225905.GE22644@labuser-Z97X-UD5H>
Date: Thu, 03 Dec 2020 18:49:27 +0200
Message-ID: <87im9ibzs8.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 10/11] drm/i915/display/vrr: Set
 IGNORE_MSA_PAR state in DP Sink
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAwMSBEZWMgMjAyMCwgIk5hdmFyZSwgTWFuYXNpIiA8bWFuYXNpLmQubmF2YXJlQGlu
dGVsLmNvbT4gd3JvdGU6Cj4gQEphbmkgY291bGQgeW91IHJldmlldyB0aGlzIGFzIHdlbGw/CgpP
a2F5LCBJJ20gZ29pbmcgdG8gY29wIG91dCBoZXJlIGFuZCBzYXkgdGhhdCwgd2hpbGUgSSBkb24n
dCBzZWUgYW55dGhpbmcKd3JvbmcgaGVyZSwgSSBhbHNvIGRpZG4ndCBnbyB0aHJvdWdoIGFsbCB0
aGUgc3BlY3MgYW5kIHZlcmlmeSB0aGlzIGlzCnRoZSByaWdodCBwbGFjZSB0byBkbyB0aGlzIHN0
dWZmLiBMZXQncyBzZWUgdGhlIHVwZGF0ZWQgdmVyc2lvbiBmaXJzdC4KCkJSLApKYW5pLgoKPgo+
IE1hbmFzaQo+Cj4KPiBPbiBUaHUsIE9jdCAyMiwgMjAyMCBhdCAwMzoyNzowOFBNIC0wNzAwLCBN
YW5hc2kgTmF2YXJlIHdyb3RlOgo+PiBJZiBWUlIgaXMgZW5hYmxlZCwgdGhlIHNpbmsgc2hvdWxk
IGlnbm9yZSBNU0EgcGFyYW1ldGVycwo+PiBhbmQgcmVnZW5lcmF0ZSBpbmNvbWluZyB2aWRlbyBz
dHJlYW0gd2l0aG91dCBkZXBlbmRpbmcKPj4gb24gdGhlc2UgcGFyYW1ldGVycy4gSGVuY2Ugc2V0
IHRoZSBNU0FfVElNSU5HX1BBUl9JR05PUkVfRU4KPj4gYml0IGlmIFZSUiBpcyBlbmFibGVkLgo+
PiBSZXNldCB0aGlzIGJpdCBvbiBWUlIgZGlzYWJsZS4KPj4gCj4+IENjOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+PiBDYzogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogTWFuYXNpIE5hdmFy
ZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMjUgKysrKysrKysrKysrKysrKysrKysrKysrCj4+
ICAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKQo+PiAKPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4+IGluZGV4IDU2NTE1NWFmM2ZiOS4uMTk1NDQ5ZGZl
YzFlIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPj4g
QEAgLTMzMjIsNiArMzMyMiwyMiBAQCBpOTE1X3JlZ190IGRwX3RwX3N0YXR1c19yZWcoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4+ICAJCXJldHVybiBEUF9UUF9TVEFUVVMoZW5jb2Rl
ci0+cG9ydCk7Cj4+ICB9Cj4+ICAKPj4gK3N0YXRpYyB2b2lkIGludGVsX2RwX3Npbmtfc2V0X21z
YV90aW1pbmdfcGFyX2lnbm9yZV9zdGF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+PiAr
CQkJCQkJCSAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4+ICsJ
CQkJCQkJICBib29sIGVuYWJsZSkKPj4gK3sKPj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwo+PiArCj4+ICsJaWYgKCFjcnRjX3N0YXRlLT52
cnIuZW5hYmxlKQo+PiArCQlyZXR1cm47Cj4+ICsKPj4gKwlpZiAoZHJtX2RwX2RwY2Rfd3JpdGVi
KCZpbnRlbF9kcC0+YXV4LCBEUF9ET1dOU1BSRUFEX0NUUkwsCj4+ICsJCQkgICAgICAgZW5hYmxl
ID8gRFBfTVNBX1RJTUlOR19QQVJfSUdOT1JFX0VOIDogMCkgPD0gMCkKPj4gKwkJZHJtX2RiZ19r
bXMoJmk5MTUtPmRybSwKPj4gKwkJCSAgICAiRmFpbGVkIHRvIHNldCBNU0FfVElNSU5HX1BBUl9J
R05PUkUgJXMgaW4gdGhlIHNpbmtcbiIsCj4+ICsJCQkgICAgZW5hYmxlID8gImVuYWJsZSIgOiAi
ZGlzYWJsZSIpOwo+PiArfQo+PiArCj4+ICBzdGF0aWMgdm9pZCBpbnRlbF9kcF9zaW5rX3NldF9m
ZWNfcmVhZHkoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPj4gIAkJCQkJY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4+ICB7Cj4+IEBAIC0zNDkzLDYgKzM1MDks
MTIgQEAgc3RhdGljIHZvaWQgdGdsX2RkaV9wcmVfZW5hYmxlX2RwKHN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlLAo+PiAgCSAqLwo+PiAgCWludGVsX2RwX3Npbmtfc2V0X2ZlY19yZWFk
eShpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7Cj4+ICAKPj4gKwkvKgo+PiArCSAqIFNpbmsgZGV2aWNl
IHNob3VsZCBpZ25vcmUgTVNBIHBhcmFtZXRlcnMgYW5kIHJlZ2VuZXJhdGUKPj4gKwkgKiBpbmNv
bWluZyB2aWRlbyBzdHJlYW0gaW4gY2FzZSBvZiBWUlIvQWRhcHRpdmUgU3luYwo+PiArCSAqLwo+
PiArCWludGVsX2RwX3Npbmtfc2V0X21zYV90aW1pbmdfcGFyX2lnbm9yZV9zdGF0ZShpbnRlbF9k
cCwgY3J0Y19zdGF0ZSwgdHJ1ZSk7Cj4+ICsKPj4gIAkvKgo+PiAgCSAqIDcuaSBGb2xsb3cgRGlz
cGxheVBvcnQgc3BlY2lmaWNhdGlvbiB0cmFpbmluZyBzZXF1ZW5jZSAoc2VlIG5vdGVzIGZvcgo+
PiAgCSAqICAgICBmYWlsdXJlIGhhbmRsaW5nKQo+PiBAQCAtNDA4OSw2ICs0MTExLDkgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfZGlzYWJsZV9kZGlfZHAoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUsCj4+ICAJLyogRGlzYWJsZSB0aGUgZGVjb21wcmVzc2lvbiBpbiBEUCBTaW5rICovCj4+
ICAJaW50ZWxfZHBfc2lua19zZXRfZGVjb21wcmVzc2lvbl9zdGF0ZShpbnRlbF9kcCwgb2xkX2Ny
dGNfc3RhdGUsCj4+ICAJCQkJCSAgICAgIGZhbHNlKTsKPj4gKwkvKiBEaXNhYmxlIElnbm9yZV9N
U0EgYml0IGluIERQIFNpbmsgKi8KPj4gKwlpbnRlbF9kcF9zaW5rX3NldF9tc2FfdGltaW5nX3Bh
cl9pZ25vcmVfc3RhdGUoaW50ZWxfZHAsIG9sZF9jcnRjX3N0YXRlLAo+PiArCQkJCQkJICAgICAg
ZmFsc2UpOwo+PiAgfQo+PiAgCj4+ICBzdGF0aWMgdm9pZCBpbnRlbF9kaXNhYmxlX2RkaV9oZG1p
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+PiAtLSAKPj4gMi4xOS4xCj4+IAoK
LS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
