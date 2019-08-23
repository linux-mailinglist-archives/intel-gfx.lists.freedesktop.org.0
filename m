Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9579AEC9
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 14:10:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE7E66EC7A;
	Fri, 23 Aug 2019 12:10:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90D6A6EC7A
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 12:10:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 05:10:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,421,1559545200"; d="scan'208";a="196468185"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 23 Aug 2019 05:10:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <9512dd31-71c1-5b74-c45b-ca69cfc844a7@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190820020147.5667-1-daniele.ceraolospurio@intel.com>
 <20190820020147.5667-2-daniele.ceraolospurio@intel.com>
 <op.z6tu8kdjxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <30042968-5bf2-4106-ee29-9bf9dab29673@intel.com>
 <9512dd31-71c1-5b74-c45b-ca69cfc844a7@intel.com>
Date: Fri, 23 Aug 2019 15:10:27 +0300
Message-ID: <87y2zk9j64.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: Introduce intel_reg_types.h
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMiBBdWcgMjAxOSwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJh
b2xvc3B1cmlvQGludGVsLmNvbT4gd3JvdGU6Cj4gT24gOC8yMC8xOSAxMTowMCBBTSwgRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyB3cm90ZToKPj4gCj4+IAo+PiBPbiA4LzIwLzE5IDg6NDIgQU0sIE1p
Y2hhbCBXYWpkZWN6a28gd3JvdGU6Cj4+PiBPbiBUdWUsIDIwIEF1ZyAyMDE5IDA0OjAxOjQ3ICsw
MjAwLCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIAo+Pj4gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0Bp
bnRlbC5jb20+IHdyb3RlOgo+Pj4KPj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3JlZ190eXBlcy5oIAo+Pj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcmVnX3R5cGVzLmgKPj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+Pj4+IGluZGV4IDAwMDAw
MDAwMDAwMC4uODdiY2U4MGRkNWVkCj4+Pj4gLS0tIC9kZXYvbnVsbAo+Pj4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ190eXBlcy5oCj4+Pgo+Pj4KPj4+PiArCj4+Pj4gK3R5
cGVkZWYgc3RydWN0IHsKPj4+PiArwqDCoMKgIHUzMiByZWc7Cj4+Pj4gK30gaTkxNV9yZWdfdDsK
Pj4+PiArCj4+Pj4gKyNkZWZpbmUgX01NSU8ocikgKChjb25zdCBpOTE1X3JlZ190KXsgLnJlZyA9
IChyKSB9KQo+Pj4+ICsKPj4+PiArI2RlZmluZSBJTlZBTElEX01NSU9fUkVHIF9NTUlPKDApCj4+
Pj4gKwo+Pj4+ICtzdGF0aWMgaW5saW5lIHUzMiBpOTE1X21taW9fcmVnX29mZnNldChpOTE1X3Jl
Z190IHJlZykKPj4+PiArewo+Pj4+ICvCoMKgwqAgcmV0dXJuIHJlZy5yZWc7Cj4+Pj4gK30KPj4+
PiArCj4+Pj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX2VxdWFsKGk5MTVfcmVn
X3QgYSwgaTkxNV9yZWdfdCBiKQo+Pj4+ICt7Cj4+Pj4gK8KgwqDCoCByZXR1cm4gaTkxNV9tbWlv
X3JlZ19vZmZzZXQoYSkgPT0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoYik7Cj4+Pj4gK30KPj4+PiAr
Cj4+Pj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX3ZhbGlkKGk5MTVfcmVnX3Qg
cmVnKQo+Pj4+ICt7Cj4+Pj4gK8KgwqDCoCByZXR1cm4gIWk5MTVfbW1pb19yZWdfZXF1YWwocmVn
LCBJTlZBTElEX01NSU9fUkVHKTsKPj4+PiArfQo+Pj4+ICsKPj4+Cj4+PiBobW0sIHRoZXJlIGlz
IG5vdyBkaXNjb25uZWN0aW9uIGJldHdlZW4gcHJlZml4ZXMgaW46Cj4+Pgo+Pj4gwqDCoMKgwqDC
oCdpbnRlbCdfcmVnX3R5cGVzLmgKPj4+IGFuZAo+Pj4gwqDCoMKgwqDCoCdpOTE1J19yZWdfdAo+
Pj4gwqDCoMKgwqDCoCdpOTE1J19tbWlvX3JlZ194eHgoKQo+Pj4KPj4+IHRoYXQgaXMgd2h5IEkg
d2FzIHN1Z2dlc3RpbmcgdG8ga2VlcDoKPj4+Cj4+PiDCoMKgwqDCoMKgJ2k5MTUnX3JlZy5oIChv
ciBhdCB5b3VyIHByZWZlcmVuY2UgJ2k5MTUnX3JlZ190eXBlcy5oKQo+Pj4gd2l0aAo+Pj4gwqDC
oMKgwqDCoCdpOTE1J19yZWdfdAo+Pj4gwqDCoMKgwqDCoCdpOTE1J19tbWlvX3JlZ194eHgoKQo+
Pj4KPj4+IGFuZCB1c2UgaW50ZWxfcmVnKiBmaWxlcyBmb3IgYWN0dWFsIGh3IGRlZmluaXRpb25z
Lgo+Pj4KPj4+IGlmIHdlIGRvbid0IHBsYW4gdG8gcmVuYW1lIGk5MTVfcmVnX3QgaW50byBpbnRl
bF9tbWlvX3JlZ190Cj4+PiB0aGVuIG1heWJlIGJldHRlciB0byBzdGF5IHdpdGggaTkxNV9yZWdf
dHlwZXMuaCA/Cj4+Pgo+PiAKPj4gSSdkIHBlcnNvbmFsbHkgcHJlZmVyIHRvIGtlZXAgdGhlIGlu
dGVsXyogcHJlZml4IGFuZCBmbGlwIGk5MTVfcmVnX3QgdG8gCj4+IGludGVsX3JlZ190IChhcyBh
IHNlY29uZCBzdGVwIHRvIGtlZXAgdGhpbmdzIHNpbXBsZSkuIEJ1dCBnaXZlbiB0aGUgc2l6ZSAK
Pj4gb2YgdGhlIGNoYW5nZSBJJ2QgcHJlZmVyIHRvIGhlYXIgc29tZSBtb3JlIG9waW5pb25zIGJl
Zm9yZSBnb2luZyB0aHJvdWdoIAo+PiB3aXRoIGl0LCBzbyBJJ2xsIHdhaXQgYSBiaXQgZm9yIG1v
cmUgY29tbWVudHMuCj4+IAo+PiBEYW5pZWxlCj4+IAo+Cj4gQ2hyaXMsIEphbmksIGFyZSB5b3Ug
b2sgaWYgSSBnb3Qgd2l0aCBNaWNoYWwncyBzdWdnZXN0aW9uIGZvciBub3csIGkuZS4gCj4gaTkx
NV9yZWdfdHlwZXMuaCBhbmQgaW50ZWxfcmVnLmg/CgpUaGVyZSdzIHJlYWxseSBub3RoaW5nIGlu
IHRoaXMgcGF0Y2ggdGhhdCByZXF1aXJlcyB5b3UgdG8gcmVuYW1lCmk5MTVfcmVnLmggYXQgYWxs
LiBUaGUgc3ViamVjdCBvZiB0aGUgcGF0Y2ggaXMgYWJvdXQgYWRkaW5nIGEgbmV3IGZpbGUKZm9y
IHRoZSB0eXBlczsgdGhlIHJlbmFtZSBzZWVtcyBsaWtlIGFuIGFmdGVydGhvdWdodC4KCkkgZ3Vl
c3Mgd2UnbGwgYWRkIGEgZGlzcGxheS88c29tZXRoaW5nPl9yZWcuaCBsYXRlci4gQnV0IHRoYXQg
ZG9lc24ndApyZXF1aXJlIHRoaXMgcmVuYW1lIGVpdGhlci4KCkJSLApKYW5pLgoKCgo+Cj4gRGFu
aWVsZQo+Cj4+PiBNaWNoYWwKPj4+Cj4+PiBwcy4gaTkxNS9pbnRlbCBwcmVmaXggcnVsZXMgYXJl
IGtpbGxpbmcgbWUgdG9vIDspCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4gSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBH
cmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
