Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6482CEB8
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 20:30:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D77A76E046;
	Tue, 28 May 2019 18:30:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA74F6E046
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 18:30:39 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 11:30:38 -0700
X-ExtLoop1: 1
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga005.fm.intel.com with ESMTP; 28 May 2019 11:30:38 -0700
Date: Tue, 28 May 2019 11:32:34 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Stuart Summers <stuart.summers@intel.com>
Message-ID: <20190528183234.GA10989@intel.com>
References: <20190524154022.13575-1-stuart.summers@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524154022.13575-1-stuart.summers@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [CI 0/5] Refactor to expand subslice mask
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

UHVzaGVkIHRvIGRpbnEsIHRoYW5rcyBmb3IgdGhlIHBhdGNoZXMgYW5kIHRoZSByZXZpZXdzIQoK
UmVnYXJkcwpNYW5hc2kKCk9uIEZyaSwgTWF5IDI0LCAyMDE5IGF0IDA4OjQwOjE3QU0gLTA3MDAs
IFN0dWFydCBTdW1tZXJzIHdyb3RlOgo+IFRoaXMgcGF0Y2ggc2VyaWVzIGNvbnRhaW5zIGEgZmV3
IGNvZGUgY2xlYW4tdXAgcGF0Y2hlcywgZm9sbG93ZWQKPiBieSBhIHBhdGNoIHdoaWNoIGNoYW5n
ZXMgdGhlIHN0b3JhZ2Ugb2YgdGhlIHN1YnNsaWNlIG1hc2sgdG8gYmV0dGVyCj4gbWF0Y2ggdGhl
IHVzZXJzcGFjZSBhY2Nlc3MgdGhyb3VnaCB0aGUgSTkxNV9RVUVSWV9UT1BPTE9HWV9JTkZPCj4g
aW9jdGwuIFRoZSBpbmRleCBpbnRvIHRoZSBzdWJzbGljZV9tYXNrIGFycmF5IGlzIHRoZW4gY2Fs
Y3VsYXRlZDoKPiAgIHNsaWNlICogc3Vic2xpY2Ugc3RyaWRlICsgc3Vic2xpY2UgaW5kZXggLyA4
Cj4gCj4gdjI6IGZpeCBpOTE1X3BtX3NzZXUgdGVzdCBmYWlsdXJlCj4gdjM6IG5vIGNoYW5nZXMg
dG8gcGF0Y2hlcyBpbiB0aGUgc2VyaWVzLCBqdXN0IHJlc2VuZGluZyB0byBwaWNrIHVwCj4gICAg
IGluIENJIGNvcnJlY3RseQo+IHY0OiByZWJhc2UKPiB2NTogZml4IGhlYWRlciB0ZXN0Cj4gdjY6
IGFkZHJlc3MgcmV2aWV3IGNvbW1lbnRzIGZyb20gSmFyaQo+ICAgICBhZGRyZXNzIG1pbm9yIGNo
ZWNrcGF0Y2ggd2FybmluZyBpbiBleGlzdGluZyBjb2RlCj4gICAgIHVzZSBldV9zdHJpZGUgZm9y
IEVVIGRpdi1ieS04Cj4gdjc6IGFub3RoZXIgcmViYXNlCj4gdjg6IGFkZHJlc3MgcmV2aWV3IGNv
bW1lbnRzIGZyb20gVHZydGtvIGFuZCBEYW5pZWxlCj4gdjk6IGFkZHJlc3MgcmV2aWV3IGNvbW1l
bnRzIGZyb20gRGFuaWVsZQo+IHYxMDogYWRkIHJldmlld2VkLWJ5IG9uIGxhc3QgcGF0Y2ggd2l0
aCBtaW5vciBzdWdnZXN0ZWQgY2hhbmdlLAo+ICAgICAgcmViYXNlLCBhbmQgcmVwb3N0IGZvciBD
SQo+IAo+IFN0dWFydCBTdW1tZXJzICg1KToKPiAgIGRybS9pOTE1OiBVc2UgbG9jYWwgdmFyaWFi
bGUgZm9yIFNTRVUgaW5mbyBpbiBHRVRQQVJBTSBpb2N0bAo+ICAgZHJtL2k5MTU6IEFkZCBtYWNy
byBmb3IgU1NFVSBzdHJpZGUgY2FsY3VsYXRpb24KPiAgIGRybS9pOTE1OiBNb3ZlIGNhbGN1bGF0
aW9uIG9mIHN1YnNsaWNlcyBwZXIgc2xpY2UgdG8gbmV3IGZ1bmN0aW9uCj4gICBkcm0vaTkxNTog
UmVmYWN0b3Igc3NldSBoZWxwZXIgZnVuY3Rpb25zCj4gICBkcm0vaTkxNTogRXhwYW5kIHN1YnNs
aWNlIG1hc2sKPiAKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMg
ICAgfCAgMjQgKystCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBl
cy5oIHwgIDMwICsrLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfaGFuZ2NoZWNr
LmMgICAgfCAgIDMgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jICAg
ICAgICAgfCAgNjIgKysrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1
LmggICAgICAgICB8ICAzNSArKystCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMgIHwgICAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdm
cy5jICAgICAgICAgIHwgIDQ2ICsrLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMgICAgICAgICAgICAgIHwgIDE1ICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1
X2Vycm9yLmMgICAgICAgIHwgICA1ICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcXVl
cnkuYyAgICAgICAgICAgIHwgIDE1ICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rl
dmljZV9pbmZvLmMgICAgIHwgMTc2ICsrKysrKysrKysrLS0tLS0tLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCAgICAgfCAgNDcgLS0tLS0KPiAgMTIgZmlsZXMg
Y2hhbmdlZCwgMjgwIGluc2VydGlvbnMoKyksIDE4MCBkZWxldGlvbnMoLSkKPiAKPiAtLSAKPiAy
LjIxLjAuNS5nYWViNTgyYTk4Mwo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
