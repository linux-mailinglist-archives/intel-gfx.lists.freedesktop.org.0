Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE6817A569
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 13:40:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54AAB6EBB9;
	Thu,  5 Mar 2020 12:40:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 455EA6EBB9
 for <Intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 12:40:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 04:40:45 -0800
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="413506713"
Received: from zye4-mobl1.amr.corp.intel.com (HELO [10.254.210.246])
 ([10.254.210.246])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 05 Mar 2020 04:40:42 -0800
To: Rafael Antognolli <rafael.antognolli@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20200304153144.10675-1-tvrtko.ursulin@linux.intel.com>
 <20200304160245.ewy55e2iqtcey6vs@rantogno-mobl4.amr.corp.intel.com>
 <bcb82998-13c1-d047-4d37-0d89c306beca@linux.intel.com>
 <20200304170137.7qe3fhyo4obgfuxk@rantogno-mobl4.amr.corp.intel.com>
From: "Ye, Tony" <tony.ye@intel.com>
Message-ID: <61d3fd52-93be-5011-b02d-e8c04c1575ef@intel.com>
Date: Thu, 5 Mar 2020 20:40:38 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200304170137.7qe3fhyo4obgfuxk@rantogno-mobl4.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl:
 WaDisableGPGPUMidThreadPreemption
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
Cc: piotr.zdunowski@intel.com, Intel-gfx@lists.freedesktop.org,
 Jason Ekstrand <jason.ekstrand@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAzLzUvMjAyMCAxOjAxIEFNLCBSYWZhZWwgQW50b2dub2xsaSB3cm90ZToKPiBPbiBXZWQs
