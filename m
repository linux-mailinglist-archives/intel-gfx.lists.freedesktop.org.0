Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 737D3C0193
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 10:56:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A25E56EE9A;
	Fri, 27 Sep 2019 08:56:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 015B26EE9A
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 08:56:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 01:56:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,554,1559545200"; d="scan'208";a="190256281"
Received: from dongaban-mobl.ger.corp.intel.com (HELO [10.252.54.175])
 ([10.252.54.175])
 by fmsmga007.fm.intel.com with ESMTP; 27 Sep 2019 01:56:17 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
 <20190920114235.22411-16-maarten.lankhorst@linux.intel.com>
 <20190926130600.GM1208@intel.com>
 <ee604986-eb7b-05ce-ca2f-7c1789e1050c@linux.intel.com>
 <20190926160922.GN1208@intel.com> <20190926191155.GQ1208@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <ad1bccaa-86f4-aa75-b646-4207b00067ae@linux.intel.com>
Date: Fri, 27 Sep 2019 10:56:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190926191155.GQ1208@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 16/23] drm/i915: Program planes in bigjoiner
 mode.
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

T3AgMjYtMDktMjAxOSBvbSAyMToxMSBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPiBPbiBUaHUs
IFNlcCAyNiwgMjAxOSBhdCAwNzowOToyMlBNICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4+IE9uIFRodSwgU2VwIDI2LCAyMDE5IGF0IDA1OjUwOjA1UE0gKzAyMDAsIE1hYXJ0ZW4gTGFu
a2hvcnN0IHdyb3RlOgo+Pj4gT3AgMjYtMDktMjAxOSBvbSAxNTowNiBzY2hyZWVmIFZpbGxlIFN5
cmrDpGzDpDoKPj4+PiBPbiBGcmksIFNlcCAyMCwgMjAxOSBhdCAwMTo0MjoyOFBNICswMjAwLCBN
YWFydGVuIExhbmtob3JzdCB3cm90ZToKPj4+Pj4gTm93IHRoYXQgd2UgY2FuIHByb2dyYW0gcGxh
bmVzIGZyb20gdGhlIHVwZGF0ZV9zbGF2ZSBjYWxsYmFjaywgYW5kCj4+Pj4+IHdlIGhhdmUgZG9u
ZSBhbGwgZmIgcGlubmluZyBjb3JyZWN0bHksIGl0J3MgdGltZSB0byBwcm9ncmFtIHRob3NlCj4+
Pj4+IHBsYW5lcyBhcyB3ZWxsLgo+Pj4+Pgo+Pj4+PiBXZSB1c2UgdGhlIHVwZGF0ZV9zbGF2ZSBj
YWxsYmFjayBhcyBpdCBhbGxvd3MgdXMgdG8gdXNlIHRoZQo+Pj4+PiBzZXBhcmF0ZSBzdGF0ZXMg
Y29ycmVjdGx5Lgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8
bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+Pj4+PiAtLS0KPj4+Pj4gIC4uLi9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyB8IDUzICsrKysrKysrKysr
KysrKysrKysKPj4+Pj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxh
bmUuaCB8ICAyICsKPj4+Pj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jICB8ICA0ICstCj4+Pj4+ICAzIGZpbGVzIGNoYW5nZWQsIDU3IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCj4+Pj4+Cj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwo+Pj4+PiBpbmRleCBjYzA4ODY3NmYwYTIuLjVk
YjA5MWU0YWQ2YSAxMDA2NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hdG9taWNfcGxhbmUuYwo+Pj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jCj4+Pj4+IEBAIC0zNjYsNiArMzY2LDU5IEBAIHZv
aWQgc2tsX3VwZGF0ZV9wbGFuZXNfb25fY3J0YyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwKPj4+Pj4gIAl9Cj4+Pj4+ICB9Cj4+Pj4+ICAKPj4+Pj4gK3ZvaWQgaWNsX3VwZGF0ZV9i
aWdqb2luZXJfcGxhbmVzX29uX2NydGMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
Cj4+Pj4+ICsJCQkJCSBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKPj4+PiBUaGlzIHBsYW5lIHN0
dWZmIGlzIHdoZXJlIHRoaW5ncyBnbyB2ZXJ5IG11Y2ggb2ZmIHRoZSByYWlscyBJTU8uCj4+Pj4g
UGxhbmVzIHNob3VsZCBub3QgaGF2ZSB0byBrbm93IGFueXRoaW5nIGFib3V0IGJpZ2pvaW5lci4g
VGhleSBzaG91bGQKPj4+PiBqdXN0IGhhdmUgdGhlaXIgYXBwcm9wcmlhdGUgaHcgc3RhdGUgYW5k
IGJsaW5kbHkgYmFzaCBpdCBpbnRvIHRoZQo+Pj4+IGhhcmR3YXJlLgo+Pj4gV2UgYWxyZWFkeSBu
ZWVkIHRoaXMgZm9yIHBsYW5hciBzbGF2ZS9tYXN0ZXIsIHdoYXQncyB0aGUgaXNzdWUgZXhhY3Rs
eT8KPj4gVGhhdCBhbHJlYWR5IGlzIHRvbyBmcmFnaWxlLiBJIGRvbid0IHdhbnQgdGhpcyBzcHJl
YWRpbmcgYWxsIG92ZXIKPj4gdGhlIGRyaXZlciBhbmQgY291cGxpbmcgZXZlcnl0aGluZyB0byB0
aGUgYmlnam9pbmVyIGxvZ2ljLgo+Pgo+PiBIZXJlJ3MgYSBjcnVkZSBpZGVhIGhvdyBJIHRoaW5r
IHdlIG1pZ2h0IGF2b2lkIHRoaXM6Cj4+IGdpdDovL2dpdGh1Yi5jb20vdnN5cmphbGEvbGludXgu
Z2l0IHVhcGlfaHdfc3RhdGVfc3BsaXQKPj4KPj4gQnV0IEkgZGlkbid0IGRhcmUgYm9vdCBpdCB5
ZXQuLi4KPiBJdCB0b29rIGEgaGFuZGZ1bCBleHRyYSBmaXhlcyB0byBnZXQgdGhhdCB0byBib290
LiBCdXQgbm93IEkgYXQgbGVhc3QKPiBnZXQgYSBwaWN0dXJlIG9uIHRoZSBzY3JlZW4gaW5zdGVh
ZCBvZiBvb3BzZXMuCj4KPiBGaXhlcyBwdXNoZWQgdG8gdGhlIHNhbWUgYnJhbmNoLgo+Cj4gTG9v
a3MgbGlrZSBzdGlsbCBzb21ldGhpbmcgZ29pbmcgd3Jvbmcgd2l0aCB0aGUgY3Vyc29yIGlvY3Rs
IHRob3VnaC4KPgpJJ3ZlIGRvbmUgYSB1YXBpLWh3IHNwbGl0IGluIG15IHNlcmllcywgaXMgdGhh
dCBvayB3aXRoIHlvdT8KCkkgd2lsbCBkbyBhIHNpbWlsYXIgc3BsaXQgZm9yIHBsYW5lcy4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
