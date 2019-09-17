Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0831B5660
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 21:45:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E562D6ED2A;
	Tue, 17 Sep 2019 19:45:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7F7E6ED2A
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 19:45:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 12:45:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,517,1559545200"; d="scan'208";a="201896377"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.254.107.190])
 ([10.254.107.190])
 by fmsmga001.fm.intel.com with ESMTP; 17 Sep 2019 12:45:03 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190916214104.27881-1-daniele.ceraolospurio@intel.com>
 <156870704430.5729.2381429891555562179@skylake-alporthouse-com>
 <a714318c-4fb2-763c-a5a5-8da2e64330cd@intel.com>
 <156874666808.5729.14440148691607723440@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <89b92e0a-cbcc-3118-cbda-7e97438116fa@intel.com>
Date: Tue, 17 Sep 2019 12:45:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <156874666808.5729.14440148691607723440@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix SFC reset flow
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
Cc: Owen Zhang <owen.zhang@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA5LzE3LzIwMTkgMTE6NTcgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIERh
bmllbGUgQ2VyYW9sbyBTcHVyaW8gKDIwMTktMDktMTcgMTk6MzY6MzUpCj4+Cj4+IE9uIDkvMTcv
MjAxOSAxMjo1NyBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4gUXVvdGluZyBEYW5pZWxlIENl
cmFvbG8gU3B1cmlvICgyMDE5LTA5LTE2IDIyOjQxOjA0KQo+Pj4+IE91ciBhc3N1bXB0aW9uIHRo
YXQgdGhlIHdlIGNhbiBhc2sgdGhlIEhXIHRvIGxvY2sgdGhlIFNGQyBldmVuIGlmIG5vdAo+Pj4+
IGN1cnJlbnRseSBpbiB1c2UgZG9lcyBub3QgbWF0Y2ggdGhlIEhXIGNvbW1pdG1lbnQuIFRoZSBl
eHBlY3RhdGlvbiBmcm9tCj4+Pj4gdGhlIEhXIGlzIHRoYXQgU1cgd2lsbCBub3QgdHJ5IHRvIGxv
Y2sgdGhlIFNGQyBpZiB0aGUgZW5naW5lIGlzIG5vdAo+Pj4+IHVzaW5nIGl0IGFuZCBpZiB3ZSBk
byB0aGF0IHRoZSBiZWhhdmlvciBpcyB1bmRlZmluZWQ7IG9uIElDTCB0aGUgSFcKPj4+PiBlbmRz
IHVwIHRvIHJldHVybmluZyB0aGUgYWNrIGFuZCBpZ25vcmluZyBvdXIgbG9jayByZXF1ZXN0LCBi
dXQgdGhpcyBpcwo+Pj4+IG5vdCBndWFyYW50ZWVkIGFuZCB3ZSBzaG91bGRuJ3QgZXhwZWN0IGl0
IGdvaW5nIGZvcndhcmQuCj4+Pj4KPj4+PiBSZXBvcnRlZC1ieTogT3dlbiBaaGFuZyA8b3dlbi56
aGFuZ0BpbnRlbC5jb20+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4+PiBDYzogVHZydGtvIFVyc3Vs
aW4gPHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4KPj4+PiAtLS0KPj4+PiBAQCAtMzY2
LDEwICszNjgsMTMgQEAgc3RhdGljIHUzMiBnZW4xMV9sb2NrX3NmYyhzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUpCj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHNmY19mb3JjZWRfbG9ja19hY2tfYml0LAo+Pj4+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBzZmNfZm9yY2VkX2xvY2tfYWNrX2JpdCwKPj4+PiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMTAwMCwgMCwgTlVMTCkpIHsK
Pj4+PiAtICAgICAgICAgICAgICAgRFJNX0RFQlVHX0RSSVZFUigiV2FpdCBmb3IgU0ZDIGZvcmNl
ZCBsb2NrIGFjayBmYWlsZWRcbiIpOwo+Pj4+ICsgICAgICAgICAgICAgICAvKiBkaWQgd2UgcmFj
ZSB0aGUgdW5sb2NrPyAqLwo+Pj4+ICsgICAgICAgICAgICAgICBpZiAoaW50ZWxfdW5jb3JlX3Jl
YWRfZncodW5jb3JlLCBzZmNfdXNhZ2UpICYgc2ZjX3VzYWdlX2JpdCkKPj4+PiArICAgICAgICAg
ICAgICAgICAgICAgICBEUk1fRVJST1IoIldhaXQgZm9yIFNGQyBmb3JjZWQgbG9jayBhY2sgZmFp
bGVkXG4iKTsKPj4+IFdoYXQncyBvdXIgcGxhbiBpZiB0aGlzICpFUlJPUiogaXMgZXZlciB0cmln
Z2VyZWQ/Cj4+Pgo+Pj4gSWYgaXQgcmVtYWlucyBkbyBub3RoaW5nIGFuZCBjaGVjayB0aGUgbG9n
cyBvbiBkZWF0aCwgdGhlbiBpdCByZW1haW5zCj4+PiBqdXN0IGEgZGVidWcgc3BsYXQuIElmIHRo
ZXJlIGlzIGEgcGxhbiB0byBhY3R1YWxseSBkbyBzb21ldGhpbmcgdG8KPj4+IGhhbmRsZSB0aGUg
ZXJyb3IsIGRvIGl0IQo+Pj4gLUNocmlzCj4+IEFGQUlVIHRoZSBvbmx5IHRoaW5nIHdlIGNhbiBk
byBpcyBlc2NhbGF0ZSB0byBmdWxsIGdwdSByZXNldC4gSG93ZXZlciwKPj4gdGhlIHByb2JhYmls
aXR5IG9mIHRoaXMgZmFpbGluZyBzaG91bGQgYmUgbmV4dCB0byBub24tZXhpc3RlbnQgKG9ubHkg
b25lCj4+IGVuZ2luZSBjYW4gdXNlIHRoZSBTRkMgYXQgYW55IHRpbWUgc28gdGhlcmUgaXMgbm8g
bG9jayBjb250ZW50aW9uKSwgc28KPj4gSSdtIG5vdCBjb252aW5jZWQgdGhlIGZhbGxiYWNrIGlz
IHdvcnRoIHRoZSBlZmZvcnQuIFRoZSBlcnJvciBpcyBzdGlsbAo+PiB1c2VmdWwgSU1PIHRvIGNh
dGNoIHVuZXhwZWN0ZWQgYmVoYXZpb3Igb24gbmV3IHBsYXRmb3JtcywgYXMgaXQgaGFwcGVuZWQK
Pj4gaW4gdGhpcyBjYXNlIHdpdGggdGhlIG1lZGlhIHRlYW0gcmVwb3J0aW5nIHNlZWluZyB0aGlz
IG1lc3NhZ2Ugb24gZ2VuMTIKPj4gd2l0aCB0aGUgcHJldmlvdXMgYmVoYXZpb3IuIFRoaXMgc2Fp
ZCwgSSdtIGhhcHB5IHRvIGFkZCB0aGUgZXh0cmEgbG9naWMKPj4gaWYgeW91IGJlbGlldmUgaXQg
aXMgd29ydGggaXQuCj4gV2UndmUgc2VlIHRoaXMgbWVzc2FnZSBvbiBldmVyeSBpY2wgcnVuIQo+
IC1DaHJpcwoKSSd2ZSBuZXZlciBub3RpY2VkIGl0LCB3aGljaCB0ZXN0cyBhcmUgaGl0dGluZyBp
dD8gTXkgdW5kZXJzdGFuZGluZyBmcm9tIAp3aGF0IHRoZSBIVyB0ZWFtIHNhaWQgaXMgdGhhdCBv
biBJQ0wgdGhlIGFjayB3aWxsIGFsd2F5cyBjb21lIGJhY2sgKGV2ZW4gCmlmIGl0IGlzIG5vdCBw
YXJ0IG9mIHRoZSAib2ZmaWNpYWwiIFNXL0hXIGludGVyZmFjZSkgYW5kIHRoZSBIVyB0d2VhayAK
dGhhdCBzdG9wcyB0aGF0IGlzIGEgZ2VuMTIgY2hhbmdlLiBTb21ldGhpbmcgZWxzZSBtaWdodCBi
ZSB3cm9uZyBpcyB0aGlzIAppcyBmaXJpbmcgb2ZmIGluIG91ciBJQ0wgQ0ksIGFsc28gYmVjYXVz
ZSBJIGRvbid0IHRoaW5rIHdlIGhhdmUgYW55IHRlc3QgCmNhc2UgdGhhdCBhY3R1YWxseSB1c2Vz
IHRoZSBTRkMsIGRvIHdlPwoKRGFuaWVsZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