IE1hciAwNCwgMjAyMCBhdCAwNDoyNDoxM1BNICswMDAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToK
Pj4KPj4gT24gMDQvMDMvMjAyMCAxNjowMiwgUmFmYWVsIEFudG9nbm9sbGkgd3JvdGU6Cj4+PiBP
biBXZWQsIE1hciAwNCwgMjAyMCBhdCAwMzozMTo0NFBNICswMDAwLCBUdnJ0a28gVXJzdWxpbiB3
cm90ZToKPj4+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
Pgo+Pj4+Cj4+Pj4gRW5hYmxlIEZ0clBlckN0eHRQcmVlbXB0aW9uR3JhbnVsYXJpdHlDb250cm9s
IGJpdCBhbmQgc2VsZWN0IHRocmVhZC0KPj4+PiBncm91cCBhcyB0aGUgZGVmYXVsdCBwcmVlbXB0
aW9uIGxldmVsLgo+Pj4+Cj4+Pj4gdjI6Cj4+Pj4gICAgKiBSZW1vdmUgcmVnaXN0ZXIgd2hpdGVs
aXN0aW5nIChSYWZhZWwsIFRvbnkpLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVy
c3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4+PiBDYzogTWljaGHFgiBXaW5pYXJz
a2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgo+Pj4+IENjOiBKb29uYXMgTGFodGluZW4g
PGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4+Pj4gQ2M6IHBpb3RyLnpkdW5vd3Nr
aUBpbnRlbC5jb20KPj4+PiBDYzogbWljaGFsLm1yb3pla0BpbnRlbC5jb20KPj4+PiBDYzogVG9u
eSBZZSA8dG9ueS55ZUBpbnRlbC5jb20+Cj4+Pj4gQ2M6IFJhZmFlbCBBbnRvZ25vbGxpIDxyYWZh
ZWwuYW50b2dub2xsaUBpbnRlbC5jb20+Cj4+Pgo+Pj4gVGhhbmtzIGZvciBDQydpbmcgbWUuIEkg
YWxzbyBzYXcgYSByZXBseSBmcm9tIEphc29uIHllc3RlcmRheSwgYnV0IEkKPj4+IGRvbid0IHNl
ZSBpdCBpbiB0aGUgbGlzdCBub3cgKHRob3VnaCBteSBtYWlsIGNsaWVudCBhIG1lc3MgbGF0ZWx5
KS4KPj4KPj4gSSBzYXcgbm90aGluZyBmcm9tIEphc29uLCBidXQgdGhlcmUgd2FzIGFuIGVtYWls
IGZyb20geW91IGFza2luZyBhYm91dAo+PiBpbnRlcmZhY2UgZGVzY3JpcHRvcnMgYW5kIHdoaXRl
bGlzdGluZyB3aGljaCBpcyB3aHkgSSBjb3BpZWQgeW91Lgo+Pgo+Pj4gQnV0IGhlIGFza2VkIHdo
ZXRoZXIgaXQncyBwb3NzaWJsZSBmb3IgTWVkaWEgYW5kIE9wZW5DTCBkcml2ZXJzIHRvCj4+PiBh
bHNvIGRpc2FibGUgbWlkLXRocmVhZCBwcmVlbXB0aW9uIHRocm91Z2ggdGhlCj4+PiBJTlRFUkZB
Q0VfREVTQ1JJUFRPUl9EQVRBLCBpbnN0ZWFkIG9mIGZyb20gdGhlIGtlcm5lbCBzaWRlLCBzbyB3
ZSBjb3VsZAo+Pj4gdHJ5IHRvIGV4cGVyaW1lbnQgd2l0aCBpdCBpbiB0aGUgZnV0dXJlLgo+Pj4K
Pj4+IEFsc28sIGRvIHlvdSBoYXZlIGFuIGlkZWEgb2YgaG93IGJyb2tlbiBpdCBpcz8gT3IgaXMg
aXQganVzdCBub3QgdGVzdGVkCj4+PiBiZWNhdXNlIG5vIGRyaXZlciBpcyBjdXJyZW50bHkgaW1w
bGVtZW50aW5nIGl0PyBBbmQgZG8geW91IGtub3cgaWYgdGhlCj4+PiB3aW5kb3dzIDNEIGRyaXZl
cnMgaW1wbGVtZW50IGl0IGF0IGFsbD8gSSBzZWUgY29kZSBpbiB0aGUgZHJpdmVyIHRoYXQKPj4+
IHNlZW1zIHRvIG1lIHRoYXQgaXQncyBvbmx5IGRpc2FibGVkIGluIGNlcnRhaW4gY2FzZXMuLi4K
Pj4+Cj4+PiBUbyBzdW1tYXJpemUsIEkgdGhpbmsgd2Ugc2hvdWxkIGVpdGhlcjoKPj4+ICAgICAg
MSkgRGlzYWJsZSBtaWQtdGhyZWFkIHByZWVtcHRpb24gZnJvbSB0aGUga2VybmVsIGFuZCBub3Qg
d2hpdGVsaXN0Cj4+PiAgICAgIHRoZSByZWdpc3RlciAoanVzdCBsaWtlIHlvdSBkbyBpbiB0aGlz
IHBhdGNoKTsgb3IKPj4+ICAgICAgMikgTm90IGRvIGFueXRoaW5nIGF0IGFsbCBmcm9tIHRoZSBr
ZXJuZWwsIGFuZCBsZXQgdXNlcnNwYWNlIGRpc2FibGUKPj4+ICAgICAgaXQgaWYgbmVlZGVkLgo+
Pj4KPj4+IEkgdGhpbmsgMikgaXMgYmV0dGVyLCBpZiBpdCdzIG5vdCBhbiBpc3N1ZSB0byB0aGUg
b3RoZXIgdXNlcnNwYWNlCj4+PiBkcml2ZXJzIChPcGVuQ0wgYW5kIE1lZGlhKS4KPj4KPj4gSSBr
bm93IGl0IGlzIHNvbWV3aGF0IGJyb2tlbiBsaWtlIGluCj4+IGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzEyOTMuCj4+Cj4+IEFuZCBJIGtub3cgT3BlbkNM
IGFuZCBNZWRpYSB3b3VsZCBwcmVmZXIgaTkxNSB0byBoYW5kbGUgaXQsIGJ1dCB0aGF0J3MKPj4g
YWx3YXlzIHRoZSBjYXNlLiA6KSBPcGVuQ0wgYW5kIE1lZGlhIGZvbGtzIGFyZSBvbiB0aGUgdGhy
ZWFkIHNvIGNhbiBjb21tZW50Cj4+IGlmIHRoZXkgYXJlIG9rYXkgd2l0aCBoYW5kbGluZyB0aGlz
IHRoZW1zZWx2ZXMuCj4+Cj4+IEluZGVlZCBhIGJsYW5rZXQgYmFuIGluIGk5MTUgbWVhbnMgbm8g
b25lIGNhbiB0cnkgaXQgb3V0IGxhdGVyIHdpdGhvdXQKPj4gZnVydGhlciBrZXJuZWwgY2hhbmdl
cy4KPiAKPiBXZWxsLCBiYXNlZCBvbiB5b3VyIGNvbW1lbnQgZnJvbSB0aGUgcHJldmlvdXMgcGF0
Y2g6Cj4gCj4gIkdlbmVyYWwgdGhpbmtpbmcgaXMsIHNpbmNlIE1UUCBpcyBjb25zaWRlcmVkIG5v
dCB2YWxpZGF0ZWQgLyBicm9rZW4gLwo+IGRhbmdlcm91cywgaTkxNSBzaG91bGQgZGVmYXVsdCBp
dCBvZmYuIEJ1dCB5ZXMsIHdoaXRlbGlzdGluZyBvciBub3Qgb24KPiB0b3AgaXMgb3Blbi4iCj4g
Cj4gTWF5YmUgd2Ugc2hvdWxkIHNpbXBseSBiYW4gaXQgYW5kIGJlIGRvbmUuIFNvIHRoaXMgcGF0
Y2ggaXM6Cj4gCj4gQWNrZWQtYnk6IFJhZmFlbCBBbnRvZ25vbGxpIDxyYWZhZWwuYW50b2dub2xs
aUBpbnRlbC5jb20+CgpBY2tlZC1ieTogVG9ueSBZZSA8dG9ueS55ZUBpbnRlbC5jb20+Cgo+IAo+
PiBSZWdhcmRzLAo+Pgo+PiBUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
