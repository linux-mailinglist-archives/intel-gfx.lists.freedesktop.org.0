Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1599DB536E
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 18:54:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B05B6ED0E;
	Tue, 17 Sep 2019 16:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5690C6ED0E
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 16:54:16 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 09:54:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,517,1559545200"; d="scan'208";a="198749269"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga002.jf.intel.com with ESMTP; 17 Sep 2019 09:54:15 -0700
Date: Tue, 17 Sep 2019 09:55:56 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190917165556.GB29180@intel.com>
References: <20190909034325.20006-1-manasi.d.navare@intel.com>
 <20190909034325.20006-3-manasi.d.navare@intel.com>
 <4ff2f04e-84dc-ea5f-2089-272969582f5d@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4ff2f04e-84dc-ea5f-2089-272969582f5d@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/display/icl: Enable TRANSCODER
 PORT SYNC for tiled displays across separate ports
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBTZXAgMTcsIDIwMTkgYXQgMDQ6NTI6NTRQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gT3AgMDktMDktMjAxOSBvbSAwNTo0MyBzY2hyZWVmIE1hbmFzaSBOYXZhcmU6
Cj4gPiBJbiBjYXNlIG9mIHRpbGVkIGRpc3BsYXlzIHdoZXJlIGRpZmZlcmVudCB0aWxlcyBhcmUg
ZGlzcGxheWVkIGFjcm9zcwo+ID4gZGlmZmVyZW50IHBvcnRzLCB3ZSBuZWVkIHRvIHN5bmNocm9u
aXplIHRoZSB0cmFuc2NvZGVycyBpbnZvbHZlZC4KPiA+IFRoaXMgcGF0Y2ggaW1wbGVtZW50cyB0
aGUgdHJhbnNjb2RlciBwb3J0IHN5bmMgZmVhdHVyZSBmb3IKPiA+IHN5bmNocm9uaXppbmcgb25l
IG1hc3RlciB0cmFuc2NvZGVyIHdpdGggb25lIG9yIG1vcmUgc2xhdmUKPiA+IHRyYW5zY29kZXJz
LiBUaGlzIGlzIG9ubHkgZW5iYWxlZCBpbiBzbGF2ZSB0cmFuc2NvZGVyCj4gPiBhbmQgdGhlIG1h
c3RlciB0cmFuc2NvZGVyIGlzIHVuYXdhcmUgdGhhdCBpdCBpcyBvcGVyYXRpbmcKPiA+IGluIHRo
aXMgbW9kZS4KPiA+IFRoaXMgaGFzIGJlZW4gdGVzdGVkIHdpdGggdGlsZWQgZGlzcGxheSBjb25u
ZWN0ZWQgdG8gSUNMLgo+ID4KPiA+IHY0Ogo+ID4gUmViYXNlCj4gPiB2MzoKPiA+ICogQ2hlY2sg
b2YgRFBfTVNUIG1vdmVkIHRvIGF0b21pY19jaGVjayAoTWFhcnRlbikKPiA+IHYyOgo+ID4gKiBE
byBub3QgdXNlIFJNVywganVzdCB3cml0ZSB0byB0aGUgcmVnaXN0ZXIgaW4gY29tbWl0IChKYW5p
IE4pCj4gPgo+ID4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+
ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
PiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4KPiA+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+ID4gQ2M6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBN
YW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA0MyArKysrKysrKysr
KysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0MyBpbnNlcnRpb25zKCspCj4gPgo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiA+IGluZGV4
IDg5NDJjOTA1YWU2Ni4uYjhmN2E5MTliNmQzIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiBAQCAtNDM4MCw2ICs0MzgwLDQ2IEBA
IHN0YXRpYyB2b2lkIGljbF9zZXRfcGlwZV9jaGlja2VuKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KQo+ID4gIAlJOTE1X1dSSVRFKFBJUEVfQ0hJQ0tFTihwaXBlKSwgdG1wKTsKPiA+ICB9Cj4gPiAg
Cj4gPiArc3RhdGljIHZvaWQgaWNsX2VuYWJsZV90cmFuc19wb3J0X3N5bmMoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gPiArewo+ID4gKwlzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+YmFzZS5jcnRjKTsKPiA+ICsJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRl
dik7Cj4gPiArCXUzMiB0cmFuc19kZGlfZnVuY19jdGwyX3ZhbDsKPiA+ICsJdTggbWFzdGVyX3Nl
bGVjdDsKPiA+ICsKPiA+ICsJLyoKPiA+ICsJICogQ29uZmlndXJlIHRoZSBtYXN0ZXIgc2VsZWN0
IGFuZCBlbmFibGUgVHJhbnNjb2RlciBQb3J0IFN5bmMgZm9yCj4gPiArCSAqIFNsYXZlIENSVENz
IHRyYW5zY29kZXIuCj4gPiArCSAqLwo+ID4gKwlpZiAoY3J0Y19zdGF0ZS0+bWFzdGVyX3RyYW5z
Y29kZXIgPT0gSU5WQUxJRF9UUkFOU0NPREVSKQo+ID4gKwkJcmV0dXJuOwo+ID4gKwo+ID4gKwlz
d2l0Y2ggKGNydGNfc3RhdGUtPm1hc3Rlcl90cmFuc2NvZGVyKSB7Cj4gPiArCWNhc2UgVFJBTlND
T0RFUl9BOgo+ID4gKwkJbWFzdGVyX3NlbGVjdCA9IDE7Cj4gPiArCQlicmVhazsKPiA+ICsJY2Fz
ZSBUUkFOU0NPREVSX0I6Cj4gPiArCQltYXN0ZXJfc2VsZWN0ID0gMjsKPiA+ICsJCWJyZWFrOwo+
ID4gKwljYXNlIFRSQU5TQ09ERVJfQzoKPiA+ICsJCW1hc3Rlcl9zZWxlY3QgPSAzOwo+ID4gKwkJ
YnJlYWs7Cj4gVFJBTlNDT0RFUl9EIGJ0dz8KClllcyB3aWxsIGFkZCB0aGF0CgpNYW5hc2kKCj4g
PiArCWNhc2UgVFJBTlNDT0RFUl9FRFA6Cj4gPiArCWRlZmF1bHQ6Cj4gPiArCQltYXN0ZXJfc2Vs
ZWN0ID0gMDsKPiA+ICsJCWJyZWFrOwo+ID4gKwl9Cj4gPiArCS8qIFNldCB0aGUgbWFzdGVyIHNl
bGVjdCBiaXRzIGZvciBUcmFuYXNjb2RlciBQb3J0IFN5bmMgKi8KPiA+ICsJdHJhbnNfZGRpX2Z1
bmNfY3RsMl92YWwgPSAoUE9SVF9TWU5DX01PREVfTUFTVEVSX1NFTEVDVChtYXN0ZXJfc2VsZWN0
KSAmCj4gPiArCQkJCSAgIFBPUlRfU1lOQ19NT0RFX01BU1RFUl9TRUxFQ1RfTUFTSykgPDwKPiA+
ICsJCVBPUlRfU1lOQ19NT0RFX01BU1RFUl9TRUxFQ1RfU0hJRlQ7Cj4gPiArCS8qIEVuYWJsZSBU
cmFuc2NvZGVyIFBvcnQgU3luYyAqLwo+ID4gKwl0cmFuc19kZGlfZnVuY19jdGwyX3ZhbCB8PSBQ
T1JUX1NZTkNfTU9ERV9FTkFCTEU7Cj4gPiArCj4gPiArCUk5MTVfV1JJVEUoVFJBTlNfRERJX0ZV
TkNfQ1RMMihjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlciksCj4gPiArCQkgICB0cmFuc19kZGlf
ZnVuY19jdGwyX3ZhbCk7Cj4gPiArfQo+ID4gKwo+ID4gIHN0YXRpYyB2b2lkIGludGVsX3VwZGF0
ZV9waXBlX2NvbmZpZyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3Rh
dGUsCj4gPiAgCQkJCSAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRj
X3N0YXRlKQo+ID4gIHsKPiA+IEBAIC02NDQ4LDYgKzY0ODgsOSBAQCBzdGF0aWMgdm9pZCBoYXN3
ZWxsX2NydGNfZW5hYmxlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywKPiA+
ICAJaWYgKCF0cmFuc2NvZGVyX2lzX2RzaShjcHVfdHJhbnNjb2RlcikpCj4gPiAgCQlpbnRlbF9z
ZXRfcGlwZV90aW1pbmdzKHBpcGVfY29uZmlnKTsKPiA+ICAKPiA+ICsJaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gMTEpCj4gPiArCQlpY2xfZW5hYmxlX3RyYW5zX3BvcnRfc3luYyhwaXBlX2Nv
bmZpZyk7Cj4gPiArCj4gPiAgCWludGVsX3NldF9waXBlX3NyY19zaXplKHBpcGVfY29uZmlnKTsK
PiA+ICAKPiA+ICAJaWYgKGNwdV90cmFuc2NvZGVyICE9IFRSQU5TQ09ERVJfRURQICYmCj4gCj4g
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
