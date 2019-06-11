Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B04E3C65B
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 10:47:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8A87890D4;
	Tue, 11 Jun 2019 08:47:46 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8547890D7
 for <Intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 08:47:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 01:47:45 -0700
X-ExtLoop1: 1
Received: from nmanovic-mobl.ccr.corp.intel.com (HELO [10.252.13.223])
 ([10.252.13.223])
 by fmsmga004.fm.intel.com with ESMTP; 11 Jun 2019 01:47:44 -0700
To: Jani Nikula <jani.nikula@intel.com>, Intel-gfx@lists.freedesktop.org
References: <20190607120838.20514-1-tvrtko.ursulin@linux.intel.com>
 <20190607120838.20514-8-tvrtko.ursulin@linux.intel.com>
 <87k1dxzgj8.fsf@intel.com>
 <a471eb99-349e-f7b7-0350-00307f54b614@linux.intel.com>
 <87ef45zf02.fsf@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b0e35507-959c-1936-0f44-cefde0b9bb79@linux.intel.com>
Date: Tue, 11 Jun 2019 09:47:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <87ef45zf02.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 07/12] drm/i915: Remove I915_READ8
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA3LzA2LzIwMTkgMTQ6NDQsIEphbmkgTmlrdWxhIHdyb3RlOgo+IE9uIEZyaSwgMDcgSnVu
IDIwMTksIFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+IHdy
b3RlOgo+PiBPbiAwNy8wNi8yMDE5IDE0OjExLCBKYW5pIE5pa3VsYSB3cm90ZToKPj4+IE9uIEZy
aSwgMDcgSnVuIDIwMTksIFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRl
bC5jb20+IHdyb3RlOgo+Pj4+IEZyb206IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+Cj4+Pj4KPj4+PiBPbmx5IGEgZmV3IGNhbGwgc2l0ZXMgcmVtYWluIHdoaWNoIGhh
dmUgYmVlbiBjb252ZXJ0ZWQgdG8gdW5jb3JlIG1taW8KPj4+PiBhY2Nlc3NvcnMgYW5kIHNvIHRo
ZSBtYWNybyBjYW4gYmUgcmVtb3ZlZC4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+Pgo+Pj4gSSBoYXZlIHNvbWUgcmVz
ZXJ2YXRpb25zIGFib3V0IHRoaXMgb25lIGFuZCBwYXRjaCAxMS4gQWdhaW4sIEknbSBmaW5lCj4+
PiB3aXRoIG51a2luZyBJOTE1X1JFQUQ4IGFuZCBJOTE1X1JFQURfTk9UUkFDRSAoaW4gcGF0Y2gg
MTEpLiBJIHRoaW5rCj4+PiB0aGV5J3JlIHNwZWNpYWwgY2FzZXMgYW5kIGl0J3Mgb2theSBpZiB0
aGV5IGdyb3cgaW50byBhIGJpdCBsb25nZXIgbGluZXMKPj4+IG9yIG11bHRpcGxlIGxpbmVzLgo+
Pj4KPj4+IFRoZSBwcm9ibGVtIGlzIGNvbnZlcnRpbmcgcmVndWxhciBJOTE1X1JFQUQgYW5kIEk5
MTVfV1JJVEUgaW4gZGlzcGxheQo+Pj4gY29kZSB3aGlsZSBhdCBpdC4KPj4+Cj4+PiBJIGRvbid0
IHRoaW5rIGVuIG1hc3NlIGNvbnZlcnNpb24gb2YgdGhlbSB0byBpbnRlbF91bmNvcmVfcmVhZCBh
bmQKPj4+IGludGVsX3VuY29yZV93cml0ZSBkaXJlY3RseSBpcyBnb2luZyB0byBoYXBwZW4gaW4g
ZGlzcGxheSBjb2RlLCBiZWNhdXNlCj4+PiB0aGVyZSdzIHRvbyBtdWNoIGNvZGUgdGhhdCBnZXRz
IHR1cm5lZCB0b28gdWdseSB3aXRoIHRoZSBpbmNyZWFzZSBpbgo+Pj4gZnVuY3Rpb24gbmFtZSBs
ZW5ndGggYW5kIHRoZSBleHRyYSBwYXNzZWQgcGFyYW1ldGVyLiBJIHRoaW5rIG1hbnkgb2YKPj4+
IHRob3NlIHBsYWNlcyBhcmUgcHJldHR5IHVnbHkgYXMgaXQgaXMgYWxyZWFkeS4gVGhhdCdzIG15
IGZlZWxpbmcgYW55d2F5Lgo+Pj4KPj4+IEkgdW5kZXJzdGFuZCB5b3VyIHJlYXNvbmluZyBpcyB0
byBhdm9pZCB0aGUgbWl4ZWQgdXNlIG9mIGludGVsX3VuY29yZV8qCj4+Cj4+IEV4YWN0bHkuCj4+
Cj4+PiBhbmQgSTkxNV8qLiBCdXQgSSBmZWFyIHVzaW5nIGludGVsX3VuY29yZV9yZWFkIGFuZCBp
bnRlbF91bmNvcmVfd3JpdGUKPj4+IG5vdyBpcyBnb2luZyB0byBwcm9tb3RlIHRoZWlyIHVzZSBh
bGwgb3ZlciB0aGUgcGxhY2UsIGFuZCAqdGhhdCogd2lsbAo+Pj4gbGVhZCB0byBtaXhlZCB1c2Uu
IFdoaWNoIGlzIG5vdCBvcHRpbWFsIGlmIHRoZSBvdmVyYWxsIGZlZWxpbmcgaXMgdGhhdAo+Pj4g
d2UgbmVlZCB0byBjb21lIHVwIHdpdGggYSBzaG9ydGVyIGZ1bmN0aW9uL21hY3JvIGZvciBkaXNw
bGF5IGNvZGUgcmVhZHMKPj4+IGFuZCB3cml0ZXMuCj4+Cj4+IEkgYW0gZmluZSB3aXRoIHRoZSBh
cmd1bWVudCB0aGF0IHlvdSBtYXkgZGVzaXJlIHNvbWV0aGluZyBzaG9ydGVyIGZvcgo+PiBkaXNw
bGF5LiBCdXQgSSBkb24ndCB0aGluayBjb252ZXJ0aW5nIHdob2xlIGZ1bmN0aW9ucyB3b3VsZCBj
cmVhdGUgYW55Cj4+IG1vcmUgZnV0dXJlIG1peGVkIHVzZSB0aGFuIGNvbnZlcnRpbmcgZnVuY3Rp
b25zIHBhcnRpYWxseS4KPj4KPj4gQnR3IGhhdmUgeW91IHNlZW4gdGhlIGxhdGVzdCBSRkMgZnJv
bSBEYW5pZWxlPwo+IAo+IFllcywgYnV0IGhhdmVuJ3QgaGFkIHRoZSB0aW1lIHRvIGRpZ2VzdCBp
dC4KPiAKPj4gVGhhdCB3b3VsZCBhbGxvdyB0aGF0IHlvdQo+PiBvbmx5IHJlcGxhY2UgdGhlIGFz
c2lnbmVtbnRzIGF0IHRoZSB0b3Agb2YgZnVuY3Rpb25zIHBlcmhhcHMgbGlrZSBmcm9tOgo+Pgo+
PiAJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gJmRldl9wcml2LT51bmNvcmU7Cj4+Cj4+
IHRvOgo+Pgo+PiAJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gJmRldl9wcml2LT5kaXNw
bGF5X3VuY29yZTsKPj4KPj4gQnV0IHN1cmUsIGlmIHlvdSBkZXNpcmUgc2hvcnRlciBhY2Nlc3Nv
cnMgdGhlbiBsZXRzIGZpcnN0IGhhdmUgYQo+PiBkZWZpbml0aXZlIGRlY2lzaW9uIG9mIHRoYXQu
Cj4gCj4gSWYgdGhlcmUgd2VyZSBkaXNwbGF5IGFjY2Vzc29ycyB0aGV5IG1pZ2h0IGp1c3QgdGFr
ZSBpOTE1IGFzIHBvaW50ZXI6Cj4gCj4gI2RlZmluZSBGT09fUkVBRChpOTE1LCByZWcpIGludGVs
X3VuY29yZV9yZWFkKCZpOTE1LT5kaXNwbGF5X3VuY29yZSwgcmVnKQo+IAo+IER1bm5vLgo+IAo+
Pgo+Pj4gSSBwcmVzdW1lIFZpbGxlIGhhcyBzb21ldGhpbmcgdG8gc2F5IGFib3V0IHRoZSBndCB2
cy4gZGlzcGxheSBzdHVmZiBhcwo+Pj4gd2VsbDsgZG9lcyB0aGUgd2hvbGUgc2VyaWVzIG1ha2Ug
dGhhdCBoYXJkZXI/IEkgaG9wZSBub3QsIGJlY2F1c2UgSSBkbwo+Pj4gbGlrZSB0aGUgcmVzdCBv
ZiB3aGF0J3MgYmVpbmcgZG9uZSBoZXJlLgo+Pgo+PiBJdCBkb2Vzbid0IG1ha2UgaXQgaGFyZGVy
LiBJIGNhbiBlYXNpbHkgZHJvcCB0aGUgYml0cyB5b3UgZG9uJ3QgbGlrZSBpZgo+PiB0aGF0IHdp
bGwgYmUgdGhlIGZpbmFsIGRlY2lzaW9uLiBJbiBmYWN0LCBJIHNob3VsZCBwcm9iYWJseSBkbyB0
aGF0Cj4+IHN0cmFpZ2h0IGF3YXkgaWYgdGhhdCB3b3VsZCB1bmJsb2NrIHRoZSByZW1haW5pbmcg
dHdvIHBhdGNoZXMgYmVjYXVzZQo+PiB0aGVuIEkgY2FuIHByb2NlZWQgd2l0aCBvdGhlciByZWZh
Y3RvcmluZ3Mgb24gdG9wLgo+IAo+IEh1bSwgeW91IGtub3cgd2hhdCwgaXQncyBub3QgKnRoYXQq
IGJpZyBvZiBhIGRlYWwuIEFjayBvbiB0aGUgd2hvbGUKPiBzZXJpZXMsIHdlIGNhbiB0aWR5IHVw
IGxhdGVyIG9uIGlmIG5lZWRlZC4KPiAKPiBJIGd1ZXNzIEknZCBsaWtlIHRvIGdldCBWaWxsZSdz
IGFjayBvbiB0aGUgc2VyaWVzIHRvby4gVmlsbGU/CgpTbyBJIGhhdmUgcGF0Y2hlcyA3ICYgMTEg
d2l0aCBhY2tzIGZyb20gSmFuaSBhbmQgbm8gci1iIGhlcmUuCgpEZXBlbmRpbmcgb24gdGhlIG9w
aW5pb24gZnJvbSBWaWxsZSBJIGNhbiBlaXRoZXIgYXNrIGZvciB1cGdyYWRlIHRvIHItYiwgCm9y
IHJlZmFjdG9yIHRoZW0gdG8gbWluaW1pemUgaW50ZWxfdW5jb3JlX3JlYWQvd3JpdGUgaW4gZmF2
b3VyIG9mIApsZWF2aW5nIHRoZSBhZmZlY3RlZCBmdW5jdGlvbnMgbWl4ZWQgKEk5MTVfUkVBRC9X
UklURSArIAppbnRlbF91bmNvcmVfIm1vcmUtZXhvdGljLWFjY2Vzc29ycyIuCgpSZWdhcmRzLAoK
VHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
