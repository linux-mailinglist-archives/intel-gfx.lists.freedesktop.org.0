Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24047D0F4A
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 14:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 236BC6E99D;
	Wed,  9 Oct 2019 12:58:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 305886E99D
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 12:58:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 05:58:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,276,1566889200"; d="scan'208";a="184050111"
Received: from pashteka-mobl.ger.corp.intel.com (HELO [10.252.41.207])
 ([10.252.41.207])
 by orsmga007.jf.intel.com with ESMTP; 09 Oct 2019 05:58:25 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
 <20191004113514.17064-13-maarten.lankhorst@linux.intel.com>
 <20191008174231.GU1208@intel.com>
 <c277dadb-a8be-0426-62a6-58c3ba7d4c2a@linux.intel.com>
 <20191009122305.GY1208@intel.com>
 <4c2b6570-4757-df80-9d5f-904d2e649593@linux.intel.com>
 <20191009124114.GA1208@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <42211ce7-4fc5-abc3-52d3-a0661bc7b72a@linux.intel.com>
Date: Wed, 9 Oct 2019 14:58:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191009124114.GA1208@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 12/24] drm/i915: Split plane hw and uapi
 state
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

T3AgMDktMTAtMjAxOSBvbSAxNDo0MSBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPiBPbiBXZWQs
IE9jdCAwOSwgMjAxOSBhdCAwMjozMTo1OFBNICswMjAwLCBNYWFydGVuIExhbmtob3JzdCB3cm90
ZToKPj4gT3AgMDktMTAtMjAxOSBvbSAxNDoyMyBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPj4+
IE9uIFdlZCwgT2N0IDA5LCAyMDE5IGF0IDAyOjEzOjU1UE0gKzAyMDAsIE1hYXJ0ZW4gTGFua2hv
cnN0IHdyb3RlOgo+Pj4+IE9wIDA4LTEwLTIwMTkgb20gMTk6NDIgc2NocmVlZiBWaWxsZSBTeXJq
w6Rsw6Q6Cj4+Pj4+IE9uIEZyaSwgT2N0IDA0LCAyMDE5IGF0IDAxOjM1OjAyUE0gKzAyMDAsIE1h
YXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+Pj4+Pj4gU3BsaXR0aW5nIHBsYW5lIHN0YXRlIGlzIGVh
c2llciB0aGFuIHNwbGl0dGluZyBjcnRjX3N0YXRlLAo+Pj4+Pj4gYmVmb3JlIHBsYW5lIGNoZWNr
IHdlIGNvcHkgdGhlIGRybSBwcm9wZXJ0aWVzIHRvIGh3IHNvIHdlIGNhbgo+Pj4+Pj4gZG8gdGhl
IHNhbWUgaW4gYmlnam9pbmVyIGxhdGVyIG9uLgo+Pj4+Pj4KPj4+Pj4+IFdlIGNvcHkgdGhlIHN0
YXRlIGFmdGVyIHdlIGRpZCBhbGwgdGhlIG1vZGVzZXQgaGFuZGxpbmcsIGJ1dCBmb3J0dW5hdGVs
eQo+Pj4+Pj4gaTkxNSBzZWVtcyB0byBiZSBzcGxpdCBjb3JyZWN0bHkgYW5kIG5vdGhpbmcgZHVy
aW5nIG1vZGVzZXQgbG9va3MKPj4+Pj4+IGF0IHBsYW5lX3N0YXRlLgo+Pj4+Pj4KPj4+Pj4+IFNp
Z25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5p
bnRlbC5jb20+Cj4+Pj4+PiAtLS0KPj4+Pj4+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljX3BsYW5lLmMgfCAzNyArKysrKysrKysrKysrKysrKystCj4+Pj4+PiAgLi4uL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5oIHwgIDIgKwo+Pj4+Pj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICAxICsKPj4+Pj4+
ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAyMiArKysr
KysrKystLQo+Pj4+Pj4gIDQgZmlsZXMgY2hhbmdlZCwgNTcgaW5zZXJ0aW9ucygrKSwgNSBkZWxl
dGlvbnMoLSkKPj4+Pj4+Cj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKPj4+Pj4+IGluZGV4IDAxOTM3ODk2ZDY5Yy4uY2MxNTRj
ZmEzMzgxIDEwMDY0NAo+Pj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hdG9taWNfcGxhbmUuYwo+Pj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwo+Pj4+Pj4gQEAgLTkzLDYgKzkzLDkgQEAgaW50ZWxf
cGxhbmVfZHVwbGljYXRlX3N0YXRlKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lKQo+Pj4+Pj4gIAlp
bnRlbF9zdGF0ZS0+dm1hID0gTlVMTDsKPj4+Pj4+ICAJaW50ZWxfc3RhdGUtPmZsYWdzID0gMDsK
Pj4+Pj4+ICAKPj4+Pj4+ICsJLyogd2lsbCBiZSBzZXQgaW4gaW50ZWxfcGxhbmVfYXRvbWljX2No
ZWNrX3dpdGhfc3RhdGUoKSAqLwo+Pj4+Pj4gKwltZW1zZXQoJmludGVsX3N0YXRlLT5odywgMCwg
c2l6ZW9mKGludGVsX3N0YXRlLT5odykpOwo+Pj4+PiBUaGF0IHNlZW1zIHdyb25nIGZvciB0aGUg
Y2FzZSB3aGVyZSB3ZSBhZGQgdGhlIHBsYW5lIGFmdGVyIHRoZQo+Pj4+PiBwbGFuZSBjaGVjayBo
YXMgYWxyZWFkeSBiZWVuIGRvbmUuCj4+Pj4+Cj4+Pj4+IEkgdGhpbmsgd2Ugc2hvdWxkIG1haW50
YWluIHRoZSBjdXJyZW50IHN0YXRlIHVubGVzcyB0aGUgcGxhbmUgY2hlY2sKPj4+Pj4gd2lsbCBv
dmVyd3JpdGUgaXQuCj4+Pj4gSGF2ZSB5b3Ugc2Vlbgo+Pj4+Cj4+Pj4gaW50ZWxfYXRvbWljX2dl
dF9wbGFuZV9zdGF0ZV9hZnRlcl9jaGVjaygpPwo+Pj4gWWVzLCBidXQgSSBkb24ndCBsaWtlIGl0
Lgo+PiBUaGlzIGlzIGhvd2V2ZXIgcmVxdWlyZWQgYmVjYXVzZSBvZiB0aGUgc3BsaXQuIFdlIHNo
b3VsZCBub3QgbG9vayBhdCB0aGUgb2xkIHBsYW5lX3N0YXRlIGNvbnRlbnRzIGJlZm9yZSBhdG9t
aWNfY2hlY2sgYW5kIHRvIHByZXZlbnQgdGhhdCBJIHRoaW5rIGl0J3MgYmV0dGVyIHRvIHplcm8g
b3V0IHBsYW5lX3N0YXRlLT5odywKPj4KPj4gaW4gd2hpY2ggY2FzZSBidWdzIGFyZSBhdCBsZWFz
dCBjb25zaXN0ZW50LiA6KQo+IEkgZG9uJ3QgbGlrZSBsZWFraW5nIHRoaXMgc3BlY2lhbCBjYXNl
IGFsbCBvdmVyLiBJTU8gaXQncyBub3QgcmVhbGx5IGFueQo+IGRpZmZlcmVudCB0byB0aGUgY3Vy
cmVudCBydWxlIHRoYXQgeW91IGNhbid0IGxvb2sgYXQgYW55IG9mIHRoZSBkZXJpdmVkCj4gc3Rh
dGUgYmVmb3JlIHBsYW5lIGNoZWNrKCkuIFdlJ3JlIGp1c3QgZXh0ZW5kaW5nIHRoZSBjb25jZXB0
IG9mIHRoZQo+IGRlcml2ZWQgc3RhdGUgYSBiaXQuCj4KSSdtIG9rIHdpdGggdGhhdC4uCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
